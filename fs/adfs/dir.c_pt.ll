; ModuleID = '/llk/IR_all_yes/fs/adfs/dir.c_pt.bc'
source_filename = "../fs/adfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.adfs_dir = type { ptr, i32, [4 x ptr], ptr, i32, i32, %union.anon.70, %union.anon.71 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.adfs_sb_info = type { %union.anon.72, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.object_info = type { i32, i32, i32, i32, i32, i8, i32, [260 x i8] }
%struct.adfs_dir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.anon.3 = type { i32, i32 }

@__func__.adfs_dir_read_buffers = private unnamed_addr constant [22 x i8] c"adfs_dir_read_buffers\00", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dir %06x has a hole at offset %u\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dir %06x failed read at offset %u, mapped block 0x%08x\00", [41 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@adfs_dir_rwsem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @adfs_dir_rwsem, i64 56), ptr getelementptr (i8, ptr @adfs_dir_rwsem, i64 56) }, ptr @adfs_dir_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@adfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adfs_iterate, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@adfs_dentry_operations = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr @adfs_hash, ptr @adfs_compare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@adfs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @adfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adfs_notify_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adfs_dir_rwsem.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adfs_dir_rwsem\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__func__.adfs_dir_read_inode = private unnamed_addr constant [20 x i8] c"adfs_dir_read_inode\00", align 1
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"parent directory id changed under me! (%06x but got %06x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 123, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 130, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"adfs_dir_rwsem\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"adfs_dir_operations\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 387, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 15, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 257, i32 22 }
@___asan_gen_.30 = private constant [17 x i8] c"../fs/adfs/dir.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 166, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 3566, i32 25 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @adfs_dir_rwsem, ptr @adfs_dir_operations, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_dir_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @adfs_dir_copyfrom(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %dir, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %offset, %conv
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %5, -1
  %and = and i32 %sub, %offset
  %sub3 = sub i32 %5, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %len)
  %cmp = icmp ult i32 %sub3, %len
  %conv4 = zext i1 %cmp to i32
  %add = add i32 %shr, %conv4
  %nr_buffers = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp5.not = icmp ult i32 %add, %7
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bhs = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %8 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bhs, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %and
  %14 = call ptr @memcpy(ptr %dst, ptr %add.ptr, i32 %sub3)
  %add.ptr10 = getelementptr i8, ptr %dst, i32 %sub3
  %sub11 = sub i32 %len, %sub3
  %add12 = add i32 %shr, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %dst.addr.0 = phi ptr [ %add.ptr10, %if.then9 ], [ %dst, %if.end.if.end13_crit_edge ]
  %offset.addr.0 = phi i32 [ 0, %if.then9 ], [ %and, %if.end.if.end13_crit_edge ]
  %len.addr.0 = phi i32 [ %sub11, %if.then9 ], [ %len, %if.end.if.end13_crit_edge ]
  %index.0 = phi i32 [ %add12, %if.then9 ], [ %shr, %if.end.if.end13_crit_edge ]
  %bhs14 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %15 = ptrtoint ptr %bhs14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bhs14, align 4
  %arrayidx15 = getelementptr ptr, ptr %16, i32 %index.0
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %b_data16 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data16, align 4
  %add.ptr17 = getelementptr i8, ptr %20, i32 %offset.addr.0
  %21 = call ptr @memcpy(ptr %dst.addr.0, ptr %add.ptr17, i32 %len.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @adfs_dir_copyto(ptr nocapture noundef readonly %dir, i32 noundef %offset, ptr nocapture noundef readonly %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %offset, %conv
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %5, -1
  %and = and i32 %sub, %offset
  %sub3 = sub i32 %5, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %len)
  %cmp = icmp ult i32 %sub3, %len
  %conv4 = zext i1 %cmp to i32
  %add = add i32 %shr, %conv4
  %nr_buffers = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp5.not = icmp ult i32 %add, %7
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bhs = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %8 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bhs, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %shr
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %and
  %14 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %sub3)
  %add.ptr10 = getelementptr i8, ptr %src, i32 %sub3
  %sub11 = sub i32 %len, %sub3
  %add12 = add i32 %shr, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %offset.addr.0 = phi i32 [ 0, %if.then9 ], [ %and, %if.end.if.end13_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr10, %if.then9 ], [ %src, %if.end.if.end13_crit_edge ]
  %len.addr.0 = phi i32 [ %sub11, %if.then9 ], [ %len, %if.end.if.end13_crit_edge ]
  %index.0 = phi i32 [ %add12, %if.then9 ], [ %shr, %if.end.if.end13_crit_edge ]
  %bhs14 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %15 = ptrtoint ptr %bhs14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bhs14, align 4
  %arrayidx15 = getelementptr ptr, ptr %16, i32 %index.0
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx15, align 4
  %b_data16 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %b_data16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data16, align 4
  %add.ptr17 = getelementptr i8, ptr %20, i32 %offset.addr.0
  %21 = call ptr @memcpy(ptr %add.ptr17, ptr %src.addr.0, i32 %len.addr.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adfs_dir_relse(ptr noundef %dir) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_buffers = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %0 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bhs = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brelse.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bhs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %5) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add nuw i32 %i.07, 1
  %6 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_buffers, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nr_buffers, align 4
  %bhs.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %9 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bhs.i, align 4
  %bh.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %cmp.not.i = icmp eq ptr %10, %bh.i
  br i1 %cmp.not.i, label %for.end.__adfs_dir_cleanup.exit_crit_edge, label %if.then.i5

for.end.__adfs_dir_cleanup.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_dir_cleanup.exit

if.then.i5:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %10) #8
  br label %__adfs_dir_cleanup.exit

__adfs_dir_cleanup.exit:                          ; preds = %if.then.i5, %for.end.__adfs_dir_cleanup.exit_crit_edge
  %11 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bhs.i, align 4
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfs_dir_read_buffers(ptr noundef %sb, i32 noundef %indaddr, i32 noundef %size, ptr noundef %dir) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %size, -1
  %add = add i32 %sub, %1
  %neg = sub i32 0, %1
  %and = and i32 %add, %neg
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %and, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp = icmp ugt i32 %shr, 4
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %bhs4 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %4 = ptrtoint ptr %bhs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bhs4, align 4
  %bh = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %cmp5.not = icmp eq ptr %5, %bh
  br i1 %cmp5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 4) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %nr_buffers = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %9 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %bhs4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bhs4, align 4
  %mul = shl i32 %10, 2
  %13 = call ptr @memcpy(ptr %call8.i.i, ptr %12, i32 %mul)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %14 = ptrtoint ptr %bhs4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %bhs4, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  %nr_buffers17 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %15 = ptrtoint ptr %nr_buffers17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_buffers17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %shr)
  %cmp1876 = icmp ult i32 %16, %shr
  br i1 %cmp1876, label %for.body.lr.ph, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %and.i = and i32 %indaddr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sub.i = add nsw i32 %and.i, -1
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %shr.i = lshr i32 %indaddr, 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %bhs26 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ %16, %for.body.lr.ph ], [ %inc33, %if.end31.for.body_crit_edge ]
  br i1 %tobool.not.i, label %for.body.__adfs_block_map.exit_crit_edge, label %if.then.i

for.body.__adfs_block_map.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_block_map.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_log2sharesize.i = getelementptr inbounds %struct.adfs_sb_info, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_log2sharesize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_log2sharesize.i, align 4
  %shl.i = shl i32 %sub.i, %20
  %add.i = add i32 %shl.i, %i.077
  br label %__adfs_block_map.exit

__adfs_block_map.exit:                            ; preds = %if.then.i, %for.body.__adfs_block_map.exit_crit_edge
  %block.addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %i.077, %for.body.__adfs_block_map.exit_crit_edge ]
  %call2.i = tail call i32 @adfs_map_lookup(ptr noundef %sb, i32 noundef %shr.i, i32 noundef %block.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool21.not = icmp eq i32 %call2.i, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %__adfs_block_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_dir_read_buffers, ptr noundef nonnull @.str, i32 noundef %indaddr, i32 noundef %i.077) #8
  br label %error

if.end23:                                         ; preds = %__adfs_block_map.exit
  %conv24 = sext i32 %call2.i to i64
  %21 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_bdev.i, align 4
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %22, i64 noundef %conv24, i32 noundef %24, i32 noundef 8) #8
  %25 = ptrtoint ptr %bhs26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bhs26, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %i.077
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %arrayidx, align 4
  %28 = load ptr, ptr %bhs26, align 4
  %arrayidx28 = getelementptr ptr, ptr %28, i32 %i.077
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %30, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_dir_read_buffers, ptr noundef nonnull @.str.1, i32 noundef %indaddr, i32 noundef %i.077, i32 noundef %call2.i) #8
  br label %error

if.end31:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %nr_buffers17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_buffers17, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %nr_buffers17, align 4
  %inc33 = add i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc33, %shr
  br i1 %exitcond.not, label %if.end31.cleanup_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error:                                            ; preds = %if.then30, %if.then22
  %33 = ptrtoint ptr %nr_buffers17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_buffers17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.not.i = icmp eq i32 %34, 0
  br i1 %cmp6.not.i, label %error.for.end.i_crit_edge, label %error.for.body.i_crit_edge

error.for.body.i_crit_edge:                       ; preds = %error
  br label %for.body.i

error.for.end.i_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %error.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %error.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %bhs26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bhs26, align 4
  %arrayidx.i = getelementptr ptr, ptr %36, i32 %i.07.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %38) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %39 = ptrtoint ptr %nr_buffers17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_buffers17, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.for.end.i_crit_edge

brelse.exit.i.for.end.i_crit_edge:                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %brelse.exit.i.for.end.i_crit_edge, %error.for.end.i_crit_edge
  %41 = ptrtoint ptr %nr_buffers17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %nr_buffers17, align 4
  %42 = ptrtoint ptr %bhs26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bhs26, align 4
  %bh.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %cmp.not.i.i = icmp eq ptr %43, %bh.i.i
  br i1 %cmp.not.i.i, label %for.end.i.adfs_dir_relse.exit_crit_edge, label %if.then.i5.i

for.end.i.adfs_dir_relse.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_relse.exit

if.then.i5.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %43) #8
  br label %adfs_dir_relse.exit

adfs_dir_relse.exit:                              ; preds = %if.then.i5.i, %for.end.i.adfs_dir_relse.exit_crit_edge
  %44 = ptrtoint ptr %bhs26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %bhs26, align 4
  %45 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %dir, align 4
  br label %cleanup

cleanup:                                          ; preds = %adfs_dir_relse.exit, %if.end31.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %adfs_dir_relse.exit ], [ -22, %if.then.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__adfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adfs_object_fixup(ptr nocapture noundef readonly %dir, ptr nocapture noundef %obj) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name_len = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp77.not = icmp eq i32 %1, 0
  br i1 %cmp77.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.079 = phi i32 [ %inc5, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dots.078 = phi i32 [ %dots.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 %i.079
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %3)
  %cmp1 = icmp eq i8 %3, 47
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 46, ptr %arrayidx, align 1
  %inc = add i32 %dots.078, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %dots.1 = phi i32 [ %inc, %if.then ], [ %dots.078, %for.body.for.inc_crit_edge ]
  %inc5 = add nuw i32 %i.079, 1
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %name_len, align 4
  %cmp = icmp ult i32 %inc5, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dots.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %dots.1, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %6, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.lcssa)
  %cmp7 = icmp ult i32 %.lcssa, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %dots.0.lcssa, i32 %.lcssa)
  %cmp10 = icmp eq i32 %dots.0.lcssa, %.lcssa
  %or.cond = select i1 %cmp7, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then12, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %name13 = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 7
  %7 = ptrtoint ptr %name13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 94, ptr %name13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.end.if.end15_crit_edge
  %attr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %attr, align 4
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %land.lhs.true17, label %if.end15.if.end53_crit_edge

if.end15.if.end53_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true17:                                  ; preds = %if.end15
  %11 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dir, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_ftsuffix = getelementptr inbounds %struct.adfs_sb_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %s_ftsuffix to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_ftsuffix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %land.lhs.true17.if.end53_crit_edge, label %if.then19

land.lhs.true17.if.end53_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then19:                                        ; preds = %land.lhs.true17
  %loadaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %17 = ptrtoint ptr %loadaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loadaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048576, i32 %18)
  %cmp.i = icmp ult i32 %18, -1048576
  br i1 %cmp.i, label %if.then19.if.end53_crit_edge, label %if.then24

if.then19.if.end53_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %18, 8
  %inc27 = add i32 %.lcssa, 1
  %19 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc27, ptr %name_len, align 4
  %arrayidx28 = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 %.lcssa
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 44, ptr %arrayidx28, align 1
  %phi.cast.i = lshr i32 %18, 16
  %21 = and i32 %phi.cast.i, 15
  %arrayidx31 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx31, align 1
  %24 = load i32, ptr %name_len, align 4
  %inc34 = add i32 %24, 1
  store i32 %inc34, ptr %name_len, align 4
  %arrayidx35 = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 %24
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %arrayidx35, align 1
  %26 = lshr i32 %18, 12
  %and38 = and i32 %26, 15
  %arrayidx39 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and38
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39, align 1
  %29 = load i32, ptr %name_len, align 4
  %inc42 = add i32 %29, 1
  store i32 %inc42, ptr %name_len, align 4
  %arrayidx43 = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 %29
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %28, ptr %arrayidx43, align 1
  %and46 = and i32 %shr.i, 15
  %arrayidx47 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and46
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx47, align 1
  %33 = load i32, ptr %name_len, align 4
  %inc50 = add i32 %33, 1
  store i32 %inc50, ptr %name_len, align 4
  %arrayidx51 = getelementptr %struct.object_info, ptr %obj, i32 0, i32 7, i32 %33
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %arrayidx51, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then24, %if.then19.if.end53_crit_edge, %land.lhs.true17.if.end53_crit_edge, %if.end15.if.end53_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfs_dir_update(ptr noundef %sb, ptr noundef %obj, i32 noundef %wait) local_unnamed_addr #2 align 64 {
entry:
  %dir = alloca %struct.adfs_dir, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_dir = getelementptr inbounds %struct.anon.73, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_dir, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %dir) #8
  %4 = getelementptr inbounds i8, ptr %dir, i32 8
  %5 = call ptr @memset(ptr %4, i32 255, i32 36)
  %update = getelementptr inbounds %struct.adfs_dir_ops, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @adfs_dir_rwsem) #8
  %8 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %obj, align 4
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sb, ptr %dir, align 4
  %bh.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %bhs.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %11 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bh.i, ptr %bhs.i, align 4
  %nr_buffers.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %12 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_buffers.i, align 4
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_dir.i = getelementptr inbounds %struct.anon.73, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %s_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_dir.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call2.i = call i32 %18(ptr noundef %sb, i32 noundef %9, i32 noundef 0, ptr noundef nonnull %dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end4:                                          ; preds = %if.end
  %19 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %update, align 4
  %call6 = call i32 %20(ptr noundef nonnull %dir, ptr noundef %obj) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.forget_crit_edge

if.end4.forget_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %forget

if.end9:                                          ; preds = %if.end4
  %commit = getelementptr inbounds %struct.adfs_dir_ops, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %commit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %commit, align 4
  %call10 = call i32 %22(ptr noundef nonnull %dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.forget_crit_edge

if.end9.forget_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %forget

if.end13:                                         ; preds = %if.end9
  call void @up_write(ptr noundef nonnull @adfs_dir_rwsem) #8
  %23 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp4.not.i = icmp eq i32 %24, 0
  br i1 %cmp4.not.i, label %if.end13.adfs_dir_mark_dirty.exit_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.adfs_dir_mark_dirty.exit_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_mark_dirty.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %26, i32 %i.05.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  call void @mark_buffer_dirty(ptr noundef %28) #8
  %inc.i = add nuw i32 %i.05.i, 1
  %29 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.adfs_dir_mark_dirty.exit_crit_edge

for.body.i.adfs_dir_mark_dirty.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_mark_dirty.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

adfs_dir_mark_dirty.exit:                         ; preds = %for.body.i.adfs_dir_mark_dirty.exit_crit_edge, %if.end13.adfs_dir_mark_dirty.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool14.not = icmp eq i32 %wait, 0
  br i1 %tobool14.not, label %adfs_dir_mark_dirty.exit.if.end17thread-pre-split_crit_edge, label %if.then15

adfs_dir_mark_dirty.exit.if.end17thread-pre-split_crit_edge: ; preds = %adfs_dir_mark_dirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17thread-pre-split

if.then15:                                        ; preds = %adfs_dir_mark_dirty.exit
  %31 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_buffers.i, align 4
  %i.010.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.010.i)
  %cmp11.i = icmp sgt i32 %i.010.i, -1
  br i1 %cmp11.i, label %if.then15.for.body.i37_crit_edge, label %if.then15.if.end17_crit_edge

if.then15.if.end17_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15.for.body.i37_crit_edge:                 ; preds = %if.then15
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i.for.body.i37_crit_edge, %if.then15.for.body.i37_crit_edge
  %i.013.i = phi i32 [ %i.0.i, %if.end.i.for.body.i37_crit_edge ], [ %i.010.i, %if.then15.for.body.i37_crit_edge ]
  %err.012.i = phi i32 [ %err.1.i, %if.end.i.for.body.i37_crit_edge ], [ 0, %if.then15.for.body.i37_crit_edge ]
  %33 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i36 = getelementptr ptr, ptr %34, i32 %i.013.i
  %35 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i36, align 4
  %call.i = call i32 @sync_dirty_buffer(ptr noundef %36) #8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %for.body.i37.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i37.if.end.i_crit_edge:                  ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i9.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i9.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i9.i, 0
  %spec.select.i = select i1 %tobool3.not.i, i32 -5, i32 %err.012.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i37.if.end.i_crit_edge
  %err.1.i = phi i32 [ %err.012.i, %for.body.i37.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %i.0.i = add i32 %i.013.i, -1
  %cmp.i38 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i38, label %if.end.i.for.body.i37_crit_edge, label %if.end.i.if.end17thread-pre-split_crit_edge

if.end.i.if.end17thread-pre-split_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17thread-pre-split

if.end.i.for.body.i37_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

if.end17thread-pre-split:                         ; preds = %if.end.i.if.end17thread-pre-split_crit_edge, %adfs_dir_mark_dirty.exit.if.end17thread-pre-split_crit_edge
  %ret.0.ph = phi i32 [ 0, %adfs_dir_mark_dirty.exit.if.end17thread-pre-split_crit_edge ], [ %err.1.i, %if.end.i.if.end17thread-pre-split_crit_edge ]
  %42 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %nr_buffers.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17thread-pre-split, %if.then15.if.end17_crit_edge
  %43 = phi i32 [ %.pr, %if.end17thread-pre-split ], [ %32, %if.then15.if.end17_crit_edge ]
  %ret.0 = phi i32 [ %ret.0.ph, %if.end17thread-pre-split ], [ 0, %if.then15.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp6.not.i = icmp eq i32 %43, 0
  br i1 %cmp6.not.i, label %if.end17.for.end.i_crit_edge, label %if.end17.for.body.i43_crit_edge

if.end17.for.body.i43_crit_edge:                  ; preds = %if.end17
  br label %for.body.i43

if.end17.for.end.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i43:                                     ; preds = %brelse.exit.i.for.body.i43_crit_edge, %if.end17.for.body.i43_crit_edge
  %i.07.i = phi i32 [ %inc.i44, %brelse.exit.i.for.body.i43_crit_edge ], [ 0, %if.end17.for.body.i43_crit_edge ]
  %44 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i42 = getelementptr ptr, ptr %45, i32 %i.07.i
  %46 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i42, align 4
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %for.body.i43.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i43.brelse.exit.i_crit_edge:             ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %47) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i43.brelse.exit.i_crit_edge
  %inc.i44 = add nuw i32 %i.07.i, 1
  %48 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i45 = icmp ult i32 %inc.i44, %49
  br i1 %cmp.i45, label %brelse.exit.i.for.body.i43_crit_edge, label %brelse.exit.i.for.end.i_crit_edge

brelse.exit.i.for.end.i_crit_edge:                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

brelse.exit.i.for.body.i43_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43

for.end.i:                                        ; preds = %brelse.exit.i.for.end.i_crit_edge, %if.end17.for.end.i_crit_edge
  %50 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %nr_buffers.i, align 4
  %51 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bhs.i, align 4
  %cmp.not.i.i = icmp eq ptr %52, %bh.i
  br i1 %cmp.not.i.i, label %for.end.i.cleanup_crit_edge, label %if.then.i5.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i5.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %52) #8
  br label %cleanup

forget:                                           ; preds = %if.end9.forget_crit_edge, %if.end4.forget_crit_edge
  %ret.1 = phi i32 [ %call6, %if.end4.forget_crit_edge ], [ %call10, %if.end9.forget_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.1)
  %cmp = icmp eq i32 %ret.1, -2
  %53 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp6.not.i47 = icmp eq i32 %54, 0
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %forget
  br i1 %cmp6.not.i47, label %if.then18.for.end.i61_crit_edge, label %if.then18.for.body.i53_crit_edge

if.then18.for.body.i53_crit_edge:                 ; preds = %if.then18
  br label %for.body.i53

if.then18.for.end.i61_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i61

for.body.i53:                                     ; preds = %brelse.exit.i57.for.body.i53_crit_edge, %if.then18.for.body.i53_crit_edge
  %i.07.i50 = phi i32 [ %inc.i55, %brelse.exit.i57.for.body.i53_crit_edge ], [ 0, %if.then18.for.body.i53_crit_edge ]
  %55 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i51 = getelementptr ptr, ptr %56, i32 %i.07.i50
  %57 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i51, align 4
  %tobool.not.i.i52 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i52, label %for.body.i53.brelse.exit.i57_crit_edge, label %if.then.i.i54

for.body.i53.brelse.exit.i57_crit_edge:           ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i57

if.then.i.i54:                                    ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %58) #8
  br label %brelse.exit.i57

brelse.exit.i57:                                  ; preds = %if.then.i.i54, %for.body.i53.brelse.exit.i57_crit_edge
  %inc.i55 = add nuw i32 %i.07.i50, 1
  %59 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i56 = icmp ult i32 %inc.i55, %60
  br i1 %cmp.i56, label %brelse.exit.i57.for.body.i53_crit_edge, label %brelse.exit.i57.for.end.i61_crit_edge

brelse.exit.i57.for.end.i61_crit_edge:            ; preds = %brelse.exit.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i61

brelse.exit.i57.for.body.i53_crit_edge:           ; preds = %brelse.exit.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i53

for.end.i61:                                      ; preds = %brelse.exit.i57.for.end.i61_crit_edge, %if.then18.for.end.i61_crit_edge
  %61 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %nr_buffers.i, align 4
  %62 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bhs.i, align 4
  %cmp.not.i.i60 = icmp eq ptr %63, %bh.i
  br i1 %cmp.not.i.i60, label %for.end.i61.adfs_dir_relse.exit63_crit_edge, label %if.then.i5.i62

for.end.i61.adfs_dir_relse.exit63_crit_edge:      ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_relse.exit63

if.then.i5.i62:                                   ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %63) #8
  br label %adfs_dir_relse.exit63

adfs_dir_relse.exit63:                            ; preds = %if.then.i5.i62, %for.end.i61.adfs_dir_relse.exit63_crit_edge
  %64 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %bhs.i, align 4
  %65 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %dir, align 4
  br label %unlock

if.else:                                          ; preds = %forget
  br i1 %cmp6.not.i47, label %if.else.for.end.i78_crit_edge, label %if.else.for.body.i71_crit_edge

if.else.for.body.i71_crit_edge:                   ; preds = %if.else
  br label %for.body.i71

if.else.for.end.i78_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i78

for.body.i71:                                     ; preds = %bforget.exit.i.for.body.i71_crit_edge, %if.else.for.body.i71_crit_edge
  %i.07.i68 = phi i32 [ %inc.i73, %bforget.exit.i.for.body.i71_crit_edge ], [ 0, %if.else.for.body.i71_crit_edge ]
  %66 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i69 = getelementptr ptr, ptr %67, i32 %i.07.i68
  %68 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i69, align 4
  %tobool.not.i.i70 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i70, label %for.body.i71.bforget.exit.i_crit_edge, label %if.then.i.i72

for.body.i71.bforget.exit.i_crit_edge:            ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %bforget.exit.i

if.then.i.i72:                                    ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  call void @__bforget(ptr noundef nonnull %69) #8
  br label %bforget.exit.i

bforget.exit.i:                                   ; preds = %if.then.i.i72, %for.body.i71.bforget.exit.i_crit_edge
  %inc.i73 = add nuw i32 %i.07.i68, 1
  %70 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i74 = icmp ult i32 %inc.i73, %71
  br i1 %cmp.i74, label %bforget.exit.i.for.body.i71_crit_edge, label %bforget.exit.i.for.end.i78_crit_edge

bforget.exit.i.for.end.i78_crit_edge:             ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i78

bforget.exit.i.for.body.i71_crit_edge:            ; preds = %bforget.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71

for.end.i78:                                      ; preds = %bforget.exit.i.for.end.i78_crit_edge, %if.else.for.end.i78_crit_edge
  %72 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %nr_buffers.i, align 4
  %73 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bhs.i, align 4
  %cmp.not.i.i77 = icmp eq ptr %74, %bh.i
  br i1 %cmp.not.i.i77, label %for.end.i78.adfs_dir_forget.exit_crit_edge, label %if.then.i5.i79

for.end.i78.adfs_dir_forget.exit_crit_edge:       ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_forget.exit

if.then.i5.i79:                                   ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %74) #8
  br label %adfs_dir_forget.exit

adfs_dir_forget.exit:                             ; preds = %if.then.i5.i79, %for.end.i78.adfs_dir_forget.exit_crit_edge
  %75 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %bhs.i, align 4
  %76 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %dir, align 4
  br label %unlock

unlock:                                           ; preds = %adfs_dir_forget.exit, %adfs_dir_relse.exit63, %if.end.unlock_crit_edge
  %ret.2 = phi i32 [ %call2.i, %if.end.unlock_crit_edge ], [ -2, %adfs_dir_relse.exit63 ], [ %ret.1, %adfs_dir_forget.exit ]
  call void @up_write(ptr noundef nonnull @adfs_dir_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then.i5.i, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %for.end.i.cleanup_crit_edge ], [ %ret.0, %if.then.i5.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %dir) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_iterate(ptr nocapture noundef readonly %file, ptr noundef %ctx) #2 align 64 {
entry:
  %dir = alloca %struct.adfs_dir, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_dir = getelementptr inbounds %struct.anon.73, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %s_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_dir, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %dir) #8
  %8 = call ptr @memset(ptr %dir, i32 255, i32 44)
  tail call void @down_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  %call2 = call fastcc i32 @adfs_dir_read_inode(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %unlock

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i64 %10, label %if.end.if.end16_crit_edge [
    i64 0, label %if.then3
    i64 1, label %if.end.if.then11_crit_edge
  ]

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %18 to i64
  %call.i = call i32 %12(ptr noundef %ctx, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end8.thread, label %if.then3.unlock_relse_crit_edge

if.then3.unlock_relse_crit_edge:                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_relse

if.end8.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %pos, align 8
  br label %if.then11

if.then11:                                        ; preds = %if.end8.thread, %if.end.if.then11_crit_edge
  %parent_id = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 5
  %20 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_id, align 4
  %conv = zext i32 %21 to i64
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 8
  %call.i34 = call i32 %23(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %conv, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp.i35 = icmp eq i32 %call.i34, 0
  br i1 %cmp.i35, label %if.end14, label %if.then11.unlock_relse_crit_edge

if.then11.unlock_relse_crit_edge:                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_relse

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 2, ptr %pos, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end.if.end16_crit_edge
  %iterate = getelementptr inbounds %struct.adfs_dir_ops, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %iterate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iterate, align 4
  %call17 = call i32 %26(ptr noundef nonnull %dir, ptr noundef %ctx) #8
  br label %unlock_relse

unlock_relse:                                     ; preds = %if.end16, %if.then11.unlock_relse_crit_edge, %if.then3.unlock_relse_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16 ], [ 0, %if.then11.unlock_relse_crit_edge ], [ 0, %if.then3.unlock_relse_crit_edge ]
  call void @up_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  %nr_buffers.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %27 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6.not.i = icmp eq i32 %28, 0
  br i1 %cmp6.not.i, label %unlock_relse.for.end.i_crit_edge, label %for.body.lr.ph.i

unlock_relse.for.end.i_crit_edge:                 ; preds = %unlock_relse
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %unlock_relse
  %bhs.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ]
  %29 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %30, i32 %i.07.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %32) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %33 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i36 = icmp ult i32 %inc.i, %34
  br i1 %cmp.i36, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.for.end.i_crit_edge

brelse.exit.i.for.end.i_crit_edge:                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %brelse.exit.i.for.end.i_crit_edge, %unlock_relse.for.end.i_crit_edge
  %35 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nr_buffers.i, align 4
  %bhs.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %36 = ptrtoint ptr %bhs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bhs.i.i, align 4
  %bh.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %cmp.not.i.i = icmp eq ptr %37, %bh.i.i
  br i1 %cmp.not.i.i, label %for.end.i.cleanup_crit_edge, label %if.then.i5.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i5.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %37) #8
  br label %cleanup

unlock:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then.i5.i, %for.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %unlock ], [ %ret.0, %for.end.i.cleanup_crit_edge ], [ %ret.0, %if.then.i5.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %dir) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_hash(ptr noundef %parent, ptr nocapture noundef %qstr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qstr, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_namelen = getelementptr inbounds %struct.adfs_sb_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_namelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp = icmp ugt i32 %1, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %parent to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not16 = icmp eq i32 %1, 0
  br i1 %tobool.not16, label %if.end.while.end_crit_edge, label %while.body.preheader

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %if.end
  %name3 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %9 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name3, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %len.019 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %hash.018 = phi i32 [ %mul.i, %while.body.while.body_crit_edge ], [ %8, %while.body.preheader ]
  %name.017 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %10, %while.body.preheader ]
  %dec = add i32 %len.019, -1
  %incdec.ptr = getelementptr i8, ptr %name.017, i32 1
  %11 = ptrtoint ptr %name.017 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %name.017, align 1
  %13 = add i8 %12, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %13)
  %14 = icmp ult i8 %13, 26
  %add.i = add i8 %12, 32
  %c.addr.0.i = select i1 %14, i8 %add.i, i8 %12
  %conv = zext i8 %c.addr.0.i to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i15 = add i32 %shl.i, %hash.018
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i15, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ %8, %if.end.while.end_crit_edge ], [ %mul.i, %while.body.while.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash7 = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %15 = ptrtoint ptr %hash7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i.i.i, ptr %hash7, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -36, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_compare(ptr nocapture noundef readnone %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %qstr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp.not.i = icmp eq i32 %3, %len
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %entry.__adfs_compare.exit_crit_edge

entry.__adfs_compare.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp115.not.i = icmp eq i32 %len, 0
  br i1 %cmp115.not.i, label %for.cond.preheader.i.__adfs_compare.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.__adfs_compare.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.cond.i.__adfs_compare.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.__adfs_compare.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %1, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = add i8 %5, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %6)
  %7 = icmp ult i8 %6, 26
  %add.i.i = add i8 %5, 32
  %c.addr.0.i.i = select i1 %7, i8 %add.i.i, i8 %5
  %arrayidx2.i = getelementptr i8, ptr %str, i32 %i.016.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  %10 = add i8 %9, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %10)
  %11 = icmp ult i8 %10, 26
  %add.i13.i = add i8 %9, 32
  %c.addr.0.i14.i = select i1 %11, i8 %add.i13.i, i8 %9
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i, i8 %c.addr.0.i14.i)
  %cmp5.not.i = icmp eq i8 %c.addr.0.i.i, %c.addr.0.i14.i
  br i1 %cmp5.not.i, label %for.cond.i, label %for.body.i.__adfs_compare.exit_crit_edge

for.body.i.__adfs_compare.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit

__adfs_compare.exit:                              ; preds = %for.body.i.__adfs_compare.exit_crit_edge, %for.cond.i.__adfs_compare.exit_crit_edge, %for.cond.preheader.i.__adfs_compare.exit_crit_edge, %entry.__adfs_compare.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.__adfs_compare.exit_crit_edge ], [ 0, %for.cond.preheader.i.__adfs_compare.exit_crit_edge ], [ 0, %for.cond.i.__adfs_compare.exit_crit_edge ], [ 1, %for.body.i.__adfs_compare.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @adfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  %dir.i = alloca %struct.adfs_dir, align 4
  %obj = alloca %struct.object_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %obj) #8
  %0 = call ptr @memset(ptr %obj, i32 255, i32 288)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_dir.i = getelementptr inbounds %struct.anon.73, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %s_dir.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_dir.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %dir.i) #8
  %7 = call ptr @memset(ptr %dir.i, i32 255, i32 44)
  tail call void @down_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  %call1.i = call fastcc i32 @adfs_dir_read_inode(ptr noundef %2, ptr noundef %dir, ptr noundef nonnull %dir.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %unlock.i

if.end.i:                                         ; preds = %entry
  %setpos.i = getelementptr inbounds %struct.adfs_dir_ops, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %setpos.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setpos.i, align 4
  %call2.i = call i32 %9(ptr noundef nonnull %dir.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.unlock_relse.i_crit_edge

if.end.i.unlock_relse.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_relse.i

if.end5.i:                                        ; preds = %if.end.i
  %name6.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name6.i, align 8
  %12 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %d_name, align 8
  %getnext.i = getelementptr inbounds %struct.adfs_dir_ops, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %getnext.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %getnext.i, align 4
  %call737.i = call i32 %15(ptr noundef nonnull %dir.i, ptr noundef nonnull %obj) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call737.i)
  %cmp38.i = icmp eq i32 %call737.i, 0
  br i1 %cmp38.i, label %while.body.lr.ph.i, label %if.end5.i.while.end.i_crit_edge

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %name8.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 7
  %name_len9.i = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp115.not.i.i = icmp eq i32 %13, 0
  br label %while.body.i

while.body.i:                                     ; preds = %__adfs_compare.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %16 = ptrtoint ptr %name_len9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %name_len9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp.not.i.i = icmp eq i32 %13, %17
  br i1 %cmp.not.i.i, label %for.cond.preheader.i.i, label %while.body.i.__adfs_compare.exit.i_crit_edge

while.body.i.__adfs_compare.exit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit.i

for.cond.preheader.i.i:                           ; preds = %while.body.i
  br i1 %cmp115.not.i.i, label %for.cond.preheader.i.i.while.end.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.while.end.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.cond.i.i.while.end.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.while.end.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.016.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %i.016.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %20 = add i8 %19, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %20)
  %21 = icmp ult i8 %20, 26
  %add.i.i.i = add i8 %19, 32
  %c.addr.0.i.i.i = select i1 %21, i8 %add.i.i.i, i8 %19
  %arrayidx2.i.i = getelementptr i8, ptr %name8.i, i32 %i.016.i.i
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i.i, align 1
  %24 = add i8 %23, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %24)
  %25 = icmp ult i8 %24, 26
  %add.i13.i.i = add i8 %23, 32
  %c.addr.0.i14.i.i = select i1 %25, i8 %add.i13.i.i, i8 %23
  call void @__sanitizer_cov_trace_cmp1(i8 %c.addr.0.i.i.i, i8 %c.addr.0.i14.i.i)
  %cmp5.not.i.i = icmp eq i8 %c.addr.0.i.i.i, %c.addr.0.i14.i.i
  br i1 %cmp5.not.i.i, label %for.cond.i.i, label %for.body.i.i.__adfs_compare.exit.i_crit_edge

for.body.i.i.__adfs_compare.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__adfs_compare.exit.i

__adfs_compare.exit.i:                            ; preds = %for.body.i.i.__adfs_compare.exit.i_crit_edge, %while.body.i.__adfs_compare.exit.i_crit_edge
  %26 = ptrtoint ptr %getnext.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %getnext.i, align 4
  %call7.i = call i32 %27(ptr noundef nonnull %dir.i, ptr noundef nonnull %obj) #8
  %cmp.i = icmp eq i32 %call7.i, 0
  br i1 %cmp.i, label %__adfs_compare.exit.i.while.body.i_crit_edge, label %__adfs_compare.exit.i.while.end.i_crit_edge

__adfs_compare.exit.i.while.end.i_crit_edge:      ; preds = %__adfs_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

__adfs_compare.exit.i.while.body.i_crit_edge:     ; preds = %__adfs_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %__adfs_compare.exit.i.while.end.i_crit_edge, %for.cond.i.i.while.end.i_crit_edge, %for.cond.preheader.i.i.while.end.i_crit_edge, %if.end5.i.while.end.i_crit_edge
  %ret.0.i = phi i32 [ -2, %if.end5.i.while.end.i_crit_edge ], [ 0, %for.cond.i.i.while.end.i_crit_edge ], [ 0, %for.cond.preheader.i.i.while.end.i_crit_edge ], [ -2, %__adfs_compare.exit.i.while.end.i_crit_edge ]
  %indaddr.i = getelementptr i8, ptr %dir, i32 -20
  %28 = ptrtoint ptr %indaddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %indaddr.i, align 4
  %30 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %obj, align 4
  br label %unlock_relse.i

unlock_relse.i:                                   ; preds = %while.end.i, %if.end.i.unlock_relse.i_crit_edge
  %ret.1.i = phi i32 [ %call2.i, %if.end.i.unlock_relse.i_crit_edge ], [ %ret.0.i, %while.end.i ]
  call void @up_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  %nr_buffers.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir.i, i32 0, i32 1
  %31 = ptrtoint ptr %nr_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_buffers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp6.not.i.i, label %unlock_relse.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

unlock_relse.i.for.end.i.i_crit_edge:             ; preds = %unlock_relse.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %unlock_relse.i
  %bhs.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir.i, i32 0, i32 3
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %brelse.exit.i.i.for.body.i32.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i33.i, %brelse.exit.i.i.for.body.i32.i_crit_edge ]
  %33 = ptrtoint ptr %bhs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bhs.i.i, align 4
  %arrayidx.i31.i = getelementptr ptr, ptr %34, i32 %i.07.i.i
  %35 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i31.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %for.body.i32.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.i32.i.brelse.exit.i.i_crit_edge:         ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %36) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %for.body.i32.i.brelse.exit.i.i_crit_edge
  %inc.i33.i = add nuw i32 %i.07.i.i, 1
  %37 = ptrtoint ptr %nr_buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_buffers.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i33.i, %38
  br i1 %cmp.i.i, label %brelse.exit.i.i.for.body.i32.i_crit_edge, label %brelse.exit.i.i.for.end.i.i_crit_edge

brelse.exit.i.i.for.end.i.i_crit_edge:            ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

brelse.exit.i.i.for.body.i32.i_crit_edge:         ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i32.i

for.end.i.i:                                      ; preds = %brelse.exit.i.i.for.end.i.i_crit_edge, %unlock_relse.i.for.end.i.i_crit_edge
  %39 = ptrtoint ptr %nr_buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %nr_buffers.i.i, align 4
  %bhs.i.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir.i, i32 0, i32 3
  %40 = ptrtoint ptr %bhs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bhs.i.i.i, align 4
  %bh.i.i.i = getelementptr inbounds %struct.adfs_dir, ptr %dir.i, i32 0, i32 2
  %cmp.not.i.i.i = icmp eq ptr %41, %bh.i.i.i
  br i1 %cmp.not.i.i.i, label %for.end.i.i.adfs_dir_lookup_byname.exit_crit_edge, label %if.then.i5.i.i

for.end.i.i.adfs_dir_lookup_byname.exit_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_lookup_byname.exit

if.then.i5.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %41) #8
  br label %adfs_dir_lookup_byname.exit

unlock.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef nonnull @adfs_dir_rwsem) #8
  br label %adfs_dir_lookup_byname.exit

adfs_dir_lookup_byname.exit:                      ; preds = %unlock.i, %if.then.i5.i.i, %for.end.i.i.adfs_dir_lookup_byname.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %unlock.i ], [ %ret.1.i, %for.end.i.i.adfs_dir_lookup_byname.exit_crit_edge ], [ %ret.1.i, %if.then.i5.i.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %dir.i) #8
  %42 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %retval.0.i, label %if.then5 [
    i32 0, label %if.then
    i32 -2, label %adfs_dir_lookup_byname.exit.if.end8_crit_edge
  ]

adfs_dir_lookup_byname.exit.if.end8_crit_edge:    ; preds = %adfs_dir_lookup_byname.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %adfs_dir_lookup_byname.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb.i, align 4
  %call1 = call ptr @adfs_iget(ptr noundef %44, ptr noundef nonnull %obj) #8
  %tobool.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -13 to ptr), ptr %call1
  br label %if.end8

if.then5:                                         ; preds = %adfs_dir_lookup_byname.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = inttoptr i32 %retval.0.i to ptr
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then, %adfs_dir_lookup_byname.exit.if.end8_crit_edge
  %inode.0 = phi ptr [ %45, %if.then5 ], [ null, %adfs_dir_lookup_byname.exit.if.end8_crit_edge ], [ %spec.select, %if.then ]
  %call9 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #8
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %obj) #8
  ret ptr %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_notify_change(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_map_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adfs_dir_read_inode(ptr noundef %sb, ptr nocapture noundef readonly %inode, ptr noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %indaddr = getelementptr i8, ptr %inode, i32 -20
  %0 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %indaddr, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sb, ptr %dir, align 4
  %bh.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 2
  %bhs.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %5 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bh.i, ptr %bhs.i, align 4
  %nr_buffers.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nr_buffers.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_dir.i = getelementptr inbounds %struct.anon.73, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %s_dir.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_dir.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call2.i = tail call i32 %12(ptr noundef %sb, i32 noundef %1, i32 noundef %conv, ptr noundef %dir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent_id = getelementptr i8, ptr %inode, i32 -24
  %13 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %parent_id, align 8
  %parent_id3 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 5
  %15 = ptrtoint ptr %parent_id3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parent_id3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not = icmp eq i32 %14, %16
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_dir_read_inode, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %16) #8
  %17 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not.i = icmp eq i32 %18, 0
  br i1 %cmp6.not.i, label %if.then5.for.end.i_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.for.end.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %brelse.exit.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %brelse.exit.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bhs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %20, i32 %i.07.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %for.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

for.body.i.brelse.exit.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %22) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %for.body.i.brelse.exit.i_crit_edge
  %inc.i = add nuw i32 %i.07.i, 1
  %23 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_buffers.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %brelse.exit.i.for.body.i_crit_edge, label %brelse.exit.i.for.end.i_crit_edge

brelse.exit.i.for.end.i_crit_edge:                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

brelse.exit.i.for.body.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %brelse.exit.i.for.end.i_crit_edge, %if.then5.for.end.i_crit_edge
  %25 = ptrtoint ptr %nr_buffers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %nr_buffers.i, align 4
  %26 = ptrtoint ptr %bhs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bhs.i, align 4
  %cmp.not.i.i = icmp eq ptr %27, %bh.i
  br i1 %cmp.not.i.i, label %for.end.i.adfs_dir_relse.exit_crit_edge, label %if.then.i5.i

for.end.i.adfs_dir_relse.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adfs_dir_relse.exit

if.then.i5.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %27) #8
  br label %adfs_dir_relse.exit

adfs_dir_relse.exit:                              ; preds = %if.then.i5.i, %for.end.i.adfs_dir_relse.exit_crit_edge
  %28 = ptrtoint ptr %bhs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %bhs.i, align 4
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dir, align 4
  br label %cleanup

cleanup:                                          ; preds = %adfs_dir_relse.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %entry.cleanup_crit_edge ], [ -5, %adfs_dir_relse.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adfs_iget(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__func__.adfs_dir_read_buffers, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/adfs/dir.c", i32 123, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/adfs/dir.c", i32 130, i32 4}
!5 = !{ptr @adfs_dir_operations, !6, !"adfs_dir_operations", i1 false, i1 false}
!6 = !{!"../fs/adfs/dir.c", i32 387, i32 30}
!7 = !{ptr @adfs_dentry_operations, !8, !"adfs_dentry_operations", i1 false, i1 false}
!8 = !{!"../fs/adfs/dir.c", i32 424, i32 32}
!9 = !{ptr @adfs_dir_inode_operations, !10, !"adfs_dir_inode_operations", i1 false, i1 false}
!10 = !{!"../fs/adfs/dir.c", i32 454, i32 31}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/adfs/dir.c", i32 15, i32 8}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @adfs_dir_rwsem, !12, !"adfs_dir_rwsem", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/adfs/dir.c", i32 257, i32 22}
!17 = !{ptr @__func__.adfs_dir_read_inode, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/adfs/dir.c", i32 166, i32 3}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
