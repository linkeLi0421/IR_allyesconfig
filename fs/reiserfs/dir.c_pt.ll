; ModuleID = '/llk/IR_all_yes/fs/reiserfs/dir.c_pt.bc'
source_filename = "../fs/reiserfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reiserfs_key = type { i32, i32, %union.anon.70 }
%union.anon.70 = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
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
%struct.cpu_key = type { %struct.in_core_key, i32, i32 }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.treepath = type { i32, i32, [7 x %struct.path_element], i32 }
%struct.path_element = type { ptr, i32 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.71, i16, i16, i16 }
%union.anon.71 = type { i16 }
%struct.reiserfs_dir_entry = type { ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.cpu_key }
%struct.dir_context = type { ptr, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.block_head = type { i16, i16, i16, i16, %struct.reiserfs_key }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.72, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.72 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@reiserfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reiserfs_readdir, ptr null, ptr @reiserfs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @reiserfs_dir_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"readdir\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.reiserfs_readdir_inode = private unnamed_addr constant [23 x i8] c"reiserfs_readdir_inode\00", align 1
@.str.2 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"(!(comp_short_keys(&ih->ih_key, &pos_key))) at fs/reiserfs/dir.c:%i:%s: vs-9000: found item %h does not match to dir we readdir %K\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [201 x i8], [55 x i8] } { [201 x i8] c"(!(item_num > (((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((((struct block_head *)((bh)->b_data)))->blk_nr_item))))) - 1)) at fs/reiserfs/dir.c:%i:%s: vs-9005 item_num == %d, item amount == %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [163 x i8], [61 x i8] } { [163 x i8] c"(!((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((ih)->u.ih_entry_count))) < entry_num)) at fs/reiserfs/dir.c:%i:%s: vs-9010: entry number is too big %d (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@MIN_KEY = external dso_local constant %struct.reiserfs_key, align 1
@___asan_gen_.7 = private unnamed_addr constant [24 x i8] c"reiserfs_dir_operations\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 20, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 81, i32 41 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 115, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 118, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [21 x i8] c"../fs/reiserfs/dir.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 126, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @reiserfs_dir_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 201, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call i32 @reiserfs_readdir_inode(ptr noundef %1, ptr noundef %ctx)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reiserfs_dir_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %5) #8
  %call1 = tail call i32 @reiserfs_commit_for_inode(ptr noundef %3) #8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_unlock(ptr noundef %7) #8
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  %8 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_readdir_inode(ptr noundef %inode, ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  %pos_key = alloca %struct.cpu_key, align 8
  %path_to_entry = alloca %struct.treepath, align 4
  %tmp_ih = alloca %struct.item_head, align 4
  %small_buf = alloca [32 x i8], align 1
  %de = alloca %struct.reiserfs_dir_entry, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pos_key) #8
  %0 = call ptr @memset(ptr %pos_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %path_to_entry) #8
  %1 = getelementptr inbounds i8, ptr %path_to_entry, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 60)
  %3 = ptrtoint ptr %path_to_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %path_to_entry, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp_ih) #8
  %4 = call ptr @memset(ptr %tmp_ih, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %small_buf) #8
  %5 = call ptr @memset(ptr %small_buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %de) #8
  %6 = call ptr @memset(ptr %de, i32 255, i32 80)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_write_lock(ptr noundef %8) #8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef %10, ptr noundef nonnull @.str) #8
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  %. = select i1 %tobool.not, i64 1, i64 %12
  call void @make_cpu_key(ptr noundef nonnull %pos_key, ptr noundef %inode, i64 noundef %., i32 noundef 3, i32 noundef 3) #8
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %pos_key, i32 0, i32 2
  %13 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %k_offset.i, align 8
  %reada = getelementptr inbounds %struct.treepath, ptr %path_to_entry, i32 0, i32 1
  %15 = ptrtoint ptr %reada to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %reada, align 4
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call3316320 = call i32 @search_by_entry_key(ptr noundef %17, ptr noundef nonnull %pos_key, ptr noundef nonnull %path_to_entry, ptr noundef nonnull %de) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3316320)
  %cmp317321 = icmp eq i32 %call3316320, -2
  br i1 %cmp317321, label %entry.cleanup137_crit_edge, label %if.end.lr.ph.lr.ph

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %de_entry_num = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 3
  %de_item_num = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 1
  %de_ih = getelementptr inbounds %struct.reiserfs_dir_entry, ptr %de, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end.backedge, %if.end.lr.ph.lr.ph
  %call3319 = phi i32 [ %call3316320, %if.end.lr.ph.lr.ph ], [ %call3319.be, %if.end.backedge ]
  %next_pos.1318 = phi i64 [ %14, %if.end.lr.ph.lr.ph ], [ %next_pos.1318.be, %if.end.backedge ]
  %18 = ptrtoint ptr %de_entry_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %de_entry_num, align 4
  %20 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %de, align 8
  %22 = ptrtoint ptr %de_item_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %de_item_num, align 4
  %24 = ptrtoint ptr %de_ih to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %de_ih, align 8
  call void @copy_item_head(ptr noundef nonnull %tmp_ih, ptr noundef %25) #8
  %call4 = call i32 @comp_short_keys(ptr noundef %25, ptr noundef nonnull %pos_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.reiserfs_readdir_inode, ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef nonnull @__func__.reiserfs_readdir_inode, ptr noundef %25, ptr noundef nonnull %pos_key) #11
  unreachable

do.body8:                                         ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %blk_nr_item = getelementptr inbounds %struct.block_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %blk_nr_item to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %blk_nr_item, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp9.not = icmp slt i32 %23, %conv
  br i1 %cmp9.not, label %do.body18, label %if.then11

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.reiserfs_readdir_inode, ptr noundef nonnull @.str.3, i32 noundef 120, ptr noundef nonnull @__func__.reiserfs_readdir_inode, i32 noundef %23, i32 noundef %conv) #11
  unreachable

do.body18:                                        ; preds = %do.body8
  %u = getelementptr inbounds %struct.item_head, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %u, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %conv19 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv19)
  %cmp20 = icmp sgt i32 %19, %conv19
  br i1 %cmp20, label %if.then22, label %do.end27

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.reiserfs_readdir_inode, ptr noundef nonnull @.str.4, i32 noundef 128, ptr noundef nonnull @__func__.reiserfs_readdir_inode, i32 noundef %19, i32 noundef %conv19) #11
  unreachable

do.end27:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3319)
  %cmp28 = icmp eq i32 %call3319, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv19)
  %cmp32 = icmp slt i32 %19, %conv19
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then34, label %do.end27.if.end114_crit_edge

do.end27.if.end114_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then34:                                        ; preds = %do.end27
  %ih_item_location.i = getelementptr inbounds %struct.item_head, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %u, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv37303 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv37303)
  %cmp38304 = icmp slt i32 %19, %conv37303
  br i1 %cmp38304, label %for.body.lr.ph, label %if.then34.if.end114_crit_edge

if.then34.if.end114_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

for.body.lr.ph:                                   ; preds = %if.then34
  %37 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %ih_item_location.i, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38) #8
  %conv.i = zext i16 %39 to i32
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv.i
  %add.ptr = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i, i32 %19
  %ih_item_len.i = getelementptr inbounds %struct.item_head, ptr %25, i32 0, i32 2
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %deh.0308 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %next_pos.2307 = phi i64 [ %next_pos.1318, %for.body.lr.ph ], [ %next_pos.3, %for.inc.for.body_crit_edge ]
  %entry_num.0305 = phi i32 [ %19, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %40 = ptrtoint ptr %deh.0308 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %deh.0308, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %conv40 = zext i32 %42 to i64
  %deh_state = getelementptr inbounds %struct.reiserfs_de_head, ptr %deh.0308, i32 0, i32 4
  %43 = ptrtoint ptr %deh_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %deh_state, align 4
  %45 = and i32 %44, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool42.not = icmp eq i32 %45, 0
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %if.end44

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end44:                                         ; preds = %for.body
  %46 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data, align 4
  %48 = ptrtoint ptr %ih_item_location.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %ih_item_location.i, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49) #8
  %conv.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry_num.0305)
  %tobool.not.i = icmp eq i32 %entry_num.0305, 0
  %add.ptr.i220 = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i, i32 -1
  %add.ptr1.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i220, i32 %entry_num.0305
  %deh_location.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %add.ptr1.i, i32 0, i32 3
  %ih_item_len.sink.i = select i1 %tobool.not.i, ptr %ih_item_len.i, ptr %deh_location.i
  %51 = ptrtoint ptr %ih_item_len.sink.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %ih_item_len.sink.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #8
  %conv4.i = zext i16 %53 to i32
  %deh_location5.i = getelementptr %struct.reiserfs_de_head, ptr %add.ptr.i.i, i32 %entry_num.0305, i32 3
  %54 = ptrtoint ptr %deh_location5.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %deh_location5.i, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #8
  %conv6.i = zext i16 %56 to i32
  %sub7.i = sub nsw i32 %conv4.i, %conv6.i
  %deh_location = getelementptr inbounds %struct.reiserfs_de_head, ptr %deh.0308, i32 0, i32 3
  %57 = ptrtoint ptr %deh_location to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %deh_location, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %conv47 = zext i16 %59 to i32
  %add.ptr48 = getelementptr i8, ptr %add.ptr.i.i, i32 %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub7.i)
  %cmp49 = icmp slt i32 %sub7.i, 1
  br i1 %cmp49, label %if.end44.if.then57_crit_edge, label %lor.lhs.false51

if.end44.if.then57_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false51:                                  ; preds = %if.end44
  %add.ptr52 = getelementptr i8, ptr %add.ptr48, i32 %sub7.i
  %60 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %b_size, align 8
  %add.ptr54 = getelementptr i8, ptr %47, i32 %61
  %cmp55 = icmp ugt ptr %add.ptr52, %add.ptr54
  br i1 %cmp55, label %lor.lhs.false51.if.then57_crit_edge, label %if.end58

lor.lhs.false51.if.then57_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false51.if.then57_crit_edge, %if.end44.if.then57_crit_edge
  call void @pathrelse(ptr noundef nonnull %path_to_entry) #8
  br label %cleanup137

if.end58:                                         ; preds = %lor.lhs.false51
  %sub59 = add nsw i32 %sub7.i, -1
  %arrayidx = getelementptr i8, ptr %add.ptr48, i32 %sub59
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool60.not = icmp eq i8 %63, 0
  br i1 %tobool60.not, label %if.then61, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = call i32 @strlen(ptr noundef %add.ptr48) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end58.if.end63_crit_edge
  %d_reclen.0 = phi i32 [ %sub7.i, %if.end58.if.end63_crit_edge ], [ %call62, %if.then61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %d_reclen.0)
  %cmp64 = icmp sgt i32 %d_reclen.0, 255
  br i1 %cmp64, label %if.end63.for.inc_crit_edge, label %if.end67

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end67:                                         ; preds = %if.end63
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i.i, align 16
  %priv_root.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %67, i32 0, i32 31
  %68 = ptrtoint ptr %priv_root.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv_root.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %71, null
  br i1 %cmp.i.not.i, label %if.end67.if.end70_crit_edge, label %is_privroot_deh.exit

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

is_privroot_deh.exit:                             ; preds = %if.end67
  %deh_objectid.i = getelementptr inbounds %struct.reiserfs_de_head, ptr %deh.0308, i32 0, i32 2
  %72 = ptrtoint ptr %deh_objectid.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %deh_objectid.i, align 1
  %k_objectid.i = getelementptr i8, ptr %71, i32 -260
  %74 = ptrtoint ptr %k_objectid.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %k_objectid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.i = icmp eq i32 %73, %75
  br i1 %cmp.i, label %is_privroot_deh.exit.for.inc_crit_edge, label %is_privroot_deh.exit.if.end70_crit_edge

is_privroot_deh.exit.if.end70_crit_edge:          ; preds = %is_privroot_deh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

is_privroot_deh.exit.for.inc_crit_edge:           ; preds = %is_privroot_deh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end70:                                         ; preds = %is_privroot_deh.exit.if.end70_crit_edge, %if.end67.if.end70_crit_edge
  %76 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv40, ptr %pos, align 8
  %deh_objectid = getelementptr inbounds %struct.reiserfs_de_head, ptr %deh.0308, i32 0, i32 2
  %77 = ptrtoint ptr %deh_objectid to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %deh_objectid, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %d_reclen.0)
  %cmp74 = icmp slt i32 %d_reclen.0, 33
  br i1 %cmp74, label %if.end70.if.end85_crit_edge, label %if.end8.i

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end8.i:                                        ; preds = %if.end70
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %d_reclen.0, i32 noundef 3136) #13
  %tobool78.not = icmp eq ptr %call9.i, null
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @pathrelse(ptr noundef nonnull %path_to_entry) #8
  br label %cleanup137

if.end80:                                         ; preds = %if.end8.i
  %call81 = call i32 @comp_items(ptr noundef nonnull %tmp_ih, ptr noundef nonnull %path_to_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end80.if.end85_crit_edge, label %if.then83

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %cleanup111

if.end85:                                         ; preds = %if.end80.if.end85_crit_edge, %if.end70.if.end85_crit_edge
  %local_buf.0 = phi ptr [ %call9.i, %if.end80.if.end85_crit_edge ], [ %small_buf, %if.end70.if.end85_crit_edge ]
  %80 = call ptr @memcpy(ptr %local_buf.0, ptr %add.ptr48, i32 %d_reclen.0)
  %81 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb, align 4
  %call87 = call i32 @reiserfs_write_unlock_nested(ptr noundef %82) #8
  %conv88 = zext i32 %79 to i64
  %83 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctx, align 8
  %85 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %pos, align 8
  %call.i = call i32 %84(ptr noundef %ctx, ptr noundef nonnull %local_buf.0, i32 noundef %d_reclen.0, i64 noundef %86, i64 noundef %conv88, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i225 = icmp eq i32 %call.i, 0
  %87 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_lock_nested(ptr noundef %88, i32 noundef %call87) #8
  %cmp100.not = icmp eq ptr %local_buf.0, %small_buf
  br i1 %cmp.i225, label %if.end97, label %if.then90

if.then90:                                        ; preds = %if.end85
  br i1 %cmp100.not, label %if.then90.end_crit_edge, label %if.then95

if.then90.end_crit_edge:                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.then95:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %local_buf.0) #8
  br label %end

if.end97:                                         ; preds = %if.end85
  br i1 %cmp100.not, label %if.end97.if.end103_crit_edge, label %if.then102

if.end97.if.end103_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %local_buf.0) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end97.if.end103_crit_edge
  %add = add nuw nsw i64 %conv40, 1
  %call104 = call i32 @comp_items(ptr noundef nonnull %tmp_ih, ptr noundef nonnull %path_to_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end103.for.inc_crit_edge, label %if.then106

if.end103.for.inc_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add, ptr %k_offset.i, align 8
  br label %cleanup111

for.inc:                                          ; preds = %if.end103.for.inc_crit_edge, %is_privroot_deh.exit.for.inc_crit_edge, %if.end63.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next_pos.3 = phi i64 [ %next_pos.2307, %for.body.for.inc_crit_edge ], [ %next_pos.2307, %if.end63.for.inc_crit_edge ], [ %next_pos.2307, %is_privroot_deh.exit.for.inc_crit_edge ], [ %add, %if.end103.for.inc_crit_edge ]
  %inc = add nsw i32 %entry_num.0305, 1
  %incdec.ptr = getelementptr %struct.reiserfs_de_head, ptr %deh.0308, i32 1
  %90 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %u, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91)
  %conv37 = zext i16 %92 to i32
  %cmp38 = icmp slt i32 %inc, %conv37
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.if.end114_crit_edge

for.inc.if.end114_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup111:                                       ; preds = %if.then106, %if.then83
  %next_pos.3.ph = phi i64 [ %next_pos.2307, %if.then83 ], [ %add, %if.then106 ]
  %93 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb, align 4
  %call3 = call i32 @search_by_entry_key(ptr noundef %94, ptr noundef nonnull %pos_key, ptr noundef nonnull %path_to_entry, ptr noundef nonnull %de) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3)
  %cmp = icmp eq i32 %call3, -2
  br i1 %cmp, label %cleanup111.cleanup137_crit_edge, label %cleanup111.if.end.backedge_crit_edge

cleanup111.if.end.backedge_crit_edge:             ; preds = %cleanup111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.backedge

cleanup111.cleanup137_crit_edge:                  ; preds = %cleanup111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end.backedge:                                  ; preds = %while.cond.backedge.if.end.backedge_crit_edge, %cleanup111.if.end.backedge_crit_edge
  %call3319.be = phi i32 [ %call3, %cleanup111.if.end.backedge_crit_edge ], [ %call3316, %while.cond.backedge.if.end.backedge_crit_edge ]
  %next_pos.1318.be = phi i64 [ %next_pos.3.ph, %cleanup111.if.end.backedge_crit_edge ], [ %next_pos.5, %while.cond.backedge.if.end.backedge_crit_edge ]
  br label %if.end

if.end114:                                        ; preds = %for.inc.if.end114_crit_edge, %if.then34.if.end114_crit_edge, %do.end27.if.end114_crit_edge
  %next_pos.5 = phi i64 [ %next_pos.1318, %if.then34.if.end114_crit_edge ], [ %next_pos.1318, %do.end27.if.end114_crit_edge ], [ %next_pos.3, %for.inc.if.end114_crit_edge ]
  %95 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_data, align 4
  %blk_nr_item116 = getelementptr inbounds %struct.block_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %blk_nr_item116 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %blk_nr_item116, align 2
  %99 = call i16 @llvm.bswap.i16(i16 %98)
  %conv117 = zext i16 %99 to i32
  %sub118 = add nsw i32 %conv117, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub118)
  %cmp119.not = icmp eq i32 %23, %sub118
  br i1 %cmp119.not, label %if.end122, label %if.end114.end_crit_edge

if.end114.end_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end122:                                        ; preds = %if.end114
  %100 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_sb, align 4
  %call124 = call ptr @get_rkey(ptr noundef nonnull %path_to_entry, ptr noundef %101) #8
  %call125 = call i32 @comp_le_keys(ptr noundef %call124, ptr noundef nonnull @MIN_KEY) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end122.while.cond.backedge_crit_edge, label %if.end128

if.end122.while.cond.backedge_crit_edge:          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end132, %if.end122.while.cond.backedge_crit_edge
  %storemerge = phi i64 [ %conv.i228, %if.end132 ], [ %next_pos.5, %if.end122.while.cond.backedge_crit_edge ]
  %102 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %storemerge, ptr %k_offset.i, align 8
  %103 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb, align 4
  %call3316 = call i32 @search_by_entry_key(ptr noundef %104, ptr noundef nonnull %pos_key, ptr noundef nonnull %path_to_entry, ptr noundef nonnull %de) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call3316)
  %cmp317 = icmp eq i32 %call3316, -2
  br i1 %cmp317, label %while.cond.backedge.cleanup137_crit_edge, label %while.cond.backedge.if.end.backedge_crit_edge

while.cond.backedge.if.end.backedge_crit_edge:    ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.backedge

while.cond.backedge.cleanup137_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137

if.end128:                                        ; preds = %if.end122
  %call129 = call i32 @comp_short_keys(ptr noundef %call124, ptr noundef nonnull %pos_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end132, label %if.end128.end_crit_edge

if.end128.end_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end132:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %u.i = getelementptr inbounds %struct.reiserfs_key, ptr %call124, i32 0, i32 2
  %105 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %u.i, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  %conv.i228 = zext i32 %107 to i64
  br label %while.cond.backedge

end:                                              ; preds = %if.end128.end_crit_edge, %if.end114.end_crit_edge, %if.then95, %if.then90.end_crit_edge
  %next_pos.6 = phi i64 [ %next_pos.2307, %if.then90.end_crit_edge ], [ %next_pos.2307, %if.then95 ], [ %next_pos.5, %if.end114.end_crit_edge ], [ %next_pos.5, %if.end128.end_crit_edge ]
  %108 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %next_pos.6, ptr %pos, align 8
  call void @pathrelse(ptr noundef nonnull %path_to_entry) #8
  %call135 = call i32 @reiserfs_check_path(ptr noundef nonnull %path_to_entry) #8
  br label %cleanup137

cleanup137:                                       ; preds = %end, %while.cond.backedge.cleanup137_crit_edge, %cleanup111.cleanup137_crit_edge, %if.then79, %if.then57, %entry.cleanup137_crit_edge
  %ret.7 = phi i32 [ 0, %end ], [ -5, %if.then57 ], [ -12, %if.then79 ], [ -5, %entry.cleanup137_crit_edge ], [ -5, %cleanup111.cleanup137_crit_edge ], [ -5, %while.cond.backedge.cleanup137_crit_edge ]
  %109 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %i_sb, align 4
  call void @reiserfs_write_unlock(ptr noundef %110) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %de) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %small_buf) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp_ih) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %path_to_entry) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pos_key) #8
  ret i32 %ret.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_check_lock_depth(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_cpu_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @search_by_entry_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_item_head(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_short_keys(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pathrelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_items(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_rkey(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comp_le_keys(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_check_path(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @make_empty_dir_item_v1(ptr nocapture noundef %body, i32 noundef %dirid, i32 noundef %objid, i32 noundef %par_dirid, i32 noundef %par_objid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %body, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 19)
  %add.ptr = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1
  %2 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16777216, ptr %body, align 1
  %deh_dir_id = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 1
  %3 = ptrtoint ptr %deh_dir_id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %dirid, ptr %deh_dir_id, align 1
  %deh_objectid = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 2
  %4 = ptrtoint ptr %deh_objectid to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %objid, ptr %deh_objectid, align 1
  %deh_state = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 4
  %5 = ptrtoint ptr %deh_state to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %deh_state, align 1
  %deh_location = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 3
  %6 = ptrtoint ptr %deh_location to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 8704, ptr %deh_location, align 1
  %7 = load i32, ptr %deh_state, align 4
  %or.i.i = or i32 %7, 67108864
  store i32 %or.i.i, ptr %deh_state, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 33554432, ptr %add.ptr, align 1
  %deh_dir_id3 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 1
  %9 = ptrtoint ptr %deh_dir_id3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %par_dirid, ptr %deh_dir_id3, align 1
  %deh_objectid4 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 2
  %10 = ptrtoint ptr %deh_objectid4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %par_objid, ptr %deh_objectid4, align 1
  %deh_state5 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 4
  %deh_location8 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 3
  %11 = ptrtoint ptr %deh_location8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 8192, ptr %deh_location8, align 1
  %12 = ptrtoint ptr %deh_state5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %deh_state5, align 4
  %or.i.i34 = or i32 %13, 67108864
  store i32 %or.i.i34, ptr %deh_state5, align 4
  %add.ptr13 = getelementptr i8, ptr %body, i32 34
  %14 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 46, ptr %add.ptr13, align 1
  %add.ptr16 = getelementptr i8, ptr %body, i32 32
  %15 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 11822, ptr %add.ptr16, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @make_empty_dir_item(ptr nocapture noundef %body, i32 noundef %dirid, i32 noundef %objid, i32 noundef %par_dirid, i32 noundef %par_objid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %body, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %add.ptr = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1
  %2 = ptrtoint ptr %body to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 16777216, ptr %body, align 1
  %deh_dir_id = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 1
  %3 = ptrtoint ptr %deh_dir_id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %dirid, ptr %deh_dir_id, align 1
  %deh_objectid = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 2
  %4 = ptrtoint ptr %deh_objectid to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %objid, ptr %deh_objectid, align 1
  %deh_state = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 4
  %5 = ptrtoint ptr %deh_state to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %deh_state, align 1
  %deh_location = getelementptr inbounds %struct.reiserfs_de_head, ptr %body, i32 0, i32 3
  %6 = ptrtoint ptr %deh_location to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 10240, ptr %deh_location, align 1
  %7 = load i32, ptr %deh_state, align 4
  %or.i.i = or i32 %7, 67108864
  store i32 %or.i.i, ptr %deh_state, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 33554432, ptr %add.ptr, align 1
  %deh_dir_id3 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 1
  %9 = ptrtoint ptr %deh_dir_id3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %par_dirid, ptr %deh_dir_id3, align 1
  %deh_objectid4 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 2
  %10 = ptrtoint ptr %deh_objectid4 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %par_objid, ptr %deh_objectid4, align 1
  %deh_state5 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 4
  %deh_location8 = getelementptr %struct.reiserfs_de_head, ptr %body, i32 1, i32 3
  %11 = ptrtoint ptr %deh_location8 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 8192, ptr %deh_location8, align 1
  %12 = ptrtoint ptr %deh_state5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %deh_state5, align 4
  %or.i.i34 = or i32 %13, 67108864
  store i32 %or.i.i34, ptr %deh_state5, align 4
  %add.ptr13 = getelementptr i8, ptr %body, i32 40
  %14 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 46, ptr %add.ptr13, align 1
  %add.ptr16 = getelementptr i8, ptr %body, i32 32
  %15 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 11822, ptr %add.ptr16, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_commit_for_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { noreturn nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @reiserfs_dir_operations, !1, !"reiserfs_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/dir.c", i32 20, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/dir.c", i32 81, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/dir.c", i32 115, i32 3}
!6 = !{ptr @__func__.reiserfs_readdir_inode, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/dir.c", i32 118, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/dir.c", i32 126, i32 3}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/reiserfs/dir.c", i32 310, i32 35}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/dir.c", i32 311, i32 38}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
