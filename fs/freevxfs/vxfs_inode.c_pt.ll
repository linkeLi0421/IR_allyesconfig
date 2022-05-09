; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_inode.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.vxfs_inode_info = type { %struct.inode, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8, %union.anon.70, i32, i32, %union.anon.71 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { [6 x %struct.vxfs_typed] }
%struct.vxfs_typed = type { i64, i32, i32 }
%struct.vxfs_dinode = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, %union.anon.72, i32, i32, i64, %union.anon.75, i32 }
%union.anon.72 = type { i64 }
%union.anon.75 = type { [6 x %struct.vxfs_typed] }

@vxfs_aops = external dso_local constant %struct.address_space_operations, align 4
@vxfs_blkiget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014vxfs: unable to read block %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vxfs_blkiget\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/freevxfs/vxfs_inode.c\00", [39 x i8] zeroinitializer }, align 32
@vxfs_blkiget._entry_ptr = internal global ptr @vxfs_blkiget._entry, section ".printk_index", align 4
@vxfs_immed_aops = external dso_local constant %struct.address_space_operations, align 4
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@vxfs_dir_inode_ops = external dso_local constant %struct.inode_operations, align 128
@vxfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@__vxfs_iget._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 234, ptr null, ptr null }, align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014vxfs: error on page 0x%p for inode %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__vxfs_iget\00", [20 x i8] zeroinitializer }, align 32
@__vxfs_iget._entry_ptr = internal global ptr @__vxfs_iget._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 193, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [28 x i8] c"../fs/freevxfs/vxfs_inode.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 233, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__vxfs_iget._entry, ptr @__vxfs_iget._entry_ptr, ptr @vxfs_blkiget._entry, ptr @vxfs_blkiget._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_blkiget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vxfs_blkiget(ptr noundef %sbp, i32 noundef %extent, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sbp) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_next_ino() #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %i_ino, align 8
  %mul = shl i32 %ino, 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 3
  %1 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_blocksize, align 16
  %div = udiv i32 %mul, %2
  %add = add i32 %div, %extent
  %div331 = lshr i32 %2, 8
  %rem = urem i32 %ino, %div331
  %mul4 = shl nuw i32 %rem, 8
  %conv = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 26
  %3 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %4, i64 noundef %conv, i32 noundef %2, i32 noundef 8) #5
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.thread, label %land.lhs.true

do.end.thread:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call1235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add) #8
  br label %brelse.exit34

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call.i, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.then.i33, label %brelse.exit

brelse.exit:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %mul4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info, align 16
  tail call fastcc void @dip2vip_cpy(ptr noundef %11, ptr noundef nonnull %call, ptr noundef %add.ptr)
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vxfs_aops, ptr %a_ops, align 4
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %cleanup

if.then.i33:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add) #8
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %brelse.exit34

brelse.exit34:                                    ; preds = %if.then.i33, %do.end.thread
  tail call void @iput(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit34, %brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %brelse.exit ], [ null, %brelse.exit34 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dip2vip_cpy(ptr nocapture noundef readonly %sbi, ptr noundef %vip, ptr nocapture noundef readonly %dip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %dip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dip, align 8
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %sbi, i32 0, i32 9
  %2 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %retval.0.i = select i1 %cmp.i, i32 %1, i32 %4
  %vii_mode = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 1
  %5 = ptrtoint ptr %vii_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i, ptr %vii_mode, align 8
  %vdi_nlink = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 1
  %6 = ptrtoint ptr %vdi_nlink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vdi_nlink, align 4
  %8 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i119 = icmp eq i32 %9, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %retval.0.i120 = select i1 %cmp.i119, i32 %7, i32 %10
  %vii_nlink = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 2
  %11 = ptrtoint ptr %vii_nlink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i120, ptr %vii_nlink, align 4
  %vdi_uid = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 2
  %12 = ptrtoint ptr %vdi_uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vdi_uid, align 8
  %14 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i122 = icmp eq i32 %15, 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %retval.0.i123 = select i1 %cmp.i122, i32 %13, i32 %16
  %vii_uid = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 3
  %17 = ptrtoint ptr %vii_uid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i123, ptr %vii_uid, align 8
  %vdi_gid = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 3
  %18 = ptrtoint ptr %vdi_gid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vdi_gid, align 4
  %20 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i125 = icmp eq i32 %21, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %retval.0.i126 = select i1 %cmp.i125, i32 %19, i32 %22
  %vii_gid = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 4
  %23 = ptrtoint ptr %vii_gid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i126, ptr %vii_gid, align 4
  %vdi_size = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 4
  %24 = ptrtoint ptr %vdi_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vdi_size, align 8
  %26 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.i128 = icmp eq i32 %27, 1
  %28 = tail call i64 @llvm.bswap.i64(i64 %25) #5
  %retval.0.i129 = select i1 %cmp.i128, i64 %25, i64 %28
  %vii_size = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 5
  %29 = ptrtoint ptr %vii_size to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %retval.0.i129, ptr %vii_size, align 8
  %vdi_atime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 5
  %30 = ptrtoint ptr %vdi_atime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vdi_atime, align 8
  %32 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i131 = icmp eq i32 %33, 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %retval.0.i132 = select i1 %cmp.i131, i32 %31, i32 %34
  %vii_atime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 6
  %35 = ptrtoint ptr %vii_atime to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i132, ptr %vii_atime, align 8
  %vdi_autime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 6
  %36 = ptrtoint ptr %vdi_autime to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vdi_autime, align 4
  %38 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i134 = icmp eq i32 %39, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %retval.0.i135 = select i1 %cmp.i134, i32 %37, i32 %40
  %vii_autime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 7
  %41 = ptrtoint ptr %vii_autime to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i135, ptr %vii_autime, align 4
  %vdi_mtime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 7
  %42 = ptrtoint ptr %vdi_mtime to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vdi_mtime, align 8
  %44 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp.i137 = icmp eq i32 %45, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  %retval.0.i138 = select i1 %cmp.i137, i32 %43, i32 %46
  %vii_mtime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 8
  %47 = ptrtoint ptr %vii_mtime to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i138, ptr %vii_mtime, align 8
  %vdi_mutime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 8
  %48 = ptrtoint ptr %vdi_mutime to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vdi_mutime, align 4
  %50 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i140 = icmp eq i32 %51, 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %retval.0.i141 = select i1 %cmp.i140, i32 %49, i32 %52
  %vii_mutime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 9
  %53 = ptrtoint ptr %vii_mutime to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i141, ptr %vii_mutime, align 4
  %vdi_ctime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 9
  %54 = ptrtoint ptr %vdi_ctime to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vdi_ctime, align 8
  %56 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i143 = icmp eq i32 %57, 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  %retval.0.i144 = select i1 %cmp.i143, i32 %55, i32 %58
  %vii_ctime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 10
  %59 = ptrtoint ptr %vii_ctime to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i144, ptr %vii_ctime, align 8
  %vdi_cutime = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 10
  %60 = ptrtoint ptr %vdi_cutime to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vdi_cutime, align 4
  %62 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i146 = icmp eq i32 %63, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %retval.0.i147 = select i1 %cmp.i146, i32 %61, i32 %64
  %vii_cutime = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 11
  %65 = ptrtoint ptr %vii_cutime to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i147, ptr %vii_cutime, align 4
  %vdi_orgtype = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 12
  %66 = ptrtoint ptr %vdi_orgtype to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vdi_orgtype, align 1
  %vii_orgtype = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 12
  %68 = ptrtoint ptr %vii_orgtype to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %vii_orgtype, align 8
  %vdi_blocks = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 16
  %69 = ptrtoint ptr %vdi_blocks to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %vdi_blocks, align 8
  %71 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i149 = icmp eq i32 %72, 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  %retval.0.i150 = select i1 %cmp.i149, i32 %70, i32 %73
  %vii_blocks = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 14
  %74 = ptrtoint ptr %vii_blocks to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i150, ptr %vii_blocks, align 8
  %vdi_gen = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 17
  %75 = ptrtoint ptr %vdi_gen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %vdi_gen, align 4
  %77 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i152 = icmp eq i32 %78, 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %retval.0.i153 = select i1 %cmp.i152, i32 %76, i32 %79
  %vii_gen = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 15
  %80 = ptrtoint ptr %vii_gen to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i153, ptr %vii_gen, align 4
  %and = and i32 %retval.0.i, -4096
  %81 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end25.sink.split [
    i32 40960, label %entry.if.end25_crit_edge
    i32 32768, label %entry.if.end25_crit_edge167
  ]

entry.if.end25_crit_edge167:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25.sink.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vdi_ftarea = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 15
  %82 = ptrtoint ptr %vdi_ftarea to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %vdi_ftarea, align 8
  %84 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp.i158 = icmp eq i32 %85, 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #5
  %retval.0.i159 = select i1 %cmp.i158, i32 %83, i32 %86
  %vii_ftarea24 = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 13
  %87 = ptrtoint ptr %vii_ftarea24 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i159, ptr %vii_ftarea24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %entry.if.end25_crit_edge, %entry.if.end25_crit_edge167
  %vii_org = getelementptr inbounds %struct.vxfs_inode_info, ptr %vip, i32 0, i32 16
  %vdi_org = getelementptr inbounds %struct.vxfs_dinode, ptr %dip, i32 0, i32 19
  %88 = call ptr @memcpy(ptr %vii_org, ptr %vdi_org, i32 96)
  %89 = trunc i32 %retval.0.i to i16
  %conv.i = and i16 %89, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cmp.i160 = icmp eq i32 %and, 4096
  %90 = or i16 %conv.i, 4096
  %spec.select.i = select i1 %cmp.i160, i16 %90, i16 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp8.i = icmp eq i32 %and, 8192
  %91 = or i16 %spec.select.i, 8192
  %ret.1.i = select i1 %cmp8.i, i16 %91, i16 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp17.i = icmp eq i32 %and, 16384
  %92 = or i16 %ret.1.i, 16384
  %ret.2.i = select i1 %cmp17.i, i16 %92, i16 %ret.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and)
  %cmp26.i = icmp eq i32 %and, 24576
  %93 = or i16 %ret.2.i, 24576
  %ret.3.i = select i1 %cmp26.i, i16 %93, i16 %ret.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %and)
  %cmp35.i = icmp eq i32 %and, 40960
  %94 = or i16 %ret.3.i, -24576
  %ret.4.i = select i1 %cmp35.i, i16 %94, i16 %ret.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and)
  %cmp44.i = icmp eq i32 %and, 32768
  %95 = or i16 %ret.4.i, -32768
  %ret.5.i = select i1 %cmp44.i, i16 %95, i16 %ret.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and)
  %cmp53.i = icmp eq i32 %and, 49152
  %96 = or i16 %ret.5.i, -16384
  %ret.6.i = select i1 %cmp53.i, i16 %96, i16 %ret.5.i
  %97 = ptrtoint ptr %vip to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %ret.6.i, ptr %vip, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 8
  %98 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 53
  %100 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %101, i32 noundef %retval.0.i123) #5
  %102 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %103 = ptrtoint ptr %vii_gid to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vii_gid, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 3
  %105 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i162 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 53
  %107 = ptrtoint ptr %s_user_ns.i.i162 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_user_ns.i.i162, align 8
  %call1.i163 = tail call i32 @make_kgid(ptr noundef %108, i32 noundef %104) #5
  %109 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call1.i163, ptr %i_gid.i, align 8
  %110 = ptrtoint ptr %vii_nlink to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vii_nlink, align 4
  tail call void @set_nlink(ptr noundef %vip, i32 noundef %111) #5
  %112 = ptrtoint ptr %vii_size to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %vii_size, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 14
  %114 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %i_size, align 8
  %115 = ptrtoint ptr %vii_atime to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vii_atime, align 8
  %conv = zext i32 %116 to i64
  %i_atime = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 15
  %117 = ptrtoint ptr %i_atime to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv, ptr %i_atime, align 8
  %118 = ptrtoint ptr %vii_ctime to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vii_ctime, align 8
  %conv33 = zext i32 %119 to i64
  %i_ctime = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 17
  %120 = ptrtoint ptr %i_ctime to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %conv33, ptr %i_ctime, align 8
  %121 = ptrtoint ptr %vii_mtime to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vii_mtime, align 8
  %conv36 = zext i32 %122 to i64
  %i_mtime = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 16
  %123 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv36, ptr %i_mtime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 15, i32 1
  %124 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %tv_nsec, align 8
  %tv_nsec40 = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 17, i32 1
  %125 = ptrtoint ptr %tv_nsec40 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %tv_nsec40, align 8
  %tv_nsec42 = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 16, i32 1
  %126 = ptrtoint ptr %tv_nsec42 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %tv_nsec42, align 8
  %127 = ptrtoint ptr %vii_blocks to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vii_blocks, align 8
  %conv44 = zext i32 %128 to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 22
  %129 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %conv44, ptr %i_blocks, align 8
  %130 = ptrtoint ptr %vii_gen to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %vii_gen, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %vip, i32 0, i32 49
  %132 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %i_generation, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vxfs_stiget(ptr noundef %sbp, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %sbp) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @get_next_ino() #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %i_ino, align 8
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info, align 16
  %vsi_stilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %vsi_stilist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vsi_stilist, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping.i, align 8
  %7 = lshr i32 %ino, 4
  %div16.i = and i32 %7, 1048575
  %call.i = tail call ptr @vxfs_get_page(ptr noundef %6, i32 noundef %div16.i) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__vxfs_iget.exit, label %__vxfs_iget.exit.thread

__vxfs_iget.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rem.i = shl i32 %ino, 8
  %mul.i = and i32 %rem.i, 3840
  %call3.i = tail call ptr @page_address(ptr noundef %call.i) #5
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 %mul.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  tail call fastcc void @dip2vip_cpy(ptr noundef %11, ptr noundef nonnull %call, ptr noundef %add.ptr.i) #5
  %i_mapping4.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping4.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vxfs_aops, ptr %a_ops.i, align 4
  tail call void @vxfs_put_page(ptr noundef %call.i) #5
  br label %cleanup

__vxfs_iget.exit:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i, i32 noundef %ino) #8
  tail call void @iput(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %__vxfs_iget.exit, %__vxfs_iget.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %__vxfs_iget.exit ], [ null, %entry.cleanup_crit_edge ], [ %call, %__vxfs_iget.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vxfs_iget(ptr noundef %sbp, i32 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iget_locked(ptr noundef %sbp, i32 noundef %ino) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sbp, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %vsi_ilist = getelementptr inbounds %struct.vxfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vsi_ilist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vsi_ilist, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping.i, align 8
  %8 = lshr i32 %ino, 4
  %div16.i = and i32 %8, 1048575
  %call.i = tail call ptr @vxfs_get_page(ptr noundef %7, i32 noundef %div16.i) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %__vxfs_iget.exit, label %__vxfs_iget.exit.thread

__vxfs_iget.exit.thread:                          ; preds = %if.end4
  %rem.i = shl i32 %ino, 8
  %mul.i = and i32 %rem.i, 3840
  %call3.i = tail call ptr @page_address(ptr noundef %call.i) #5
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 %mul.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  tail call fastcc void @dip2vip_cpy(ptr noundef %12, ptr noundef nonnull %call, ptr noundef %add.ptr.i) #5
  %i_mapping4.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping4.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vxfs_aops, ptr %a_ops.i, align 4
  tail call void @vxfs_put_page(ptr noundef %call.i) #5
  %vii_orgtype = getelementptr inbounds %struct.vxfs_inode_info, ptr %call, i32 0, i32 12
  %16 = ptrtoint ptr %vii_orgtype to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vii_orgtype, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp = icmp eq i8 %17, 2
  %vxfs_immed_aops.vxfs_aops = select i1 %cmp, ptr @vxfs_immed_aops, ptr @vxfs_aops
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call, align 8
  %20 = and i16 %19, -4096
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %20, label %if.else47 [
    i16 -32768, label %if.then18
    i16 16384, label %if.then25
    i16 -24576, label %if.then34
  ]

__vxfs_iget.exit:                                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i, i32 noundef %ino) #8
  tail call void @iget_failed(ptr noundef nonnull %call) #5
  br label %cleanup

if.then18:                                        ; preds = %__vxfs_iget.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %22 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @generic_ro_fops, ptr %22, align 8
  %24 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping4.i, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vxfs_immed_aops.vxfs_aops, ptr %a_ops, align 4
  br label %if.end53

if.then25:                                        ; preds = %__vxfs_iget.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vxfs_dir_inode_ops, ptr %i_op, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vxfs_dir_operations, ptr %28, align 8
  %30 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_mapping4.i, align 8
  %a_ops27 = getelementptr inbounds %struct.address_space, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %a_ops27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vxfs_immed_aops.vxfs_aops, ptr %a_ops27, align 4
  br label %if.end53

if.then34:                                        ; preds = %__vxfs_iget.exit.thread
  %i_op44 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  br i1 %cmp, label %if.else43, label %if.then39

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %i_op44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @page_symlink_inode_operations, ptr %i_op44, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call) #5
  %34 = ptrtoint ptr %i_mapping4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_mapping4.i, align 8
  %a_ops42 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %a_ops42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @vxfs_aops, ptr %a_ops42, align 4
  br label %if.end53

if.else43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %i_op44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @simple_symlink_inode_operations, ptr %i_op44, align 8
  %vii_org = getelementptr inbounds %struct.vxfs_inode_info, ptr %call, i32 0, i32 16
  %38 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 48
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vii_org, ptr %38, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %40 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size, align 8
  %conv45 = trunc i64 %41 to i32
  %42 = tail call i32 @llvm.umin.i32(i32 %conv45, i32 95) #5
  %arrayidx.i = getelementptr i8, ptr %vii_org, i32 %42
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx.i, align 1
  br label %if.end53

if.else47:                                        ; preds = %__vxfs_iget.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %vii_ftarea = getelementptr inbounds %struct.vxfs_inode_info, ptr %call, i32 0, i32 13
  %44 = ptrtoint ptr %vii_ftarea to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vii_ftarea, align 4
  %conv.i = shl i32 %45, 12
  %46 = and i32 %conv.i, 267386880
  %and2.i = and i32 %45, 255
  %or.i = or i32 %46, %and2.i
  tail call void @init_special_inode(ptr noundef nonnull %call, i16 noundef zeroext %19, i32 noundef %or.i) #5
  br label %if.end53

if.end53:                                         ; preds = %if.else47, %if.else43, %if.then39, %if.then25, %if.then18
  tail call void @unlock_new_inode(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %__vxfs_iget.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %__vxfs_iget.exit ], [ %call, %if.end53 ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vxfs_evict_inode(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #5
  tail call void @clear_inode(ptr noundef %ip) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vxfs_get_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vxfs_put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_inode.c", i32 193, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vxfs_blkiget._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vxfs_blkiget._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/freevxfs/vxfs_inode.c", i32 233, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__vxfs_iget._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @__vxfs_iget._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
