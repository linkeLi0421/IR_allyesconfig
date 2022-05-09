; ModuleID = '/llk/IR_all_yes/fs/reiserfs/resize.c_pt.bc'
source_filename = "../fs/reiserfs/resize.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
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
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.70, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.70 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reiserfs_bitmap_info = type { i32 }

@reiserfs_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't shrink filesystem on-line\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reiserfs_resize\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/reiserfs/resize.c\00", [43 x i8] zeroinitializer }, align 32
@reiserfs_resize._entry_ptr = internal global ptr @reiserfs_resize._entry, section ".printk_index", align 4
@reiserfs_resize._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reiserfs_resize: can't read last block\0A\00", [56 x i8] zeroinitializer }, align 32
@reiserfs_resize._entry_ptr.5 = internal global ptr @reiserfs_resize._entry.3, section ".printk_index", align 4
@reiserfs_resize._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"reiserfs_resize: unable to resize a reiserfs without distributed bitmap (fs version < 3.5.12)\0A\00", [33 x i8] zeroinitializer }, align 32
@reiserfs_resize._entry_ptr.8 = internal global ptr @reiserfs_resize._entry.6, section ".printk_index", align 4
@reiserfs_resize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"reiserfs_resize: unable to allocate memory for journal bitmaps\0A\00", [32 x i8] zeroinitializer }, align 32
@reiserfs_resize._entry_ptr.11 = internal global ptr @reiserfs_resize._entry.9, section ".printk_index", align 4
@reiserfs_resize._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"reiserfs_resize: unable to allocate memory.\0A\00", [51 x i8] zeroinitializer }, align 32
@reiserfs_resize._entry_ptr.14 = internal global ptr @reiserfs_resize._entry.12, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 42, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 51, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 62, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 87, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [24 x i8] c"../fs/reiserfs/resize.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 130, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @reiserfs_resize._entry, ptr @reiserfs_resize._entry.12, ptr @reiserfs_resize._entry.3, ptr @reiserfs_resize._entry.6, ptr @reiserfs_resize._entry.9, ptr @reiserfs_resize._entry_ptr, ptr @reiserfs_resize._entry_ptr.11, ptr @reiserfs_resize._entry_ptr.14, ptr @reiserfs_resize._entry_ptr.5, ptr @reiserfs_resize._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_resize._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_resize._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_resize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reiserfs_resize._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_resize(ptr noundef %s, i32 noundef %block_count_new) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  %jbitmap = alloca [5 x %struct.reiserfs_list_bitmap], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_ap_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_ap_bitmap, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #6
  %4 = call ptr @memset(ptr %th, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %jbitmap) #6
  %5 = call ptr @memset(ptr %jbitmap, i32 255, i32 40)
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_rs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %block_count_new)
  %cmp.not = icmp ult i32 %10, %block_count_new
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup239

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #6
  %sub = add i32 %block_count_new, -1
  %conv = zext i32 %sub to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %conv, i32 noundef %14, i32 noundef 8) #6
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call5) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end10, label %bforget.exit

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup239

bforget.exit:                                     ; preds = %if.end
  tail call void @__bforget(ptr noundef nonnull %call.i) #6
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size, align 8
  %conv17 = zext i32 %22 to i64
  %mul = mul i64 %20, %conv17
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %mul)
  %cmp18.not = icmp eq i64 %mul, 65536
  br i1 %cmp18.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %bforget.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup239

if.end26:                                         ; preds = %bforget.exit
  %s_rs28 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %s_rs28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_rs28, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %sub.i = add i32 %27, -1
  %28 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %29, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  %30 = mul i32 %29, -8
  %.neg = mul i32 %30, %div.i
  %sub35 = add i32 %.neg, %27
  %div = udiv i32 %block_count_new, %mul.i
  %mul40.neg = mul i32 %30, %div
  %sub41 = add i32 %mul40.neg, %block_count_new
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41)
  %tobool42.not = icmp eq i32 %sub41, 0
  %not.tobool42.not = xor i1 %tobool42.not, true
  %inc = zext i1 %not.tobool42.not to i32
  %bmap_nr_new.0 = add i32 %div, %inc
  %block_r_new.0 = select i1 %tobool42.not, i32 %mul.i, i32 %sub41
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %bmap_nr_new.0)
  %cmp52 = icmp ult i32 %add.i, %bmap_nr_new.0
  br i1 %cmp52, label %if.then54, label %if.end26.if.end129_crit_edge

if.end26.if.end129_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then54:                                        ; preds = %if.end26
  %call55 = call i32 @reiserfs_allocate_list_bitmaps(ptr noundef %s, ptr noundef nonnull %jbitmap, i32 noundef %bmap_nr_new.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup239

if.end64:                                         ; preds = %if.then54
  %31 = call i32 @llvm.umin.i32(i32 %add.i, i32 %bmap_nr_new.0)
  %mul67 = shl i32 %31, 2
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_journal, align 4
  %bitmaps = getelementptr inbounds [5 x %struct.reiserfs_list_bitmap], ptr %jbitmap, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bitmaps, align 4
  %bitmaps72 = getelementptr %struct.reiserfs_journal, ptr %35, i32 0, i32 49, i32 0, i32 1
  %38 = ptrtoint ptr %bitmaps72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bitmaps72, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %39, i32 %mul67)
  %41 = load ptr, ptr %bitmaps72, align 4
  %42 = load ptr, ptr %bitmaps, align 4
  store ptr %42, ptr %bitmaps72, align 4
  call void @vfree(ptr noundef %41) #6
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.1 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %s_journal.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_journal.1, align 4
  %bitmaps.1 = getelementptr inbounds [5 x %struct.reiserfs_list_bitmap], ptr %jbitmap, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %bitmaps.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bitmaps.1, align 4
  %bitmaps72.1 = getelementptr %struct.reiserfs_journal, ptr %46, i32 0, i32 49, i32 1, i32 1
  %49 = ptrtoint ptr %bitmaps72.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bitmaps72.1, align 4
  %51 = call ptr @memcpy(ptr %48, ptr %50, i32 %mul67)
  %52 = load ptr, ptr %bitmaps72.1, align 4
  %53 = load ptr, ptr %bitmaps.1, align 4
  store ptr %53, ptr %bitmaps72.1, align 4
  call void @vfree(ptr noundef %52) #6
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %s_journal.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_journal.2, align 4
  %bitmaps.2 = getelementptr inbounds [5 x %struct.reiserfs_list_bitmap], ptr %jbitmap, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %bitmaps.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bitmaps.2, align 4
  %bitmaps72.2 = getelementptr %struct.reiserfs_journal, ptr %57, i32 0, i32 49, i32 2, i32 1
  %60 = ptrtoint ptr %bitmaps72.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bitmaps72.2, align 4
  %62 = call ptr @memcpy(ptr %59, ptr %61, i32 %mul67)
  %63 = load ptr, ptr %bitmaps72.2, align 4
  %64 = load ptr, ptr %bitmaps.2, align 4
  store ptr %64, ptr %bitmaps72.2, align 4
  call void @vfree(ptr noundef %63) #6
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.3 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %s_journal.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_journal.3, align 4
  %bitmaps.3 = getelementptr inbounds [5 x %struct.reiserfs_list_bitmap], ptr %jbitmap, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %bitmaps.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bitmaps.3, align 4
  %bitmaps72.3 = getelementptr %struct.reiserfs_journal, ptr %68, i32 0, i32 49, i32 3, i32 1
  %71 = ptrtoint ptr %bitmaps72.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bitmaps72.3, align 4
  %73 = call ptr @memcpy(ptr %70, ptr %72, i32 %mul67)
  %74 = load ptr, ptr %bitmaps72.3, align 4
  %75 = load ptr, ptr %bitmaps.3, align 4
  store ptr %75, ptr %bitmaps72.3, align 4
  call void @vfree(ptr noundef %74) #6
  %76 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.4 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %s_journal.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_journal.4, align 4
  %bitmaps.4 = getelementptr inbounds [5 x %struct.reiserfs_list_bitmap], ptr %jbitmap, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %bitmaps.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bitmaps.4, align 4
  %bitmaps72.4 = getelementptr %struct.reiserfs_journal, ptr %79, i32 0, i32 49, i32 4, i32 1
  %82 = ptrtoint ptr %bitmaps72.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bitmaps72.4, align 4
  %84 = call ptr @memcpy(ptr %81, ptr %83, i32 %mul67)
  %85 = load ptr, ptr %bitmaps72.4, align 4
  %86 = load ptr, ptr %bitmaps.4, align 4
  store ptr %86, ptr %bitmaps72.4, align 4
  call void @vfree(ptr noundef %85) #6
  %87 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %bmap_nr_new.0, i32 4) #6
  %88 = extractvalue { i32, i1 } %87, 1
  %89 = extractvalue { i32, i1 } %87, 0
  %retval.0.i = select i1 %88, i32 -1, i32 %89
  %call79 = call noalias ptr @vzalloc(i32 noundef %retval.0.i) #10
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %do.end84, label %for.cond88.preheader

for.cond88.preheader:                             ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp89428.not = icmp eq i32 %add.i, 0
  br i1 %cmp89428.not, label %for.cond88.preheader.for.body100.lr.ph_crit_edge, label %for.cond88.preheader.for.body91_crit_edge

for.cond88.preheader.for.body91_crit_edge:        ; preds = %for.cond88.preheader
  br label %for.body91

for.cond88.preheader.for.body100.lr.ph_crit_edge: ; preds = %for.cond88.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100.lr.ph

do.end84:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup239

for.body100.lr.ph:                                ; preds = %for.body91.for.body100.lr.ph_crit_edge, %for.cond88.preheader.for.body100.lr.ph_crit_edge
  %s_blocksize112 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %7, i32 0, i32 4
  br label %for.body100

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.cond88.preheader.for.body91_crit_edge
  %i.1429 = phi i32 [ %inc95, %for.body91.for.body91_crit_edge ], [ 0, %for.cond88.preheader.for.body91_crit_edge ]
  %arrayidx92 = getelementptr %struct.reiserfs_bitmap_info, ptr %call79, i32 %i.1429
  %arrayidx93 = getelementptr %struct.reiserfs_bitmap_info, ptr %3, i32 %i.1429
  %90 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx93, align 4
  %92 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx92, align 4
  %inc95 = add nuw i32 %i.1429, 1
  %exitcond.not = icmp eq i32 %i.1429, %div.i
  br i1 %exitcond.not, label %for.body91.for.body100.lr.ph_crit_edge, label %for.body91.for.body91_crit_edge

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91

for.body91.for.body100.lr.ph_crit_edge:           ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100.lr.ph

for.body100:                                      ; preds = %brelse.exit.for.body100_crit_edge, %for.body100.lr.ph
  %i.2431 = phi i32 [ %add.i, %for.body100.lr.ph ], [ %inc125, %brelse.exit.for.body100_crit_edge ]
  %call102 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #6
  %93 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_blocksize.i, align 16
  %mul104 = shl i32 %i.2431, 3
  %mul105 = mul i32 %mul104, %94
  %conv106 = zext i32 %mul105 to i64
  %95 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_bdev.i, align 4
  %call.i401 = call ptr @__bread_gfp(ptr noundef %96, i64 noundef %conv106, i32 noundef %94, i32 noundef 8) #6
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call102) #6
  %tobool108.not = icmp eq ptr %call.i401, null
  br i1 %tobool108.not, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  call void @vfree(ptr noundef nonnull %call79) #6
  br label %cleanup239

if.end110:                                        ; preds = %for.body100
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i401, i32 0, i32 5
  %97 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data, align 4
  %99 = ptrtoint ptr %s_blocksize112 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %s_blocksize112, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100)
  %conv113 = zext i16 %101 to i32
  %102 = call ptr @memset(ptr %98, i32 0, i32 %conv113)
  %103 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_data, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %or.i.i = or i32 %106, 16777216
  store i32 %or.i.i, ptr %104, align 4
  %add.ptr115 = getelementptr %struct.reiserfs_bitmap_info, ptr %call79, i32 %i.2431
  call void @reiserfs_cache_bitmap_metadata(ptr noundef %s, ptr noundef nonnull %call.i401, ptr noundef %add.ptr115) #6
  %107 = ptrtoint ptr %call.i401 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %call.i401, align 4
  %and1.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end110.brelse.exit_crit_edge

if.end110.brelse.exit_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i401) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end110.brelse.exit_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i401) #6
  %call116 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #6
  %call117 = call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i401) #6
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call116) #6
  %109 = ptrtoint ptr %s_blocksize112 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %s_blocksize112, align 1
  %111 = call i16 @llvm.bswap.i16(i16 %110)
  %conv120 = zext i16 %111 to i32
  %mul121 = shl nuw nsw i32 %conv120, 3
  %sub122 = add nsw i32 %mul121, -1
  %112 = ptrtoint ptr %add.ptr115 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub122, ptr %add.ptr115, align 4
  call void @__brelse(ptr noundef nonnull %call.i401) #6
  %inc125 = add i32 %i.2431, 1
  %exitcond439.not = icmp eq i32 %inc125, %bmap_nr_new.0
  br i1 %exitcond439.not, label %for.end126, label %brelse.exit.for.body100_crit_edge

brelse.exit.for.body100_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100

for.end126:                                       ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap128 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %s_ap_bitmap128 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call79, ptr %s_ap_bitmap128, align 4
  call void @vfree(ptr noundef %3) #6
  br label %if.end129

if.end129:                                        ; preds = %for.end126, %if.end26.if.end129_crit_edge
  %call130 = call i32 @journal_begin(ptr noundef nonnull %th, ptr noundef %s, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.cleanup239_crit_edge

if.end129.cleanup239_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup239

if.end133:                                        ; preds = %if.end129
  %116 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap135 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %s_ap_bitmap135 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_ap_bitmap135, align 4
  %add.ptr136 = getelementptr %struct.reiserfs_bitmap_info, ptr %119, i32 %add.i
  %add.ptr137 = getelementptr %struct.reiserfs_bitmap_info, ptr %add.ptr136, i32 -1
  %call139 = call ptr @reiserfs_read_bitmap_block(ptr noundef %s, i32 noundef %div.i) #6
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %if.then141, label %if.end147

if.then141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  %call142 = call i32 @journal_end(ptr noundef nonnull %th) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  %.call142 = select i1 %tobool143.not, i32 -5, i32 %call142
  br label %cleanup239

if.end147:                                        ; preds = %if.end133
  %call148 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef nonnull %call139, i32 noundef 1) #6
  %120 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_blocksize.i, align 16
  %mul151432 = shl i32 %121, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35, i32 %mul151432)
  %cmp152433 = icmp ult i32 %sub35, %mul151432
  br i1 %cmp152433, label %for.body154.lr.ph, label %if.end147.brelse.exit408_crit_edge

if.end147.brelse.exit408_crit_edge:               ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit408

for.body154.lr.ph:                                ; preds = %if.end147
  %b_data155 = getelementptr inbounds %struct.buffer_head, ptr %call139, i32 0, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %for.body154.lr.ph
  %i.3434 = phi i32 [ %sub35, %for.body154.lr.ph ], [ %inc157, %for.body154.for.body154_crit_edge ]
  %122 = ptrtoint ptr %b_data155 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %b_data155, align 4
  %xor.i = and i32 %i.3434, 31
  %rem.i.i = xor i32 %xor.i, 24
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.3434, 5
  %add.ptr.i.i = getelementptr i32, ptr %123, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %124 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %125, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %inc157 = add nuw i32 %i.3434, 1
  %126 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_blocksize.i, align 16
  %mul151 = shl i32 %127, 3
  %cmp152 = icmp ult i32 %inc157, %mul151
  br i1 %cmp152, label %for.body154.for.body154_crit_edge, label %for.body154.brelse.exit408_crit_edge

for.body154.brelse.exit408_crit_edge:             ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit408

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body154

brelse.exit408:                                   ; preds = %for.body154.brelse.exit408_crit_edge, %if.end147.brelse.exit408_crit_edge
  %mul151.lcssa = phi i32 [ %mul151432, %if.end147.brelse.exit408_crit_edge ], [ %mul151, %for.body154.brelse.exit408_crit_edge ]
  %sub161 = sub i32 %mul151.lcssa, %sub35
  %128 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr137, align 4
  %add = add i32 %sub161, %129
  store i32 %add, ptr %add.ptr137, align 4
  %call163 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef nonnull %call139) #6
  call void @__brelse(ptr noundef nonnull %call139) #6
  %130 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_fs_info.i, align 16
  %s_ap_bitmap165 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %s_ap_bitmap165 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_ap_bitmap165, align 4
  %add.ptr166 = getelementptr %struct.reiserfs_bitmap_info, ptr %133, i32 %bmap_nr_new.0
  %add.ptr167 = getelementptr %struct.reiserfs_bitmap_info, ptr %add.ptr166, i32 -1
  %sub168 = add i32 %bmap_nr_new.0, -1
  %call169 = call ptr @reiserfs_read_bitmap_block(ptr noundef %s, i32 noundef %sub168) #6
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %if.then171, label %if.end178

if.then171:                                       ; preds = %brelse.exit408
  call void @__sanitizer_cov_trace_pc() #8
  %call173 = call i32 @journal_end(ptr noundef nonnull %th) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  %.call173 = select i1 %tobool174.not, i32 -5, i32 %call173
  br label %cleanup239

if.end178:                                        ; preds = %brelse.exit408
  %call179 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef nonnull %call169, i32 noundef 1) #6
  %134 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_blocksize.i, align 16
  %mul182435 = shl i32 %135, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %block_r_new.0, i32 %mul182435)
  %cmp183436 = icmp ult i32 %block_r_new.0, %mul182435
  br i1 %cmp183436, label %for.body185.lr.ph, label %if.end178.brelse.exit418_crit_edge

if.end178.brelse.exit418_crit_edge:               ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit418

for.body185.lr.ph:                                ; preds = %if.end178
  %b_data186 = getelementptr inbounds %struct.buffer_head, ptr %call169, i32 0, i32 5
  br label %for.body185

for.body185:                                      ; preds = %for.body185.for.body185_crit_edge, %for.body185.lr.ph
  %i.4437 = phi i32 [ %block_r_new.0, %for.body185.lr.ph ], [ %inc188, %for.body185.for.body185_crit_edge ]
  %136 = ptrtoint ptr %b_data186 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %b_data186, align 4
  %xor.i410 = and i32 %i.4437, 31
  %rem.i.i411 = xor i32 %xor.i410, 24
  %shl.i.i412 = shl nuw i32 1, %rem.i.i411
  %div2.i.i413 = lshr i32 %i.4437, 5
  %add.ptr.i.i414 = getelementptr i32, ptr %137, i32 %div2.i.i413
  %138 = ptrtoint ptr %add.ptr.i.i414 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr.i.i414, align 4
  %or.i.i415 = or i32 %139, %shl.i.i412
  store i32 %or.i.i415, ptr %add.ptr.i.i414, align 4
  %inc188 = add nuw i32 %i.4437, 1
  %140 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_blocksize.i, align 16
  %mul182 = shl i32 %141, 3
  %cmp183 = icmp ult i32 %inc188, %mul182
  br i1 %cmp183, label %for.body185.for.body185_crit_edge, label %for.body185.brelse.exit418_crit_edge

for.body185.brelse.exit418_crit_edge:             ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit418

for.body185.for.body185_crit_edge:                ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body185

brelse.exit418:                                   ; preds = %for.body185.brelse.exit418_crit_edge, %if.end178.brelse.exit418_crit_edge
  %call190 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef nonnull %call169) #6
  call void @__brelse(ptr noundef nonnull %call169) #6
  %142 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_blocksize.i, align 16
  %mul192.neg = mul i32 %143, -8
  %sub193.neg = add i32 %mul192.neg, %block_r_new.0
  %144 = ptrtoint ptr %add.ptr167 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %add.ptr167, align 4
  %sub195 = add i32 %sub193.neg, %145
  store i32 %sub195, ptr %add.ptr167, align 4
  %146 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %s_fs_info.i, align 16
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %call198 = call i32 @reiserfs_prepare_for_journal(ptr noundef %s, ptr noundef %149, i32 noundef 1) #6
  %150 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs200 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %s_rs200 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_rs200, align 4
  %s_free_blocks = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %s_free_blocks, align 1
  %156 = call i32 @llvm.bswap.i32(i32 %155)
  %157 = add i32 %add.i, %block_count_new
  %158 = add i32 %27, %bmap_nr_new.0
  %sub205 = sub i32 %157, %158
  %add206 = add i32 %sub205, %156
  %159 = call i32 @llvm.bswap.i32(i32 %add206)
  %160 = ptrtoint ptr %s_free_blocks to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %159, ptr %s_free_blocks, align 1
  %161 = call i32 @llvm.bswap.i32(i32 %block_count_new)
  %162 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs215 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %s_rs215 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_rs215, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_storeN_noabort(i32 %166, i32 4)
  store i32 %161, ptr %165, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %bmap_nr_new.0)
  %cmp.i = icmp ugt i32 %bmap_nr_new.0, 65535
  %conv1.i = zext i1 %cmp.i to i32
  %spec.select = select i1 %cmp.i, i32 %conv1.i, i32 %bmap_nr_new.0
  %conv227 = trunc i32 %spec.select to i16
  %167 = call i16 @llvm.bswap.i16(i16 %conv227)
  %168 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs229 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %s_rs229 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_rs229, align 4
  %s_bmap_nr = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %171, i32 0, i32 12
  %172 = ptrtoint ptr %s_bmap_nr to i32
  call void @__asan_storeN_noabort(i32 %172, i32 2)
  store i16 %167, ptr %s_bmap_nr, align 1
  %173 = load ptr, ptr %s_fs_info.i, align 16
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %call235 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %175) #6
  %176 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal237 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %s_journal237 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %s_journal237, align 4
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %179, i32 0, i32 23
  %180 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %j_must_wait, align 4
  %call238 = call i32 @journal_end(ptr noundef nonnull %th) #6
  br label %cleanup239

cleanup239:                                       ; preds = %brelse.exit418, %if.then171, %if.then141, %if.end129.cleanup239_crit_edge, %if.then109, %do.end84, %do.end61, %do.end23, %do.end10, %do.end
  %retval.4 = phi i32 [ -22, %do.end ], [ -524, %do.end23 ], [ -12, %do.end61 ], [ %call238, %brelse.exit418 ], [ %.call173, %if.then171 ], [ %.call142, %if.then141 ], [ -12, %do.end84 ], [ -22, %do.end10 ], [ -5, %if.then109 ], [ %call130, %if.end129.cleanup239_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %jbitmap) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #6
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_allocate_list_bitmaps(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_cache_bitmap_metadata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reiserfs_read_bitmap_block(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_end(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/resize.c", i32 42, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @reiserfs_resize._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @reiserfs_resize._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/reiserfs/resize.c", i32 51, i32 3}
!8 = !{ptr @reiserfs_resize._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @reiserfs_resize._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/resize.c", i32 62, i32 3}
!12 = !{ptr @reiserfs_resize._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @reiserfs_resize._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/resize.c", i32 87, i32 4}
!16 = !{ptr @reiserfs_resize._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @reiserfs_resize._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/reiserfs/resize.c", i32 130, i32 4}
!20 = !{ptr @reiserfs_resize._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @reiserfs_resize._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
