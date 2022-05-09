; ModuleID = '/llk/IR_all_yes/fs/btrfs/uuid-tree.c_pt.bc'
source_filename = "../fs/btrfs/uuid-tree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btrfs_item_batch = type { ptr, ptr, i32, i32 }
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_trans_handle = type { i64, i64, i64, i32, ptr, ptr, ptr, ptr, %struct.refcount_struct, i32, i16, i8, i8, i8, i8, i8, ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.80, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.extent_map_tree = type { %struct.rb_root_cached, %struct.list_head, %struct.rwlock_t }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.btrfs_block_rsv = type { i64, i64, ptr, %struct.spinlock, i16, i16, i16, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.btrfs_free_cluster = type { %struct.spinlock, %struct.spinlock, %struct.rb_root, i64, i64, i8, ptr, %struct.list_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.btrfs_discard_ctl = type { ptr, %struct.delayed_work, %struct.spinlock, ptr, [3 x %struct.list_head], i64, i64, %struct.atomic_t, %struct.atomic64_t, i64, i64, i32, i32, i64, i64, %struct.atomic64_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.btrfs_work = type { ptr, ptr, ptr, %struct.work_struct, %struct.list_head, ptr, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.btrfs_dev_replace = type { i64, i64, i64, %struct.atomic64_t, %struct.atomic64_t, i64, i64, i64, i64, i64, i32, i32, ptr, ptr, %struct.mutex, %struct.rw_semaphore, %struct.btrfs_scrub_progress, %struct.percpu_counter, %struct.wait_queue_head }
%struct.btrfs_scrub_progress = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>

@btrfs_uuid_tree_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/btrfs/uuid-tree.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014insert uuid item failed %d (0x%016llx, 0x%016llx) type %u!\00", [35 x i8] zeroinitializer }, align 32
@btrfs_uuid_tree_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014error %d while searching for uuid item!\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014uuid item with illegal size %lu!\00", [61 x i8] zeroinitializer }, align 32
@btrfs_uuid_tree_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 251, i64 252]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 99, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 130, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 177, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [24 x i8] c"../fs/btrfs/uuid-tree.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 191, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_uuid_tree_add(ptr noundef %trans, ptr nocapture noundef readonly %uuid, i8 noundef zeroext %type, i64 noundef %subid_cpu) local_unnamed_addr #0 align 64 {
entry:
  %data_size.addr.i = alloca i32, align 4
  %batch.i = alloca %struct.btrfs_item_batch, align 4
  %key.i = alloca %struct.btrfs_key, align 8
  %data.i = alloca i64, align 8
  %key = alloca %struct.btrfs_key, align 8
  %subid_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %uuid_root2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %uuid_root2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuid_root2, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %4 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %6 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subid_le) #6
  %7 = ptrtoint ptr %subid_le to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %subid_le, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #6
  %8 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %9 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %3, null
  %10 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b84.i = load i1, ptr @btrfs_uuid_tree_lookup.__already_done, align 1
  br i1 %.b84.i, label %land.rhs.i.land.rhs_crit_edge, label %if.then.i, !prof !23

land.rhs.i.land.rhs_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @btrfs_uuid_tree_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef null) #6
  br label %land.rhs

if.end39.i:                                       ; preds = %entry
  %call.i = tail call ptr @btrfs_alloc_path() #6
  %tobool40.not.i = icmp eq ptr %call.i, null
  br i1 %tobool40.not.i, label %if.end39.i.btrfs_uuid_tree_lookup.exit.thread118_crit_edge, label %if.end42.i

if.end39.i.btrfs_uuid_tree_lookup.exit.thread118_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_uuid_tree_lookup.exit.thread118

if.end42.i:                                       ; preds = %if.end39.i
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %type, ptr %8, align 8
  %12 = ptrtoint ptr %uuid to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %uuid, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %15 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %key.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %uuid, i32 8
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr.i.i, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #6
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %9, align 1
  %call43.i = call i32 @btrfs_search_slot(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %key.i, ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp.i = icmp slt i32 %call43.i, 0
  br i1 %cmp.i, label %btrfs_uuid_tree_lookup.exit, label %if.else.i

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp45.not.i = icmp eq i32 %call43.i, 0
  br i1 %cmp45.not.i, label %if.end48.i, label %if.else.i.if.end.thread122_crit_edge

if.else.i.if.end.thread122_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread122

if.end48.i:                                       ; preds = %if.else.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slots.i, align 4
  %mul.i.i.i.i = mul i32 %23, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %24 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef %21, ptr noundef %24, i32 noundef 21) #6
  %call.i.i88.i = call i32 @btrfs_get_32(ptr noundef %21, ptr noundef %24, i32 noundef 17) #6
  %and.i = and i32 %call.i.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp52.i = icmp eq i32 %and.i, 0
  br i1 %cmp52.i, label %while.cond.preheader.i, label %if.then53.i

while.cond.preheader.i:                           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool55.not94.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool55.not94.i, label %while.cond.preheader.i.if.end.thread122_crit_edge, label %while.body.preheader.i

while.cond.preheader.i.if.end.thread122_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread122

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %add.i = add i32 %call.i.i88.i, 101
  br label %while.body.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %fs_info.i = getelementptr inbounds %struct.btrfs_root, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs_info.i, align 8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %26, ptr noundef nonnull @.str.3, i32 noundef %call.i.i.i) #9
  br label %if.end.thread122

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %offset.096.i = phi i32 [ %add59.i, %cleanup.i.while.body.i_crit_edge ], [ %add.i, %while.body.preheader.i ]
  %item_size.095.i = phi i32 [ %sub.i, %cleanup.i.while.body.i_crit_edge ], [ %call.i.i.i, %while.body.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #6
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %data.i, align 8, !annotation !22
  call void @read_extent_buffer(ptr noundef %21, ptr noundef nonnull %data.i, i32 noundef %offset.096.i, i32 noundef 8) #6
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %data.i, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %subid_cpu)
  %cmp56.i = icmp eq i64 %30, %subid_cpu
  br i1 %cmp56.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #6
  br label %btrfs_uuid_tree_lookup.exit.thread118

cleanup.i:                                        ; preds = %while.body.i
  %add59.i = add i32 %offset.096.i, 8
  %sub.i = add i32 %item_size.095.i, -8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #6
  %tobool55.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool55.not.i, label %if.end, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

btrfs_uuid_tree_lookup.exit.thread118:            ; preds = %cleanup.thread.i, %if.end39.i.btrfs_uuid_tree_lookup.exit.thread118_crit_edge
  %ret.2.i.ph = phi i32 [ 0, %cleanup.thread.i ], [ -12, %if.end39.i.btrfs_uuid_tree_lookup.exit.thread118_crit_edge ]
  call void @btrfs_free_path(ptr noundef %call.i) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  br label %cleanup

btrfs_uuid_tree_lookup.exit:                      ; preds = %if.end42.i
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call43.i)
  %cmp.not = icmp eq i32 %call43.i, -2
  br i1 %cmp.not, label %btrfs_uuid_tree_lookup.exit.if.end43_crit_edge, label %btrfs_uuid_tree_lookup.exit.cleanup_crit_edge

btrfs_uuid_tree_lookup.exit.cleanup_crit_edge:    ; preds = %btrfs_uuid_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

btrfs_uuid_tree_lookup.exit.if.end43_crit_edge:   ; preds = %btrfs_uuid_tree_lookup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end.thread122:                                 ; preds = %if.then53.i, %while.cond.preheader.i.if.end.thread122_crit_edge, %if.else.i.if.end.thread122_crit_edge
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  br label %if.end43

if.end:                                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_free_path(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  br label %if.end43

land.rhs:                                         ; preds = %if.then.i, %land.rhs.i.land.rhs_crit_edge
  tail call void @btrfs_free_path(ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  %.b104 = load i1, ptr @btrfs_uuid_tree_add.__already_done, align 1
  br i1 %.b104, label %land.rhs.out_crit_edge, label %if.then11, !prof !23

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @btrfs_uuid_tree_add.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end43:                                         ; preds = %if.end, %if.end.thread122, %btrfs_uuid_tree_lookup.exit.if.end43_crit_edge
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %type, ptr %4, align 8
  %32 = ptrtoint ptr %uuid to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %uuid, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #6
  %35 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %key, align 8
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %add.ptr.i.i, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #6
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %5, align 1
  %call44 = call ptr @btrfs_alloc_path() #6
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.end43.out_crit_edge, label %if.end47

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end47:                                         ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.addr.i)
  %40 = ptrtoint ptr %data_size.addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %data_size.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %batch.i) #6
  %41 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.btrfs_item_batch, ptr %batch.i, i32 0, i32 3
  %44 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %key, ptr %batch.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data_size.addr.i, ptr %41, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8, ptr %42, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %43, align 4
  %call.i106 = call i32 @btrfs_insert_empty_items(ptr noundef %trans, ptr noundef nonnull %3, ptr noundef nonnull %call44, ptr noundef nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %batch.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i106)
  %cmp49 = icmp sgt i32 %call.i106, -1
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call44, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call44, i32 0, i32 1
  %50 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %51, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %52 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %49, ptr noundef %52, i32 noundef 17) #6
  %add = add i32 %call.i.i, 101
  br label %if.end66

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call.i106)
  %cmp53 = icmp eq i32 %call.i106, -17
  br i1 %cmp53, label %if.then54, label %if.else63

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_extend_item(ptr noundef nonnull %call44, i32 noundef 8) #6
  %53 = ptrtoint ptr %call44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call44, align 4
  %slots57 = getelementptr inbounds %struct.btrfs_path, ptr %call44, i32 0, i32 1
  %55 = ptrtoint ptr %slots57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slots57, align 4
  %mul.i.i.i107 = mul i32 %56, 25
  %add.i.i.i108 = add i32 %mul.i.i.i107, 101
  %57 = inttoptr i32 %add.i.i.i108 to ptr
  %call.i.i109 = call i32 @btrfs_get_32(ptr noundef %54, ptr noundef %57, i32 noundef 17) #6
  %call.i.i112 = call i32 @btrfs_get_32(ptr noundef %54, ptr noundef %57, i32 noundef 21) #6
  %sub = add i32 %call.i.i109, 93
  %add62 = add i32 %sub, %call.i.i112
  br label %if.end66

if.else63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %key, align 8
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %5, align 1
  %conv = zext i8 %type to i32
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call.i106, i64 noundef %59, i64 noundef %61, i32 noundef %conv) #9
  br label %out

if.end66:                                         ; preds = %if.then54, %if.then50
  %eb.0 = phi ptr [ %49, %if.then50 ], [ %54, %if.then54 ]
  %offset.0 = phi i32 [ %add, %if.then50 ], [ %add62, %if.then54 ]
  %62 = call i64 @llvm.bswap.i64(i64 %subid_cpu)
  %63 = ptrtoint ptr %subid_le to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %subid_le, align 8
  call void @write_extent_buffer(ptr noundef %eb.0, ptr noundef nonnull %subid_le, i32 noundef %offset.0, i32 noundef 8) #6
  call void @btrfs_mark_buffer_dirty(ptr noundef %eb.0) #6
  br label %out

out:                                              ; preds = %if.end66, %if.else63, %if.end43.out_crit_edge, %if.then11, %land.rhs.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end66 ], [ %call.i106, %if.else63 ], [ -22, %if.then11 ], [ -12, %if.end43.out_crit_edge ], [ -22, %land.rhs.out_crit_edge ]
  %path.0 = phi ptr [ %call44, %if.end66 ], [ %call44, %if.else63 ], [ null, %if.then11 ], [ null, %if.end43.out_crit_edge ], [ null, %land.rhs.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef %path.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %btrfs_uuid_tree_lookup.exit.cleanup_crit_edge, %btrfs_uuid_tree_lookup.exit.thread118
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call43.i, %btrfs_uuid_tree_lookup.exit.cleanup_crit_edge ], [ %ret.2.i.ph, %btrfs_uuid_tree_lookup.exit.thread118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subid_le) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_extend_item(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_uuid_tree_remove(ptr noundef %trans, ptr nocapture noundef readonly %uuid, i8 noundef zeroext %type, i64 noundef %subid) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.btrfs_key, align 8
  %read_subid = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_trans_handle, ptr %trans, i32 0, i32 16
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 4
  %uuid_root2 = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %uuid_root2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uuid_root2, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %tobool.not = icmp eq ptr %3, null
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b124 = load i1, ptr @btrfs_uuid_tree_remove.__already_done, align 1
  br i1 %.b124, label %land.rhs.out_crit_edge, label %if.then, !prof !23

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @btrfs_uuid_tree_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #6
  br label %out

if.end41:                                         ; preds = %entry
  %5 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %6 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %type, ptr %6, align 8
  %8 = ptrtoint ptr %uuid to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %uuid, align 1
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #6
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %key, align 8
  %add.ptr.i = getelementptr i8, ptr %uuid, i32 8
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %add.ptr.i, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %5, align 1
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool42.not = icmp eq ptr %call, null
  br i1 %tobool42.not, label %if.end41.out_crit_edge, label %if.end44

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end41
  %call45 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef nonnull %3, ptr noundef nonnull %key, ptr noundef nonnull %call, i32 noundef -1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call45) #9
  br label %out

if.end47:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp48.not = icmp eq i32 %call45, 0
  br i1 %cmp48.not, label %if.end50, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end50:                                         ; preds = %if.end47
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots, align 4
  %mul.i.i.i = mul i32 %19, 25
  %add.i.i.i = add i32 %mul.i.i.i, 101
  %20 = inttoptr i32 %add.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 17) #6
  %call.i.i128 = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 21) #6
  %and = and i32 %call.i.i128, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp54 = icmp eq i32 %and, 0
  br i1 %cmp54, label %while.cond.preheader, label %if.then55

while.cond.preheader:                             ; preds = %if.end50
  %add = add i32 %call.i.i, 101
  br label %while.cond

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %call.i.i128) #9
  br label %out

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %offset.0 = phi i32 [ %add61, %while.body.while.cond_crit_edge ], [ %add, %while.cond.preheader ]
  %item_size.0 = phi i32 [ %sub, %while.body.while.cond_crit_edge ], [ %call.i.i128, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %item_size.0)
  %tobool57.not = icmp eq i32 %item_size.0, 0
  br i1 %tobool57.not, label %while.cond.out_crit_edge, label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %read_subid) #6
  %21 = ptrtoint ptr %read_subid to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %read_subid, align 8, !annotation !22
  call void @read_extent_buffer(ptr noundef %17, ptr noundef nonnull %read_subid, i32 noundef %offset.0, i32 noundef 8) #6
  %22 = ptrtoint ptr %read_subid to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %read_subid, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %cmp58 = icmp eq i64 %24, %subid
  %add61 = add i32 %offset.0, 8
  %sub = add i32 %item_size.0, -8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %read_subid) #6
  br i1 %cmp58, label %if.end64, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end64:                                         ; preds = %while.body
  %call.i.i131 = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i131)
  %cmp66 = icmp eq i32 %call.i.i131, 8
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slots, align 4
  %call.i = call i32 @btrfs_del_items(ptr noundef %trans, ptr noundef nonnull %3, ptr noundef nonnull %call, i32 noundef %26, i32 noundef 1) #6
  br label %out

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i134 = call i32 @btrfs_get_32(ptr noundef %17, ptr noundef %20, i32 noundef 17) #6
  %add72 = sub i32 93, %offset.0
  %sub73.neg = add i32 %add72, %call.i.i131
  %sub74 = add i32 %sub73.neg, %call.i.i134
  call void @memmove_extent_buffer(ptr noundef %17, i32 noundef %offset.0, i32 noundef %add61, i32 noundef %sub74) #6
  %sub75 = add i32 %call.i.i131, -8
  call void @btrfs_truncate_item(ptr noundef nonnull %call, i32 noundef %sub75, i32 noundef 1) #6
  br label %out

out:                                              ; preds = %if.end69, %if.then67, %while.cond.out_crit_edge, %if.then55, %if.end47.out_crit_edge, %if.then46, %if.end41.out_crit_edge, %if.then, %land.rhs.out_crit_edge
  %ret.0 = phi i32 [ %call45, %if.then46 ], [ %call.i, %if.then67 ], [ 0, %if.end69 ], [ -2, %if.then55 ], [ -22, %if.then ], [ -12, %if.end41.out_crit_edge ], [ -2, %if.end47.out_crit_edge ], [ -22, %land.rhs.out_crit_edge ], [ -2, %while.cond.out_crit_edge ]
  %path.0 = phi ptr [ %call, %if.then46 ], [ %call, %if.then67 ], [ %call, %if.end69 ], [ %call, %if.then55 ], [ null, %if.then ], [ null, %if.end41.out_crit_edge ], [ %call, %if.end47.out_crit_edge ], [ null, %land.rhs.out_crit_edge ], [ %call, %while.cond.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef %path.0) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memmove_extent_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_truncate_item(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_uuid_tree_iterate(ptr noundef %fs_info) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %uuid = alloca [16 x i8], align 8
  %subid_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uuid_root = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 7
  %0 = ptrtoint ptr %uuid_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uuid_root, align 8
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #6
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.btrfs_key, ptr %key, i32 0, i32 2
  %4 = call ptr @memset(ptr %key, i32 255, i32 17)
  %call = tail call ptr @btrfs_alloc_path() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup74_crit_edge, label %if.end

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %key, i32 0, i32 17)
  %call2145 = call i32 @btrfs_search_forward(ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2145)
  %tobool3.not146 = icmp eq i32 %call2145, 0
  br i1 %tobool3.not146, label %while.cond.preheader.lr.ph, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %fs_info, i32 0, i32 1
  %slots = getelementptr inbounds %struct.btrfs_path, ptr %call, i32 0, i32 1
  %6 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %8 = getelementptr inbounds [16 x i8], ptr %uuid, i32 0, i32 8
  br label %while.cond

again_search_slot.loopexit:                       ; preds = %if.end58, %btrfs_uuid_iter_rem.exit.again_search_slot.loopexit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subid_le) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #6
  %call2 = call i32 @btrfs_search_forward(ptr noundef %1, ptr noundef nonnull %key, ptr noundef nonnull %call, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %again_search_slot.loopexit.while.cond.backedge_crit_edge, label %again_search_slot.loopexit.if.then4_crit_edge

again_search_slot.loopexit.if.then4_crit_edge:    ; preds = %again_search_slot.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

again_search_slot.loopexit.while.cond.backedge_crit_edge: ; preds = %again_search_slot.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

if.then4:                                         ; preds = %again_search_slot.loopexit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call2.lcssa = phi i32 [ %call2145, %if.end.if.then4_crit_edge ], [ %call2, %again_search_slot.loopexit.if.then4_crit_edge ]
  %9 = call i32 @llvm.smin.i32(i32 %call2.lcssa, i32 0)
  br label %cleanup74

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader.lr.ph
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end11, label %btrfs_fs_closing.exit

btrfs_fs_closing.exit:                            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  br label %cleanup74

if.end11:                                         ; preds = %while.cond
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 0) #6
  %call.i = call i32 @__cond_resched() #6
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #6
  %mul.i.i.i.i = mul i32 %17, 25
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 101
  %18 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef %15, ptr noundef nonnull %disk_key.i, i32 noundef %add.i.i.i.i, i32 noundef 17) #6
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %7, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #6
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %3, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %6, align 8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %2, align 8
  %26 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %disk_key.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #6
  %29 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %key, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #6
  %.off = add i8 %24, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end22, label %if.end11.skip_crit_edge

if.end11.skip_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end22:                                         ; preds = %if.end11
  %30 = inttoptr i32 %add.i.i.i.i to ptr
  %call.i.i = call i32 @btrfs_get_32(ptr noundef %15, ptr noundef %30, i32 noundef 17) #6
  %call.i.i115 = call i32 @btrfs_get_32(ptr noundef %15, ptr noundef %30, i32 noundef 21) #6
  %and = and i32 %call.i.i115, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp25 = icmp eq i32 %and, 0
  br i1 %cmp25, label %while.cond29.preheader, label %if.then27

while.cond29.preheader:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115)
  %tobool30.not167 = icmp eq i32 %call.i.i115, 0
  br i1 %tobool30.not167, label %while.cond29.preheader.skip_crit_edge, label %while.body31.lr.ph

while.cond29.preheader.skip_crit_edge:            ; preds = %while.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

while.body31.lr.ph:                               ; preds = %while.cond29.preheader
  %add = add i32 %call.i.i, 101
  br label %while.body31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %fs_info, ptr noundef nonnull @.str.3, i32 noundef %call.i.i115) #9
  br label %skip

while.body31:                                     ; preds = %cleanup.while.body31_crit_edge, %while.body31.lr.ph
  %offset.0169 = phi i32 [ %add, %while.body31.lr.ph ], [ %add61, %cleanup.while.body31_crit_edge ]
  %item_size.0168 = phi i32 [ %call.i.i115, %while.body31.lr.ph ], [ %sub, %cleanup.while.body31_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %subid_le) #6
  %31 = ptrtoint ptr %subid_le to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %subid_le, align 8, !annotation !22
  %32 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %key, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #6
  %35 = ptrtoint ptr %uuid to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %uuid, align 8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %3, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #6
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %8, align 8
  call void @read_extent_buffer(ptr noundef %15, ptr noundef nonnull %subid_le, i32 noundef %offset.0169, i32 noundef 8) #6
  %40 = ptrtoint ptr %subid_le to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %subid_le, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 8
  %type.off.i = add i8 %44, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.off.i)
  %switch.i = icmp ult i8 %type.off.i, 2
  br i1 %switch.i, label %if.end.i, label %while.body31.cleanup_crit_edge

while.body31.cleanup_crit_edge:                   ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %while.body31
  %call.i116 = call ptr @btrfs_get_fs_root(ptr noundef %fs_info, i64 noundef %42, i1 noundef zeroext true) #6
  %cmp.i.i = icmp ugt ptr %call.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  %cmp8.i = icmp ne ptr %call.i116, inttoptr (i32 -2 to ptr)
  %cmp38 = icmp slt ptr %call.i116, null
  %or.cond162 = and i1 %cmp8.i, %cmp38
  br i1 %or.cond162, label %cleanup.thread.split.loop.exit, label %if.then6.i.if.then44_crit_edge

if.then6.i.if.then44_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.end12.i:                                       ; preds = %if.end.i
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %44, label %if.end41.thread151 [
    i8 -5, label %sw.bb.i
    i8 -4, label %sw.bb18.i
  ]

if.end41.thread151:                               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @btrfs_put_root(ptr noundef %call.i116) #6
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %uuid14.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i116, i32 0, i32 6, i32 13
  br label %if.end41

sw.bb18.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %received_uuid.i = getelementptr inbounds %struct.btrfs_root, ptr %call.i116, i32 0, i32 6, i32 15
  br label %if.end41

if.end41:                                         ; preds = %sw.bb18.i, %sw.bb.i
  %received_uuid.sink.i = phi ptr [ %received_uuid.i, %sw.bb18.i ], [ %uuid14.i, %sw.bb.i ]
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %uuid, ptr noundef dereferenceable(16) %received_uuid.sink.i, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool22.not.i.not = icmp eq i32 %bcmp.i, 0
  call void @btrfs_put_root(ptr noundef %call.i116) #6
  br i1 %tobool22.not.i.not, label %if.end41.cleanup_crit_edge, label %if.end41.if.then44_crit_edge

if.end41.if.then44_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end41.if.then44_crit_edge, %if.then6.i.if.then44_crit_edge
  call void @btrfs_release_path(ptr noundef nonnull %call) #6
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %2, align 8
  %call.i117 = call ptr @btrfs_start_transaction(ptr noundef %1, i32 noundef 1) #6
  %cmp.i.i118 = icmp ugt ptr %call.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i118, label %if.then.i119, label %if.end.i120

if.then.i119:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call.i117 to i32
  br label %btrfs_uuid_iter_rem.exit

if.end.i120:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @btrfs_uuid_tree_remove(ptr noundef %call.i117, ptr noundef nonnull %uuid, i8 noundef zeroext %47, i64 noundef %42) #6
  %call4.i = call i32 @btrfs_end_transaction(ptr noundef %call.i117) #6
  br label %btrfs_uuid_iter_rem.exit

btrfs_uuid_iter_rem.exit:                         ; preds = %if.end.i120, %if.then.i119
  %ret.0.i = phi i32 [ %48, %if.then.i119 ], [ %call3.i, %if.end.i120 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp48 = icmp eq i32 %ret.0.i, 0
  br i1 %cmp48, label %btrfs_uuid_iter_rem.exit.again_search_slot.loopexit_crit_edge, label %if.end51

btrfs_uuid_iter_rem.exit.again_search_slot.loopexit_crit_edge: ; preds = %btrfs_uuid_iter_rem.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %again_search_slot.loopexit

if.end51:                                         ; preds = %btrfs_uuid_iter_rem.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp52 = icmp sgt i32 %ret.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %ret.0.i)
  %cmp55.not = icmp eq i32 %ret.0.i, -2
  %or.cond = or i1 %cmp52, %cmp55.not
  br i1 %or.cond, label %if.end58, label %if.end51.cleanup.thread_crit_edge

if.end51.cleanup.thread_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %3, align 1
  %inc = add i64 %50, 1
  store i64 %inc, ptr %3, align 1
  br label %again_search_slot.loopexit

cleanup.thread.split.loop.exit:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call.i116 to i32
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.split.loop.exit, %if.end51.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %51, %cleanup.thread.split.loop.exit ], [ %ret.0.i, %if.end51.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subid_le) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #6
  br label %cleanup74

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %if.end41.thread151, %while.body31.cleanup_crit_edge
  %sub = add i32 %item_size.0168, -8
  %add61 = add i32 %offset.0169, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %subid_le) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #6
  %tobool30.not = icmp eq i32 %sub, 0
  br i1 %tobool30.not, label %cleanup.skip_crit_edge, label %cleanup.while.body31_crit_edge

cleanup.while.body31_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body31

cleanup.skip_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

skip:                                             ; preds = %cleanup.skip_crit_edge, %if.then27, %while.cond29.preheader.skip_crit_edge, %if.end11.skip_crit_edge
  %52 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %slots, align 4
  %inc.i.i = add i32 %53, 1
  store i32 %inc.i.i, ptr %slots, align 4
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  %pages.i.i.i = getelementptr inbounds %struct.extent_buffer, ptr %55, i32 0, i32 12
  %56 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pages.i.i.i, align 4
  %call.i.i.i = call ptr @page_address(ptr noundef %57) #6
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %55, align 8
  %conv.i.i.i = trunc i64 %59 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 4095
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i.i
  %nritems.i.i.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i.i.i, i32 0, i32 7
  %60 = ptrtoint ptr %nritems.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %nritems.i.i.i, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %62)
  %cmp.not.i.i = icmp ult i32 %inc.i.i, %62
  br i1 %cmp.not.i.i, label %skip.btrfs_next_item.exit_crit_edge, label %if.then.i.i

skip.btrfs_next_item.exit_crit_edge:              ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %btrfs_next_item.exit

if.then.i.i:                                      ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i = call i32 @btrfs_next_old_leaf(ptr noundef %1, ptr noundef nonnull %call, i64 noundef 0) #6
  br label %btrfs_next_item.exit

btrfs_next_item.exit:                             ; preds = %if.then.i.i, %skip.btrfs_next_item.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.then.i.i ], [ 0, %skip.btrfs_next_item.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp65 = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp65, label %btrfs_next_item.exit.while.cond.backedge_crit_edge, label %if.else

btrfs_next_item.exit.while.cond.backedge_crit_edge: ; preds = %btrfs_next_item.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %btrfs_next_item.exit.while.cond.backedge_crit_edge, %again_search_slot.loopexit.while.cond.backedge_crit_edge
  br label %while.cond

if.else:                                          ; preds = %btrfs_next_item.exit
  call void @__sanitizer_cov_trace_pc() #8
  %63 = call i32 @llvm.smin.i32(i32 %retval.0.i.i, i32 0)
  br label %cleanup74

cleanup74:                                        ; preds = %if.else, %cleanup.thread, %btrfs_fs_closing.exit, %if.then4, %entry.cleanup74_crit_edge
  %ret.1 = phi i32 [ -12, %entry.cleanup74_crit_edge ], [ %9, %if.then4 ], [ -4, %btrfs_fs_closing.exit ], [ %63, %if.else ], [ %ret.0.ph, %cleanup.thread ]
  call void @btrfs_free_path(ptr noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_forward(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_insert_empty_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_del_items(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_get_fs_root(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_start_transaction(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_end_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_next_old_leaf(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/btrfs/uuid-tree.c", i32 99, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/btrfs/uuid-tree.c", i32 130, i32 3}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/btrfs/uuid-tree.c", i32 162, i32 6}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/btrfs/uuid-tree.c", i32 177, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/uuid-tree.c", i32 191, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/btrfs/uuid-tree.c", i32 33, i32 6}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{!"branch_weights", i32 2000, i32 1}
