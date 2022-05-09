; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_lookup.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_lookup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.dir_context = type { ptr, i64 }
%struct.vxfs_inode_info = type { %struct.inode, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8, %union.anon.71, i32, i32, %union.anon.72 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { [6 x %struct.vxfs_typed] }
%struct.vxfs_typed = type { i64, i32, i32 }
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.vxfs_dirblk = type { i16, i16, [1 x i16] }
%struct.vxfs_direct = type { i32, i16, i16, i16, [256 x i8] }
%struct.page = type { i32, %union.anon.21, %union.anon.31, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }

@vxfs_dir_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @vxfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@vxfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vxfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"vxfs_dir_operations\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 59, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 55, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 717, i32 2 }
@___asan_gen_.14 = private constant [29 x i8] c"../fs/freevxfs/vxfs_lookup.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 229, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 3566, i32 25 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @vxfs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vxfs_lookup(ptr nocapture noundef readonly %dip, ptr noundef %dp, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dp, i32 0, i32 4
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
  %call1 = tail call fastcc i32 @vxfs_inode_by_name(ptr noundef %dip, ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_sb = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call3 = tail call ptr @vxfs_iget(ptr noundef %3, i32 noundef %call1) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %ip.0 = phi ptr [ %call3, %if.then2 ], [ null, %if.end.if.end4_crit_edge ]
  %call5 = tail call ptr @d_splice_alias(ptr noundef %ip.0, ptr noundef %dp) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vxfs_readdir(ptr nocapture noundef readonly %fp, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %pos1 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %8 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %17 to i64
  %call.i = tail call i32 %11(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %if.then.cleanup98_crit_edge

if.then.cleanup98_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup98

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos1, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %pos1, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %20 = phi i64 [ %inc, %if.end ], [ %9, %entry.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %20)
  %cmp7 = icmp eq i64 %20, 1
  br i1 %cmp7, label %if.then8, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %vii_ftarea = getelementptr inbounds %struct.vxfs_inode_info, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %vii_ftarea to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vii_ftarea, align 4
  %conv = zext i32 %22 to i64
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  %call.i156 = tail call i32 %24(ptr noundef %ctx, ptr noundef nonnull @.str.2, i32 noundef 2, i64 noundef 1, i64 noundef %conv, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp.i157 = icmp eq i32 %call.i156, 0
  br i1 %cmp.i157, label %if.end12, label %if.then8.cleanup98_crit_edge

if.then8.cleanup98_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup98

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pos1, align 8
  %inc14 = add i64 %26, 1
  store i64 %inc14, ptr %pos1, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end12, %if.end5.if.end15_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size, align 8
  %sub = add i64 %28, 3
  %and = and i64 %sub, -4
  %29 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %and)
  %cmp17 = icmp sgt i64 %30, %and
  br i1 %cmp17, label %if.end15.cleanup98_crit_edge, label %if.end20

if.end15.cleanup98_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup98

if.end20:                                         ; preds = %if.end15
  %and22 = and i64 %30, -4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %sub39 = add i32 %5, -1
  %conv40 = zext i32 %sub39 to i64
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %7, i32 0, i32 9
  %neg = sub i32 0, %5
  %conv59 = zext i32 %neg to i64
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %if.end20
  %pos.0 = phi i64 [ %and22, %if.end20 ], [ %pos.4, %while.end.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0, i64 %and)
  %cmp23 = icmp slt i64 %pos.0, %and
  br i1 %cmp23, label %while.body, label %while.cond.while.end96_crit_edge

while.cond.while.end96_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end96

while.body:                                       ; preds = %while.cond
  %31 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping, align 8
  %33 = lshr i64 %pos.0, 12
  %conv27 = trunc i64 %33 to i32
  %call28 = tail call ptr @vxfs_get_page(ptr noundef %32, i32 noundef %conv27) #5
  %cmp.i158 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %while.body.cleanup98_crit_edge, label %while.body38.preheader

while.body.cleanup98_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup98

while.body38.preheader:                           ; preds = %while.body
  %call32 = tail call ptr @page_address(ptr noundef %call28) #5
  %34 = trunc i64 %pos.0 to i32
  %conv26 = and i32 %34, 4095
  br label %while.body38

while.body38:                                     ; preds = %cleanup.while.body38_crit_edge, %while.body38.preheader
  %rc.0206 = phi i32 [ %rc.1, %cleanup.while.body38_crit_edge ], [ 0, %while.body38.preheader ]
  %pg_ofs.0205 = phi i32 [ %add65, %cleanup.while.body38_crit_edge ], [ %conv26, %while.body38.preheader ]
  %pos.1204 = phi i64 [ %add69, %cleanup.while.body38_crit_edge ], [ %pos.0, %while.body38.preheader ]
  %and41 = and i64 %pos.1204, %conv40
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %and41)
  %cmp42 = icmp ult i64 %and41, 4
  br i1 %cmp42, label %if.then44, label %while.body38.if.end52_crit_edge

while.body38.if.end52_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then44:                                        ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #7
  %35 = trunc i64 %pos.1204 to i32
  %idx.ext = and i32 %35, 4095
  %add.ptr = getelementptr i8, ptr %call32, i32 %idx.ext
  %d_nhash = getelementptr inbounds %struct.vxfs_dirblk, ptr %add.ptr, i32 0, i32 1
  %36 = ptrtoint ptr %d_nhash to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %d_nhash, align 2
  %38 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i159 = icmp eq i32 %39, 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %37) #5
  %retval.0.i = select i1 %cmp.i159, i16 %37, i16 %40
  %conv47 = zext i16 %retval.0.i to i32
  %mul = shl nuw nsw i32 %conv47, 1
  %add48 = add nuw nsw i32 %mul, 4
  %41 = zext i32 %add48 to i64
  %add50 = add i64 %pos.1204, %41
  %add51 = add nuw nsw i32 %add48, %pg_ofs.0205
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %while.body38.if.end52_crit_edge
  %pos.2 = phi i64 [ %add50, %if.then44 ], [ %pos.1204, %while.body38.if.end52_crit_edge ]
  %pg_ofs.1 = phi i32 [ %add51, %if.then44 ], [ %pg_ofs.0205, %while.body38.if.end52_crit_edge ]
  %add.ptr53 = getelementptr i8, ptr %call32, i32 %pg_ofs.1
  %d_reclen = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr53, i32 0, i32 1
  %42 = ptrtoint ptr %d_reclen to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %d_reclen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not = icmp eq i16 %43, 0
  br i1 %tobool.not, label %if.then54, label %if.end61

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %add57 = add i64 %pos.2, %conv40
  %and60 = and i64 %add57, %conv59
  br label %while.end

if.end61:                                         ; preds = %if.end52
  %44 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i161 = icmp eq i32 %45, 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %43) #5
  %retval.0.i162 = select i1 %cmp.i161, i16 %43, i16 %46
  %conv64 = zext i16 %retval.0.i162 to i32
  %add65 = add nuw nsw i32 %pg_ofs.1, %conv64
  %conv68 = zext i16 %retval.0.i162 to i64
  %add69 = add i64 %pos.2, %conv68
  %47 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool70.not = icmp eq i32 %48, 0
  br i1 %tobool70.not, label %if.end61.cleanup_crit_edge, label %if.end72

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  %d_name = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr53, i32 0, i32 4
  %d_namelen = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr53, i32 0, i32 2
  %49 = ptrtoint ptr %d_namelen to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %d_namelen, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #5
  %retval.0.i168 = select i1 %cmp.i161, i16 %50, i16 %51
  %conv74 = zext i16 %retval.0.i168 to i32
  %52 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  %retval.0.i171 = select i1 %cmp.i161, i32 %48, i32 %52
  %conv77 = zext i32 %retval.0.i171 to i64
  %53 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctx, align 8
  %55 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %pos1, align 8
  %call.i173 = tail call i32 %54(ptr noundef %ctx, ptr noundef %d_name, i32 noundef %conv74, i64 noundef %56, i64 noundef %conv77, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp.i174 = icmp eq i32 %call.i173, 0
  br i1 %cmp.i174, label %if.end72.cleanup_crit_edge, label %while.end.thread

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.thread:                                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %d_reclen.le = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr53, i32 0, i32 1
  %57 = ptrtoint ptr %d_reclen.le to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %d_reclen.le, align 4
  %59 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i176 = icmp eq i32 %60, 1
  %61 = tail call i16 @llvm.bswap.i16(i16 %58) #5
  %retval.0.i177 = select i1 %cmp.i176, i16 %58, i16 %61
  %conv84 = zext i16 %retval.0.i177 to i64
  %sub85 = sub i64 %add69, %conv84
  tail call void @vxfs_put_page(ptr noundef %call28) #5
  br label %while.end96

cleanup:                                          ; preds = %if.end72.cleanup_crit_edge, %if.end61.cleanup_crit_edge
  %rc.1 = phi i32 [ %rc.0206, %if.end61.cleanup_crit_edge ], [ 1, %if.end72.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add65)
  %cmp34 = icmp ult i32 %add65, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add69, i64 %and)
  %cmp36 = icmp slt i64 %add69, %and
  %or.cond = select i1 %cmp34, i1 %cmp36, i1 false
  br i1 %or.cond, label %cleanup.while.body38_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.while.body38_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body38

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then54
  %rc.0195 = phi i32 [ %rc.0206, %if.then54 ], [ %rc.1, %cleanup.while.end_crit_edge ]
  %pos.4 = phi i64 [ %and60, %if.then54 ], [ %add69, %cleanup.while.end_crit_edge ]
  tail call void @vxfs_put_page(ptr noundef %call28) #5
  %tobool87.not = icmp eq i32 %rc.0195, 0
  br i1 %tobool87.not, label %while.end.while.end96_crit_edge, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end.while.end96_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end96

while.end96:                                      ; preds = %while.end.while.end96_crit_edge, %while.end.thread, %while.cond.while.end96_crit_edge
  %pos.6 = phi i64 [ %sub85, %while.end.thread ], [ %pos.4, %while.end.while.end96_crit_edge ], [ %pos.0, %while.cond.while.end96_crit_edge ]
  %or = or i64 %pos.6, 2
  %62 = ptrtoint ptr %pos1 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %or, ptr %pos1, align 8
  br label %cleanup98

cleanup98:                                        ; preds = %while.end96, %while.body.cleanup98_crit_edge, %if.end15.cleanup98_crit_edge, %if.then8.cleanup98_crit_edge, %if.then.cleanup98_crit_edge
  %retval.2 = phi i32 [ 0, %if.end15.cleanup98_crit_edge ], [ 0, %if.then8.cleanup98_crit_edge ], [ 0, %if.then.cleanup98_crit_edge ], [ 0, %while.end96 ], [ -12, %while.body.cleanup98_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxfs_inode_by_name(ptr nocapture noundef readonly %dip, ptr nocapture noundef readonly %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dp, i32 0, i32 4
  %name1.i = getelementptr inbounds %struct.dentry, ptr %dp, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1.i, align 8
  %2 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  %sub.i = add i64 %5, 3
  %and.i = and i64 %sub.i, -4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp144.i = icmp sgt i64 %and.i, 0
  br i1 %cmp144.i, label %while.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dip, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %sub14.i = add i32 %11, -1
  %conv15.i = zext i32 %sub14.i to i64
  %byte_order.i.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %9, i32 0, i32 9
  %neg.i = sub i32 0, %11
  %conv34.i = zext i32 %neg.i to i64
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup62.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.0145.i = phi i64 [ 0, %while.body.lr.ph.i ], [ %pos.4157.i, %cleanup62.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping.i, align 8
  %14 = lshr i64 %pos.0145.i, 12
  %conv5.i = trunc i64 %14 to i32
  %call.i = tail call ptr @vxfs_get_page(ptr noundef %13, i32 noundef %conv5.i) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %while.body.i.if.end_crit_edge, label %if.end.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %while.body.i
  %call7.i = tail call ptr @page_address(ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0145.i, i64 %and.i)
  %cmp11140.i = icmp slt i64 %pos.0145.i, %and.i
  br i1 %cmp11140.i, label %while.body13.preheader.i, label %if.end.i.cleanup62.i_crit_edge

if.end.i.cleanup62.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62.i

while.body13.preheader.i:                         ; preds = %if.end.i
  %15 = trunc i64 %pos.0145.i to i32
  %conv.i = and i32 %15, 4095
  br label %while.body13.i

while.body13.i:                                   ; preds = %cleanup.i.while.body13.i_crit_edge, %while.body13.preheader.i
  %pg_ofs.0143.i = phi i32 [ %add40.i, %cleanup.i.while.body13.i_crit_edge ], [ %conv.i, %while.body13.preheader.i ]
  %pos.1142.i = phi i64 [ %add44.i, %cleanup.i.while.body13.i_crit_edge ], [ %pos.0145.i, %while.body13.preheader.i ]
  %and16.i = and i64 %pos.1142.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %and16.i)
  %cmp17.i = icmp ult i64 %and16.i, 4
  br i1 %cmp17.i, label %if.then19.i, label %while.body13.i.if.end27.i_crit_edge

while.body13.i.if.end27.i_crit_edge:              ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then19.i:                                      ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = trunc i64 %pos.1142.i to i32
  %idx.ext.i = and i32 %16, 4095
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 %idx.ext.i
  %d_nhash.i = getelementptr inbounds %struct.vxfs_dirblk, ptr %add.ptr.i, i32 0, i32 1
  %17 = ptrtoint ptr %d_nhash.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %d_nhash.i, align 2
  %19 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i112.i = icmp eq i32 %20, 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %18) #5
  %retval.0.i.i = select i1 %cmp.i112.i, i16 %18, i16 %21
  %conv22.i = zext i16 %retval.0.i.i to i32
  %mul.i = shl nuw nsw i32 %conv22.i, 1
  %add23.i = add nuw nsw i32 %mul.i, 4
  %22 = zext i32 %add23.i to i64
  %add25.i = add i64 %pos.1142.i, %22
  %add26.i = add nuw nsw i32 %add23.i, %pg_ofs.0143.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then19.i, %while.body13.i.if.end27.i_crit_edge
  %pos.2.i = phi i64 [ %add25.i, %if.then19.i ], [ %pos.1142.i, %while.body13.i.if.end27.i_crit_edge ]
  %pg_ofs.1.i = phi i32 [ %add26.i, %if.then19.i ], [ %pg_ofs.0143.i, %while.body13.i.if.end27.i_crit_edge ]
  %add.ptr28.i = getelementptr i8, ptr %call7.i, i32 %pg_ofs.1.i
  %d_reclen.i = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr28.i, i32 0, i32 1
  %23 = ptrtoint ptr %d_reclen.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %d_reclen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i, label %if.then29.i, label %if.end36.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %add32.i = add i64 %pos.2.i, %conv15.i
  %and35.i = and i64 %add32.i, %conv34.i
  br label %cleanup62.i

if.end36.i:                                       ; preds = %if.end27.i
  %25 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i114.i = icmp eq i32 %26, 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %24) #5
  %retval.0.i115.i = select i1 %cmp.i114.i, i16 %24, i16 %27
  %conv39.i = zext i16 %retval.0.i115.i to i32
  %add40.i = add nuw nsw i32 %pg_ofs.1.i, %conv39.i
  %conv43.i = zext i16 %retval.0.i115.i to i64
  %add44.i = add i64 %pos.2.i, %conv43.i
  %28 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool45.not.i = icmp eq i32 %29, 0
  br i1 %tobool45.not.i, label %if.end36.i.cleanup.i_crit_edge, label %if.end47.i

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end47.i:                                       ; preds = %if.end36.i
  %d_namelen.i = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr28.i, i32 0, i32 2
  %30 = ptrtoint ptr %d_namelen.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %d_namelen.i, align 2
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #5
  %retval.0.i121.i = select i1 %cmp.i114.i, i16 %31, i16 %32
  %conv49.i = zext i16 %retval.0.i121.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv49.i)
  %cmp50.not.i = icmp eq i32 %3, %conv49.i
  br i1 %cmp50.not.i, label %if.end53.i, label %if.end47.i.cleanup.i_crit_edge

if.end47.i.cleanup.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end53.i:                                       ; preds = %if.end47.i
  %d_name54.i = getelementptr inbounds %struct.vxfs_direct, ptr %add.ptr28.i, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %d_name54.i, i32 %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool56.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool56.not.i, label %while.end.i, label %if.end53.i.cleanup.i_crit_edge

if.end53.i.cleanup.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end53.i.cleanup.i_crit_edge, %if.end47.i.cleanup.i_crit_edge, %if.end36.i.cleanup.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add40.i)
  %cmp9.i = icmp ult i32 %add40.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add44.i, i64 %and.i)
  %cmp11.i = icmp slt i64 %add44.i, %and.i
  %or.cond.i = select i1 %cmp9.i, i1 %cmp11.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.while.body13.i_crit_edge, label %cleanup.i.cleanup62.i_crit_edge

cleanup.i.cleanup62.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62.i

cleanup.i.while.body13.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body13.i

while.end.i:                                      ; preds = %if.end53.i
  %tobool59.not.i = icmp eq ptr %add.ptr28.i, null
  br i1 %tobool59.not.i, label %while.end.i.cleanup62.i_crit_edge, label %if.then

while.end.i.cleanup62.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62.i

cleanup62.i:                                      ; preds = %while.end.i.cleanup62.i_crit_edge, %cleanup.i.cleanup62.i_crit_edge, %if.then29.i, %if.end.i.cleanup62.i_crit_edge
  %pos.4157.i = phi i64 [ %and35.i, %if.then29.i ], [ %add44.i, %while.end.i.cleanup62.i_crit_edge ], [ %pos.0145.i, %if.end.i.cleanup62.i_crit_edge ], [ %add44.i, %cleanup.i.cleanup62.i_crit_edge ]
  tail call void @vxfs_put_page(ptr noundef %call.i) #5
  %cmp.i = icmp slt i64 %pos.4157.i, %and.i
  br i1 %cmp.i, label %cleanup62.i.while.body.i_crit_edge, label %cleanup62.i.if.end_crit_edge

cleanup62.i.if.end_crit_edge:                     ; preds = %cleanup62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup62.i.while.body.i_crit_edge:               ; preds = %cleanup62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.then:                                          ; preds = %while.end.i
  %33 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 33
  %35 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info, align 16
  %37 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr28.i, align 4
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %36, i32 0, i32 9
  %39 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i4 = icmp eq i32 %40, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %retval.0.i = select i1 %cmp.i4, i32 %38, i32 %41
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #5
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %43, 30
  %44 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.then.kunmap.exit_crit_edge [
    i32 2, label %if.then.if.end.i5_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.end.i5_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i5

if.then.kunmap.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %45 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp2.i.not.i = icmp eq i32 %45, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i5_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i5_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i5

if.end.i5:                                        ; preds = %is_highmem_idx.exit.i.if.end.i5_crit_edge, %if.then.if.end.i5_crit_edge
  tail call void @kunmap_high(ptr noundef %call.i) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i5, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then.kunmap.exit_crit_edge
  %46 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !21

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add i32 %48, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i6 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %49, %if.end.i.i ]
  %50 = inttoptr i32 %retval.0.i.i6 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !22

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.1) #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #5, !srcloc !23
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #5
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #5, !srcloc !25
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vxfs_inode_by_name, %if.then.i.i.i.i.i)) #5
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !27

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #5
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_page(ptr noundef %50) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %cleanup62.i.if.end_crit_edge, %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ino.0 = phi i32 [ %retval.0.i, %folio_put_testzero.exit.i.i.if.end_crit_edge ], [ %retval.0.i, %if.then.i4.i ], [ 0, %entry.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ], [ 0, %cleanup62.i.if.end_crit_edge ]
  ret i32 %ino.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_iget(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_get_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxfs_put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @vxfs_dir_inode_ops, !1, !"vxfs_dir_inode_ops", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_lookup.c", i32 55, i32 31}
!2 = !{ptr @vxfs_dir_operations, !3, !"vxfs_dir_operations", i1 false, i1 false}
!3 = !{!"../fs/freevxfs/vxfs_lookup.c", i32 59, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/freevxfs/vxfs_lookup.c", i32 229, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153116705, i64 2153117188, i64 2153116742, i64 2153116798, i64 2153116832, i64 2153116856, i64 2153116897, i64 2153116918, i64 2153116946, i64 2153116980}
!24 = !{i64 2148746145}
!25 = !{i64 2148660854, i64 2148660886, i64 2148660915, i64 2148660949, i64 2148660980, i64 2148661003}
!26 = !{i64 2148746374}
!27 = !{i64 2148482267, i64 2148482272, i64 2148482285, i64 2148482329, i64 2148482363, i64 2148482384}
