; ModuleID = '/llk/IR_all_yes/fs/exfat/inode.c_pt.bc'
source_filename = "../fs/exfat/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
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
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.exfat_dentry = type { i8, %union.anon.83 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }>
%struct.exfat_chain = type { i32, i32, i8 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.exfat_inode_info = type { %struct.exfat_chain, i32, i32, i16, i32, i8, i32, %struct.exfat_hint, %struct.exfat_hint, %struct.exfat_hint_femp, %struct.spinlock, %struct.list_head, i32, i32, i64, i64, i64, %struct.hlist_node, %struct.rw_semaphore, %struct.inode, %struct.timespec64 }
%struct.exfat_hint = type { i32, %union.anon.82 }
%union.anon.82 = type { i32 }
%struct.exfat_hint_femp = type { i32, i32, %struct.exfat_chain }
%struct.exfat_dir_entry = type { %struct.exfat_chain, i32, i32, i32, i8, i16, i64, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.exfat_dentry_namebuf }
%struct.exfat_dentry_namebuf = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/exfat/inode.c\00", [47 x i8] zeroinitializer }, align 32
@__func__.exfat_get_block = private unnamed_addr constant [16 x i8] c"exfat_get_block\00", align 1
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to bmap (inode : %p iblock : %llu, err : %d)\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"requested for bmap out of range(pos : (%llu) > i_size_aligned(%llu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"broken FAT chain.\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bogus cluster new allocated (last_clu : %u, new_clu : %u)\00", [38 x i8] zeroinitializer }, align 32
@exfat_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@exfat_dir_operations = external dso_local constant %struct.file_operations, align 4
@exfat_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@exfat_file_operations = external dso_local constant %struct.file_operations, align 4
@exfat_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @exfat_writepage, ptr @exfat_readpage, ptr @exfat_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @exfat_readahead, ptr @exfat_write_begin, ptr @exfat_write_end, ptr @exfat_aop_bmap, ptr null, ptr null, ptr null, ptr @exfat_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid size(size(%llu) > aligned(%llu)\0A\00", [55 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 96, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 314, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 343, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 177, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 188, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"exfat_aops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 492, i32 46 }
@___asan_gen_.27 = private constant [20 x i8] c"../fs/exfat/inode.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 419, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 271, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @exfat_aops, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %4 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %conv = zext i1 %cmp to i32
  %call1 = tail call fastcc i32 @__exfat_write_inode(ptr noundef %inode, i32 noundef %conv)
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i7 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i7, align 16
  %s_lock4 = getelementptr inbounds %struct.exfat_sb_info, ptr %9, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %s_lock4) #8
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__exfat_write_inode(ptr noundef %inode, i32 noundef %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %type = getelementptr i8, ptr %inode, i32 -248
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %5)
  %cmp = icmp eq i32 %5, 260
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %9)
  %cmp4 = icmp eq i32 %9, -64735
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %root_dir = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %root_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %root_dir, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10 = icmp eq i32 %9, %11
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %entry12 = getelementptr i8, ptr %inode, i32 -252
  %12 = ptrtoint ptr %entry12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp13 = icmp eq i32 %13, -1
  br i1 %cmp13, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  %call16 = tail call i32 @exfat_set_volume_dirty(ptr noundef %1) #8
  %entry18 = getelementptr i8, ptr %inode, i32 -252
  %14 = ptrtoint ptr %entry18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry18, align 4
  %call19 = tail call ptr @exfat_get_dentry_set(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %15, i32 noundef 0) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call19, i32 noundef 0) #8
  %call24 = tail call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call19, i32 noundef 1) #8
  %attr1.i = getelementptr i8, ptr %inode, i32 -244
  %16 = ptrtoint ptr %attr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %attr1.i, align 4
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %inode, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %cmp.i = icmp eq i16 %20, 16384
  %21 = or i16 %17, 16
  %spec.select.i = select i1 %cmp.i, i16 %21, i16 %17
  br i1 %cmp.i, label %if.end22.exfat_make_attr.exit_crit_edge, label %exfat_mode_can_hold_ro.exit.i

if.end22.exfat_make_attr.exit_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_make_attr.exit

exfat_mode_can_hold_ro.exit.i:                    ; preds = %if.end22
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %fs_fmask.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %25, i32 0, i32 23, i32 2
  %26 = ptrtoint ptr %fs_fmask.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fs_fmask.i.i, align 8
  %28 = and i16 %27, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %28)
  %tobool.not.i.not.i = icmp eq i16 %28, 146
  br i1 %tobool.not.i.not.i, label %exfat_mode_can_hold_ro.exit.i.exfat_make_attr.exit_crit_edge, label %land.lhs.true.i

exfat_mode_can_hold_ro.exit.i.exfat_make_attr.exit_crit_edge: ; preds = %exfat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_make_attr.exit

land.lhs.true.i:                                  ; preds = %exfat_mode_can_hold_ro.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = and i16 %19, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool9.not.i = icmp eq i16 %29, 0
  %30 = zext i1 %tobool9.not.i to i16
  %spec.select20.i = or i16 %spec.select.i, %30
  br label %exfat_make_attr.exit

exfat_make_attr.exit:                             ; preds = %land.lhs.true.i, %exfat_mode_can_hold_ro.exit.i.exfat_make_attr.exit_crit_edge, %if.end22.exfat_make_attr.exit_crit_edge
  %attr.1.i = phi i16 [ %17, %exfat_mode_can_hold_ro.exit.i.exfat_make_attr.exit_crit_edge ], [ %spec.select20.i, %land.lhs.true.i ], [ %21, %if.end22.exfat_make_attr.exit_crit_edge ]
  %31 = tail call i16 @llvm.bswap.i16(i16 %attr.1.i)
  %attr = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %attr to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %attr, align 1
  %i_crtime = getelementptr i8, ptr %inode, i32 784
  %create_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 12
  %create_time = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 4
  %create_date = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 5
  %create_time_cs = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 10
  tail call void @exfat_set_entry_time(ptr noundef %3, ptr noundef %i_crtime, ptr noundef %create_tz, ptr noundef %create_time, ptr noundef %create_date, ptr noundef %create_time_cs) #8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %modify_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 13
  %modify_time = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 6
  %modify_date = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 7
  %modify_time_cs = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 11
  tail call void @exfat_set_entry_time(ptr noundef %3, ptr noundef %i_mtime, ptr noundef %modify_tz, ptr noundef %modify_time, ptr noundef %modify_date, ptr noundef %modify_time_cs) #8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %access_tz = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 14
  %access_time = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 8
  %access_date = getelementptr inbounds %struct.exfat_dentry, ptr %call23, i32 0, i32 1, i32 0, i32 9
  tail call void @exfat_set_entry_time(ptr noundef %3, ptr noundef %i_atime, ptr noundef %access_tz, ptr noundef %access_time, ptr noundef %access_date, ptr noundef null) #8
  %call37 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %start_clu = getelementptr i8, ptr %inode, i32 -240
  %33 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %start_clu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp38 = icmp eq i32 %34, -1
  %spec.store.select = select i1 %cmp38, i64 0, i64 %call37
  %35 = tail call i64 @llvm.bswap.i64(i64 %spec.store.select)
  %valid_size = getelementptr inbounds %struct.exfat_dentry, ptr %call24, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %valid_size to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %valid_size, align 1
  %size = getelementptr inbounds %struct.exfat_dentry, ptr %call24, i32 0, i32 1, i32 0, i32 14
  %37 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %35, ptr %size, align 1
  tail call void @exfat_update_dir_chksum_with_entry_set(ptr noundef nonnull %call19) #8
  %call45 = tail call i32 @exfat_free_dentry_set(ptr noundef nonnull %call19, i32 noundef %sync) #8
  br label %cleanup

cleanup:                                          ; preds = %exfat_make_attr.exit, %if.end15.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %exfat_make_attr.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true11.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_sync_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %dep_map = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 21, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !28

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call25 = tail call fastcc i32 @__exfat_write_inode(ptr noundef %inode, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_block_truncate_page(ptr nocapture noundef readonly %inode, i64 noundef %from) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call = tail call i32 @block_truncate_page(ptr noundef %1, i64 noundef %from, ptr noundef nonnull @exfat_get_block) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %last_clu.i = alloca i32, align 4
  %new_clu.i = alloca %struct.exfat_chain, align 4
  %fclus.i = alloca i32, align 4
  %cluster = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %4 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cluster) #8
  %8 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cluster, align 4, !annotation !29
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #8
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call2, -1
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %10 to i64
  %shr4 = ashr i64 %sub, %sh_prom
  %add = add i64 %shr4, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %iblock)
  %cmp.not = icmp ule i64 %add, %iblock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %sect_per_clus_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %sect_per_clus_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sect_per_clus_bits, align 8
  %sh_prom6 = zext i32 %12 to i64
  %shr7 = lshr i64 %iblock, %sh_prom6
  %conv8 = trunc i64 %shr7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_clu.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_clu.i) #8
  %13 = getelementptr inbounds i8, ptr %new_clu.i, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_size_ondisk.i = getelementptr i8, ptr %inode, i32 -128
  %19 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size_ondisk.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp.i = icmp sgt i64 %20, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nsw i64 %20, -1
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size_bits.i, align 8
  %sh_prom.i = zext i32 %22 to i64
  %shr337.i = lshr i64 %sub.i, %sh_prom.i
  %23 = trunc i64 %shr337.i to i32
  %conv.i = add i32 %23, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %num_clusters.0.i = phi i32 [ %conv.i, %if.then.i ], [ 0, %if.end.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.0.i, i32 %conv8)
  %cmp3.not.i = icmp ugt i32 %num_clusters.0.i, %conv8
  %sub6.i = sub i32 %conv8, %num_clusters.0.i
  %add7.i = add i32 %sub6.i, 1
  %num_to_be_allocated.0.i = select i1 %cmp3.not.i, i32 0, i32 %add7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not.i = icmp ne i32 %create, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_be_allocated.0.i)
  %cmp9.not.i = icmp eq i32 %num_to_be_allocated.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp9.not.i
  br i1 %or.cond.i, label %if.end12.i, label %exfat_map_cluster.exit.thread130.thread

exfat_map_cluster.exit.thread130.thread:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cluster, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_clu.i) #8
  br label %done

if.end12.i:                                       ; preds = %if.end.i
  %start_clu.i = getelementptr i8, ptr %inode, i32 -240
  %25 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_clu.i, align 8
  %27 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_clu.i, align 4
  %28 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %cluster, align 4
  %flags.i = getelementptr i8, ptr %inode, i32 -236
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp14.i = icmp eq i8 %30, 3
  br i1 %cmp14.i, label %if.then16.i, label %if.else31.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp17.not.i = icmp eq i32 %conv8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp20.not.i = icmp eq i32 %26, -1
  %or.cond331.i = select i1 %cmp17.not.i, i1 true, i1 %cmp20.not.i
  br i1 %or.cond331.i, label %if.then16.i.if.end95thread-pre-split.i_crit_edge, label %if.then22.i

if.then16.i.if.end95thread-pre-split.i_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95thread-pre-split.i

if.then22.i:                                      ; preds = %if.then16.i
  %sub23.i = add i32 %26, %conv8
  %add24.i = add i32 %sub23.i, -1
  %31 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add24.i, ptr %last_clu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_clusters.0.i, i32 %conv8)
  %cmp25.i = icmp eq i32 %num_clusters.0.i, %conv8
  br i1 %cmp25.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %cluster, align 4
  br label %if.then98.i

if.else.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub23.i, ptr %cluster, align 4
  br label %if.end95.i

if.else31.i:                                      ; preds = %if.end12.i
  %type.i = getelementptr i8, ptr %inode, i32 -248
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %35)
  %cmp32.i = icmp eq i32 %35, 287
  br i1 %cmp32.i, label %if.then34.i, label %if.else41.i

if.then34.i:                                      ; preds = %if.else31.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fclus.i) #8
  %36 = ptrtoint ptr %fclus.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %fclus.i, align 4
  %call35.i = call i32 @exfat_get_cluster(ptr noundef %inode, i32 noundef %conv8, ptr noundef nonnull %fclus.i, ptr noundef nonnull %cluster, ptr noundef nonnull %last_clu.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fclus.i) #8
  br i1 %tobool36.not.i, label %if.then34.i.if.end95thread-pre-split.i_crit_edge, label %if.then34.i.exfat_map_cluster.exit.thread_crit_edge

if.then34.i.exfat_map_cluster.exit.thread_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread

if.then34.i.if.end95thread-pre-split.i_crit_edge: ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95thread-pre-split.i

if.else41.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %cmp42.not.i = icmp eq i32 %conv8, 0
  br i1 %cmp42.not.i, label %if.else41.i.if.end95thread-pre-split.loopexit.i_crit_edge, label %land.lhs.true44.i

if.else41.i.if.end95thread-pre-split.loopexit.i_crit_edge: ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95thread-pre-split.loopexit.i

land.lhs.true44.i:                                ; preds = %if.else41.i
  %hint_bmap.i = getelementptr i8, ptr %inode, i32 -228
  %37 = getelementptr i8, ptr %inode, i32 -224
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %land.lhs.true51.i [
    i32 -1, label %land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge
    i32 0, label %land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge160
  ]

land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge160: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader.ithread-pre-split

land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge: ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader.ithread-pre-split

land.lhs.true51.i:                                ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv8)
  %cmp53.not.i = icmp ugt i32 %39, %conv8
  br i1 %cmp53.not.i, label %land.lhs.true51.i.land.rhs.preheader.ithread-pre-split_crit_edge, label %if.then55.i

land.lhs.true51.i.land.rhs.preheader.ithread-pre-split_crit_edge: ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader.ithread-pre-split

if.then55.i:                                      ; preds = %land.lhs.true51.i
  %sub57.i = sub i32 %conv8, %39
  %41 = ptrtoint ptr %hint_bmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hint_bmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp60.i = icmp ult i32 %42, 2
  br i1 %cmp60.i, label %do.end.i, label %if.then55.i.if.end85.i_crit_edge, !prof !28

if.then55.i.if.end85.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85.i

do.end.i:                                         ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end.i, %if.then55.i.if.end85.i_crit_edge
  %43 = ptrtoint ptr %hint_bmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hint_bmap.i, align 4
  %45 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cluster, align 4
  %46 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %last_clu.promoted.i = load i32, ptr %last_clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57.i)
  %cmp86.not341.i = icmp eq i32 %sub57.i, 0
  br i1 %cmp86.not341.i, label %if.end85.i.if.end95thread-pre-split.loopexit.i_crit_edge, label %if.end85.i.land.rhs.preheader.i_crit_edge

if.end85.i.land.rhs.preheader.i_crit_edge:        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader.i

if.end85.i.if.end95thread-pre-split.loopexit.i_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95thread-pre-split.loopexit.i

land.rhs.preheader.ithread-pre-split:             ; preds = %land.lhs.true51.i.land.rhs.preheader.ithread-pre-split_crit_edge, %land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge, %land.lhs.true44.i.land.rhs.preheader.ithread-pre-split_crit_edge160
  %47 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %cluster, align 4
  br label %land.rhs.preheader.i

land.rhs.preheader.i:                             ; preds = %land.rhs.preheader.ithread-pre-split, %if.end85.i.land.rhs.preheader.i_crit_edge
  %48 = phi i32 [ %.pr, %land.rhs.preheader.ithread-pre-split ], [ %44, %if.end85.i.land.rhs.preheader.i_crit_edge ]
  %last_clu.promoted355.i = phi i32 [ %26, %land.rhs.preheader.ithread-pre-split ], [ %last_clu.promoted.i, %if.end85.i.land.rhs.preheader.i_crit_edge ]
  %clu_offset.addr.0354.i = phi i32 [ %conv8, %land.rhs.preheader.ithread-pre-split ], [ %sub57.i, %if.end85.i.land.rhs.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp88.not.i142 = icmp eq i32 %48, -1
  br i1 %cmp88.not.i142, label %land.rhs.preheader.i.if.then98.loopexit.i_crit_edge, label %land.rhs.preheader.i.while.body.i_crit_edge

land.rhs.preheader.i.while.body.i_crit_edge:      ; preds = %land.rhs.preheader.i
  br label %while.body.i

land.rhs.preheader.i.if.then98.loopexit.i_crit_edge: ; preds = %land.rhs.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98.loopexit.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add i32 %clu_offset.addr.1342.i143, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp86.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp86.not.i, label %while.cond.i.if.end95thread-pre-split.loopexit.i_crit_edge, label %land.rhs.i

while.cond.i.if.end95thread-pre-split.loopexit.i_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95thread-pre-split.loopexit.i

land.rhs.i:                                       ; preds = %while.cond.i
  %49 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cluster, align 4
  %cmp88.not.i = icmp eq i32 %50, -1
  br i1 %cmp88.not.i, label %land.rhs.i.if.then98.loopexit.i_crit_edge, label %land.rhs.i.while.body.i_crit_edge

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

land.rhs.i.if.then98.loopexit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98.loopexit.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.preheader.i.while.body.i_crit_edge
  %51 = phi i32 [ %50, %land.rhs.i.while.body.i_crit_edge ], [ %48, %land.rhs.preheader.i.while.body.i_crit_edge ]
  %clu_offset.addr.1342.i143 = phi i32 [ %dec.i, %land.rhs.i.while.body.i_crit_edge ], [ %clu_offset.addr.0354.i, %land.rhs.preheader.i.while.body.i_crit_edge ]
  %call90.i = call i32 @exfat_ent_get(ptr noundef %16, i32 noundef %51, ptr noundef nonnull %cluster) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %while.cond.i, label %while.body.i.exfat_map_cluster.exit.thread_crit_edge

while.body.i.exfat_map_cluster.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread

if.end95thread-pre-split.loopexit.i:              ; preds = %while.cond.i.if.end95thread-pre-split.loopexit.i_crit_edge, %if.end85.i.if.end95thread-pre-split.loopexit.i_crit_edge, %if.else41.i.if.end95thread-pre-split.loopexit.i_crit_edge
  %.lcssa.i = phi i32 [ %last_clu.promoted.i, %if.end85.i.if.end95thread-pre-split.loopexit.i_crit_edge ], [ %26, %if.else41.i.if.end95thread-pre-split.loopexit.i_crit_edge ], [ %51, %while.cond.i.if.end95thread-pre-split.loopexit.i_crit_edge ]
  %52 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.lcssa.i, ptr %last_clu.i, align 4
  br label %if.end95thread-pre-split.i

if.end95thread-pre-split.i:                       ; preds = %if.end95thread-pre-split.loopexit.i, %if.then34.i.if.end95thread-pre-split.i_crit_edge, %if.then16.i.if.end95thread-pre-split.i_crit_edge
  %53 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load i32, ptr %cluster, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.end95thread-pre-split.i, %if.else.i
  %54 = phi i32 [ %.pr.i, %if.end95thread-pre-split.i ], [ %sub23.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp96.i = icmp eq i32 %54, -1
  br i1 %cmp96.i, label %if.end95.i.if.then98.i_crit_edge, label %if.end95.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge

if.end95.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge: ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread130thread-pre-split

if.end95.i.if.then98.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98.i

if.then98.loopexit.i:                             ; preds = %land.rhs.i.if.then98.loopexit.i_crit_edge, %land.rhs.preheader.i.if.then98.loopexit.i_crit_edge
  %.lcssa139 = phi i32 [ %last_clu.promoted355.i, %land.rhs.preheader.i.if.then98.loopexit.i_crit_edge ], [ %51, %land.rhs.i.if.then98.loopexit.i_crit_edge ]
  %55 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.lcssa139, ptr %last_clu.i, align 4
  br label %if.then98.i

if.then98.i:                                      ; preds = %if.then98.loopexit.i, %if.end95.i.if.then98.i_crit_edge, %if.then27.i
  %call99.i = call i32 @exfat_set_volume_dirty(ptr noundef %16) #8
  %56 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp100.i = icmp eq i32 %57, -1
  %add102.i = add i32 %57, 1
  %spec.select.i = select i1 %cmp100.i, i32 -1, i32 %add102.i
  %58 = ptrtoint ptr %new_clu.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i, ptr %new_clu.i, align 4
  %size.i = getelementptr inbounds %struct.exfat_chain, ptr %new_clu.i, i32 0, i32 1
  %59 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %size.i, align 4
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags.i, align 4
  %62 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %13, align 4
  br i1 %cmp9.not.i, label %if.then107.i, label %if.end108.i

if.then107.i:                                     ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str.3) #11
  br label %exfat_map_cluster.exit.thread

if.end108.i:                                      ; preds = %if.then98.i
  %call109.i = call i32 @inode_needs_sync(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.i = icmp ne i32 %call109.i, 0
  %call111.i = call i32 @exfat_alloc_cluster(ptr noundef %inode, i32 noundef %num_to_be_allocated.0.i, ptr noundef nonnull %new_clu.i, i1 noundef zeroext %tobool110.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %if.end108.i.exfat_map_cluster.exit_crit_edge

if.end108.i.exfat_map_cluster.exit_crit_edge:     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit

if.end114.i:                                      ; preds = %if.end108.i
  %63 = ptrtoint ptr %new_clu.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %new_clu.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %64, label %if.end123.i [
    i32 -1, label %if.end114.i.if.then121.i_crit_edge
    i32 0, label %if.end114.i.if.then121.i_crit_edge161
  ]

if.end114.i.if.then121.i_crit_edge161:            ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121.i

if.end114.i.if.then121.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121.i

if.then121.i:                                     ; preds = %if.end114.i.if.then121.i_crit_edge, %if.end114.i.if.then121.i_crit_edge161
  %66 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_clu.i, align 4
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %67, i32 noundef %64) #11
  br label %exfat_map_cluster.exit.thread

if.end123.i:                                      ; preds = %if.end114.i
  %68 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp124.i = icmp eq i32 %69, -1
  %70 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %13, align 4
  br i1 %cmp124.i, label %if.then126.i, label %if.else136.i

if.then126.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %71)
  %cmp129.i = icmp eq i8 %71, 1
  br i1 %cmp129.i, label %if.then131.i, label %if.then126.i.if.end133.i_crit_edge

if.then126.i.if.end133.i_crit_edge:               ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133.i

if.then131.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %flags.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then131.i, %if.then126.i.if.end133.i_crit_edge
  %73 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %64, ptr %start_clu.i, align 8
  br label %if.end159.i

if.else136.i:                                     ; preds = %if.end123.i
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %75)
  %cmp141.not.i = icmp eq i8 %71, %75
  br i1 %cmp141.not.i, label %if.else136.i.if.end147.i_crit_edge, label %if.then143.i

if.else136.i.if.end147.i_crit_edge:               ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147.i

if.then143.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %start_clu.i, align 8
  %call145.i = call i32 @exfat_chain_cont_cluster(ptr noundef %16, i32 noundef %77, i32 noundef %num_clusters.0.i) #8
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %flags.i, align 4
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %79)
  %.pr334.i = load i8, ptr %13, align 4
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then143.i, %if.else136.i.if.end147.i_crit_edge
  %80 = phi i8 [ %.pr334.i, %if.then143.i ], [ %71, %if.else136.i.if.end147.i_crit_edge ]
  %modified.0.i = phi i32 [ 1, %if.then143.i ], [ 0, %if.else136.i.if.end147.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %80)
  %cmp150.i = icmp eq i8 %80, 1
  br i1 %cmp150.i, label %if.then152.i, label %if.end147.i.if.end159.i_crit_edge

if.end147.i.if.end159.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159.i

if.then152.i:                                     ; preds = %if.end147.i
  %81 = ptrtoint ptr %last_clu.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %last_clu.i, align 4
  %83 = ptrtoint ptr %new_clu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %new_clu.i, align 4
  %call154.i = call i32 @exfat_ent_set(ptr noundef %16, i32 noundef %82, i32 noundef %84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154.i)
  %tobool155.not.i = icmp eq i32 %call154.i, 0
  br i1 %tobool155.not.i, label %if.then152.i.if.end159.i_crit_edge, label %if.then152.i.exfat_map_cluster.exit.thread_crit_edge

if.then152.i.exfat_map_cluster.exit.thread_crit_edge: ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread

if.then152.i.if.end159.i_crit_edge:               ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.then152.i.if.end159.i_crit_edge, %if.end147.i.if.end159.i_crit_edge, %if.end133.i
  %modified.1.i = phi i32 [ 1, %if.end133.i ], [ %modified.0.i, %if.then152.i.if.end159.i_crit_edge ], [ %modified.0.i, %if.end147.i.if.end159.i_crit_edge ]
  %85 = ptrtoint ptr %new_clu.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %new_clu.i, align 4
  %87 = ptrtoint ptr %cluster to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %cluster, align 4
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %89)
  %cmp164.not.i = icmp eq i32 %89, -64735
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified.1.i)
  %tobool167.not.i = icmp eq i32 %modified.1.i, 0
  %or.cond332.i = or i1 %tobool167.not.i, %cmp164.not.i
  br i1 %or.cond332.i, label %if.end159.i.if.end198.i_crit_edge, label %if.then168.i

if.end159.i.if.end198.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198.i

if.then168.i:                                     ; preds = %if.end159.i
  %entry171.i = getelementptr i8, ptr %inode, i32 -252
  %90 = ptrtoint ptr %entry171.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %entry171.i, align 4
  %call172.i = call ptr @exfat_get_dentry_set(ptr noundef %16, ptr noundef %add.ptr.i, i32 noundef %91, i32 noundef 0) #8
  %tobool173.not.i = icmp eq ptr %call172.i, null
  br i1 %tobool173.not.i, label %if.then168.i.exfat_map_cluster.exit.thread_crit_edge, label %cleanup193.i

if.then168.i.exfat_map_cluster.exit.thread_crit_edge: ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread

cleanup193.i:                                     ; preds = %if.then168.i
  %call176.i = call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call172.i, i32 noundef 1) #8
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags.i, align 4
  %dentry.i = getelementptr inbounds %struct.exfat_dentry, ptr %call176.i, i32 0, i32 1
  %94 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %dentry.i, align 1
  %95 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %start_clu.i, align 8
  %97 = call i32 @llvm.bswap.i32(i32 %96) #8
  %start_clu181.i = getelementptr inbounds %struct.exfat_dentry, ptr %call176.i, i32 0, i32 1, i32 0, i32 10
  %98 = ptrtoint ptr %start_clu181.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %start_clu181.i, align 1
  %call182.i = call fastcc i64 @i_size_read(ptr noundef %inode) #8
  %99 = call i64 @llvm.bswap.i64(i64 %call182.i) #8
  %valid_size.i = getelementptr inbounds %struct.exfat_dentry, ptr %call176.i, i32 0, i32 1, i32 0, i32 4
  %100 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %99, ptr %valid_size.i, align 1
  %size187.i = getelementptr inbounds %struct.exfat_dentry, ptr %call176.i, i32 0, i32 1, i32 0, i32 14
  %101 = ptrtoint ptr %size187.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 8)
  store i64 %99, ptr %size187.i, align 1
  call void @exfat_update_dir_chksum_with_entry_set(ptr noundef nonnull %call172.i) #8
  %call188.i = call i32 @inode_needs_sync(ptr noundef %inode) #8
  %call189.i = call i32 @exfat_free_dentry_set(ptr noundef nonnull %call172.i, i32 noundef %call188.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189.i)
  %tobool190.not.i = icmp eq i32 %call189.i, 0
  br i1 %tobool190.not.i, label %cleanup193.i.if.end198.i_crit_edge, label %cleanup193.i.exfat_map_cluster.exit_crit_edge

cleanup193.i.exfat_map_cluster.exit_crit_edge:    ; preds = %cleanup193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit

cleanup193.i.if.end198.i_crit_edge:               ; preds = %cleanup193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198.i

if.end198.i:                                      ; preds = %cleanup193.i.if.end198.i_crit_edge, %if.end159.i.if.end198.i_crit_edge
  %sect_per_clus_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %18, i32 0, i32 5
  %102 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sect_per_clus_bits.i, align 8
  %shl.i = shl i32 %num_to_be_allocated.0.i, %103
  %conv199.i = zext i32 %shl.i to i64
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %104 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %i_blocks.i, align 8
  %add200.i = add i64 %105, %conv199.i
  store i64 %add200.i, ptr %i_blocks.i, align 8
  %106 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %107)
  %cmp203.i = icmp eq i8 %107, 3
  br i1 %cmp203.i, label %if.then205.i, label %while.cond209.preheader.i

while.cond209.preheader.i:                        ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add7.i)
  %cmp210343.i = icmp ugt i32 %add7.i, 1
  br i1 %cmp210343.i, label %while.cond209.preheader.i.while.body212.i_crit_edge, label %while.cond209.preheader.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge

while.cond209.preheader.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge: ; preds = %while.cond209.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread130thread-pre-split

while.cond209.preheader.i.while.body212.i_crit_edge: ; preds = %while.cond209.preheader.i
  br label %while.body212.i

if.then205.i:                                     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub206.i = add i32 %num_to_be_allocated.0.i, -1
  %108 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cluster, align 4
  %add207.i = add i32 %sub206.i, %109
  store i32 %add207.i, ptr %cluster, align 4
  br label %exfat_map_cluster.exit.thread130

while.cond209.i:                                  ; preds = %while.body212.i
  %dec217.i = add i32 %num_to_be_allocated.1344.i, -1
  %cmp210.i = icmp ugt i32 %dec217.i, 1
  br i1 %cmp210.i, label %while.cond209.i.while.body212.i_crit_edge, label %while.cond209.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge

while.cond209.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge: ; preds = %while.cond209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread130thread-pre-split

while.cond209.i.while.body212.i_crit_edge:        ; preds = %while.cond209.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body212.i

while.body212.i:                                  ; preds = %while.cond209.i.while.body212.i_crit_edge, %while.cond209.preheader.i.while.body212.i_crit_edge
  %num_to_be_allocated.1344.i = phi i32 [ %dec217.i, %while.cond209.i.while.body212.i_crit_edge ], [ %add7.i, %while.cond209.preheader.i.while.body212.i_crit_edge ]
  %110 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cluster, align 4
  %call213.i = call i32 @exfat_ent_get(ptr noundef %16, i32 noundef %111, ptr noundef nonnull %cluster) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213.i)
  %tobool214.not.i = icmp eq i32 %call213.i, 0
  br i1 %tobool214.not.i, label %while.cond209.i, label %while.body212.i.exfat_map_cluster.exit.thread_crit_edge

while.body212.i.exfat_map_cluster.exit.thread_crit_edge: ; preds = %while.body212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_map_cluster.exit.thread

exfat_map_cluster.exit.thread:                    ; preds = %while.body212.i.exfat_map_cluster.exit.thread_crit_edge, %if.then168.i.exfat_map_cluster.exit.thread_crit_edge, %if.then152.i.exfat_map_cluster.exit.thread_crit_edge, %if.then121.i, %if.then107.i, %while.body.i.exfat_map_cluster.exit.thread_crit_edge, %if.then34.i.exfat_map_cluster.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_clu.i) #8
  br label %if.then14

exfat_map_cluster.exit.thread130thread-pre-split: ; preds = %while.cond209.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge, %while.cond209.preheader.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge, %if.end95.i.exfat_map_cluster.exit.thread130thread-pre-split_crit_edge
  %112 = ptrtoint ptr %cluster to i32
  call void @__asan_load4_noabort(i32 %112)
  %.pr148 = load i32, ptr %cluster, align 4
  br label %exfat_map_cluster.exit.thread130

exfat_map_cluster.exit.thread130:                 ; preds = %exfat_map_cluster.exit.thread130thread-pre-split, %if.then205.i
  %113 = phi i32 [ %.pr148, %exfat_map_cluster.exit.thread130thread-pre-split ], [ %add207.i, %if.then205.i ]
  %hint_bmap221.i = getelementptr i8, ptr %inode, i32 -228
  %114 = getelementptr i8, ptr %inode, i32 -224
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv8, ptr %114, align 4
  %116 = ptrtoint ptr %hint_bmap221.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %113, ptr %hint_bmap221.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_clu.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %113)
  %cmp19 = icmp eq i32 %113, -1
  br i1 %cmp19, label %exfat_map_cluster.exit.thread130.done_crit_edge, label %if.end22

exfat_map_cluster.exit.thread130.done_crit_edge:  ; preds = %exfat_map_cluster.exit.thread130
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

exfat_map_cluster.exit:                           ; preds = %cleanup193.i.exfat_map_cluster.exit_crit_edge, %if.end108.i.exfat_map_cluster.exit_crit_edge
  %retval.3.i = phi i32 [ %call189.i, %cleanup193.i.exfat_map_cluster.exit_crit_edge ], [ %call111.i, %if.end108.i.exfat_map_cluster.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_clu.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %retval.3.i)
  %cond = icmp eq i32 %retval.3.i, -28
  br i1 %cond, label %exfat_map_cluster.exit.unlock_ret_crit_edge, label %exfat_map_cluster.exit.if.then14_crit_edge

exfat_map_cluster.exit.if.then14_crit_edge:       ; preds = %exfat_map_cluster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

exfat_map_cluster.exit.unlock_ret_crit_edge:      ; preds = %exfat_map_cluster.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_ret

if.then14:                                        ; preds = %exfat_map_cluster.exit.if.then14_crit_edge, %exfat_map_cluster.exit.thread
  %retval.3.i128 = phi i32 [ -5, %exfat_map_cluster.exit.thread ], [ %retval.3.i, %exfat_map_cluster.exit.if.then14_crit_edge ]
  %117 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_fs_info.i, align 16
  %ratelimit = getelementptr inbounds %struct.exfat_sb_info, ptr %118, i32 0, i32 25
  %call16 = call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef nonnull @__func__.exfat_get_block) #8
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef %call16, ptr noundef nonnull @.str.1, ptr noundef %inode, i64 noundef %iblock, i32 noundef %retval.3.i128) #11
  br label %unlock_ret

if.end22:                                         ; preds = %exfat_map_cluster.exit.thread130
  %sect_per_clus = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 4
  %119 = ptrtoint ptr %sect_per_clus to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sect_per_clus, align 4
  %sub23 = add i32 %120, -1
  %121 = trunc i64 %iblock to i32
  %conv25 = and i32 %sub23, %121
  %sub.i116 = add i32 %113, -2
  %conv.i117 = zext i32 %sub.i116 to i64
  %122 = ptrtoint ptr %sect_per_clus_bits to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sect_per_clus_bits, align 8
  %sh_prom.i119 = zext i32 %123 to i64
  %shl.i120 = shl i64 %conv.i117, %sh_prom.i119
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 8
  %124 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %data_start_sector.i, align 8
  %add.i = add i64 %shl.i120, %125
  %conv27 = zext i32 %conv25 to i64
  %add28 = add i64 %add.i, %conv27
  %sub30 = sub i32 %120, %conv25
  %126 = call i32 @llvm.umin.i32(i32 %sub30, i32 %shr)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %iblock)
  %cmp33 = icmp ugt i64 %add, %iblock
  %tobool37.not = or i1 %tobool.not, %cmp33
  br i1 %tobool37.not, label %lor.lhs.false, label %if.end22.if.then40_crit_edge

if.end22.if.then40_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end22
  %127 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %bh_result, align 4
  %129 = and i32 %128, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool39.not = icmp eq i32 %129, 0
  br i1 %tobool39.not, label %lor.lhs.false.if.end57_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %if.end22.if.then40_crit_edge
  %add41 = add i64 %iblock, 1
  %130 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom44 = zext i8 %131 to i64
  %shl = shl i64 %add41, %sh_prom44
  %132 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %i_size_ondisk.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %shl)
  %cmp45 = icmp slt i64 %133, %shl
  br i1 %cmp45, label %if.then47, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %134 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %shl, ptr %i_size_ondisk.i, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then40.if.end50_crit_edge
  br i1 %tobool37.not, label %if.end50.if.end57_crit_edge, label %if.then52

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then52:                                        ; preds = %if.end50
  %135 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %bh_result, align 4
  %137 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool.not.i121 = icmp eq i32 %137, 0
  br i1 %tobool.not.i121, label %if.then52.if.end.i123_crit_edge, label %land.lhs.true.i

if.then52.if.end.i123_crit_edge:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i123

land.lhs.true.i:                                  ; preds = %if.then52
  %i_size_aligned.i = getelementptr i8, ptr %inode, i32 -120
  %138 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_size_aligned.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %139, i64 %shl)
  %cmp.i122 = icmp slt i64 %139, %shl
  br i1 %cmp.i122, label %if.then55, label %land.lhs.true.i.if.end.i123_crit_edge

land.lhs.true.i.if.end.i123_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i123

if.end.i123:                                      ; preds = %land.lhs.true.i.if.end.i123_crit_edge, %if.then52.if.end.i123_crit_edge
  %140 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %bh_result, align 4
  %142 = and i32 %141, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i123.set_buffer_new.exit.i_crit_edge

if.end.i123.set_buffer_new.exit.i_crit_edge:      ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_new.exit.i

if.then.i.i:                                      ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #8
  br label %set_buffer_new.exit.i

set_buffer_new.exit.i:                            ; preds = %if.then.i.i, %if.end.i123.set_buffer_new.exit.i_crit_edge
  %143 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %i_size_ondisk.i, align 8
  %i_size_aligned1.i = getelementptr i8, ptr %inode, i32 -120
  %145 = ptrtoint ptr %i_size_aligned1.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %i_size_aligned1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %144, i64 %146)
  %cmp2.i = icmp sgt i64 %144, %146
  br i1 %cmp2.i, label %if.then3.i, label %set_buffer_new.exit.i.if.end57_crit_edge

set_buffer_new.exit.i.if.end57_crit_edge:         ; preds = %set_buffer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then3.i:                                       ; preds = %set_buffer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %i_size_aligned1.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %144, ptr %i_size_aligned1.i, align 8
  br label %if.end57

if.then55:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %i_size_aligned.i, align 8
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.2, i64 noundef %shl, i64 noundef %149) #11
  br label %unlock_ret

if.end57:                                         ; preds = %if.then3.i, %set_buffer_new.exit.i.if.end57_crit_edge, %if.end50.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %150 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %bh_result, align 4
  %152 = and i32 %151, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool59.not = icmp eq i32 %152, 0
  br i1 %tobool59.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 8, ptr noundef %bh_result) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57.if.end61_crit_edge
  %153 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %bh_result, align 4
  %155 = and i32 %154, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i.i125 = icmp eq i32 %155, 0
  br i1 %tobool.not.i.i125, label %if.then.i.i126, label %if.end61.map_bh.exit_crit_edge

if.end61.map_bh.exit_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_bh.exit

if.then.i.i126:                                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #8
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i126, %if.end61.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %156 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %158 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %159 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %add28, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %160 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %s_blocksize.i, align 16
  %162 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %b_size, align 8
  br label %done

done:                                             ; preds = %map_bh.exit, %exfat_map_cluster.exit.thread130.done_crit_edge, %exfat_map_cluster.exit.thread130.thread, %entry.done_crit_edge
  %max_blocks.0 = phi i32 [ %shr, %exfat_map_cluster.exit.thread130.done_crit_edge ], [ %126, %map_bh.exit ], [ %shr, %entry.done_crit_edge ], [ %shr, %exfat_map_cluster.exit.thread130.thread ]
  %163 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %s_blocksize_bits, align 4
  %conv63 = zext i8 %164 to i32
  %shl64 = shl i32 %max_blocks.0, %conv63
  %165 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %shl64, ptr %b_size, align 8
  br label %unlock_ret

unlock_ret:                                       ; preds = %done, %if.then55, %if.then14, %exfat_map_cluster.exit.unlock_ret_crit_edge
  %err.2 = phi i32 [ %retval.3.i128, %if.then14 ], [ 0, %done ], [ -5, %if.then55 ], [ -28, %exfat_map_cluster.exit.unlock_ret_crit_edge ]
  call void @mutex_unlock(ptr noundef %s_lock) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cluster) #8
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_hash_inode(ptr noundef %inode, i64 noundef %i_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hashtable = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 27
  %conv.i = trunc i64 %i_pos to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr = getelementptr %struct.hlist_head, ptr %inode_hashtable, i32 %shr.i.i
  %inode_hash_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #8
  %i_pos3 = getelementptr i8, ptr %inode, i32 -112
  %4 = ptrtoint ptr %i_pos3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %i_pos, ptr %i_pos3, align 8
  %i_hash_fat = getelementptr i8, ptr %inode, i32 -104
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %i_hash_fat to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %i_hash_fat, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %i_hash_fat, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %i_hash_fat, ptr %add.ptr, align 4
  %pprev34.i = getelementptr i8, ptr %inode, i32 -100
  %10 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %add.ptr, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_unhash_inode(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hash_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #8
  %i_hash_fat = getelementptr i8, ptr %inode, i32 -104
  %pprev.i.i = getelementptr i8, ptr %inode, i32 -100
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %i_hash_fat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_hash_fat, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i3.i = icmp eq ptr %7, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %10 = ptrtoint ptr %i_hash_fat to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %i_hash_fat, align 4
  %11 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %i_pos = getelementptr i8, ptr %inode, i32 -112
  %12 = ptrtoint ptr %i_pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %i_pos, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exfat_iget(ptr noundef readonly %sb, i64 noundef %i_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %inode_hashtable = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 27
  %conv.i = trunc i64 %i_pos to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %add.ptr = getelementptr %struct.hlist_head, ptr %inode_hashtable, i32 %shr.i.i
  %inode_hash_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock) #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr3 = getelementptr i8, ptr %3, i32 -160
  %tobool4.not6164 = icmp eq ptr %add.ptr3, null
  %tobool4.not61 = or i1 %tobool.not, %tobool4.not6164
  br i1 %tobool4.not61, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %info.062 = phi ptr [ %add.ptr40, %for.inc.for.body_crit_edge ], [ %add.ptr3, %entry.for.body_crit_edge ]
  %vfs_inode = getelementptr inbounds %struct.exfat_inode_info, ptr %info.062, i32 0, i32 19
  %i_sb = getelementptr inbounds %struct.exfat_inode_info, ptr %info.062, i32 0, i32 19, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %cmp.not = icmp eq ptr %5, %sb
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %do.end, !prof !30

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 539, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %i_pos25 = getelementptr inbounds %struct.exfat_inode_info, ptr %info.062, i32 0, i32 16
  %6 = ptrtoint ptr %i_pos25 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_pos25, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %i_pos)
  %cmp26.not = icmp eq i64 %7, %i_pos
  br i1 %cmp26.not, label %if.end28, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %if.end
  %call30 = tail call ptr @igrab(ptr noundef %vfs_inode) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end28.for.inc_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %i_hash_fat = getelementptr inbounds %struct.exfat_inode_info, ptr %info.062, i32 0, i32 17
  %8 = ptrtoint ptr %i_hash_fat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_hash_fat, align 8
  %tobool36.not = icmp eq ptr %9, null
  %add.ptr40 = getelementptr i8, ptr %9, i32 -160
  %tobool4.not65 = icmp eq ptr %add.ptr40, null
  %tobool4.not = or i1 %tobool36.not, %tobool4.not65
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge, %entry.for.end_crit_edge
  %inode.2 = phi ptr [ null, %entry.for.end_crit_edge ], [ %call30, %if.end28.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock) #8
  ret ptr %inode.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @exfat_build_inode(ptr noundef %sb, ptr nocapture noundef readonly %info, i64 noundef %i_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @exfat_iget(ptr noundef %sb, i64 noundef %i_pos)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @new_inode(ptr noundef %sb) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @iunique(ptr noundef %sb, i32 noundef 1) #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call6, ptr %i_ino, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %i_version.i.i, i64 noundef 2) #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %call1, i32 -264
  %size2.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %size2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size2.i, align 8
  %7 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %info, i32 12)
  %entry4.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %entry4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry4.i, align 4
  %entry5.i = getelementptr i8, ptr %call1, i32 -252
  %10 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %entry5.i, align 4
  %attr.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %attr.i, align 2
  %attr6.i = getelementptr i8, ptr %call1, i32 -244
  %13 = ptrtoint ptr %attr6.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %attr6.i, align 4
  %start_clu.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_clu.i, align 4
  %start_clu7.i = getelementptr i8, ptr %call1, i32 -240
  %16 = ptrtoint ptr %start_clu7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %start_clu7.i, align 8
  %flags.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %flags.i, align 8
  %flags8.i = getelementptr i8, ptr %call1, i32 -236
  %19 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %flags8.i, align 4
  %type.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 2
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 8
  %type9.i = getelementptr i8, ptr %call1, i32 -248
  %22 = ptrtoint ptr %type9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %type9.i, align 8
  %version.i = getelementptr i8, ptr %call1, i32 -232
  %23 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %version.i, align 8
  %hint_stat.i = getelementptr i8, ptr %call1, i32 -220
  %24 = getelementptr i8, ptr %call1, i32 -216
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %26 = load i32, ptr %start_clu.i, align 4
  %27 = ptrtoint ptr %hint_stat.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hint_stat.i, align 4
  %hint_femp.i = getelementptr i8, ptr %call1, i32 -212
  %28 = ptrtoint ptr %hint_femp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %hint_femp.i, align 4
  %29 = getelementptr i8, ptr %call1, i32 -224
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %29, align 4
  %i_pos.i = getelementptr i8, ptr %call1, i32 -112
  %31 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %i_pos.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %options.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23
  %32 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %options.i, align 8
  %34 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %fs_gid.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23, i32 1
  %35 = ptrtoint ptr %fs_gid.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fs_gid.i, align 4
  %37 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %i_gid.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !31
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #8
  %call.i.i1.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #8
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end5
  %cur.0.i.i.i = phi i64 [ %call.i.i1.i.i.i, %if.end5 ], [ %call.i.i.i.i24, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %38 = add i64 %cur.0.i.i.i, 2
  %add.i.i.i = and i64 %38, -2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #8
  %call.i.i.i.i24 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i.i.i, i64 noundef %add.i.i.i) #8
  %cmp.i.i.i = icmp eq i64 %call.i.i.i.i24, %cur.0.i.i.i
  br i1 %cmp.i.i.i, label %inode_inc_iversion.exit.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge, !prof !30

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

inode_inc_iversion.exit.i:                        ; preds = %for.cond.i.i.i
  %call13.i = tail call i32 @prandom_u32() #8
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %39 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call13.i, ptr %i_generation.i, align 8
  %40 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %attr.i, align 2
  %42 = and i16 %41, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %inode_inc_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %and16.i = and i32 %call13.i, -2
  %43 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and16.i, ptr %i_generation.i, align 8
  %44 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %attr.i, align 2
  %conv.i.i = zext i16 %45 to i32
  %and2.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %fs_fmask.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23, i32 2
  %fs_dmask.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23, i32 3
  %.sink.in.i.i = select i1 %tobool3.not.i.i, ptr %fs_fmask.i.i, ptr %fs_dmask.i.i
  %.sink1.i.i = select i1 %tobool3.not.i.i, i16 -32768, i16 16384
  %46 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %.sink.i.i = load i16, ptr %.sink.in.i.i, align 2
  %47 = and i32 %conv.i.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %48 = icmp eq i32 %47, 1
  %mode.addr.0.i.i = select i1 %48, i16 365, i16 511
  %neg19.i.i = xor i16 %.sink.i.i, -1
  %and20.i.i = and i16 %mode.addr.0.i.i, %neg19.i.i
  %conv22.i.i = or i16 %and20.i.i, %.sink1.i.i
  %49 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv22.i.i, ptr %call1, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %50 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @exfat_dir_inode_operations, ptr %i_op.i, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @exfat_dir_operations, ptr %51, align 8
  %num_subdirs.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 7
  %53 = ptrtoint ptr %num_subdirs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_subdirs.i, align 8
  tail call void @set_nlink(ptr noundef %call1, i32 noundef %54) #8
  br label %if.end.i

if.else.i:                                        ; preds = %inode_inc_iversion.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %call13.i, 1
  %55 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or.i, ptr %i_generation.i, align 8
  %56 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %attr.i, align 2
  %conv.i1.i = zext i16 %57 to i32
  %and2.i2.i = and i32 %conv.i1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i2.i)
  %tobool3.not.i3.i = icmp eq i32 %and2.i2.i, 0
  %fs_fmask.i6.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23, i32 2
  %fs_dmask.i4.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 23, i32 3
  %.sink.in.i8.i = select i1 %tobool3.not.i3.i, ptr %fs_fmask.i6.i, ptr %fs_dmask.i4.i
  %.sink1.i9.i = select i1 %tobool3.not.i3.i, i16 -32768, i16 16384
  %58 = ptrtoint ptr %.sink.in.i8.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %.sink.i10.i = load i16, ptr %.sink.in.i8.i, align 2
  %59 = and i32 %conv.i1.i, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %60 = icmp eq i32 %59, 1
  %mode.addr.0.i11.i = select i1 %60, i16 365, i16 511
  %neg19.i12.i = xor i16 %.sink.i10.i, -1
  %and20.i13.i = and i16 %mode.addr.0.i11.i, %neg19.i12.i
  %conv22.i14.i = or i16 %and20.i13.i, %.sink1.i9.i
  %61 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv22.i14.i, ptr %call1, align 8
  %i_op23.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %62 = ptrtoint ptr %i_op23.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @exfat_file_inode_operations, ptr %i_op23.i, align 8
  %63 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @exfat_file_operations, ptr %63, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %65 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @exfat_aops, ptr %a_ops.i, align 4
  %68 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %nrpages.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call fastcc void @i_size_write(ptr noundef %call1, i64 noundef %6) #8
  %70 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %73, -1
  %conv26.i = zext i32 %sub.i to i64
  %and27.i = and i64 %6, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27.i)
  %tobool28.not.i = icmp eq i64 %and27.i, 0
  %or34.i = or i64 %6, %conv26.i
  %inc.i = add i64 %or34.i, 1
  %size.0.i = select i1 %tobool28.not.i, i64 %6, i64 %inc.i
  %i_size_aligned.i = getelementptr i8, ptr %call1, i32 -120
  %74 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %size.0.i, ptr %i_size_aligned.i, align 8
  %i_size_ondisk.i = getelementptr i8, ptr %call1, i32 -128
  %75 = ptrtoint ptr %i_size_ondisk.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %size.0.i, ptr %i_size_ondisk.i, align 8
  %76 = ptrtoint ptr %attr.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %attr.i, align 2
  %78 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %call1, align 8
  %80 = and i16 %79, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %80)
  %cmp.i.i16.i = icmp eq i16 %80, 16384
  br i1 %cmp.i.i16.i, label %if.end.i.if.else.i.i_crit_edge, label %exfat_mode_can_hold_ro.exit.i.i

if.end.i.if.else.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

exfat_mode_can_hold_ro.exit.i.i:                  ; preds = %if.end.i
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %fs_fmask.i.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %82, i32 0, i32 23, i32 2
  %83 = ptrtoint ptr %fs_fmask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %fs_fmask.i.i.i, align 8
  %85 = and i16 %84, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 146, i16 %85)
  %tobool.not.i.not.i.i = icmp eq i16 %85, 146
  br i1 %tobool.not.i.not.i.i, label %exfat_mode_can_hold_ro.exit.i.i.if.else.i.i_crit_edge, label %exfat_mode_can_hold_ro.exit.i.i.exfat_fill_inode.exit_crit_edge

exfat_mode_can_hold_ro.exit.i.i.exfat_fill_inode.exit_crit_edge: ; preds = %exfat_mode_can_hold_ro.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_fill_inode.exit

exfat_mode_can_hold_ro.exit.i.i.if.else.i.i_crit_edge: ; preds = %exfat_mode_can_hold_ro.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %exfat_mode_can_hold_ro.exit.i.i.if.else.i.i_crit_edge, %if.end.i.if.else.i.i_crit_edge
  br label %exfat_fill_inode.exit

exfat_fill_inode.exit:                            ; preds = %if.else.i.i, %exfat_mode_can_hold_ro.exit.i.i.exfat_fill_inode.exit_crit_edge
  %.sink15.i.i = phi i16 [ 62, %if.else.i.i ], [ 63, %exfat_mode_can_hold_ro.exit.i.i.exfat_fill_inode.exit_crit_edge ]
  %86 = and i16 %.sink15.i.i, %77
  %87 = ptrtoint ptr %attr6.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %attr6.i, align 4
  %call37.i = tail call fastcc i64 @i_size_read(ptr noundef %call1) #8
  %sub38.i = add i64 %call37.i, -1
  %cluster_size.i = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 2
  %88 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cluster_size.i, align 4
  %sub39.i = add i32 %89, -1
  %conv40.i = zext i32 %sub39.i to i64
  %or41.i = or i64 %sub38.i, %conv40.i
  %add.i = add i64 %or41.i, 1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 20
  %90 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %91 to i64
  %shr.i = ashr i64 %add.i, %sh_prom.i
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %92 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %shr.i, ptr %i_blocks.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %mtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 9
  %93 = call ptr @memcpy(ptr %i_mtime.i, ptr %mtime.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %94 = call ptr @memcpy(ptr %i_ctime.i, ptr %mtime.i, i32 16)
  %i_crtime.i = getelementptr i8, ptr %call1, i32 784
  %crtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 10
  %95 = call ptr @memcpy(ptr %i_crtime.i, ptr %crtime.i, i32 16)
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %atime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 8
  %96 = call ptr @memcpy(ptr %i_atime.i, ptr %atime.i, i32 16)
  %97 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i26 = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 33
  %99 = ptrtoint ptr %s_fs_info.i.i26 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i26, align 16
  %inode_hashtable.i = getelementptr inbounds %struct.exfat_sb_info, ptr %100, i32 0, i32 27
  %conv.i.i27 = trunc i64 %i_pos to i32
  %mul.i.i.i.i = mul i32 %conv.i.i27, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 24
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %inode_hashtable.i, i32 %shr.i.i.i
  %inode_hash_lock.i = getelementptr inbounds %struct.exfat_sb_info, ptr %100, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #8
  %101 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %i_pos, ptr %i_pos.i, align 8
  %i_hash_fat.i = getelementptr i8, ptr %call1, i32 -104
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  %104 = ptrtoint ptr %i_hash_fat.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %103, ptr %i_hash_fat.i, align 4
  %tobool.not.i.i = icmp eq ptr %103, null
  br i1 %tobool.not.i.i, label %exfat_fill_inode.exit.exfat_hash_inode.exit_crit_edge, label %do.body12.i.i

exfat_fill_inode.exit.exfat_hash_inode.exit_crit_edge: ; preds = %exfat_fill_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_hash_inode.exit

do.body12.i.i:                                    ; preds = %exfat_fill_inode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %103, i32 0, i32 1
  %105 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %i_hash_fat.i, ptr %pprev.i.i, align 4
  br label %exfat_hash_inode.exit

exfat_hash_inode.exit:                            ; preds = %do.body12.i.i, %exfat_fill_inode.exit.exfat_hash_inode.exit_crit_edge
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %i_hash_fat.i, ptr %add.ptr.i, align 4
  %pprev34.i.i = getelementptr i8, ptr %call1, i32 -100
  %107 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %add.ptr.i, ptr %pprev34.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #8
  %108 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_ino, align 8
  tail call void @__insert_inode_hash(ptr noundef %call1, i32 noundef %109) #8
  br label %out

out:                                              ; preds = %exfat_hash_inode.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %inode.0 = phi ptr [ %call, %entry.out_crit_edge ], [ %call1, %exfat_hash_inode.exit ], [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ]
  ret ptr %inode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages(ptr noundef %i_data, i64 noundef 0) #8
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef 0)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %6, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #8
  %call1 = tail call i32 @__exfat_truncate(ptr noundef %inode, i64 noundef 0) #8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i14 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i14, align 16
  %s_lock4 = getelementptr inbounds %struct.exfat_sb_info, ptr %10, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %s_lock4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  tail call void @exfat_cache_inval_inode(ptr noundef %inode) #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %inode_hash_lock.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %inode_hash_lock.i) #8
  %i_hash_fat.i = getelementptr i8, ptr %inode, i32 -104
  %pprev.i.i.i = getelementptr i8, ptr %inode, i32 -100
  %15 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.not.i.i, label %if.end.exfat_unhash_inode.exit_crit_edge, label %if.then.i.i

if.end.exfat_unhash_inode.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exfat_unhash_inode.exit

if.then.i.i:                                      ; preds = %if.end
  %17 = ptrtoint ptr %i_hash_fat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_hash_fat.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %16, align 4
  %tobool.not.i3.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %i_hash_fat.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %i_hash_fat.i, align 4
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %exfat_unhash_inode.exit

exfat_unhash_inode.exit:                          ; preds = %__hlist_del.exit.i.i, %if.end.exfat_unhash_inode.exit_crit_edge
  %i_pos.i = getelementptr i8, ptr %inode, i32 -112
  %23 = ptrtoint ptr %i_pos.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %i_pos.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %inode_hash_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  %9 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  %18 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !36
  %37 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !30

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %48 = tail call i32 @llvm.read_register.i32(metadata !18) #8
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__exfat_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_cache_inval_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_set_volume_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_cached(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_set_entry_time(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !40
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !41
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !28

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !42
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !44
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_dir_chksum_with_entry_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_free_dentry_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_alloc_cluster(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_chain_cont_cluster(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @exfat_get_block, ptr noundef %wbc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @exfat_get_block) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @exfat_get_block) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exfat_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @exfat_get_block) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagep, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %i_size_ondisk = getelementptr i8, ptr %2, i32 -128
  %call1 = tail call i32 @cont_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef nonnull @exfat_get_block, ptr noundef %i_size_ondisk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %3 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping, align 4
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %add)
  %cmp.i = icmp slt i64 %call.i, %add
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %4) #8
  tail call void @truncate_pagecache(ptr noundef %4, i64 noundef %call1.i) #8
  %i_size_aligned.i = getelementptr i8, ptr %4, i32 -120
  %5 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size_aligned.i, align 8
  tail call void @exfat_truncate(ptr noundef %4, i64 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call1 = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pagep, ptr noundef %fsdata) #8
  %i_size_aligned = getelementptr i8, ptr %1, i32 -120
  %2 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size_aligned, align 8
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %call2)
  %cmp = icmp slt i64 %3, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %6 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size_aligned, align 8
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.5, i64 noundef %call3, i64 noundef %7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp5 = icmp ult i32 %call1, %len
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping, align 4
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %add)
  %cmp.i = icmp slt i64 %call.i, %add
  br i1 %cmp.i, label %if.then.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %9) #8
  tail call void @truncate_pagecache(ptr noundef %9, i64 noundef %call1.i) #8
  %i_size_aligned.i = getelementptr i8, ptr %9, i32 -120
  %10 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size_aligned.i, align 8
  tail call void @exfat_truncate(ptr noundef %9, i64 noundef %11) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp8 = icmp slt i32 %call1, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %land.lhs.true

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %attr = getelementptr i8, ptr %1, i32 -244
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %attr, align 4
  %14 = and i16 %13, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.then11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #8
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %16 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %attr, align 4
  %19 = or i16 %18, 32
  store i16 %19, ptr %attr, align 4
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %call1, %if.then11 ], [ %call1, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @exfat_aop_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %truncate_lock = getelementptr i8, ptr %1, i32 -96
  tail call void @down_read(ptr noundef %truncate_lock) #8
  %call1 = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @exfat_get_block) #8
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %truncate_lock4 = getelementptr i8, ptr %3, i32 -96
  tail call void @up_read(ptr noundef %truncate_lock4) #8
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ki_pos, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 8
  %conv = zext i32 %9 to i64
  %add = add i64 %7, %conv
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %i_size_aligned = getelementptr i8, ptr %5, i32 -120
  %12 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size_aligned, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add)
  %cmp5 = icmp slt i64 %13, %add
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %17, ptr noundef %iter, ptr noundef nonnull @exfat_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp10 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %or.cond = select i1 %cmp10, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.then12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i27 = tail call fastcc i64 @i_size_read(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i27, i64 %add)
  %cmp.i = icmp slt i64 %call.i27, %add
  br i1 %cmp.i, label %if.then.i, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %19) #8
  tail call void @truncate_pagecache(ptr noundef %19, i64 noundef %call1.i) #8
  %i_size_aligned.i = getelementptr i8, ptr %19, i32 -120
  %20 = ptrtoint ptr %i_size_aligned.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size_aligned.i, align 8
  tail call void @exfat_truncate(ptr noundef %19, i64 noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %call.i, %if.end8.cleanup_crit_edge ], [ %call.i, %if.then12.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cont_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.named.register.sp = !{!18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/inode.c", i32 96, i32 2}
!2 = !{ptr @__func__.exfat_get_block, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/inode.c", i32 314, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/exfat/inode.c", i32 343, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/exfat/inode.c", i32 177, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/exfat/inode.c", i32 188, i32 4}
!11 = !{ptr @exfat_aops, !12, !"exfat_aops", i1 false, i1 false}
!12 = !{!"../fs/exfat/inode.c", i32 492, i32 46}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/exfat/inode.c", i32 419, i32 3}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{!"sp"}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2154822372}
!32 = !{i64 2152526419}
!33 = !{i64 2150002724}
!34 = !{i64 2150007658}
!35 = !{i64 2150029376}
!36 = !{i64 2150034270}
!37 = !{i64 2150110797}
!38 = !{i64 2150111122}
!39 = !{i64 2152538281}
!40 = !{i64 1086337, i64 1086398}
!41 = !{i64 1089069}
!42 = !{i64 1089354}
!43 = !{i64 2152524488}
!44 = !{i64 2152524330}
!45 = !{i64 2152524658}
!46 = !{i64 2150110472}
!47 = !{i8 0, i8 2}
