; ModuleID = '/llk/IR_all_yes/fs/ntfs3/bitmap.c_pt.bc'
source_filename = "../fs/ntfs3/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.rb_node_key = type { %struct.rb_node, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.e_node = type { %struct.rb_node_key, %struct.rb_node_key }
%struct.fstrim_range = type { i64, i64, i64 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ntfs3_enode_cache\00", [46 x i8] zeroinitializer }, align 32
@ntfs_enode_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wnd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wnd->rw_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ntfs3/bitmap.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to read volume at offset 0x%llx\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 21 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"ntfs_enode_cachep\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 39, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 657, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 366, i32 2 }
@___asan_gen_.21 = private constant [21 x i8] c"../fs/ntfs3/bitmap.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 221, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"../fs/ntfs3/ntfs_fs.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1018, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @ntfs_enode_cachep, ptr @wnd_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_enode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wnd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs3_init_bitmap() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 0, i32 noundef 131072, ptr noundef null) #8
  store ptr %call, ptr @ntfs_enode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs3_exit_bitmap() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wnd_close(ptr noundef %wnd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %0 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_bits, align 4
  tail call void @kfree(ptr noundef %1) #8
  %run = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 2
  %2 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %run, align 4
  tail call void @kvfree(ptr noundef %3) #8
  %4 = call ptr @memset(ptr %run, i32 0, i32 12)
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %call = tail call ptr @rb_first(ptr noundef %start_tree) #8
  %tobool.not9 = icmp eq ptr %call, null
  br i1 %tobool.not9, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %node.010 = phi ptr [ %call1, %while.body.while.body_crit_edge ], [ %call, %entry.while.body_crit_edge ]
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %node.010) #8
  tail call void @rb_erase(ptr noundef nonnull %node.010, ptr noundef %start_tree) #8
  %5 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef nonnull %node.010) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wnd_init(ptr noundef %wnd, ptr noundef %sb, i32 noundef %nbits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %1, 3
  %rw_lock = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %rw_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wnd_init.__key) #8
  %2 = ptrtoint ptr %wnd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sb, ptr %wnd, align 4
  %nbits2 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 3
  %3 = ptrtoint ptr %nbits2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nbits, ptr %nbits2, align 4
  %total_zeroes = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  %4 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nbits, ptr %total_zeroes, align 4
  %extent_max = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %5 = ptrtoint ptr %extent_max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %extent_max, align 4
  %zone_end = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %6 = ptrtoint ptr %zone_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %zone_end, align 4
  %zone_bit = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %7 = ptrtoint ptr %zone_bit to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %zone_bit, align 4
  %add.i = add i32 %nbits, 7
  %shr.i = lshr i32 %add.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add1.i, 1073741816
  %conv = zext i32 %and.i to i64
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  %conv.i = zext i32 %9 to i64
  %add.i41 = add nsw i64 %conv, -1
  %sub.i = add nsw i64 %add.i41, %conv.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %10 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %11 to i64
  %shr.i42 = lshr i64 %sub.i, %sh_prom.i
  %conv4 = trunc i64 %shr.i42 to i32
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %12 = ptrtoint ptr %nwnd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv4, ptr %nwnd, align 4
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %nbits
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 %mul, i32 %and
  %13 = ptrtoint ptr %bits_last to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %bits_last, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv4, i32 2) #8
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !22

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %free_bits44 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %16 = ptrtoint ptr %free_bits44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %free_bits44, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3392) #11
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %18 = ptrtoint ptr %free_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %free_bits, align 4
  %tobool10.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end12

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7.i.i
  %call13 = tail call fastcc i32 @wnd_rescan(ptr noundef %wnd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %inited = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 17
  %19 = ptrtoint ptr %inited to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %inited, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wnd_rescan(ptr noundef %wnd) unnamed_addr #2 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %cluster_bits2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %cluster_bits2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cluster_bits2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %8 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %lcn, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %9 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %clen, align 4, !annotation !23
  %uptodated = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %10 = ptrtoint ptr %uptodated to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %uptodated, align 4
  %extent_max = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %11 = ptrtoint ptr %extent_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %extent_max, align 4
  %extent_min = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 12
  %12 = ptrtoint ptr %extent_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %extent_min, align 4
  %total_zeroes = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  %13 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %total_zeroes, align 4
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %14 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp268.not = icmp eq i32 %15, 0
  br i1 %cmp268.not, label %entry.if.end107_crit_edge, label %for.body.lr.ph

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl i32 %5, 3
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %inited = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 17
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 4
  %run = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 2
  %conv26 = zext i8 %7 to i32
  %sh_prom = zext i8 %7 to i64
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %nbits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 3
  %conv98 = zext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %if.end94.for.body_crit_edge, %for.body.lr.ph
  %16 = phi i32 [ %15, %for.body.lr.ph ], [ %52, %if.end94.for.body_crit_edge ]
  %vbo.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %add95, %if.end94.for.body_crit_edge ]
  %iw.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end94.for.body_crit_edge ]
  %wbits.0275 = phi i32 [ %mul, %for.body.lr.ph ], [ %wbits.3263, %if.end94.for.body_crit_edge ]
  %len.0273 = phi i64 [ 0, %for.body.lr.ph ], [ %len.4, %if.end94.for.body_crit_edge ]
  %lbo.0271 = phi i64 [ -1, %for.body.lr.ph ], [ %lbo.4, %if.end94.for.body_crit_edge ]
  %prev_tail.0269 = phi i32 [ 0, %for.body.lr.ph ], [ %prev_tail.3260, %if.end94.for.body_crit_edge ]
  %add = add nuw i32 %iw.0276, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp5 = icmp eq i32 %add, %16
  br i1 %cmp5, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %wbits.1 = phi i32 [ %18, %if.then ], [ %wbits.0275, %for.body.if.end_crit_edge ]
  %19 = ptrtoint ptr %inited to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %inited, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.then6

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then6:                                         ; preds = %if.end
  %21 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %22, i32 %iw.0276
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool7.not = icmp eq i16 %24, 0
  br i1 %tobool7.not, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_tail.0269)
  %tobool9.not = icmp eq i32 %prev_tail.0269, 0
  br i1 %tobool9.not, label %if.then8.if.end94_crit_edge, label %if.then10

if.then8.if.end94_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %mul11 = shl i32 %vbo.0278, 3
  %sub = sub i32 %mul11, %prev_tail.0269
  call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %sub, i32 noundef %prev_tail.0269, i1 noundef zeroext true)
  br label %if.end94

if.end13:                                         ; preds = %if.then6
  %conv = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wbits.1, i32 %conv)
  %cmp16 = icmp eq i32 %wbits.1, %conv
  br i1 %cmp16, label %if.then18, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %add19 = add i32 %wbits.1, %prev_tail.0269
  %25 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_zeroes, align 4
  %add21 = add i32 %26, %wbits.1
  store i32 %add21, ptr %total_zeroes, align 4
  br label %if.end94

if.end23:                                         ; preds = %if.end13.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.0273)
  %tobool24.not = icmp eq i64 %len.0273, 0
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end39_crit_edge

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then25:                                        ; preds = %if.end23
  %27 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cluster_mask, align 4
  %shr = lshr i32 %vbo.0278, %conv26
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %shr, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #8
  br i1 %call, label %cleanup.thread, label %if.then25.cleanup123_crit_edge

if.then25.cleanup123_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

cleanup.thread:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %28, %vbo.0278
  %29 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lcn, align 4
  %conv29 = zext i32 %30 to i64
  %shl = shl i64 %conv29, %sh_prom
  %conv31 = zext i32 %and to i64
  %add32 = add i64 %shl, %conv31
  %31 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clen, align 4
  %conv33 = zext i32 %32 to i64
  %shl36 = shl i64 %conv33, %sh_prom
  %sub38 = sub i64 %shl36, %conv31
  br label %if.end39

if.end39:                                         ; preds = %cleanup.thread, %if.end23.if.end39_crit_edge
  %lbo.2 = phi i64 [ %lbo.0271, %if.end23.if.end39_crit_edge ], [ %add32, %cleanup.thread ]
  %len.2 = phi i64 [ %len.0273, %if.end23.if.end39_crit_edge ], [ %sub38, %cleanup.thread ]
  %33 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom41 = zext i8 %34 to i64
  %shr42 = lshr i64 %lbo.2, %sh_prom41
  %35 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i.i, align 4
  %37 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %36, i64 noundef %shr42, i32 noundef %38, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %ntfs_bread.exit.thread, label %if.end46

ntfs_bread.exit.thread:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom.i = zext i8 %40 to i64
  %shl.i = shl i64 %shr42, %sh_prom.i
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.4, i64 noundef %shl.i) #8
  br label %cleanup123

if.end46:                                         ; preds = %if.end39
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data, align 4
  %call47 = call i32 @__bitmap_weight(ptr noundef %42, i32 noundef %wbits.1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %wbits.1, i32 %call47)
  %cmp48 = icmp ugt i32 %wbits.1, %call47
  br i1 %cmp48, label %if.then50, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %sub51 = sub i32 %wbits.1, %call47
  %conv52 = trunc i32 %sub51 to i16
  %43 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free_bits, align 4
  %arrayidx54 = getelementptr i16, ptr %44, i32 %iw.0276
  %45 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv52, ptr %arrayidx54, align 2
  %46 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_zeroes, align 4
  %add56 = add i32 %47, %sub51
  store i32 %add56, ptr %total_zeroes, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %if.end46.if.end57_crit_edge
  %mul58 = shl i32 %vbo.0278, 3
  %add59 = add i32 %wbits.1, %mul58
  %48 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %49)
  %cmp60 = icmp ugt i32 %add59, %49
  %sub64 = sub i32 %49, %mul58
  %spec.select = select i1 %cmp60, i32 %sub64, i32 %wbits.1
  br label %do.body

do.body:                                          ; preds = %if.end84.do.body_crit_edge, %if.end57
  %prev_tail.1 = phi i32 [ %prev_tail.0269, %if.end57 ], [ 0, %if.end84.do.body_crit_edge ]
  %wpos.0 = phi i32 [ 0, %if.end57 ], [ %add89, %if.end84.do.body_crit_edge ]
  %call66 = call i32 @_find_next_zero_bit_be(ptr noundef %42, i32 noundef %spec.select, i32 noundef %wpos.0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %wpos.0)
  %cmp67 = icmp ugt i32 %call66, %wpos.0
  br i1 %cmp67, label %land.lhs.true, label %do.body.if.end73_crit_edge

do.body.if.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_tail.1)
  %tobool69.not = icmp eq i32 %prev_tail.1, 0
  br i1 %tobool69.not, label %land.lhs.true.if.end73_crit_edge, label %if.then70

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add71 = sub i32 %mul58, %prev_tail.1
  %sub72 = add i32 %add71, %wpos.0
  call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %sub72, i32 noundef %prev_tail.1, i1 noundef zeroext true)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %land.lhs.true.if.end73_crit_edge, %do.body.if.end73_crit_edge
  %prev_tail.2 = phi i32 [ 0, %if.then70 ], [ 0, %land.lhs.true.if.end73_crit_edge ], [ %prev_tail.1, %do.body.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call66, i32 %spec.select)
  %cmp74.not = icmp ult i32 %call66, %spec.select
  br i1 %cmp74.not, label %if.end77, label %if.end73.if.then93_crit_edge

if.end73.if.then93_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.end77:                                         ; preds = %if.end73
  %call78 = call i32 @_find_next_bit_be(ptr noundef %42, i32 noundef %spec.select, i32 noundef %call66) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call78, i32 %spec.select)
  %cmp79.not = icmp ult i32 %call78, %spec.select
  br i1 %cmp79.not, label %if.end84, label %if.then81

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %sub82 = sub i32 %prev_tail.2, %call66
  %add83 = add i32 %sub82, %call78
  br label %if.then93

if.end84:                                         ; preds = %if.end77
  %add85 = add i32 %call66, %mul58
  %sub86 = sub i32 %add85, %prev_tail.2
  %add87 = sub i32 %prev_tail.2, %call66
  %sub88 = add i32 %add87, %call78
  call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %sub86, i32 noundef %sub88, i1 noundef zeroext true)
  %add89 = add nuw i32 %call78, 1
  %cmp90 = icmp ult i32 %add89, %spec.select
  br i1 %cmp90, label %if.end84.do.body_crit_edge, label %if.end84.if.then93_crit_edge

if.end84.if.then93_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.end84.do.body_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then93:                                        ; preds = %if.end84.if.then93_crit_edge, %if.then81, %if.end73.if.then93_crit_edge
  %prev_tail.3 = phi i32 [ %add83, %if.then81 ], [ 0, %if.end73.if.then93_crit_edge ], [ 0, %if.end84.if.then93_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.then18, %if.then10, %if.then8.if.end94_crit_edge
  %wbits.3263 = phi i32 [ %spec.select, %if.then93 ], [ %wbits.1, %if.then18 ], [ %wbits.1, %if.then10 ], [ %wbits.1, %if.then8.if.end94_crit_edge ]
  %len.3262 = phi i64 [ %len.2, %if.then93 ], [ %len.0273, %if.then18 ], [ %len.0273, %if.then10 ], [ %len.0273, %if.then8.if.end94_crit_edge ]
  %lbo.3261 = phi i64 [ %lbo.2, %if.then93 ], [ %lbo.0271, %if.then18 ], [ %lbo.0271, %if.then10 ], [ %lbo.0271, %if.then8.if.end94_crit_edge ]
  %prev_tail.3260 = phi i32 [ %prev_tail.3, %if.then93 ], [ %add19, %if.then18 ], [ 0, %if.then10 ], [ 0, %if.then8.if.end94_crit_edge ]
  %add95 = add i32 %vbo.0278, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len.3262)
  %tobool96.not = icmp eq i64 %len.3262, 0
  %sub99 = sub i64 %len.3262, %conv98
  %add101 = select i1 %tobool96.not, i64 0, i64 %conv98
  %lbo.4 = add i64 %add101, %lbo.3261
  %len.4 = select i1 %tobool96.not, i64 0, i64 %sub99
  %51 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nwnd, align 4
  %cmp = icmp ult i32 %add, %52
  br i1 %cmp, label %if.end94.for.body_crit_edge, label %for.end

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_tail.3260)
  %tobool103.not = icmp eq i32 %prev_tail.3260, 0
  br i1 %tobool103.not, label %for.end.if.end107_crit_edge, label %if.then104

for.end.if.end107_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nbits, align 4
  %sub106 = sub i32 %54, %prev_tail.3260
  call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %sub106, i32 noundef %prev_tail.3260, i1 noundef zeroext true)
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %for.end.if.end107_crit_edge, %entry.if.end107_crit_edge
  %55 = ptrtoint ptr %uptodated to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %uptodated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool109.not = icmp eq i32 %56, 0
  br i1 %tobool109.not, label %if.then110, label %if.end107.if.end112_crit_edge

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %uptodated to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %uptodated, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end107.if.end112_crit_edge
  %zone_bit = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %58 = ptrtoint ptr %zone_bit to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %zone_bit, align 4
  %zone_end = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %60 = ptrtoint ptr %zone_end to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %zone_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp113.not = icmp eq i32 %61, %59
  br i1 %cmp113.not, label %if.end112.cleanup123_crit_edge, label %do.end.i

if.end112.cleanup123_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

do.end.i:                                         ; preds = %if.end112
  %62 = ptrtoint ptr %zone_end to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %zone_end, align 4
  %start_tree.i = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %63 = ptrtoint ptr %start_tree.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %start_tree.i, align 4
  %cmp.i = icmp eq ptr %64, null
  br i1 %cmp.i, label %do.end.i.wnd_zone_set.exit_crit_edge, label %if.then3.i

do.end.i.wnd_zone_set.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_zone_set.exit

if.then3.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub118 = sub i32 %61, %59
  call fastcc void @wnd_remove_free_ext(ptr noundef %wnd, i32 noundef %59, i32 noundef %sub118) #8
  br label %wnd_zone_set.exit

wnd_zone_set.exit:                                ; preds = %if.then3.i, %do.end.i.wnd_zone_set.exit_crit_edge
  %65 = ptrtoint ptr %zone_bit to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %59, ptr %zone_bit, align 4
  %66 = ptrtoint ptr %zone_end to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %61, ptr %zone_end, align 4
  br label %cleanup123

cleanup123:                                       ; preds = %wnd_zone_set.exit, %if.end112.cleanup123_crit_edge, %ntfs_bread.exit.thread, %if.then25.cleanup123_crit_edge
  %retval.0 = phi i32 [ 0, %wnd_zone_set.exit ], [ 0, %if.end112.cleanup123_crit_edge ], [ -5, %ntfs_bread.exit.thread ], [ -2, %if.then25.cleanup123_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wnd_set_free(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %bit, %add
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %4 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp67 = icmp uge i32 %shr, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits)
  %tobool.not68 = icmp eq i32 %bits, 0
  %or.cond69 = or i1 %cmp67, %tobool.not68
  br i1 %or.cond69, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %bit
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %total_zeroes = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %5, %while.body.lr.ph ], [ %30, %cleanup.while.body_crit_edge ]
  %bits.addr.073 = phi i32 [ %bits, %while.body.lr.ph ], [ %sub18, %cleanup.while.body_crit_edge ]
  %wbit.072 = phi i32 [ %and, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %iw.071 = phi i32 [ %shr, %while.body.lr.ph ], [ %add3, %cleanup.while.body_crit_edge ]
  %wbits.070 = phi i32 [ %mul, %while.body.lr.ph ], [ %wbits.1, %cleanup.while.body_crit_edge ]
  %add3 = add nuw i32 %iw.071, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %8)
  %cmp5 = icmp eq i32 %add3, %8
  br i1 %cmp5, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %wbits.1 = phi i32 [ %10, %if.then ], [ %wbits.070, %while.body.if.end_crit_edge ]
  %sub7 = sub i32 %wbits.1, %wbit.072
  %11 = tail call i32 @llvm.umin.i32(i32 %sub7, i32 %bits.addr.073)
  %call = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.071)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end13

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call to i32
  br label %while.end

if.end13:                                         ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call, align 4
  %and.i.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end13.if.then.i60_crit_edge

if.end13.if.then.i60_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i60

trylock_buffer.exit.i:                            ; preds = %if.end13
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 4, ptr elementtype(i32) %call) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %18 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i60_crit_edge

trylock_buffer.exit.i.if.then.i60_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i60

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i60:                                      ; preds = %trylock_buffer.exit.i.if.then.i60_crit_edge, %if.end13.if.then.i60_crit_edge
  tail call void @__lock_buffer(ptr noundef %call) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i60, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @__bitmap_clear(ptr noundef %14, i32 noundef %wbit.072, i32 noundef %11) #8
  %19 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %20, i32 %iw.071
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = trunc i32 %11 to i16
  %conv16 = add i16 %22, %23
  store i16 %conv16, ptr %arrayidx, align 2
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.cleanup_crit_edge

lock_buffer.exit.cleanup_crit_edge:               ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lock_buffer.exit.cleanup_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call) #8
  tail call void @unlock_buffer(ptr noundef %call) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  %27 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_zeroes, align 4
  %add17 = add i32 %28, %11
  store i32 %add17, ptr %total_zeroes, align 4
  %sub18 = sub i32 %bits.addr.073, %11
  %29 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %30)
  %cmp = icmp uge i32 %add3, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %tobool.not = icmp eq i32 %sub18, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %err.2 = phi i32 [ %12, %cleanup.thread ], [ 0, %entry.while.end_crit_edge ], [ 0, %cleanup.while.end_crit_edge ]
  tail call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits, i1 noundef zeroext false)
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw) unnamed_addr #2 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %0 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lcn, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %1 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %clen, align 4, !annotation !23
  %2 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wnd, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %conv = zext i32 %iw to i64
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %7 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv3 = trunc i64 %shl to i32
  %run = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 2
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cluster_bits, align 8
  %conv4 = zext i8 %9 to i32
  %shr = lshr i32 %conv3, %conv4
  %call = call zeroext i1 @run_lookup_entry(ptr noundef %run, i32 noundef %shr, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lcn, align 4
  %conv6 = zext i32 %11 to i64
  %12 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cluster_bits, align 8
  %sh_prom9 = zext i8 %13 to i64
  %shl10 = shl i64 %conv6, %sh_prom9
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cluster_mask, align 4
  %and = and i32 %15, %conv3
  %conv11 = zext i32 %and to i64
  %add = add i64 %shl10, %conv11
  %16 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wnd, align 4
  %18 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom15 = zext i8 %19 to i64
  %shr16 = lshr i64 %add, %sh_prom15
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 26
  %20 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %21, i64 noundef %shr16, i32 noundef %23, i32 noundef 8) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 2
  %24 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %25 to i64
  %shl.i = shl i64 %shr16, %sh_prom.i
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %17, ptr noundef nonnull @.str.4, i64 noundef %shl.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.then18 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_bh(ptr noundef %bh) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count, ptr %b_count, i32 1, ptr elementtype(i32) %b_count) #8, !srcloc !26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %bit, i32 noundef %len, i1 noundef zeroext %build) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %bit
  br i1 %build, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %1)
  %cmp = icmp ugt i32 %1, 32767
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end91_crit_edge

if.then.if.end91_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true:                                    ; preds = %if.then
  %extent_min = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 12
  %2 = ptrtoint ptr %extent_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %extent_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp1.not = icmp ult i32 %3, %len
  br i1 %cmp1.not, label %land.lhs.true.if.end91_crit_edge, label %if.then2

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %uptodated = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %4 = ptrtoint ptr %uptodated to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uptodated, align 4
  br label %cleanup160

if.else:                                          ; preds = %entry
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %5 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %start_tree, align 4
  %tobool.not21.i = icmp eq ptr %6, null
  br i1 %tobool.not21.i, label %if.else.if.then4_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %7 = phi ptr [ %11, %cleanup.i.while.body.i_crit_edge ], [ %6, %if.else.while.body.i_crit_edge ]
  %r.022.i = phi ptr [ %r.2.i, %cleanup.i.while.body.i_crit_edge ], [ null, %if.else.while.body.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.rb_node_key, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %bit)
  %cmp.i = icmp ugt i32 %9, %bit
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %bit)
  %cmp2.i = icmp ult i32 %9, %bit
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.else7_crit_edge

if.else.i.if.else7_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else7

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %r.2.i = phi ptr [ %r.022.i, %if.then.i ], [ %7, %if.then3.i ]
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %10 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rb_lookup.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

rb_lookup.exit:                                   ; preds = %cleanup.i
  %tobool3.not = icmp eq ptr %r.2.i, null
  br i1 %tobool3.not, label %rb_lookup.exit.if.then4_crit_edge, label %rb_lookup.exit.if.else7_crit_edge

rb_lookup.exit.if.else7_crit_edge:                ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else7

rb_lookup.exit.if.then4_crit_edge:                ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %rb_lookup.exit.if.then4_crit_edge, %if.else.if.then4_crit_edge
  %call6 = tail call ptr @rb_first(ptr noundef %start_tree) #8
  br label %if.end25

if.else7:                                         ; preds = %rb_lookup.exit.if.else7_crit_edge, %if.else.i.if.else7_crit_edge
  %retval.2.i300 = phi ptr [ %r.2.i, %rb_lookup.exit.if.else7_crit_edge ], [ %7, %if.else.i.if.else7_crit_edge ]
  %call8 = tail call ptr @rb_next(ptr noundef nonnull %retval.2.i300) #8
  %key = getelementptr inbounds %struct.rb_node_key, ptr %retval.2.i300, i32 0, i32 1
  %12 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key, align 4
  %key10 = getelementptr inbounds %struct.e_node, ptr %retval.2.i300, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %key10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key10, align 4
  %add11 = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add11, i32 %bit)
  %cmp12 = icmp eq i32 %add11, %bit
  br i1 %cmp12, label %if.then13, label %if.else7.if.end25_crit_edge

if.else7.if.end25_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then13:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #10
  %count9 = getelementptr inbounds %struct.e_node, ptr %retval.2.i300, i32 0, i32 1
  %add18 = add i32 %15, %len
  tail call void @rb_erase(ptr noundef nonnull %retval.2.i300, ptr noundef %start_tree) #8
  %count_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  tail call void @rb_erase(ptr noundef %count9, ptr noundef %count_tree) #8
  %count23 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %16 = ptrtoint ptr %count23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count23, align 4
  %sub = add i32 %17, -1
  store i32 %sub, ptr %count23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.else7.if.end25_crit_edge, %if.then4
  %n.0 = phi ptr [ %call8, %if.then13 ], [ %call8, %if.else7.if.end25_crit_edge ], [ %call6, %if.then4 ]
  %e0.0 = phi ptr [ %retval.2.i300, %if.then13 ], [ null, %if.else7.if.end25_crit_edge ], [ null, %if.then4 ]
  %len.addr.0 = phi i32 [ %add18, %if.then13 ], [ %len, %if.else7.if.end25_crit_edge ], [ %len, %if.then4 ]
  %bit.addr.0 = phi i32 [ %13, %if.then13 ], [ %bit, %if.else7.if.end25_crit_edge ], [ %bit, %if.then4 ]
  %tobool26.not313 = icmp eq ptr %n.0, null
  br i1 %tobool26.not313, label %if.end25.while.end_crit_edge, label %while.body.lr.ph

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end25
  %count_tree48 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  %count49 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %len.addr.1317 = phi i32 [ %len.addr.0, %while.body.lr.ph ], [ %add42, %cleanup.while.body_crit_edge ]
  %e0.1316 = phi ptr [ %e0.0, %while.body.lr.ph ], [ %e0.3, %cleanup.while.body_crit_edge ]
  %end_in.0315 = phi i32 [ %add, %while.body.lr.ph ], [ %add34, %cleanup.while.body_crit_edge ]
  %n.1314 = phi ptr [ %n.0, %while.body.lr.ph ], [ %call40, %cleanup.while.body_crit_edge ]
  %key31 = getelementptr inbounds %struct.rb_node_key, ptr %n.1314, i32 0, i32 1
  %18 = ptrtoint ptr %key31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key31, align 4
  %key33 = getelementptr inbounds %struct.e_node, ptr %n.1314, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %key33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key33, align 4
  %add34 = add i32 %21, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %end_in.0315)
  %cmp37 = icmp ugt i32 %19, %end_in.0315
  br i1 %cmp37, label %while.body.while.end_crit_edge, label %if.end39

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end39:                                         ; preds = %while.body
  %count32 = getelementptr inbounds %struct.e_node, ptr %n.1314, i32 0, i32 1
  %call40 = tail call ptr @rb_next(ptr noundef nonnull %n.1314) #8
  %sub41 = sub i32 %len.addr.1317, %end_in.0315
  %add42 = add i32 %sub41, %add34
  tail call void @rb_erase(ptr noundef nonnull %n.1314, ptr noundef %start_tree) #8
  tail call void @rb_erase(ptr noundef %count32, ptr noundef %count_tree48) #8
  %22 = ptrtoint ptr %count49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count49, align 4
  %sub50 = add i32 %23, -1
  store i32 %sub50, ptr %count49, align 4
  %tobool51.not = icmp eq ptr %e0.1316, null
  br i1 %tobool51.not, label %if.end39.cleanup_crit_edge, label %if.else53

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else53:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %24 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef nonnull %n.1314) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else53, %if.end39.cleanup_crit_edge
  %e0.3 = phi ptr [ %e0.1316, %if.else53 ], [ %n.1314, %if.end39.cleanup_crit_edge ]
  %tobool26.not = icmp eq ptr %call40, null
  br i1 %tobool26.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end25.while.end_crit_edge
  %end_in.0.lcssa = phi i32 [ %add, %if.end25.while.end_crit_edge ], [ %end_in.0315, %while.body.while.end_crit_edge ], [ %add34, %cleanup.while.end_crit_edge ]
  %e0.1.lcssa = phi ptr [ %e0.0, %if.end25.while.end_crit_edge ], [ %e0.1316, %while.body.while.end_crit_edge ], [ %e0.3, %cleanup.while.end_crit_edge ]
  %len.addr.1.lcssa = phi i32 [ %len.addr.0, %if.end25.while.end_crit_edge ], [ %len.addr.1317, %while.body.while.end_crit_edge ], [ %add42, %cleanup.while.end_crit_edge ]
  %uptodated55 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %25 = ptrtoint ptr %uptodated55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uptodated55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp56.not = icmp eq i32 %26, 1
  br i1 %cmp56.not, label %while.end.if.end91_crit_edge, label %if.then57

while.end.if.end91_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then57:                                        ; preds = %while.end
  %zone_bit = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %27 = ptrtoint ptr %zone_bit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zone_bit, align 4
  %zone_end = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %29 = ptrtoint ptr %zone_end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %zone_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp58 = icmp eq i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.addr.0, i32 %30)
  %cmp60 = icmp ult i32 %bit.addr.0, %30
  %or.cond = select i1 %cmp58, i1 true, i1 %cmp60
  %cond = select i1 %or.cond, i32 0, i32 %30
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.addr.0, i32 %cond)
  %cmp63323 = icmp ugt i32 %bit.addr.0, %cond
  br i1 %cmp63323, label %land.rhs.preheader, label %if.then57.while.end69_crit_edge

if.then57.while.end69_crit_edge:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

land.rhs.preheader:                               ; preds = %if.then57
  %31 = add i32 %bit.addr.0, %len.addr.1.lcssa
  %32 = sub i32 %31, %cond
  br label %land.rhs

land.rhs:                                         ; preds = %while.body66.land.rhs_crit_edge, %land.rhs.preheader
  %bit.addr.1325 = phi i32 [ %sub64, %while.body66.land.rhs_crit_edge ], [ %bit.addr.0, %land.rhs.preheader ]
  %len.addr.4324 = phi i32 [ %add68, %while.body66.land.rhs_crit_edge ], [ %len.addr.1.lcssa, %land.rhs.preheader ]
  %sub64 = add i32 %bit.addr.1325, -1
  %call65 = tail call fastcc zeroext i1 @wnd_is_free_hlp(ptr noundef %wnd, i32 noundef %sub64, i32 noundef 1)
  br i1 %call65, label %while.body66, label %land.rhs.while.end69_crit_edge

land.rhs.while.end69_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

while.body66:                                     ; preds = %land.rhs
  %add68 = add i32 %len.addr.4324, 1
  %cmp63 = icmp ugt i32 %sub64, %cond
  br i1 %cmp63, label %while.body66.land.rhs_crit_edge, label %while.body66.while.end69_crit_edge

while.body66.while.end69_crit_edge:               ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

while.body66.land.rhs_crit_edge:                  ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end69:                                      ; preds = %while.body66.while.end69_crit_edge, %land.rhs.while.end69_crit_edge, %if.then57.while.end69_crit_edge
  %len.addr.4.lcssa = phi i32 [ %len.addr.1.lcssa, %if.then57.while.end69_crit_edge ], [ %32, %while.body66.while.end69_crit_edge ], [ %len.addr.4324, %land.rhs.while.end69_crit_edge ]
  %bit.addr.1.lcssa = phi i32 [ %bit.addr.0, %if.then57.while.end69_crit_edge ], [ %cond, %while.body66.while.end69_crit_edge ], [ %bit.addr.1325, %land.rhs.while.end69_crit_edge ]
  %33 = ptrtoint ptr %zone_bit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %zone_bit, align 4
  %35 = ptrtoint ptr %zone_end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %zone_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp72 = icmp eq i32 %34, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %end_in.0.lcssa, i32 %34)
  %cmp75 = icmp ugt i32 %end_in.0.lcssa, %34
  %or.cond265 = select i1 %cmp72, i1 true, i1 %cmp75
  br i1 %or.cond265, label %cond.true76, label %while.end69.cond.end79_crit_edge

while.end69.cond.end79_crit_edge:                 ; preds = %while.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end79

cond.true76:                                      ; preds = %while.end69
  call void @__sanitizer_cov_trace_pc() #10
  %nbits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 3
  %37 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbits, align 4
  br label %cond.end79

cond.end79:                                       ; preds = %cond.true76, %while.end69.cond.end79_crit_edge
  %cond80 = phi i32 [ %38, %cond.true76 ], [ %34, %while.end69.cond.end79_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %end_in.0.lcssa, i32 %cond80)
  %cmp82330 = icmp ult i32 %end_in.0.lcssa, %cond80
  br i1 %cmp82330, label %land.rhs83.preheader, label %cond.end79.if.end91_crit_edge

cond.end79.if.end91_crit_edge:                    ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.rhs83.preheader:                             ; preds = %cond.end79
  %39 = add i32 %len.addr.4.lcssa, %cond80
  %40 = sub i32 %39, %end_in.0.lcssa
  br label %land.rhs83

land.rhs83:                                       ; preds = %while.body86.land.rhs83_crit_edge, %land.rhs83.preheader
  %len.addr.5332 = phi i32 [ %add88, %while.body86.land.rhs83_crit_edge ], [ %len.addr.4.lcssa, %land.rhs83.preheader ]
  %end_in.3331 = phi i32 [ %add87, %while.body86.land.rhs83_crit_edge ], [ %end_in.0.lcssa, %land.rhs83.preheader ]
  %call84 = tail call fastcc zeroext i1 @wnd_is_free_hlp(ptr noundef %wnd, i32 noundef %end_in.3331, i32 noundef 1)
  br i1 %call84, label %while.body86, label %land.rhs83.if.end91_crit_edge

land.rhs83.if.end91_crit_edge:                    ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

while.body86:                                     ; preds = %land.rhs83
  %add87 = add i32 %end_in.3331, 1
  %add88 = add i32 %len.addr.5332, 1
  %exitcond.not = icmp eq i32 %add87, %cond80
  br i1 %exitcond.not, label %while.body86.if.end91_crit_edge, label %while.body86.land.rhs83_crit_edge

while.body86.land.rhs83_crit_edge:                ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs83

while.body86.if.end91_crit_edge:                  ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.end91:                                         ; preds = %while.body86.if.end91_crit_edge, %land.rhs83.if.end91_crit_edge, %cond.end79.if.end91_crit_edge, %while.end.if.end91_crit_edge, %land.lhs.true.if.end91_crit_edge, %if.then.if.end91_crit_edge
  %e0.5 = phi ptr [ null, %land.lhs.true.if.end91_crit_edge ], [ null, %if.then.if.end91_crit_edge ], [ %e0.1.lcssa, %while.end.if.end91_crit_edge ], [ %e0.1.lcssa, %cond.end79.if.end91_crit_edge ], [ %e0.1.lcssa, %while.body86.if.end91_crit_edge ], [ %e0.1.lcssa, %land.rhs83.if.end91_crit_edge ]
  %len.addr.6 = phi i32 [ %len, %land.lhs.true.if.end91_crit_edge ], [ %len, %if.then.if.end91_crit_edge ], [ %len.addr.1.lcssa, %while.end.if.end91_crit_edge ], [ %len.addr.4.lcssa, %cond.end79.if.end91_crit_edge ], [ %len.addr.5332, %land.rhs83.if.end91_crit_edge ], [ %40, %while.body86.if.end91_crit_edge ]
  %bit.addr.2 = phi i32 [ %bit, %land.lhs.true.if.end91_crit_edge ], [ %bit, %if.then.if.end91_crit_edge ], [ %bit.addr.0, %while.end.if.end91_crit_edge ], [ %bit.addr.1.lcssa, %cond.end79.if.end91_crit_edge ], [ %bit.addr.1.lcssa, %while.body86.if.end91_crit_edge ], [ %bit.addr.1.lcssa, %land.rhs83.if.end91_crit_edge ]
  %count92 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %41 = ptrtoint ptr %count92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %42)
  %cmp93 = icmp ugt i32 %42, 32767
  %tobool95.not = icmp eq ptr %e0.5, null
  br i1 %cmp93, label %if.then94, label %if.else127

if.then94:                                        ; preds = %if.end91
  br i1 %tobool95.not, label %if.then94.if.end97_crit_edge, label %if.then96

if.then94.if.end97_crit_edge:                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then96:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %43 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef nonnull %e0.5) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.then94.if.end97_crit_edge
  %uptodated98 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %44 = ptrtoint ptr %uptodated98 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %uptodated98, align 4
  %count_tree99 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  %call100 = tail call ptr @rb_last(ptr noundef %count_tree99) #8
  %add.ptr103 = getelementptr i8, ptr %call100, i32 -16
  %key105 = getelementptr inbounds %struct.rb_node_key, ptr %call100, i32 0, i32 1
  %45 = ptrtoint ptr %key105 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.6, i32 %46)
  %cmp106.not = icmp ugt i32 %len.addr.6, %46
  br i1 %cmp106.not, label %if.end108, label %if.end97.cleanup160_crit_edge

if.end97.cleanup160_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup160

if.end108:                                        ; preds = %if.end97
  br i1 %build, label %if.then110, label %if.end108.if.end118_crit_edge

if.end108.if.end118_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then110:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %call111 = tail call ptr @rb_prev(ptr noundef %call100) #8
  %key116 = getelementptr inbounds %struct.rb_node_key, ptr %call111, i32 0, i32 1
  %47 = ptrtoint ptr %key116 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key116, align 4
  %extent_min117 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 12
  %49 = ptrtoint ptr %extent_min117 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %extent_min117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.end108.if.end118_crit_edge
  %start_tree121 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  tail call void @rb_erase(ptr noundef %add.ptr103, ptr noundef %start_tree121) #8
  tail call void @rb_erase(ptr noundef %call100, ptr noundef %count_tree99) #8
  %50 = ptrtoint ptr %count92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count92, align 4
  %sub126 = add i32 %51, -1
  store i32 %sub126, ptr %count92, align 4
  br label %if.end145

if.else127:                                       ; preds = %if.end91
  br i1 %tobool95.not, label %cond.end132, label %if.else127.if.end137_crit_edge

if.else127.if.end137_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

cond.end132:                                      ; preds = %if.else127
  %52 = load ptr, ptr @ntfs_enode_cachep, align 4
  %call131 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %52, i32 noundef 2592) #8
  %tobool134.not = icmp eq ptr %call131, null
  br i1 %tobool134.not, label %if.then135, label %cond.end132.if.end137_crit_edge

cond.end132.if.end137_crit_edge:                  ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then135:                                       ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #10
  %uptodated136 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %53 = ptrtoint ptr %uptodated136 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %uptodated136, align 4
  br label %cleanup160

if.end137:                                        ; preds = %cond.end132.if.end137_crit_edge, %if.else127.if.end137_crit_edge
  %cond133309 = phi ptr [ %call131, %cond.end132.if.end137_crit_edge ], [ %e0.5, %if.else127.if.end137_crit_edge ]
  br i1 %build, label %land.lhs.true139, label %if.end137.if.end145_crit_edge

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

land.lhs.true139:                                 ; preds = %if.end137
  %extent_min140 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 12
  %54 = ptrtoint ptr %extent_min140 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %extent_min140, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.6, i32 %55)
  %cmp141.not = icmp ugt i32 %len.addr.6, %55
  br i1 %cmp141.not, label %land.lhs.true139.if.end145_crit_edge, label %if.then142

land.lhs.true139.if.end145_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then142:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %extent_min140 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %len.addr.6, ptr %extent_min140, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %land.lhs.true139.if.end145_crit_edge, %if.end137.if.end145_crit_edge, %if.end118
  %e.0 = phi ptr [ %add.ptr103, %if.end118 ], [ %cond133309, %if.then142 ], [ %cond133309, %land.lhs.true139.if.end145_crit_edge ], [ %cond133309, %if.end137.if.end145_crit_edge ]
  %key147 = getelementptr inbounds %struct.rb_node_key, ptr %e.0, i32 0, i32 1
  %57 = ptrtoint ptr %key147 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bit.addr.2, ptr %key147, align 4
  %key149 = getelementptr inbounds %struct.e_node, ptr %e.0, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %key149 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %len.addr.6, ptr %key149, align 4
  %extent_max = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %59 = ptrtoint ptr %extent_max to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %extent_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.6, i32 %60)
  %cmp150 = icmp ugt i32 %len.addr.6, %60
  br i1 %cmp150, label %if.then151, label %if.end145.if.end153_crit_edge

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then151:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %extent_max to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %len.addr.6, ptr %extent_max, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end145.if.end153_crit_edge
  %start_tree154 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %62 = ptrtoint ptr %key147 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key147, align 4
  %64 = ptrtoint ptr %start_tree154 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %start_tree154, align 4
  %tobool.not5.i = icmp eq ptr %65, null
  br i1 %tobool.not5.i, label %if.end153.while.end.i_crit_edge, label %if.end153.while.body.i268_crit_edge

if.end153.while.body.i268_crit_edge:              ; preds = %if.end153
  br label %while.body.i268

if.end153.while.end.i_crit_edge:                  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i268:                                  ; preds = %cleanup.i275.while.body.i268_crit_edge, %if.end153.while.body.i268_crit_edge
  %66 = phi ptr [ %70, %cleanup.i275.while.body.i268_crit_edge ], [ %65, %if.end153.while.body.i268_crit_edge ]
  %key2.i = getelementptr inbounds %struct.rb_node_key, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %key2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %68)
  %cmp.i267 = icmp ult i32 %63, %68
  br i1 %cmp.i267, label %if.then.i270, label %if.else.i271

if.then.i270:                                     ; preds = %while.body.i268
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i269 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 2
  br label %cleanup.i275

if.else.i271:                                     ; preds = %while.body.i268
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %68)
  %cmp5.i = icmp ugt i32 %63, %68
  br i1 %cmp5.i, label %if.then6.i, label %cleanup.thread.i

if.then6.i:                                       ; preds = %if.else.i271
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i272 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 1
  br label %cleanup.i275

cleanup.thread.i:                                 ; preds = %if.else.i271
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %rb_insert_start.exit

cleanup.i275:                                     ; preds = %if.then6.i, %if.then.i270
  %p.2.i273 = phi ptr [ %rb_left.i269, %if.then.i270 ], [ %rb_right.i272, %if.then6.i ]
  %69 = ptrtoint ptr %p.2.i273 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %p.2.i273, align 4
  %tobool.not.i274 = icmp eq ptr %70, null
  br i1 %tobool.not.i274, label %while.cond.while.end_crit_edge.i, label %cleanup.i275.while.body.i268_crit_edge

cleanup.i275.while.body.i268_crit_edge:           ; preds = %cleanup.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i268

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i275
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %66 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end153.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end153.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.2.i273, %while.cond.while.end_crit_edge.i ], [ %start_tree154, %if.end153.while.end.i_crit_edge ]
  %71 = ptrtoint ptr %e.0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %parent.0.lcssa.i, ptr %e.0, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %e.0, i32 0, i32 1
  %72 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %e.0, i32 0, i32 2
  %73 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %rb_left.i.i, align 4
  %74 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %e.0, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %e.0, ptr noundef %start_tree154) #8
  br label %rb_insert_start.exit

rb_insert_start.exit:                             ; preds = %while.end.i, %cleanup.thread.i
  %count_tree156 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  %count.i = getelementptr inbounds %struct.e_node, ptr %e.0, i32 0, i32 1
  %75 = ptrtoint ptr %key149 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key149, align 4
  %77 = ptrtoint ptr %key147 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %key147, align 4
  %79 = ptrtoint ptr %count_tree156 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %count_tree156, align 4
  %tobool.not5.i277 = icmp eq ptr %80, null
  br i1 %tobool.not5.i277, label %rb_insert_start.exit.while.end.i294_crit_edge, label %rb_insert_start.exit.while.body.i279_crit_edge

rb_insert_start.exit.while.body.i279_crit_edge:   ; preds = %rb_insert_start.exit
  br label %while.body.i279

rb_insert_start.exit.while.end.i294_crit_edge:    ; preds = %rb_insert_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i294

while.body.i279:                                  ; preds = %cleanup.i287.while.body.i279_crit_edge, %rb_insert_start.exit.while.body.i279_crit_edge
  %81 = phi ptr [ %87, %cleanup.i287.while.body.i279_crit_edge ], [ %80, %rb_insert_start.exit.while.body.i279_crit_edge ]
  %key3.i = getelementptr inbounds %struct.rb_node_key, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %83)
  %cmp.i278 = icmp ugt i32 %76, %83
  br i1 %cmp.i278, label %if.then.i281, label %if.else.i282

if.then.i281:                                     ; preds = %while.body.i279
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i280 = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2
  br label %cleanup.i287

if.else.i282:                                     ; preds = %while.body.i279
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %83)
  %cmp6.i = icmp ult i32 %76, %83
  br i1 %cmp6.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else.i282
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i283 = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 1
  br label %cleanup.i287

if.else8.i:                                       ; preds = %if.else.i282
  %key10.i = getelementptr i8, ptr %81, i32 -4
  %84 = ptrtoint ptr %key10.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %key10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %85)
  %cmp11.i = icmp ult i32 %78, %85
  br i1 %cmp11.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left13.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2
  br label %cleanup.i287

if.else14.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %85)
  %cmp17.i = icmp ugt i32 %78, %85
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.thread.i284

if.then18.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right19.i = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 1
  br label %cleanup.i287

cleanup.thread.i284:                              ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %rb_insert_count.exit

cleanup.i287:                                     ; preds = %if.then18.i, %if.then12.i, %if.then7.i, %if.then.i281
  %p.2.i285 = phi ptr [ %rb_left.i280, %if.then.i281 ], [ %rb_right.i283, %if.then7.i ], [ %rb_left13.i, %if.then12.i ], [ %rb_right19.i, %if.then18.i ]
  %86 = ptrtoint ptr %p.2.i285 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p.2.i285, align 4
  %tobool.not.i286 = icmp eq ptr %87, null
  br i1 %tobool.not.i286, label %while.cond.while.end_crit_edge.i289, label %cleanup.i287.while.body.i279_crit_edge

cleanup.i287.while.body.i279_crit_edge:           ; preds = %cleanup.i287
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i279

while.cond.while.end_crit_edge.i289:              ; preds = %cleanup.i287
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i288 = ptrtoint ptr %81 to i32
  br label %while.end.i294

while.end.i294:                                   ; preds = %while.cond.while.end_crit_edge.i289, %rb_insert_start.exit.while.end.i294_crit_edge
  %parent.0.lcssa.i290 = phi i32 [ %phi.cast.le.i288, %while.cond.while.end_crit_edge.i289 ], [ 0, %rb_insert_start.exit.while.end.i294_crit_edge ]
  %p.0.lcssa.i291 = phi ptr [ %p.2.i285, %while.cond.while.end_crit_edge.i289 ], [ %count_tree156, %rb_insert_start.exit.while.end.i294_crit_edge ]
  %88 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %parent.0.lcssa.i290, ptr %count.i, align 4
  %rb_right.i.i292 = getelementptr inbounds %struct.e_node, ptr %e.0, i32 0, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %rb_right.i.i292 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %rb_right.i.i292, align 4
  %rb_left.i.i293 = getelementptr inbounds %struct.e_node, ptr %e.0, i32 0, i32 1, i32 0, i32 2
  %90 = ptrtoint ptr %rb_left.i.i293 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rb_left.i.i293, align 4
  %91 = ptrtoint ptr %p.0.lcssa.i291 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %count.i, ptr %p.0.lcssa.i291, align 4
  tail call void @rb_insert_color(ptr noundef %count.i, ptr noundef %count_tree156) #8
  br label %rb_insert_count.exit

rb_insert_count.exit:                             ; preds = %while.end.i294, %cleanup.thread.i284
  %92 = ptrtoint ptr %count92 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count92, align 4
  %add159 = add i32 %93, 1
  store i32 %add159, ptr %count92, align 4
  br label %cleanup160

cleanup160:                                       ; preds = %rb_insert_count.exit, %if.then135, %if.end97.cleanup160_crit_edge, %if.then2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wnd_set_used(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %bit, %add
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %4 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp75 = icmp uge i32 %shr, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits)
  %tobool.not76 = icmp eq i32 %bits, 0
  %or.cond77 = or i1 %cmp75, %tobool.not76
  br i1 %or.cond77, label %entry.do.end_crit_edge, label %while.body.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

while.body.lr.ph:                                 ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %bit
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %total_zeroes = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %5, %while.body.lr.ph ], [ %30, %cleanup.while.body_crit_edge ]
  %bits.addr.081 = phi i32 [ %bits, %while.body.lr.ph ], [ %sub20, %cleanup.while.body_crit_edge ]
  %wbit.080 = phi i32 [ %and, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %wbits.079 = phi i32 [ %mul, %while.body.lr.ph ], [ %wbits.1, %cleanup.while.body_crit_edge ]
  %iw.078 = phi i32 [ %shr, %while.body.lr.ph ], [ %add3, %cleanup.while.body_crit_edge ]
  %add3 = add nuw i32 %iw.078, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %8)
  %cmp5 = icmp eq i32 %add3, %8
  br i1 %cmp5, label %if.then, label %while.body.if.end_crit_edge, !prof !22

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %wbits.1 = phi i32 [ %10, %if.then ], [ %wbits.079, %while.body.if.end_crit_edge ]
  %sub9 = sub i32 %wbits.1, %wbit.080
  %11 = tail call i32 @llvm.umin.i32(i32 %sub9, i32 %bits.addr.081)
  %call = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.078)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.end15

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call to i32
  br label %do.end

if.end15:                                         ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call, align 4
  %and.i.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end15.if.then.i68_crit_edge

if.end15.if.then.i68_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i68

trylock_buffer.exit.i:                            ; preds = %if.end15
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 4, ptr elementtype(i32) %call) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %18 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i68_crit_edge

trylock_buffer.exit.i.if.then.i68_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i68

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i68:                                      ; preds = %trylock_buffer.exit.i.if.then.i68_crit_edge, %if.end15.if.then.i68_crit_edge
  tail call void @__lock_buffer(ptr noundef %call) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i68, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @__bitmap_set(ptr noundef %14, i32 noundef %wbit.080, i32 noundef %11) #8
  %19 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %20, i32 %iw.078
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = trunc i32 %11 to i16
  %conv18 = sub i16 %22, %23
  store i16 %conv18, ptr %arrayidx, align 2
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.cleanup_crit_edge

lock_buffer.exit.cleanup_crit_edge:               ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lock_buffer.exit.cleanup_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call) #8
  tail call void @unlock_buffer(ptr noundef %call) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  %27 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total_zeroes, align 4
  %sub19 = sub i32 %28, %11
  store i32 %sub19, ptr %total_zeroes, align 4
  %sub20 = sub i32 %bits.addr.081, %11
  %29 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %30)
  %cmp = icmp uge i32 %add3, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub20)
  %tobool.not = icmp eq i32 %sub20, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cleanup.do.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %cleanup.do.end_crit_edge, %cleanup.thread, %entry.do.end_crit_edge
  %err.2 = phi i32 [ %12, %cleanup.thread ], [ 0, %entry.do.end_crit_edge ], [ 0, %cleanup.do.end_crit_edge ]
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %31 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %start_tree, align 4
  %cmp25 = icmp eq ptr %32, null
  br i1 %cmp25, label %do.end.if.end28_crit_edge, label %if.then27

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wnd_remove_free_ext(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.end.if.end28_crit_edge
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wnd_remove_free_ext(ptr noundef %wnd, i32 noundef %bit, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %bit
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %0 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_tree, align 4
  %tobool.not21.i = icmp eq ptr %1, null
  br i1 %tobool.not21.i, label %entry.cleanup193_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup193_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %6, %cleanup.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %r.022.i = phi ptr [ %r.2.i, %cleanup.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.rb_node_key, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bit)
  %cmp.i = icmp ugt i32 %4, %bit
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bit)
  %cmp2.i = icmp ult i32 %4, %bit
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %r.2.i = phi ptr [ %r.022.i, %if.then.i ], [ %2, %if.then3.i ]
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %5 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %rb_lookup.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

rb_lookup.exit:                                   ; preds = %cleanup.i
  %tobool.not = icmp eq ptr %r.2.i, null
  br i1 %tobool.not, label %rb_lookup.exit.cleanup193_crit_edge, label %rb_lookup.exit.if.end_crit_edge

rb_lookup.exit.if.end_crit_edge:                  ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

rb_lookup.exit.cleanup193_crit_edge:              ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

if.end:                                           ; preds = %rb_lookup.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge
  %retval.2.i447 = phi ptr [ %r.2.i, %rb_lookup.exit.if.end_crit_edge ], [ %2, %if.else.i.if.end_crit_edge ]
  %key = getelementptr inbounds %struct.rb_node_key, ptr %retval.2.i447, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 4
  %count = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1
  %key1 = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key1, align 4
  %add2 = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %bit)
  %cmp = icmp ugt i32 %8, %bit
  br i1 %cmp, label %if.end.if.end70_crit_edge, label %if.else

if.end.if.end70_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %add)
  %cmp8.not = icmp ult i32 %add2, %add
  br i1 %cmp8.not, label %if.else13, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %add2, %add
  %sub12 = sub i32 %bit, %8
  br label %if.end70

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %bit)
  %cmp14 = icmp ult i32 %add2, %bit
  br i1 %cmp14, label %if.then15, label %if.else13.if.end70_crit_edge

if.else13.if.end70_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then15:                                        ; preds = %if.else13
  %call16 = tail call ptr @rb_next(ptr noundef nonnull %retval.2.i447) #8
  %tobool17.not464 = icmp eq ptr %call16, null
  br i1 %tobool17.not464, label %if.then15.cleanup193_crit_edge, label %while.body.lr.ph

if.then15.cleanup193_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

while.body.lr.ph:                                 ; preds = %if.then15
  %extent_max = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %count_tree53 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  %count54 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %n3.0466 = phi ptr [ %call16, %while.body.lr.ph ], [ %call47, %if.end46.while.body_crit_edge ]
  %bmax.0.off0465 = phi i1 [ false, %while.body.lr.ph ], [ %spec.select, %if.end46.while.body_crit_edge ]
  %key22 = getelementptr inbounds %struct.rb_node_key, ptr %n3.0466, i32 0, i32 1
  %11 = ptrtoint ptr %key22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp23.not = icmp ult i32 %12, %add
  br i1 %cmp23.not, label %if.end25, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end25:                                         ; preds = %while.body
  %count26 = getelementptr inbounds %struct.e_node, ptr %n3.0466, i32 0, i32 1
  %key27 = getelementptr inbounds %struct.e_node, ptr %n3.0466, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %key27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key27, align 4
  %15 = ptrtoint ptr %extent_max to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extent_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp28 = icmp eq i32 %14, %16
  %spec.select = select i1 %cmp28, i1 true, i1 %bmax.0.off0465
  %add35 = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %add)
  %cmp36 = icmp ugt i32 %add35, %add
  br i1 %cmp36, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.end25
  %key22.le = getelementptr inbounds %struct.rb_node_key, ptr %n3.0466, i32 0, i32 1
  %key27.le = getelementptr inbounds %struct.e_node, ptr %n3.0466, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %key22.le to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %key22.le, align 4
  tail call void @rb_erase(ptr noundef %count26, ptr noundef %count_tree53) #8
  %sub41 = sub i32 %add35, %add
  %18 = ptrtoint ptr %key27.le to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub41, ptr %key27.le, align 4
  %19 = ptrtoint ptr %key22.le to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key22.le, align 4
  %21 = ptrtoint ptr %count_tree53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %count_tree53, align 4
  %tobool.not5.i = icmp eq ptr %22, null
  br i1 %tobool.not5.i, label %if.then37.while.end.i_crit_edge, label %if.then37.while.body.i313_crit_edge

if.then37.while.body.i313_crit_edge:              ; preds = %if.then37
  br label %while.body.i313

if.then37.while.end.i_crit_edge:                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i313:                                  ; preds = %cleanup.i320.while.body.i313_crit_edge, %if.then37.while.body.i313_crit_edge
  %23 = phi ptr [ %29, %cleanup.i320.while.body.i313_crit_edge ], [ %22, %if.then37.while.body.i313_crit_edge ]
  %key3.i = getelementptr inbounds %struct.rb_node_key, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub41, i32 %25)
  %cmp.i312 = icmp ugt i32 %sub41, %25
  br i1 %cmp.i312, label %if.then.i315, label %if.else.i316

if.then.i315:                                     ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i314 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %cleanup.i320

if.else.i316:                                     ; preds = %while.body.i313
  call void @__sanitizer_cov_trace_cmp4(i32 %sub41, i32 %25)
  %cmp6.i = icmp ult i32 %sub41, %25
  br i1 %cmp6.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else.i316
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i317 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %cleanup.i320

if.else8.i:                                       ; preds = %if.else.i316
  %key10.i = getelementptr i8, ptr %23, i32 -4
  %26 = ptrtoint ptr %key10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %key10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %27)
  %cmp11.i = icmp ult i32 %20, %27
  br i1 %cmp11.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left13.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %cleanup.i320

if.else14.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %27)
  %cmp17.i = icmp ugt i32 %20, %27
  br i1 %cmp17.i, label %if.then18.i, label %cleanup.thread.i

if.then18.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right19.i = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %cleanup.i320

cleanup.thread.i:                                 ; preds = %if.else14.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br i1 %spec.select, label %cleanup.thread.i.if.end58_crit_edge, label %cleanup.thread.i.cleanup193_crit_edge

cleanup.thread.i.cleanup193_crit_edge:            ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

cleanup.thread.i.if.end58_crit_edge:              ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

cleanup.i320:                                     ; preds = %if.then18.i, %if.then12.i, %if.then7.i, %if.then.i315
  %p.2.i318 = phi ptr [ %rb_left.i314, %if.then.i315 ], [ %rb_right.i317, %if.then7.i ], [ %rb_left13.i, %if.then12.i ], [ %rb_right19.i, %if.then18.i ]
  %28 = ptrtoint ptr %p.2.i318 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p.2.i318, align 4
  %tobool.not.i319 = icmp eq ptr %29, null
  br i1 %tobool.not.i319, label %while.cond.while.end_crit_edge.i, label %cleanup.i320.while.body.i313_crit_edge

cleanup.i320.while.body.i313_crit_edge:           ; preds = %cleanup.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i313

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i320
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %23 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then37.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.then37.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.2.i318, %while.cond.while.end_crit_edge.i ], [ %count_tree53, %if.then37.while.end.i_crit_edge ]
  %30 = ptrtoint ptr %count26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %parent.0.lcssa.i, ptr %count26, align 4
  %rb_right.i.i = getelementptr inbounds %struct.e_node, ptr %n3.0466, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.e_node, ptr %n3.0466, i32 0, i32 1, i32 0, i32 2
  %32 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rb_left.i.i, align 4
  %33 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %count26, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %count26, ptr noundef %count_tree53) #8
  br i1 %spec.select, label %while.end.i.if.end58_crit_edge, label %while.end.i.cleanup193_crit_edge

while.end.i.cleanup193_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

while.end.i.if.end58_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end46:                                         ; preds = %if.end25
  %call47 = tail call ptr @rb_next(ptr noundef nonnull %n3.0466) #8
  tail call void @rb_erase(ptr noundef nonnull %n3.0466, ptr noundef %start_tree) #8
  tail call void @rb_erase(ptr noundef %count26, ptr noundef %count_tree53) #8
  %34 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count54, align 4
  %sub55 = add i32 %35, -1
  store i32 %sub55, ptr %count54, align 4
  %36 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %n3.0466) #8
  %tobool17.not = icmp eq ptr %call47, null
  br i1 %tobool17.not, label %if.end46.while.end_crit_edge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %while.body.while.end_crit_edge
  %bmax.0.off0.lcssa = phi i1 [ %bmax.0.off0465, %while.body.while.end_crit_edge ], [ %spec.select, %if.end46.while.end_crit_edge ]
  br i1 %bmax.0.off0.lcssa, label %while.end.if.end58_crit_edge, label %while.end.cleanup193_crit_edge

while.end.cleanup193_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

while.end.if.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %while.end.if.end58_crit_edge, %while.end.i.if.end58_crit_edge, %cleanup.thread.i.if.end58_crit_edge
  %call60 = tail call ptr @rb_first(ptr noundef %count_tree53) #8
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end58.cond.end_crit_edge, label %cond.true

if.end58.cond.end_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %key66 = getelementptr inbounds %struct.rb_node_key, ptr %call60, i32 0, i32 1
  %37 = ptrtoint ptr %key66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %key66, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end58.cond.end_crit_edge
  %cond = phi i32 [ %38, %cond.true ], [ 0, %if.end58.cond.end_crit_edge ]
  %39 = ptrtoint ptr %extent_max to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond, ptr %extent_max, align 4
  br label %cleanup193

if.end70:                                         ; preds = %if.else13.if.end70_crit_edge, %if.then9, %if.end.if.end70_crit_edge
  %new_len.0 = phi i32 [ 0, %if.end.if.end70_crit_edge ], [ %sub, %if.then9 ], [ 0, %if.else13.if.end70_crit_edge ]
  %new_key.0 = phi i32 [ 0, %if.end.if.end70_crit_edge ], [ %add, %if.then9 ], [ 0, %if.else13.if.end70_crit_edge ]
  %len.addr.0 = phi i32 [ %10, %if.end.if.end70_crit_edge ], [ %sub12, %if.then9 ], [ %10, %if.else13.if.end70_crit_edge ]
  %extent_max73 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %40 = ptrtoint ptr %extent_max73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %extent_max73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %41)
  %cmp74.not = icmp eq i32 %10, %41
  br i1 %cmp74.not, label %if.else76, label %if.end70.if.end110_crit_edge

if.end70.if.end110_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.else76:                                        ; preds = %if.end70
  %call79 = tail call ptr @rb_prev(ptr noundef %count) #8
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.else82, label %if.else76.if.end110_crit_edge

if.else76.if.end110_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.else82:                                        ; preds = %if.else76
  %call85 = tail call ptr @rb_next(ptr noundef %count) #8
  %42 = tail call i32 @llvm.umax.i32(i32 %len.addr.0, i32 %new_len.0)
  %tobool92.not = icmp eq ptr %call85, null
  br i1 %tobool92.not, label %if.else82.if.end110.sink.split_crit_edge, label %if.else95

if.else82.if.end110.sink.split_crit_edge:         ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110.sink.split

if.else95:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  %key100 = getelementptr inbounds %struct.rb_node_key, ptr %call85, i32 0, i32 1
  %43 = ptrtoint ptr %key100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key100, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %42)
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.else95, %if.else82.if.end110.sink.split_crit_edge
  %.sink = phi i32 [ %45, %if.else95 ], [ %42, %if.else82.if.end110.sink.split_crit_edge ]
  %46 = ptrtoint ptr %extent_max73 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %extent_max73, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.else76.if.end110_crit_edge, %if.end70.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool111.not = icmp eq i32 %len.addr.0, 0
  br i1 %tobool111.not, label %if.then112, label %if.end134

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_len.0)
  %tobool113.not = icmp eq i32 %new_len.0, 0
  br i1 %tobool113.not, label %if.else124, label %if.then114

if.then114:                                       ; preds = %if.then112
  %47 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %new_key.0, ptr %key, align 4
  %count_tree119 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  tail call void @rb_erase(ptr noundef %count, ptr noundef %count_tree119) #8
  %48 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %new_len.0, ptr %key1, align 4
  %49 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %key, align 4
  %51 = ptrtoint ptr %count_tree119 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %count_tree119, align 4
  %tobool.not5.i324 = icmp eq ptr %52, null
  br i1 %tobool.not5.i324, label %if.then114.while.end.i353_crit_edge, label %if.then114.while.body.i327_crit_edge

if.then114.while.body.i327_crit_edge:             ; preds = %if.then114
  br label %while.body.i327

if.then114.while.end.i353_crit_edge:              ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i353

while.body.i327:                                  ; preds = %cleanup.i346.while.body.i327_crit_edge, %if.then114.while.body.i327_crit_edge
  %53 = phi ptr [ %59, %cleanup.i346.while.body.i327_crit_edge ], [ %52, %if.then114.while.body.i327_crit_edge ]
  %key3.i325 = getelementptr inbounds %struct.rb_node_key, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %key3.i325 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key3.i325, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_len.0, i32 %55)
  %cmp.i326 = icmp ugt i32 %new_len.0, %55
  br i1 %cmp.i326, label %if.then.i329, label %if.else.i331

if.then.i329:                                     ; preds = %while.body.i327
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i328 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 2
  br label %cleanup.i346

if.else.i331:                                     ; preds = %while.body.i327
  call void @__sanitizer_cov_trace_cmp4(i32 %new_len.0, i32 %55)
  %cmp6.i330 = icmp ult i32 %new_len.0, %55
  br i1 %cmp6.i330, label %if.then7.i333, label %if.else8.i336

if.then7.i333:                                    ; preds = %if.else.i331
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i332 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  br label %cleanup.i346

if.else8.i336:                                    ; preds = %if.else.i331
  %key10.i334 = getelementptr i8, ptr %53, i32 -4
  %56 = ptrtoint ptr %key10.i334 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key10.i334, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %57)
  %cmp11.i335 = icmp ult i32 %50, %57
  br i1 %cmp11.i335, label %if.then12.i338, label %if.else14.i340

if.then12.i338:                                   ; preds = %if.else8.i336
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left13.i337 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 2
  br label %cleanup.i346

if.else14.i340:                                   ; preds = %if.else8.i336
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %57)
  %cmp17.i339 = icmp ugt i32 %50, %57
  br i1 %cmp17.i339, label %if.then18.i342, label %cleanup.thread.i343

if.then18.i342:                                   ; preds = %if.else14.i340
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right19.i341 = getelementptr inbounds %struct.rb_node, ptr %53, i32 0, i32 1
  br label %cleanup.i346

cleanup.thread.i343:                              ; preds = %if.else14.i340
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %out

cleanup.i346:                                     ; preds = %if.then18.i342, %if.then12.i338, %if.then7.i333, %if.then.i329
  %p.2.i344 = phi ptr [ %rb_left.i328, %if.then.i329 ], [ %rb_right.i332, %if.then7.i333 ], [ %rb_left13.i337, %if.then12.i338 ], [ %rb_right19.i341, %if.then18.i342 ]
  %58 = ptrtoint ptr %p.2.i344 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %p.2.i344, align 4
  %tobool.not.i345 = icmp eq ptr %59, null
  br i1 %tobool.not.i345, label %while.cond.while.end_crit_edge.i348, label %cleanup.i346.while.body.i327_crit_edge

cleanup.i346.while.body.i327_crit_edge:           ; preds = %cleanup.i346
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i327

while.cond.while.end_crit_edge.i348:              ; preds = %cleanup.i346
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i347 = ptrtoint ptr %53 to i32
  br label %while.end.i353

while.end.i353:                                   ; preds = %while.cond.while.end_crit_edge.i348, %if.then114.while.end.i353_crit_edge
  %parent.0.lcssa.i349 = phi i32 [ %phi.cast.le.i347, %while.cond.while.end_crit_edge.i348 ], [ 0, %if.then114.while.end.i353_crit_edge ]
  %p.0.lcssa.i350 = phi ptr [ %p.2.i344, %while.cond.while.end_crit_edge.i348 ], [ %count_tree119, %if.then114.while.end.i353_crit_edge ]
  %60 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %parent.0.lcssa.i349, ptr %count, align 4
  %rb_right.i.i351 = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %rb_right.i.i351 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %rb_right.i.i351, align 4
  %rb_left.i.i352 = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %rb_left.i.i352 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %rb_left.i.i352, align 4
  %63 = ptrtoint ptr %p.0.lcssa.i350 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %count, ptr %p.0.lcssa.i350, align 4
  tail call void @rb_insert_color(ptr noundef %count, ptr noundef %count_tree119) #8
  br label %out

if.else124:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rb_erase(ptr noundef nonnull %retval.2.i447, ptr noundef %start_tree) #8
  %count_tree130 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  tail call void @rb_erase(ptr noundef %count, ptr noundef %count_tree130) #8
  %count131 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %64 = ptrtoint ptr %count131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count131, align 4
  %sub132 = add i32 %65, -1
  store i32 %sub132, ptr %count131, align 4
  %66 = load ptr, ptr @ntfs_enode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %66, ptr noundef nonnull %retval.2.i447) #8
  br label %out

if.end134:                                        ; preds = %if.end110
  %count_tree137 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  tail call void @rb_erase(ptr noundef %count, ptr noundef %count_tree137) #8
  %67 = ptrtoint ptr %key1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %len.addr.0, ptr %key1, align 4
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key, align 4
  %70 = ptrtoint ptr %count_tree137 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %count_tree137, align 4
  %tobool.not5.i358 = icmp eq ptr %71, null
  br i1 %tobool.not5.i358, label %if.end134.while.end.i387_crit_edge, label %if.end134.while.body.i361_crit_edge

if.end134.while.body.i361_crit_edge:              ; preds = %if.end134
  br label %while.body.i361

if.end134.while.end.i387_crit_edge:               ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i387

while.body.i361:                                  ; preds = %cleanup.i380.while.body.i361_crit_edge, %if.end134.while.body.i361_crit_edge
  %72 = phi ptr [ %78, %cleanup.i380.while.body.i361_crit_edge ], [ %71, %if.end134.while.body.i361_crit_edge ]
  %key3.i359 = getelementptr inbounds %struct.rb_node_key, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %key3.i359 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %key3.i359, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0, i32 %74)
  %cmp.i360 = icmp ugt i32 %len.addr.0, %74
  br i1 %cmp.i360, label %if.then.i363, label %if.else.i365

if.then.i363:                                     ; preds = %while.body.i361
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i362 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 2
  br label %cleanup.i380

if.else.i365:                                     ; preds = %while.body.i361
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0, i32 %74)
  %cmp6.i364 = icmp ult i32 %len.addr.0, %74
  br i1 %cmp6.i364, label %if.then7.i367, label %if.else8.i370

if.then7.i367:                                    ; preds = %if.else.i365
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i366 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 1
  br label %cleanup.i380

if.else8.i370:                                    ; preds = %if.else.i365
  %key10.i368 = getelementptr i8, ptr %72, i32 -4
  %75 = ptrtoint ptr %key10.i368 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key10.i368, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %76)
  %cmp11.i369 = icmp ult i32 %69, %76
  br i1 %cmp11.i369, label %if.then12.i372, label %if.else14.i374

if.then12.i372:                                   ; preds = %if.else8.i370
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left13.i371 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 2
  br label %cleanup.i380

if.else14.i374:                                   ; preds = %if.else8.i370
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %76)
  %cmp17.i373 = icmp ugt i32 %69, %76
  br i1 %cmp17.i373, label %if.then18.i376, label %cleanup.thread.i377

if.then18.i376:                                   ; preds = %if.else14.i374
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right19.i375 = getelementptr inbounds %struct.rb_node, ptr %72, i32 0, i32 1
  br label %cleanup.i380

cleanup.thread.i377:                              ; preds = %if.else14.i374
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %rb_insert_count.exit388

cleanup.i380:                                     ; preds = %if.then18.i376, %if.then12.i372, %if.then7.i367, %if.then.i363
  %p.2.i378 = phi ptr [ %rb_left.i362, %if.then.i363 ], [ %rb_right.i366, %if.then7.i367 ], [ %rb_left13.i371, %if.then12.i372 ], [ %rb_right19.i375, %if.then18.i376 ]
  %77 = ptrtoint ptr %p.2.i378 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %p.2.i378, align 4
  %tobool.not.i379 = icmp eq ptr %78, null
  br i1 %tobool.not.i379, label %while.cond.while.end_crit_edge.i382, label %cleanup.i380.while.body.i361_crit_edge

cleanup.i380.while.body.i361_crit_edge:           ; preds = %cleanup.i380
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i361

while.cond.while.end_crit_edge.i382:              ; preds = %cleanup.i380
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i381 = ptrtoint ptr %72 to i32
  br label %while.end.i387

while.end.i387:                                   ; preds = %while.cond.while.end_crit_edge.i382, %if.end134.while.end.i387_crit_edge
  %parent.0.lcssa.i383 = phi i32 [ %phi.cast.le.i381, %while.cond.while.end_crit_edge.i382 ], [ 0, %if.end134.while.end.i387_crit_edge ]
  %p.0.lcssa.i384 = phi ptr [ %p.2.i378, %while.cond.while.end_crit_edge.i382 ], [ %count_tree137, %if.end134.while.end.i387_crit_edge ]
  %79 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %parent.0.lcssa.i383, ptr %count, align 4
  %rb_right.i.i385 = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %rb_right.i.i385 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_right.i.i385, align 4
  %rb_left.i.i386 = getelementptr inbounds %struct.e_node, ptr %retval.2.i447, i32 0, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %rb_left.i.i386 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_left.i.i386, align 4
  %82 = ptrtoint ptr %p.0.lcssa.i384 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %count, ptr %p.0.lcssa.i384, align 4
  tail call void @rb_insert_color(ptr noundef %count, ptr noundef %count_tree137) #8
  br label %rb_insert_count.exit388

rb_insert_count.exit388:                          ; preds = %while.end.i387, %cleanup.thread.i377
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_len.0)
  %tobool142.not = icmp eq i32 %new_len.0, 0
  br i1 %tobool142.not, label %rb_insert_count.exit388.out_crit_edge, label %if.end144

rb_insert_count.exit388.out_crit_edge:            ; preds = %rb_insert_count.exit388
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end144:                                        ; preds = %rb_insert_count.exit388
  %count145 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %83 = ptrtoint ptr %count145 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %count145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %84)
  %cmp146 = icmp ugt i32 %84, 32767
  br i1 %cmp146, label %if.then147, label %if.else166

if.then147:                                       ; preds = %if.end144
  %uptodated = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %85 = ptrtoint ptr %uptodated to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %uptodated, align 4
  %call150 = tail call ptr @rb_last(ptr noundef %count_tree137) #8
  %key154 = getelementptr inbounds %struct.rb_node_key, ptr %call150, i32 0, i32 1
  %86 = ptrtoint ptr %key154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %key154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %new_len.0)
  %cmp155 = icmp ugt i32 %87, %new_len.0
  br i1 %cmp155, label %if.then147.out_crit_edge, label %if.end172

if.then147.out_crit_edge:                         ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else166:                                       ; preds = %if.end144
  %88 = load ptr, ptr @ntfs_enode_cachep, align 4
  %call167 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %88, i32 noundef 2592) #8
  %tobool168.not = icmp eq ptr %call167, null
  br i1 %tobool168.not, label %if.end172.thread, label %if.else166.if.then174_crit_edge

if.else166.if.then174_crit_edge:                  ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.end172.thread:                                 ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #10
  %uptodated170 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %89 = ptrtoint ptr %uptodated170 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %uptodated170, align 4
  br label %out

if.end172:                                        ; preds = %if.then147
  %add.ptr152 = getelementptr i8, ptr %call150, i32 -16
  tail call void @rb_erase(ptr noundef %add.ptr152, ptr noundef %start_tree) #8
  tail call void @rb_erase(ptr noundef %call150, ptr noundef %count_tree137) #8
  %90 = ptrtoint ptr %count145 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count145, align 4
  %sub165 = add i32 %91, -1
  store i32 %sub165, ptr %count145, align 4
  %tobool173.not = icmp eq ptr %add.ptr152, null
  br i1 %tobool173.not, label %if.end172.out_crit_edge, label %if.end172.if.then174_crit_edge

if.end172.if.then174_crit_edge:                   ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then174

if.end172.out_crit_edge:                          ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then174:                                       ; preds = %if.end172.if.then174_crit_edge, %if.else166.if.then174_crit_edge
  %e.0454 = phi ptr [ %add.ptr152, %if.end172.if.then174_crit_edge ], [ %call167, %if.else166.if.then174_crit_edge ]
  %key176 = getelementptr inbounds %struct.rb_node_key, ptr %e.0454, i32 0, i32 1
  %92 = ptrtoint ptr %key176 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %new_key.0, ptr %key176, align 4
  %key178 = getelementptr inbounds %struct.e_node, ptr %e.0454, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %key178 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %new_len.0, ptr %key178, align 4
  %94 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %start_tree, align 4
  %tobool.not5.i390 = icmp eq ptr %95, null
  br i1 %tobool.not5.i390, label %if.then174.while.end.i407_crit_edge, label %if.then174.while.body.i392_crit_edge

if.then174.while.body.i392_crit_edge:             ; preds = %if.then174
  br label %while.body.i392

if.then174.while.end.i407_crit_edge:              ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i407

while.body.i392:                                  ; preds = %cleanup.i400.while.body.i392_crit_edge, %if.then174.while.body.i392_crit_edge
  %96 = phi ptr [ %100, %cleanup.i400.while.body.i392_crit_edge ], [ %95, %if.then174.while.body.i392_crit_edge ]
  %key2.i = getelementptr inbounds %struct.rb_node_key, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %key2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %key2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %new_key.0, i32 %98)
  %cmp.i391 = icmp ult i32 %new_key.0, %98
  br i1 %cmp.i391, label %if.then.i394, label %if.else.i395

if.then.i394:                                     ; preds = %while.body.i392
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i393 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 2
  br label %cleanup.i400

if.else.i395:                                     ; preds = %while.body.i392
  call void @__sanitizer_cov_trace_cmp4(i32 %new_key.0, i32 %98)
  %cmp5.i = icmp ugt i32 %new_key.0, %98
  br i1 %cmp5.i, label %if.then6.i, label %cleanup.thread.i397

if.then6.i:                                       ; preds = %if.else.i395
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i396 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 1
  br label %cleanup.i400

cleanup.thread.i397:                              ; preds = %if.else.i395
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %rb_insert_start.exit

cleanup.i400:                                     ; preds = %if.then6.i, %if.then.i394
  %p.2.i398 = phi ptr [ %rb_left.i393, %if.then.i394 ], [ %rb_right.i396, %if.then6.i ]
  %99 = ptrtoint ptr %p.2.i398 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %p.2.i398, align 4
  %tobool.not.i399 = icmp eq ptr %100, null
  br i1 %tobool.not.i399, label %while.cond.while.end_crit_edge.i402, label %cleanup.i400.while.body.i392_crit_edge

cleanup.i400.while.body.i392_crit_edge:           ; preds = %cleanup.i400
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i392

while.cond.while.end_crit_edge.i402:              ; preds = %cleanup.i400
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i401 = ptrtoint ptr %96 to i32
  br label %while.end.i407

while.end.i407:                                   ; preds = %while.cond.while.end_crit_edge.i402, %if.then174.while.end.i407_crit_edge
  %parent.0.lcssa.i403 = phi i32 [ %phi.cast.le.i401, %while.cond.while.end_crit_edge.i402 ], [ 0, %if.then174.while.end.i407_crit_edge ]
  %p.0.lcssa.i404 = phi ptr [ %p.2.i398, %while.cond.while.end_crit_edge.i402 ], [ %start_tree, %if.then174.while.end.i407_crit_edge ]
  %101 = ptrtoint ptr %e.0454 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %parent.0.lcssa.i403, ptr %e.0454, align 4
  %rb_right.i.i405 = getelementptr inbounds %struct.rb_node, ptr %e.0454, i32 0, i32 1
  %102 = ptrtoint ptr %rb_right.i.i405 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %rb_right.i.i405, align 4
  %rb_left.i.i406 = getelementptr inbounds %struct.rb_node, ptr %e.0454, i32 0, i32 2
  %103 = ptrtoint ptr %rb_left.i.i406 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %rb_left.i.i406, align 4
  %104 = ptrtoint ptr %p.0.lcssa.i404 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %e.0454, ptr %p.0.lcssa.i404, align 4
  tail call void @rb_insert_color(ptr noundef %e.0454, ptr noundef %start_tree) #8
  br label %rb_insert_start.exit

rb_insert_start.exit:                             ; preds = %while.end.i407, %cleanup.thread.i397
  %count.i408 = getelementptr inbounds %struct.e_node, ptr %e.0454, i32 0, i32 1
  %105 = ptrtoint ptr %key178 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %key178, align 4
  %107 = ptrtoint ptr %key176 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %key176, align 4
  %109 = ptrtoint ptr %count_tree137 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %count_tree137, align 4
  %tobool.not5.i411 = icmp eq ptr %110, null
  br i1 %tobool.not5.i411, label %rb_insert_start.exit.while.end.i440_crit_edge, label %rb_insert_start.exit.while.body.i414_crit_edge

rb_insert_start.exit.while.body.i414_crit_edge:   ; preds = %rb_insert_start.exit
  br label %while.body.i414

rb_insert_start.exit.while.end.i440_crit_edge:    ; preds = %rb_insert_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i440

while.body.i414:                                  ; preds = %cleanup.i433.while.body.i414_crit_edge, %rb_insert_start.exit.while.body.i414_crit_edge
  %111 = phi ptr [ %117, %cleanup.i433.while.body.i414_crit_edge ], [ %110, %rb_insert_start.exit.while.body.i414_crit_edge ]
  %key3.i412 = getelementptr inbounds %struct.rb_node_key, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %key3.i412 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %key3.i412, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %113)
  %cmp.i413 = icmp ugt i32 %106, %113
  br i1 %cmp.i413, label %if.then.i416, label %if.else.i418

if.then.i416:                                     ; preds = %while.body.i414
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i415 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 2
  br label %cleanup.i433

if.else.i418:                                     ; preds = %while.body.i414
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %113)
  %cmp6.i417 = icmp ult i32 %106, %113
  br i1 %cmp6.i417, label %if.then7.i420, label %if.else8.i423

if.then7.i420:                                    ; preds = %if.else.i418
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i419 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 1
  br label %cleanup.i433

if.else8.i423:                                    ; preds = %if.else.i418
  %key10.i421 = getelementptr i8, ptr %111, i32 -4
  %114 = ptrtoint ptr %key10.i421 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %key10.i421, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %115)
  %cmp11.i422 = icmp ult i32 %108, %115
  br i1 %cmp11.i422, label %if.then12.i425, label %if.else14.i427

if.then12.i425:                                   ; preds = %if.else8.i423
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left13.i424 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 2
  br label %cleanup.i433

if.else14.i427:                                   ; preds = %if.else8.i423
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %115)
  %cmp17.i426 = icmp ugt i32 %108, %115
  br i1 %cmp17.i426, label %if.then18.i429, label %cleanup.thread.i430

if.then18.i429:                                   ; preds = %if.else14.i427
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right19.i428 = getelementptr inbounds %struct.rb_node, ptr %111, i32 0, i32 1
  br label %cleanup.i433

cleanup.thread.i430:                              ; preds = %if.else14.i427
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 191, i32 noundef 9, ptr noundef null) #8
  br label %rb_insert_count.exit441

cleanup.i433:                                     ; preds = %if.then18.i429, %if.then12.i425, %if.then7.i420, %if.then.i416
  %p.2.i431 = phi ptr [ %rb_left.i415, %if.then.i416 ], [ %rb_right.i419, %if.then7.i420 ], [ %rb_left13.i424, %if.then12.i425 ], [ %rb_right19.i428, %if.then18.i429 ]
  %116 = ptrtoint ptr %p.2.i431 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %p.2.i431, align 4
  %tobool.not.i432 = icmp eq ptr %117, null
  br i1 %tobool.not.i432, label %while.cond.while.end_crit_edge.i435, label %cleanup.i433.while.body.i414_crit_edge

cleanup.i433.while.body.i414_crit_edge:           ; preds = %cleanup.i433
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i414

while.cond.while.end_crit_edge.i435:              ; preds = %cleanup.i433
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i434 = ptrtoint ptr %111 to i32
  br label %while.end.i440

while.end.i440:                                   ; preds = %while.cond.while.end_crit_edge.i435, %rb_insert_start.exit.while.end.i440_crit_edge
  %parent.0.lcssa.i436 = phi i32 [ %phi.cast.le.i434, %while.cond.while.end_crit_edge.i435 ], [ 0, %rb_insert_start.exit.while.end.i440_crit_edge ]
  %p.0.lcssa.i437 = phi ptr [ %p.2.i431, %while.cond.while.end_crit_edge.i435 ], [ %count_tree137, %rb_insert_start.exit.while.end.i440_crit_edge ]
  %118 = ptrtoint ptr %count.i408 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %parent.0.lcssa.i436, ptr %count.i408, align 4
  %rb_right.i.i438 = getelementptr inbounds %struct.e_node, ptr %e.0454, i32 0, i32 1, i32 0, i32 1
  %119 = ptrtoint ptr %rb_right.i.i438 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %rb_right.i.i438, align 4
  %rb_left.i.i439 = getelementptr inbounds %struct.e_node, ptr %e.0454, i32 0, i32 1, i32 0, i32 2
  %120 = ptrtoint ptr %rb_left.i.i439 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %rb_left.i.i439, align 4
  %121 = ptrtoint ptr %p.0.lcssa.i437 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %count.i408, ptr %p.0.lcssa.i437, align 4
  tail call void @rb_insert_color(ptr noundef %count.i408, ptr noundef %count_tree137) #8
  br label %rb_insert_count.exit441

rb_insert_count.exit441:                          ; preds = %while.end.i440, %cleanup.thread.i430
  %122 = ptrtoint ptr %count145 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count145, align 4
  %add184 = add i32 %123, 1
  store i32 %add184, ptr %count145, align 4
  br label %out

out:                                              ; preds = %rb_insert_count.exit441, %if.end172.out_crit_edge, %if.end172.thread, %if.then147.out_crit_edge, %rb_insert_count.exit388.out_crit_edge, %if.else124, %while.end.i353, %cleanup.thread.i343
  %count186 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 10
  %124 = ptrtoint ptr %count186 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool187.not = icmp eq i32 %125, 0
  br i1 %tobool187.not, label %land.lhs.true, label %out.cleanup193_crit_edge

out.cleanup193_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

land.lhs.true:                                    ; preds = %out
  %uptodated188 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %126 = ptrtoint ptr %uptodated188 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %uptodated188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp189.not = icmp eq i32 %127, 1
  br i1 %cmp189.not, label %land.lhs.true.cleanup193_crit_edge, label %if.then190

land.lhs.true.cleanup193_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup193

if.then190:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call191 = tail call fastcc i32 @wnd_rescan(ptr noundef %wnd)
  br label %cleanup193

cleanup193:                                       ; preds = %if.then190, %land.lhs.true.cleanup193_crit_edge, %out.cleanup193_crit_edge, %cond.end, %while.end.cleanup193_crit_edge, %while.end.i.cleanup193_crit_edge, %cleanup.thread.i.cleanup193_crit_edge, %if.then15.cleanup193_crit_edge, %rb_lookup.exit.cleanup193_crit_edge, %entry.cleanup193_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wnd_is_free(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %0 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %start_tree, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.use_wnd_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.use_wnd_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %6, %cleanup.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %r.022.i = phi ptr [ %r.2.i, %cleanup.i.while.body.i_crit_edge ], [ null, %entry.while.body.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.rb_node_key, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bit)
  %cmp.i = icmp ugt i32 %4, %bit
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %bit)
  %cmp2.i = icmp ult i32 %4, %bit
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.end3_crit_edge

if.else.i.if.end3_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %r.2.i = phi ptr [ %r.022.i, %if.then.i ], [ %2, %if.then3.i ]
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %5 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %rb_lookup.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

rb_lookup.exit:                                   ; preds = %cleanup.i
  %tobool.not = icmp eq ptr %r.2.i, null
  br i1 %tobool.not, label %rb_lookup.exit.use_wnd_crit_edge, label %rb_lookup.exit.if.end3_crit_edge

rb_lookup.exit.if.end3_crit_edge:                 ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

rb_lookup.exit.use_wnd_crit_edge:                 ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

if.end3:                                          ; preds = %rb_lookup.exit.if.end3_crit_edge, %if.else.i.if.end3_crit_edge
  %retval.2.i27 = phi ptr [ %r.2.i, %rb_lookup.exit.if.end3_crit_edge ], [ %2, %if.else.i.if.end3_crit_edge ]
  %key = getelementptr inbounds %struct.rb_node_key, ptr %retval.2.i27, i32 0, i32 1
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 4
  %key5 = getelementptr inbounds %struct.e_node, ptr %retval.2.i27, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key5, align 4
  %add = add i32 %10, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bit)
  %cmp6 = icmp ule i32 %add, %bit
  %add7 = add i32 %bits, %bit
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %add)
  %cmp8.not = icmp ugt i32 %add7, %add
  %or.cond = or i1 %cmp6, %cmp8.not
  br i1 %or.cond, label %if.end3.use_wnd_crit_edge, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.use_wnd_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

use_wnd:                                          ; preds = %if.end3.use_wnd_crit_edge, %rb_lookup.exit.use_wnd_crit_edge, %entry.use_wnd_crit_edge
  %call11 = tail call fastcc zeroext i1 @wnd_is_free_hlp(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits)
  br label %cleanup

cleanup:                                          ; preds = %use_wnd, %if.end3.cleanup_crit_edge
  %retval.0 = phi i1 [ %call11, %use_wnd ], [ true, %if.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @wnd_is_free_hlp(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %bit, %add
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %4 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %5)
  %cmp63 = icmp uge i32 %shr, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits)
  %tobool.not64 = icmp eq i32 %bits, 0
  %or.cond65 = or i1 %cmp63, %tobool.not64
  br i1 %or.cond65, label %entry.cleanup31_crit_edge, label %while.body.lr.ph

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

while.body.lr.ph:                                 ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %7, 3
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %bit
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup27.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %5, %while.body.lr.ph ], [ %20, %cleanup27.while.body_crit_edge ]
  %wbit.069 = phi i32 [ %and, %while.body.lr.ph ], [ 0, %cleanup27.while.body_crit_edge ]
  %wbits.068 = phi i32 [ %mul, %while.body.lr.ph ], [ %wbits.1, %cleanup27.while.body_crit_edge ]
  %iw.067 = phi i32 [ %shr, %while.body.lr.ph ], [ %add3, %cleanup27.while.body_crit_edge ]
  %bits.addr.066 = phi i32 [ %bits, %while.body.lr.ph ], [ %sub25, %cleanup27.while.body_crit_edge ]
  %add3 = add nuw i32 %iw.067, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %8)
  %cmp5 = icmp eq i32 %add3, %8
  br i1 %cmp5, label %if.then, label %while.body.if.end_crit_edge, !prof !22

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bits_last, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %wbits.1 = phi i32 [ %10, %if.then ], [ %wbits.068, %while.body.if.end_crit_edge ]
  %sub9 = sub i32 %wbits.1, %wbit.069
  %11 = tail call i32 @llvm.umin.i32(i32 %sub9, i32 %bits.addr.066)
  %12 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %13, i32 %iw.067
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wbits.1, i32 %conv12)
  %cmp13.not = icmp eq i32 %wbits.1, %conv12
  br i1 %cmp13.not, label %if.end.cleanup27_crit_edge, label %if.then15

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

if.then15:                                        ; preds = %if.end
  %call = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.067)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15.cleanup31_crit_edge, label %if.end18

if.then15.cleanup31_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end18:                                         ; preds = %if.then15
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data, align 4
  %call19 = tail call zeroext i1 @are_bits_clear(ptr noundef %17, i32 noundef %wbit.069, i32 noundef %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  br i1 %call19, label %if.end18.cleanup27_crit_edge, label %if.end18.cleanup31_crit_edge

if.end18.cleanup31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end18.cleanup27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup27

cleanup27:                                        ; preds = %if.end18.cleanup27_crit_edge, %if.end.cleanup27_crit_edge
  %sub25 = sub i32 %bits.addr.066, %11
  %19 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %20)
  %cmp = icmp uge i32 %add3, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %tobool.not = icmp eq i32 %sub25, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cleanup27.cleanup31_crit_edge, label %cleanup27.while.body_crit_edge

cleanup27.while.body_crit_edge:                   ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup27.cleanup31_crit_edge:                    ; preds = %cleanup27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup27.cleanup31_crit_edge, %if.end18.cleanup31_crit_edge, %if.then15.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %or.cond.lcssa = phi i1 [ true, %entry.cleanup31_crit_edge ], [ false, %if.then15.cleanup31_crit_edge ], [ false, %if.end18.cleanup31_crit_edge ], [ true, %cleanup27.cleanup31_crit_edge ]
  ret i1 %or.cond.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wnd_is_used(ptr noundef %wnd, i32 noundef %bit, i32 noundef %bits) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %bit, %add
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %5, 3
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %bit
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %6 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %start_tree, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %entry.use_wnd_crit_edge, label %if.end

entry.use_wnd_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

if.end:                                           ; preds = %entry
  %add3 = add i32 %bit, -1
  %sub5 = add i32 %add3, %bits
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end
  %8 = phi ptr [ %12, %cleanup.i.while.body.i_crit_edge ], [ %7, %if.end ]
  %r.022.i = phi ptr [ %r.2.i, %cleanup.i.while.body.i_crit_edge ], [ null, %if.end ]
  %key.i = getelementptr inbounds %struct.rb_node_key, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub5)
  %cmp.i = icmp ugt i32 %10, %sub5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub5)
  %cmp2.i = icmp ult i32 %10, %sub5
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.if.end7_crit_edge

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %r.2.i = phi ptr [ %r.022.i, %if.then.i ], [ %8, %if.then3.i ]
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %11 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %rb_lookup.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

rb_lookup.exit:                                   ; preds = %cleanup.i
  %tobool.not = icmp eq ptr %r.2.i, null
  br i1 %tobool.not, label %rb_lookup.exit.use_wnd_crit_edge, label %rb_lookup.exit.if.end7_crit_edge

rb_lookup.exit.if.end7_crit_edge:                 ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

rb_lookup.exit.use_wnd_crit_edge:                 ; preds = %rb_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

if.end7:                                          ; preds = %rb_lookup.exit.if.end7_crit_edge, %if.else.i.if.end7_crit_edge
  %retval.2.i91 = phi ptr [ %r.2.i, %rb_lookup.exit.if.end7_crit_edge ], [ %8, %if.else.i.if.end7_crit_edge ]
  %key = getelementptr inbounds %struct.rb_node_key, ptr %retval.2.i91, i32 0, i32 1
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key, align 4
  %key9 = getelementptr inbounds %struct.e_node, ptr %retval.2.i91, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %key9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key9, align 4
  %add10 = add i32 %16, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %bit)
  %cmp11 = icmp ugt i32 %add10, %bit
  br i1 %cmp11, label %if.end7.cleanup50_crit_edge, label %if.end7.use_wnd_crit_edge

if.end7.use_wnd_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_wnd

if.end7.cleanup50_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

use_wnd:                                          ; preds = %if.end7.use_wnd_crit_edge, %rb_lookup.exit.use_wnd_crit_edge, %entry.use_wnd_crit_edge
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %17 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %18)
  %cmp15107 = icmp uge i32 %shr, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits)
  %tobool17.not108 = icmp eq i32 %bits, 0
  %or.cond109 = or i1 %cmp15107, %tobool17.not108
  br i1 %or.cond109, label %use_wnd.cleanup50_crit_edge, label %use_wnd.while.body_crit_edge

use_wnd.while.body_crit_edge:                     ; preds = %use_wnd
  br label %while.body

use_wnd.cleanup50_crit_edge:                      ; preds = %use_wnd
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

while.body:                                       ; preds = %cleanup45.while.body_crit_edge, %use_wnd.while.body_crit_edge
  %19 = phi i32 [ %31, %cleanup45.while.body_crit_edge ], [ %18, %use_wnd.while.body_crit_edge ]
  %bits.addr.0113 = phi i32 [ %sub43, %cleanup45.while.body_crit_edge ], [ %bits, %use_wnd.while.body_crit_edge ]
  %iw.0112 = phi i32 [ %add18, %cleanup45.while.body_crit_edge ], [ %shr, %use_wnd.while.body_crit_edge ]
  %wbit.0111 = phi i32 [ 0, %cleanup45.while.body_crit_edge ], [ %and, %use_wnd.while.body_crit_edge ]
  %wbits.0110 = phi i32 [ %wbits.1, %cleanup45.while.body_crit_edge ], [ %mul, %use_wnd.while.body_crit_edge ]
  %add18 = add nuw i32 %iw.0112, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %19)
  %cmp20 = icmp eq i32 %add18, %19
  br i1 %cmp20, label %if.then24, label %while.body.if.end25_crit_edge, !prof !22

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits_last, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %while.body.if.end25_crit_edge
  %wbits.1 = phi i32 [ %21, %if.then24 ], [ %wbits.0110, %while.body.if.end25_crit_edge ]
  %sub26 = sub i32 %wbits.1, %wbit.0111
  %22 = tail call i32 @llvm.umin.i32(i32 %sub26, i32 %bits.addr.0113)
  %23 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %24, i32 %iw.0112
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool30.not = icmp eq i16 %26, 0
  br i1 %tobool30.not, label %if.end25.cleanup45_crit_edge, label %if.then31

if.end25.cleanup45_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.then31:                                        ; preds = %if.end25
  %call33 = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.0112)
  %cmp.i88 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then31.cleanup50_crit_edge, label %cleanup

if.then31.cleanup50_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

cleanup:                                          ; preds = %if.then31
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call33, i32 0, i32 5
  %27 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data, align 4
  %call37 = tail call zeroext i1 @are_bits_set(ptr noundef %28, i32 noundef %wbit.0111, i32 noundef %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call33, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  br i1 %call37, label %cleanup.cleanup45_crit_edge, label %cleanup.cleanup50_crit_edge

cleanup.cleanup50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup.cleanup45_crit_edge, %if.end25.cleanup45_crit_edge
  %sub43 = sub i32 %bits.addr.0113, %22
  %30 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %31)
  %cmp15 = icmp uge i32 %add18, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub43)
  %tobool17.not = icmp eq i32 %sub43, 0
  %or.cond = select i1 %cmp15, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %cleanup45.cleanup50_crit_edge, label %cleanup45.while.body_crit_edge

cleanup45.while.body_crit_edge:                   ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup45.cleanup50_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup45.cleanup50_crit_edge, %cleanup.cleanup50_crit_edge, %if.then31.cleanup50_crit_edge, %use_wnd.cleanup50_crit_edge, %if.end7.cleanup50_crit_edge
  %retval.0 = phi i1 [ false, %if.end7.cleanup50_crit_edge ], [ true, %use_wnd.cleanup50_crit_edge ], [ false, %cleanup.cleanup50_crit_edge ], [ false, %if.then31.cleanup50_crit_edge ], [ true, %cleanup45.cleanup50_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @are_bits_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wnd_find(ptr noundef %wnd, i32 noundef %to_alloc, i32 noundef %hint, i32 noundef %flags, ptr nocapture noundef writeonly %allocated) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %total_zeroes.i = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  %0 = ptrtoint ptr %total_zeroes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_zeroes.i, align 4
  %zone_end = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %2 = ptrtoint ptr %zone_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_end, align 4
  %zone_bit = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %4 = ptrtoint ptr %zone_bit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zone_bit, align 4
  %sub.neg = sub i32 %1, %3
  %sub1 = add i32 %sub.neg, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %to_alloc)
  %cmp = icmp ult i32 %sub1, %to_alloc
  br i1 %cmp, label %if.then.cleanup385_crit_edge, label %if.end

if.then.cleanup385_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end:                                           ; preds = %if.then
  %extent_max = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %6 = ptrtoint ptr %extent_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extent_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %to_alloc)
  %cmp3 = icmp ult i32 %7, %to_alloc
  br i1 %cmp3, label %if.end.cleanup385_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end.cleanup385_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %extent_max6 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %8 = ptrtoint ptr %extent_max6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extent_max6, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %to_alloc)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end.if.end11_crit_edge
  %to_alloc.addr.0 = phi i32 [ %10, %if.else ], [ %to_alloc, %if.end.if.end11_crit_edge ]
  %zone_bit12 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %11 = ptrtoint ptr %zone_bit12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zone_bit12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %hint)
  %cmp13.not = icmp ugt i32 %12, %hint
  br i1 %cmp13.not, label %if.end11.if.end18_crit_edge, label %land.lhs.true

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %zone_end14 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %13 = ptrtoint ptr %zone_end14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_end14, align 4
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %hint)
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.end11.if.end18_crit_edge
  %hint.addr.0 = phi i32 [ %hint, %if.end11.if.end18_crit_edge ], [ %15, %land.lhs.true ]
  %nbits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 3
  %16 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hint.addr.0, i32 %17)
  %cmp19.not = icmp ult i32 %hint.addr.0, %17
  %spec.select631 = select i1 %cmp19.not, i32 %hint.addr.0, i32 0
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %18 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %start_tree, align 4
  %cmp22 = icmp eq ptr %19, null
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end18
  %uptodated = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %20 = ptrtoint ptr %uptodated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uptodated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp24 = icmp eq i32 %21, 1
  br i1 %cmp24, label %if.then23.cleanup385_crit_edge, label %if.then23.scan_bitmap_crit_edge

if.then23.scan_bitmap_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %scan_bitmap

if.then23.cleanup385_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select631)
  %tobool28.not = icmp eq i32 %spec.select631, 0
  br i1 %tobool28.not, label %if.end27.allocate_biggest_crit_edge, label %if.end27.for.cond.outer_crit_edge

if.end27.for.cond.outer_crit_edge:                ; preds = %if.end27
  br label %for.cond.outer

if.end27.allocate_biggest_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_biggest

for.cond.outer:                                   ; preds = %if.then40.for.cond.outer_crit_edge, %if.end27.for.cond.outer_crit_edge
  %pr.0.ph = phi ptr [ %cr.0, %if.then40.for.cond.outer_crit_edge ], [ null, %if.end27.for.cond.outer_crit_edge ]
  %cr.0.ph = phi ptr [ %25, %if.then40.for.cond.outer_crit_edge ], [ %19, %if.end27.for.cond.outer_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end44.for.cond_crit_edge, %for.cond.outer
  %cr.0 = phi ptr [ %27, %if.end44.for.cond_crit_edge ], [ %cr.0.ph, %for.cond.outer ]
  %key = getelementptr inbounds %struct.rb_node_key, ptr %cr.0, i32 0, i32 1
  %22 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %spec.select631)
  %cmp34 = icmp eq i32 %23, %spec.select631
  br i1 %cmp34, label %for.cond.if.end54_crit_edge, label %if.end36

for.cond.if.end54_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end36:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %spec.select631)
  %cmp39 = icmp ult i32 %23, %spec.select631
  br i1 %cmp39, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end36
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %cr.0, i32 0, i32 1
  %24 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rb_right, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %if.then40.if.end54_crit_edge, label %if.then40.for.cond.outer_crit_edge

if.then40.for.cond.outer_crit_edge:               ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.outer

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end44:                                         ; preds = %if.end36
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %cr.0, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rb_left, align 4
  %tobool45.not = icmp eq ptr %27, null
  br i1 %tobool45.not, label %for.end, label %if.end44.for.cond_crit_edge

if.end44.for.cond_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %if.end44
  %tobool52.not = icmp eq ptr %pr.0.ph, null
  br i1 %tobool52.not, label %for.end.allocate_biggest_crit_edge, label %for.end.if.end54_crit_edge

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

for.end.allocate_biggest_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_biggest

if.end54:                                         ; preds = %for.end.if.end54_crit_edge, %if.then40.if.end54_crit_edge, %for.cond.if.end54_crit_edge
  %e.0774 = phi ptr [ %pr.0.ph, %for.end.if.end54_crit_edge ], [ %cr.0, %for.cond.if.end54_crit_edge ], [ %cr.0, %if.then40.if.end54_crit_edge ]
  %key56 = getelementptr inbounds %struct.rb_node_key, ptr %e.0774, i32 0, i32 1
  %28 = ptrtoint ptr %key56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key56, align 4
  %key57 = getelementptr inbounds %struct.e_node, ptr %e.0774, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %key57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %key57, align 4
  %add = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %spec.select631)
  %cmp58 = icmp ugt i32 %add, %spec.select631
  br i1 %cmp58, label %if.then59, label %if.end54.allocate_biggest_crit_edge

if.end54.allocate_biggest_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_biggest

if.then59:                                        ; preds = %if.end54
  %sub65 = sub i32 %add, %spec.select631
  call void @__sanitizer_cov_trace_cmp4(i32 %sub65, i32 %to_alloc.addr.0)
  %cmp66.not = icmp ult i32 %sub65, %to_alloc.addr.0
  %add68 = add i32 %spec.select631, %to_alloc.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %17)
  %cmp69.not = icmp ugt i32 %add68, %17
  %or.cond = select i1 %cmp66.not, i1 true, i1 %cmp69.not
  br i1 %or.cond, label %if.end71, label %if.then59.found_crit_edge

if.then59.found_crit_edge:                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

if.end71:                                         ; preds = %if.then59
  br i1 %tobool.not, label %if.then74, label %if.end71.allocate_biggest_crit_edge

if.end71.allocate_biggest_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_biggest

if.then74:                                        ; preds = %if.end71
  %32 = tail call i32 @llvm.umin.i32(i32 %sub65, i32 %to_alloc.addr.0)
  %add78 = add i32 %32, %spec.select631
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %17)
  %cmp79.not = icmp ugt i32 %add78, %17
  br i1 %cmp79.not, label %if.then74.allocate_biggest_crit_edge, label %if.then74.found_crit_edge

if.then74.found_crit_edge:                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

if.then74.allocate_biggest_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %allocate_biggest

allocate_biggest:                                 ; preds = %if.then74.allocate_biggest_crit_edge, %if.end71.allocate_biggest_crit_edge, %if.end54.allocate_biggest_crit_edge, %for.end.allocate_biggest_crit_edge, %if.end27.allocate_biggest_crit_edge
  %count_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 9
  %call88 = tail call ptr @rb_first(ptr noundef %count_tree) #8
  %key92 = getelementptr inbounds %struct.rb_node_key, ptr %call88, i32 0, i32 1
  %33 = ptrtoint ptr %key92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key92, align 4
  %extent_max93 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %35 = ptrtoint ptr %extent_max93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %extent_max93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp94.not = icmp eq i32 %34, %36
  br i1 %cmp94.not, label %allocate_biggest.if.end99_crit_edge, label %if.then95

allocate_biggest.if.end99_crit_edge:              ; preds = %allocate_biggest
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then95:                                        ; preds = %allocate_biggest
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %extent_max93 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %extent_max93, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %allocate_biggest.if.end99_crit_edge
  %38 = ptrtoint ptr %key92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %key92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %17)
  %cmp102 = icmp ult i32 %39, %17
  br i1 %cmp102, label %if.then103, label %if.end164

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %to_alloc.addr.0)
  %cmp106.not = icmp ult i32 %39, %to_alloc.addr.0
  br i1 %cmp106.not, label %if.else108, label %if.then103.if.end152_crit_edge

if.then103.if.end152_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.else108:                                       ; preds = %if.then103
  br i1 %tobool.not, label %if.else119, label %if.then111

if.then111:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %to_alloc)
  %cmp114 = icmp ult i32 %39, %to_alloc
  br i1 %cmp114, label %if.then111.cleanup385_crit_edge, label %if.then111.if.end152_crit_edge

if.then111.if.end152_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then111.cleanup385_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.else119:                                       ; preds = %if.else108
  %uptodated120 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %40 = ptrtoint ptr %uptodated120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uptodated120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp121.not = icmp eq i32 %41, -1
  br i1 %cmp121.not, label %if.else125, label %if.else119.if.end152_crit_edge

if.else119.if.end152_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.else125:                                       ; preds = %if.else119
  %42 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %42)
  %start_tree126.sroa.0.0.copyload = load ptr, ptr %start_tree, align 4
  store i32 0, ptr %start_tree, align 4
  %key130 = getelementptr i8, ptr %call88, i32 -4
  %43 = ptrtoint ptr %key130 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %key130, align 4
  %add131 = add i32 %44, %to_alloc.addr.0
  %45 = tail call i32 @llvm.umin.i32(i32 %add131, i32 %17)
  %46 = ptrtoint ptr %key92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key92, align 4
  %add139 = add i32 %47, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %add139, i32 %45)
  %cmp141853 = icmp ult i32 %add139, %45
  br i1 %cmp141853, label %if.else125.for.body_crit_edge, label %if.else125.for.end145_crit_edge

if.else125.for.end145_crit_edge:                  ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

if.else125.for.body_crit_edge:                    ; preds = %if.else125
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else125.for.body_crit_edge
  %op.0854 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ %add139, %if.else125.for.body_crit_edge ]
  %48 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %start_tree, align 4
  %cmp.i = icmp eq ptr %49, null
  br i1 %cmp.i, label %for.body.wnd_is_free.exit_crit_edge, label %for.body.while.body.i.i_crit_edge

for.body.while.body.i.i_crit_edge:                ; preds = %for.body
  br label %while.body.i.i

for.body.wnd_is_free.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_is_free.exit

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %for.body.while.body.i.i_crit_edge
  %50 = phi ptr [ %54, %cleanup.i.i.while.body.i.i_crit_edge ], [ %49, %for.body.while.body.i.i_crit_edge ]
  %r.022.i.i = phi ptr [ %r.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ null, %for.body.while.body.i.i_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.rb_node_key, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %key.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %op.0854)
  %cmp.i.i = icmp ugt i32 %52, %op.0854
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %op.0854)
  %cmp2.i.i = icmp ult i32 %52, %op.0854
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else.i.i.if.end3.i_crit_edge

if.else.i.i.if.end3.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %r.2.i.i = phi ptr [ %r.022.i.i, %if.then.i.i ], [ %50, %if.then3.i.i ]
  %p.2.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %53 = ptrtoint ptr %p.2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p.2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %rb_lookup.exit.i, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

rb_lookup.exit.i:                                 ; preds = %cleanup.i.i
  %tobool.not.i = icmp eq ptr %r.2.i.i, null
  br i1 %tobool.not.i, label %rb_lookup.exit.i.wnd_is_free.exit_crit_edge, label %rb_lookup.exit.i.if.end3.i_crit_edge

rb_lookup.exit.i.if.end3.i_crit_edge:             ; preds = %rb_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

rb_lookup.exit.i.wnd_is_free.exit_crit_edge:      ; preds = %rb_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_is_free.exit

if.end3.i:                                        ; preds = %rb_lookup.exit.i.if.end3.i_crit_edge, %if.else.i.i.if.end3.i_crit_edge
  %retval.2.i27.i = phi ptr [ %r.2.i.i, %rb_lookup.exit.i.if.end3.i_crit_edge ], [ %50, %if.else.i.i.if.end3.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.rb_node_key, ptr %retval.2.i27.i, i32 0, i32 1
  %55 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key.i, align 4
  %key5.i = getelementptr inbounds %struct.e_node, ptr %retval.2.i27.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %key5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %key5.i, align 4
  %add.i = add i32 %58, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %op.0854, i32 %add.i)
  %.not = icmp ult i32 %op.0854, %add.i
  br i1 %.not, label %if.end3.i.for.inc_crit_edge, label %if.end3.i.wnd_is_free.exit_crit_edge

if.end3.i.wnd_is_free.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_is_free.exit

if.end3.i.for.inc_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

wnd_is_free.exit:                                 ; preds = %if.end3.i.wnd_is_free.exit_crit_edge, %rb_lookup.exit.i.wnd_is_free.exit_crit_edge, %for.body.wnd_is_free.exit_crit_edge
  %call11.i = tail call fastcc zeroext i1 @wnd_is_free_hlp(ptr noundef %wnd, i32 noundef %op.0854, i32 noundef 1) #8
  br i1 %call11.i, label %wnd_is_free.exit.for.inc_crit_edge, label %wnd_is_free.exit.for.end145_crit_edge

wnd_is_free.exit.for.end145_crit_edge:            ; preds = %wnd_is_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

wnd_is_free.exit.for.inc_crit_edge:               ; preds = %wnd_is_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %wnd_is_free.exit.for.inc_crit_edge, %if.end3.i.for.inc_crit_edge
  %inc.pre-phi = add nuw i32 %op.0854, 1
  %cmp141 = icmp ult i32 %inc.pre-phi, %45
  br i1 %cmp141, label %for.inc.for.body_crit_edge, label %for.inc.for.end145_crit_edge

for.inc.for.end145_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end145

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end145:                                       ; preds = %for.inc.for.end145_crit_edge, %wnd_is_free.exit.for.end145_crit_edge, %if.else125.for.end145_crit_edge
  %op.0.lcssa = phi i32 [ %add139, %if.else125.for.end145_crit_edge ], [ %op.0854, %wnd_is_free.exit.for.end145_crit_edge ], [ %inc.pre-phi, %for.inc.for.end145_crit_edge ]
  %59 = ptrtoint ptr %start_tree to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %start_tree126.sroa.0.0.copyload, ptr %start_tree, align 4
  %60 = ptrtoint ptr %key130 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %key130, align 4
  %sub149 = sub i32 %op.0.lcssa, %61
  br label %if.end152

if.end152:                                        ; preds = %for.end145, %if.else119.if.end152_crit_edge, %if.then111.if.end152_crit_edge, %if.then103.if.end152_crit_edge
  %to_alloc.addr.3 = phi i32 [ %to_alloc.addr.0, %if.then103.if.end152_crit_edge ], [ %sub149, %for.end145 ], [ %39, %if.then111.if.end152_crit_edge ], [ %39, %if.else119.if.end152_crit_edge ]
  %key154 = getelementptr i8, ptr %call88, i32 -4
  %62 = ptrtoint ptr %key154 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %key154, align 4
  %add157 = add i32 %63, %to_alloc.addr.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add157, i32 %17)
  %cmp158 = icmp ugt i32 %add157, %17
  %sub162 = sub i32 %17, %63
  %spec.select635 = select i1 %cmp158, i32 %sub162, i32 %to_alloc.addr.3
  br label %found

if.end164:                                        ; preds = %if.end99
  %uptodated165 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 11
  %64 = ptrtoint ptr %uptodated165 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %uptodated165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp166 = icmp eq i32 %65, 1
  br i1 %cmp166, label %if.end164.cleanup385_crit_edge, label %if.end168

if.end164.cleanup385_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end168:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  %key172 = getelementptr i8, ptr %call88, i32 -4
  %66 = ptrtoint ptr %key172 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %key172, align 4
  br label %scan_bitmap

scan_bitmap:                                      ; preds = %if.end168, %if.then23.scan_bitmap_crit_edge
  %b_len.0 = phi i32 [ 0, %if.then23.scan_bitmap_crit_edge ], [ %39, %if.end168 ]
  %b_pos.0 = phi i32 [ 0, %if.then23.scan_bitmap_crit_edge ], [ %67, %if.end168 ]
  %68 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wnd, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %s_blocksize_bits, align 4
  %add174 = add i8 %71, 3
  %conv176 = zext i8 %add174 to i32
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 3
  %nwnd195 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %zone_end235 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  br label %Again

Again:                                            ; preds = %if.then341, %scan_bitmap
  %b_len.1 = phi i32 [ %b_len.0, %scan_bitmap ], [ %113, %if.then341 ]
  %b_pos.1 = phi i32 [ %b_pos.0, %scan_bitmap ], [ %spec.select802, %if.then341 ]
  %max_alloc.0 = phi i32 [ %17, %scan_bitmap ], [ %max_alloc.1, %if.then341 ]
  %hint.addr.2 = phi i32 [ %spec.select631, %scan_bitmap ], [ 0, %if.then341 ]
  %shr = lshr i32 %hint.addr.2, %conv176
  %72 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %73, 3
  %sub177 = add i32 %mul, -1
  %and178 = and i32 %sub177, %hint.addr.2
  %74 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_alloc.0, i32 %75)
  %cmp180 = icmp eq i32 %max_alloc.0, %75
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %Again
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %nwnd195 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nwnd195, align 4
  br label %if.end198

if.else184:                                       ; preds = %Again
  %sub186 = add i32 %sub177, %max_alloc.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub186, i32 %max_alloc.0)
  %cmp187 = icmp ugt i32 %sub186, %max_alloc.0
  br i1 %cmp187, label %cond.true191, label %cond.false194, !prof !29

cond.true191:                                     ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #10
  %shr193 = lshr i32 %sub186, %conv176
  br label %if.end198

cond.false194:                                    ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %nwnd195 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nwnd195, align 4
  br label %if.end198

if.end198:                                        ; preds = %cond.false194, %cond.true191, %if.then182
  %nwnd.0 = phi i32 [ %77, %if.then182 ], [ %shr193, %cond.true191 ], [ %79, %cond.false194 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %nwnd.0)
  %cmp200857 = icmp ult i32 %shr, %nwnd.0
  br i1 %cmp200857, label %if.end198.for.body202_crit_edge, label %if.end198.for.end334_crit_edge

if.end198.for.end334_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end334

if.end198.for.body202_crit_edge:                  ; preds = %if.end198
  br label %for.body202

for.body202:                                      ; preds = %for.inc332.for.body202_crit_edge, %if.end198.for.body202_crit_edge
  %wbits.0868 = phi i32 [ %wbits.3, %for.inc332.for.body202_crit_edge ], [ %mul, %if.end198.for.body202_crit_edge ]
  %wpos.0865 = phi i32 [ %wpos.1, %for.inc332.for.body202_crit_edge ], [ %and178, %if.end198.for.body202_crit_edge ]
  %iw.0862 = phi i32 [ %inc333.pre-phi, %for.inc332.for.body202_crit_edge ], [ %shr, %if.end198.for.body202_crit_edge ]
  %fbits_valid.0.off0861 = phi i1 [ %fbits_valid.3.off0, %for.inc332.for.body202_crit_edge ], [ true, %if.end198.for.body202_crit_edge ]
  %prev_tail.0860 = phi i32 [ %prev_tail.10, %for.inc332.for.body202_crit_edge ], [ 0, %if.end198.for.body202_crit_edge ]
  %b_pos.2859 = phi i32 [ %b_pos.24, %for.inc332.for.body202_crit_edge ], [ %b_pos.1, %if.end198.for.body202_crit_edge ]
  %b_len.2858 = phi i32 [ %b_len.24, %for.inc332.for.body202_crit_edge ], [ %b_len.1, %if.end198.for.body202_crit_edge ]
  %shl = shl i32 %iw.0862, %conv176
  %80 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %81, i32 %iw.0862
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool204.not = icmp eq i16 %83, 0
  br i1 %tobool204.not, label %if.then205, label %if.end211

if.then205:                                       ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_tail.0860, i32 %b_len.2858)
  %cmp206 = icmp ugt i32 %prev_tail.0860, %b_len.2858
  %sub209 = sub i32 %shl, %prev_tail.0860
  %84 = tail call i32 @llvm.umax.i32(i32 %prev_tail.0860, i32 %b_len.2858)
  %spec.select789 = select i1 %cmp206, i32 %sub209, i32 %b_pos.2859
  %.pre = add nuw i32 %iw.0862, 1
  br label %for.inc332

if.end211:                                        ; preds = %for.body202
  %add212 = add nuw i32 %iw.0862, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add212, i32 %nwnd.0)
  %cmp213 = icmp eq i32 %add212, %nwnd.0
  br i1 %cmp213, label %if.then221, label %if.end211.if.end234_crit_edge, !prof !22

if.end211.if.end234_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then221:                                       ; preds = %if.end211
  %85 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_alloc.0, i32 %86)
  %cmp223 = icmp eq i32 %max_alloc.0, %86
  br i1 %cmp223, label %if.then225, label %if.else226

if.then225:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bits_last, align 4
  br label %if.end234

if.else226:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  %sub228 = add i32 %wbits.0868, -1
  %and229 = and i32 %sub228, %max_alloc.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  %spec.select636 = select i1 %tobool230.not, i1 %fbits_valid.0.off0861, i1 false
  %spec.select637 = select i1 %tobool230.not, i32 %wbits.0868, i32 %and229
  br label %if.end234

if.end234:                                        ; preds = %if.else226, %if.then225, %if.end211.if.end234_crit_edge
  %fbits_valid.2.off0 = phi i1 [ %fbits_valid.0.off0861, %if.then225 ], [ %spec.select636, %if.else226 ], [ %fbits_valid.0.off0861, %if.end211.if.end234_crit_edge ]
  %wbits.2 = phi i32 [ %88, %if.then225 ], [ %spec.select637, %if.else226 ], [ %wbits.0868, %if.end211.if.end234_crit_edge ]
  %89 = ptrtoint ptr %zone_end235 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %zone_end235, align 4
  %91 = ptrtoint ptr %zone_bit12 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %zone_bit12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp237 = icmp ugt i32 %90, %92
  br i1 %cmp237, label %if.then239, label %if.end234.if.end301_crit_edge

if.end234.if.end301_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end301

if.then239:                                       ; preds = %if.end234
  %add240 = add i32 %wbits.2, %shl
  %93 = tail call i32 @llvm.umax.i32(i32 %92, i32 %shl)
  %94 = tail call i32 @llvm.umin.i32(i32 %90, i32 %add240)
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %93)
  %cmp257.not = icmp ugt i32 %94, %93
  br i1 %cmp257.not, label %if.else260, label %if.then239.if.end301_crit_edge

if.then239.if.end301_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end301

if.else260:                                       ; preds = %if.then239
  %sub261 = sub i32 %93, %shl
  %sub262 = sub i32 %94, %shl
  %conv265 = zext i16 %83 to i32
  %sub266 = sub i32 %sub262, %sub261
  call void @__sanitizer_cov_trace_cmp4(i32 %sub266, i32 %conv265)
  %cmp267 = icmp eq i32 %sub266, %conv265
  br i1 %cmp267, label %if.else260.for.inc332_crit_edge, label %if.end270

if.else260.for.inc332_crit_edge:                  ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

if.end270:                                        ; preds = %if.else260
  %call271 = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.0862)
  %cmp.i640 = icmp ugt ptr %call271, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i640, label %if.end270.for.inc332_crit_edge, label %if.end274

if.end270.for.inc332_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

if.end274:                                        ; preds = %if.end270
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call271, i32 0, i32 5
  %95 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wpos.0865, i32 %sub261)
  %cmp275 = icmp ult i32 %wpos.0865, %sub261
  br i1 %cmp275, label %if.end274.while.body.i_crit_edge, label %if.end274.if.end283_crit_edge

if.end274.if.end283_crit_edge:                    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.end274.while.body.i_crit_edge:                 ; preds = %if.end274
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %if.end274.while.body.i_crit_edge
  %b_len.4 = phi i32 [ %100, %if.end26.i.while.body.i_crit_edge ], [ %b_len.2858, %if.end274.while.body.i_crit_edge ]
  %b_pos.4 = phi i32 [ %b_pos.8, %if.end26.i.while.body.i_crit_edge ], [ %b_pos.2859, %if.end274.while.body.i_crit_edge ]
  %prev_tail.1 = phi i32 [ 0, %if.end26.i.while.body.i_crit_edge ], [ %prev_tail.0860, %if.end274.while.body.i_crit_edge ]
  %wpos.addr.093.i = phi i32 [ %add32.i, %if.end26.i.while.body.i_crit_edge ], [ %wpos.0865, %if.end274.while.body.i_crit_edge ]
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %96, i32 noundef %sub261, i32 noundef %wpos.addr.093.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub261)
  %cmp1.not.i = icmp ult i32 %call.i, %sub261
  br i1 %cmp1.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.4, i32 %prev_tail.1)
  %cmp2.i = icmp ult i32 %b_len.4, %prev_tail.1
  %sub.i = sub i32 %shl, %prev_tail.1
  %97 = tail call i32 @llvm.umax.i32(i32 %b_len.4, i32 %prev_tail.1)
  %spec.select791 = select i1 %cmp2.i, i32 %sub.i, i32 %b_pos.4
  br label %if.end283

if.end4.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %wpos.addr.093.i)
  %cmp5.i = icmp ugt i32 %call.i, %wpos.addr.093.i
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end11.i_crit_edge

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.4, i32 %prev_tail.1)
  %cmp7.i = icmp ult i32 %b_len.4, %prev_tail.1
  %sub9.i = sub i32 %shl, %prev_tail.1
  %98 = tail call i32 @llvm.umax.i32(i32 %b_len.4, i32 %prev_tail.1)
  %spec.select793 = select i1 %cmp7.i, i32 %sub9.i, i32 %b_pos.4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end11.i_crit_edge
  %b_len.7 = phi i32 [ %b_len.4, %if.end4.i.if.end11.i_crit_edge ], [ %98, %if.then6.i ]
  %b_pos.7 = phi i32 [ %b_pos.4, %if.end4.i.if.end11.i_crit_edge ], [ %spec.select793, %if.then6.i ]
  %prev_tail.2 = phi i32 [ %prev_tail.1, %if.end4.i.if.end11.i_crit_edge ], [ 0, %if.then6.i ]
  %wpos.addr.1.i = phi i32 [ %wpos.addr.093.i, %if.end4.i.if.end11.i_crit_edge ], [ %call.i, %if.then6.i ]
  %add.i641 = sub i32 %to_alloc.addr.0, %prev_tail.2
  %sub12.i = add i32 %add.i641, %wpos.addr.1.i
  %99 = tail call i32 @llvm.umin.i32(i32 %sub12.i, i32 %sub261) #8
  %call14.i = tail call i32 @_find_next_bit_be(ptr noundef %96, i32 noundef %99, i32 noundef %wpos.addr.1.i) #8
  %add15.i = sub i32 %call14.i, %wpos.addr.1.i
  %sub16.i = add i32 %add15.i, %prev_tail.2
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.7, i32 %sub16.i)
  %cmp17.i = icmp ult i32 %b_len.7, %sub16.i
  %add19.i = add i32 %wpos.addr.1.i, %shl
  %sub20.i = sub i32 %add19.i, %prev_tail.2
  %100 = tail call i32 @llvm.umax.i32(i32 %b_len.7, i32 %sub16.i)
  %b_pos.8 = select i1 %cmp17.i, i32 %sub20.i, i32 %b_pos.7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16.i, i32 %to_alloc.addr.0)
  %cmp22.not.i = icmp ult i32 %sub16.i, %to_alloc.addr.0
  br i1 %cmp22.not.i, label %if.end26.i, label %wnd_scan.exit

if.end26.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %sub261)
  %cmp27.not.i = icmp ult i32 %call14.i, %sub261
  %add32.i = add nuw i32 %call14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i, i32 %sub261)
  %cmp.i642 = icmp ult i32 %add32.i, %sub261
  %or.cond794 = select i1 %cmp27.not.i, i1 %cmp.i642, i1 false
  br i1 %or.cond794, label %if.end26.i.while.body.i_crit_edge, label %if.end26.i.if.end283_crit_edge

if.end26.i.if.end283_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

wnd_scan.exit:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub20.i)
  %cmp279.not = icmp eq i32 %sub20.i, -1
  br i1 %cmp279.not, label %wnd_scan.exit.if.end283_crit_edge, label %if.then281

wnd_scan.exit.if.end283_crit_edge:                ; preds = %wnd_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.then281:                                       ; preds = %wnd_scan.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @put_bh(ptr noundef %call271)
  br label %found

if.end283:                                        ; preds = %wnd_scan.exit.if.end283_crit_edge, %if.end26.i.if.end283_crit_edge, %if.then.i, %if.end274.if.end283_crit_edge
  %b_len.10 = phi i32 [ %100, %wnd_scan.exit.if.end283_crit_edge ], [ %b_len.2858, %if.end274.if.end283_crit_edge ], [ %97, %if.then.i ], [ %100, %if.end26.i.if.end283_crit_edge ]
  %b_pos.10 = phi i32 [ %b_pos.8, %wnd_scan.exit.if.end283_crit_edge ], [ %b_pos.2859, %if.end274.if.end283_crit_edge ], [ %spec.select791, %if.then.i ], [ %b_pos.8, %if.end26.i.if.end283_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub262, i32 %wbits.2)
  %cmp284 = icmp ult i32 %sub262, %wbits.2
  %101 = tail call i32 @llvm.umax.i32(i32 %sub262, i32 %wpos.0865)
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %wbits.2)
  %cmp92.i643 = icmp ult i32 %101, %wbits.2
  %or.cond803 = select i1 %cmp284, i1 %cmp92.i643, i1 false
  br i1 %or.cond803, label %if.end283.while.body.i647_crit_edge, label %if.end283.if.end299_crit_edge

if.end283.if.end299_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.end283.while.body.i647_crit_edge:              ; preds = %if.end283
  br label %while.body.i647

while.body.i647:                                  ; preds = %cleanup.i682.while.body.i647_crit_edge, %if.end283.while.body.i647_crit_edge
  %b_len.11 = phi i32 [ %104, %cleanup.i682.while.body.i647_crit_edge ], [ %b_len.10, %if.end283.while.body.i647_crit_edge ]
  %b_pos.11 = phi i32 [ %b_pos.15, %cleanup.i682.while.body.i647_crit_edge ], [ %b_pos.10, %if.end283.while.body.i647_crit_edge ]
  %wpos.addr.093.i644 = phi i32 [ %add32.i680, %cleanup.i682.while.body.i647_crit_edge ], [ %101, %if.end283.while.body.i647_crit_edge ]
  %call.i645 = tail call i32 @_find_next_zero_bit_be(ptr noundef %96, i32 noundef %wbits.2, i32 noundef %wpos.addr.093.i644) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i645, i32 %wbits.2)
  %cmp1.not.i646 = icmp ult i32 %call.i645, %wbits.2
  br i1 %cmp1.not.i646, label %if.end4.i654, label %while.body.i647.if.end299_crit_edge

while.body.i647.if.end299_crit_edge:              ; preds = %while.body.i647
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.end4.i654:                                     ; preds = %while.body.i647
  %102 = tail call i32 @llvm.umax.i32(i32 %call.i645, i32 %wpos.addr.093.i644)
  %add.i661 = add i32 %102, %to_alloc.addr.0
  %103 = tail call i32 @llvm.umin.i32(i32 %add.i661, i32 %wbits.2) #8
  %call14.i663 = tail call i32 @_find_next_bit_be(ptr noundef %96, i32 noundef %103, i32 noundef %102) #8
  %add15.i664 = sub i32 %call14.i663, %102
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.11, i32 %add15.i664)
  %cmp17.i666 = icmp ult i32 %b_len.11, %add15.i664
  %add19.i668 = add i32 %102, %shl
  %104 = tail call i32 @llvm.umax.i32(i32 %b_len.11, i32 %add15.i664)
  %b_pos.15 = select i1 %cmp17.i666, i32 %add19.i668, i32 %b_pos.11
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i664, i32 %to_alloc.addr.0)
  %cmp22.not.i671 = icmp ult i32 %add15.i664, %to_alloc.addr.0
  br i1 %cmp22.not.i671, label %if.end26.i677, label %wnd_scan.exit684

if.end26.i677:                                    ; preds = %if.end4.i654
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i663, i32 %wbits.2)
  %cmp27.not.i676 = icmp ult i32 %call14.i663, %wbits.2
  br i1 %cmp27.not.i676, label %cleanup.i682, label %if.end26.i677.if.end299_crit_edge

if.end26.i677.if.end299_crit_edge:                ; preds = %if.end26.i677
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

cleanup.i682:                                     ; preds = %if.end26.i677
  %add32.i680 = add nuw i32 %call14.i663, 1
  %cmp.i681 = icmp ult i32 %add32.i680, %wbits.2
  br i1 %cmp.i681, label %cleanup.i682.while.body.i647_crit_edge, label %cleanup.i682.if.end299_crit_edge

cleanup.i682.if.end299_crit_edge:                 ; preds = %cleanup.i682
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

cleanup.i682.while.body.i647_crit_edge:           ; preds = %cleanup.i682
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i647

wnd_scan.exit684:                                 ; preds = %if.end4.i654
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add19.i668)
  %cmp295.not = icmp eq i32 %add19.i668, -1
  br i1 %cmp295.not, label %wnd_scan.exit684.if.end299_crit_edge, label %if.then297

wnd_scan.exit684.if.end299_crit_edge:             ; preds = %wnd_scan.exit684
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end299

if.then297:                                       ; preds = %wnd_scan.exit684
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @put_bh(ptr noundef %call271)
  br label %found

if.end299:                                        ; preds = %wnd_scan.exit684.if.end299_crit_edge, %cleanup.i682.if.end299_crit_edge, %if.end26.i677.if.end299_crit_edge, %while.body.i647.if.end299_crit_edge, %if.end283.if.end299_crit_edge
  %b_len.17 = phi i32 [ %104, %wnd_scan.exit684.if.end299_crit_edge ], [ %b_len.10, %if.end283.if.end299_crit_edge ], [ %104, %cleanup.i682.if.end299_crit_edge ], [ %b_len.11, %while.body.i647.if.end299_crit_edge ], [ %104, %if.end26.i677.if.end299_crit_edge ]
  %b_pos.17 = phi i32 [ %b_pos.15, %wnd_scan.exit684.if.end299_crit_edge ], [ %b_pos.10, %if.end283.if.end299_crit_edge ], [ %b_pos.15, %cleanup.i682.if.end299_crit_edge ], [ %b_pos.11, %while.body.i647.if.end299_crit_edge ], [ %b_pos.15, %if.end26.i677.if.end299_crit_edge ]
  %prev_tail.6 = phi i32 [ 0, %wnd_scan.exit684.if.end299_crit_edge ], [ 0, %if.end283.if.end299_crit_edge ], [ 0, %cleanup.i682.if.end299_crit_edge ], [ 0, %while.body.i647.if.end299_crit_edge ], [ %add15.i664, %if.end26.i677.if.end299_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call271, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  br label %for.inc332

if.end301:                                        ; preds = %if.then239.if.end301_crit_edge, %if.end234.if.end301_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wpos.0865)
  %tobool302.not = icmp eq i32 %wpos.0865, 0
  %brmerge.not = select i1 %tobool302.not, i1 %fbits_valid.2.off0, i1 false
  %conv309 = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %wbits.2, i32 %conv309)
  %cmp310 = icmp eq i32 %wbits.2, %conv309
  %or.cond796 = select i1 %brmerge.not, i1 %cmp310, i1 false
  br i1 %or.cond796, label %if.then312, label %if.end321

if.then312:                                       ; preds = %if.end301
  %add313 = add i32 %wbits.2, %prev_tail.0860
  call void @__sanitizer_cov_trace_cmp4(i32 %add313, i32 %to_alloc.addr.0)
  %cmp314.not = icmp ult i32 %add313, %to_alloc.addr.0
  br i1 %cmp314.not, label %if.then312.for.inc332_crit_edge, label %if.then316

if.then312.for.inc332_crit_edge:                  ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

if.then316:                                       ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #10
  %sub318 = sub i32 %shl, %prev_tail.0860
  br label %found

if.end321:                                        ; preds = %if.end301
  %call322 = tail call fastcc ptr @wnd_map(ptr noundef %wnd, i32 noundef %iw.0862)
  %cmp.i685 = icmp ugt ptr %call322, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i685, label %if.end321.for.inc332_crit_edge, label %if.end325

if.end321.for.inc332_crit_edge:                   ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

if.end325:                                        ; preds = %if.end321
  %b_data326 = getelementptr inbounds %struct.buffer_head, ptr %call322, i32 0, i32 5
  %106 = ptrtoint ptr %b_data326 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %b_data326, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wpos.0865, i32 %wbits.2)
  %cmp92.i686 = icmp ult i32 %wpos.0865, %wbits.2
  br i1 %cmp92.i686, label %if.end325.while.body.i690_crit_edge, label %if.end325.wnd_scan.exit727_crit_edge

if.end325.wnd_scan.exit727_crit_edge:             ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_scan.exit727

if.end325.while.body.i690_crit_edge:              ; preds = %if.end325
  br label %while.body.i690

while.body.i690:                                  ; preds = %cleanup.i725.while.body.i690_crit_edge, %if.end325.while.body.i690_crit_edge
  %b_len.18 = phi i32 [ %111, %cleanup.i725.while.body.i690_crit_edge ], [ %b_len.2858, %if.end325.while.body.i690_crit_edge ]
  %b_pos.18 = phi i32 [ %b_pos.22, %cleanup.i725.while.body.i690_crit_edge ], [ %b_pos.2859, %if.end325.while.body.i690_crit_edge ]
  %prev_tail.7 = phi i32 [ 0, %cleanup.i725.while.body.i690_crit_edge ], [ %prev_tail.0860, %if.end325.while.body.i690_crit_edge ]
  %wpos.addr.093.i687 = phi i32 [ %add32.i723, %cleanup.i725.while.body.i690_crit_edge ], [ %wpos.0865, %if.end325.while.body.i690_crit_edge ]
  %call.i688 = tail call i32 @_find_next_zero_bit_be(ptr noundef %107, i32 noundef %wbits.2, i32 noundef %wpos.addr.093.i687) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i688, i32 %wbits.2)
  %cmp1.not.i689 = icmp ult i32 %call.i688, %wbits.2
  br i1 %cmp1.not.i689, label %if.end4.i697, label %if.then.i692

if.then.i692:                                     ; preds = %while.body.i690
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.18, i32 %prev_tail.7)
  %cmp2.i691 = icmp ult i32 %b_len.18, %prev_tail.7
  %sub.i693 = sub i32 %shl, %prev_tail.7
  %108 = tail call i32 @llvm.umax.i32(i32 %b_len.18, i32 %prev_tail.7)
  %spec.select798 = select i1 %cmp2.i691, i32 %sub.i693, i32 %b_pos.18
  br label %wnd_scan.exit727

if.end4.i697:                                     ; preds = %while.body.i690
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i688, i32 %wpos.addr.093.i687)
  %cmp5.i696 = icmp ugt i32 %call.i688, %wpos.addr.093.i687
  br i1 %cmp5.i696, label %if.then6.i699, label %if.end4.i697.if.end11.i710_crit_edge

if.end4.i697.if.end11.i710_crit_edge:             ; preds = %if.end4.i697
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i710

if.then6.i699:                                    ; preds = %if.end4.i697
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.18, i32 %prev_tail.7)
  %cmp7.i698 = icmp ult i32 %b_len.18, %prev_tail.7
  %sub9.i700 = sub i32 %shl, %prev_tail.7
  %109 = tail call i32 @llvm.umax.i32(i32 %b_len.18, i32 %prev_tail.7)
  %spec.select800 = select i1 %cmp7.i698, i32 %sub9.i700, i32 %b_pos.18
  br label %if.end11.i710

if.end11.i710:                                    ; preds = %if.then6.i699, %if.end4.i697.if.end11.i710_crit_edge
  %b_len.21 = phi i32 [ %b_len.18, %if.end4.i697.if.end11.i710_crit_edge ], [ %109, %if.then6.i699 ]
  %b_pos.21 = phi i32 [ %b_pos.18, %if.end4.i697.if.end11.i710_crit_edge ], [ %spec.select800, %if.then6.i699 ]
  %prev_tail.8 = phi i32 [ %prev_tail.7, %if.end4.i697.if.end11.i710_crit_edge ], [ 0, %if.then6.i699 ]
  %wpos.addr.1.i703 = phi i32 [ %wpos.addr.093.i687, %if.end4.i697.if.end11.i710_crit_edge ], [ %call.i688, %if.then6.i699 ]
  %add.i704 = sub i32 %to_alloc.addr.0, %prev_tail.8
  %sub12.i705 = add i32 %add.i704, %wpos.addr.1.i703
  %110 = tail call i32 @llvm.umin.i32(i32 %sub12.i705, i32 %wbits.2) #8
  %call14.i706 = tail call i32 @_find_next_bit_be(ptr noundef %107, i32 noundef %110, i32 noundef %wpos.addr.1.i703) #8
  %add15.i707 = sub i32 %call14.i706, %wpos.addr.1.i703
  %sub16.i708 = add i32 %add15.i707, %prev_tail.8
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.21, i32 %sub16.i708)
  %cmp17.i709 = icmp ult i32 %b_len.21, %sub16.i708
  %add19.i711 = add i32 %wpos.addr.1.i703, %shl
  %sub20.i712 = sub i32 %add19.i711, %prev_tail.8
  %111 = tail call i32 @llvm.umax.i32(i32 %b_len.21, i32 %sub16.i708)
  %b_pos.22 = select i1 %cmp17.i709, i32 %sub20.i712, i32 %b_pos.21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub16.i708, i32 %to_alloc.addr.0)
  %cmp22.not.i714 = icmp ult i32 %sub16.i708, %to_alloc.addr.0
  br i1 %cmp22.not.i714, label %if.end26.i720, label %if.end11.i710.wnd_scan.exit727_crit_edge

if.end11.i710.wnd_scan.exit727_crit_edge:         ; preds = %if.end11.i710
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_scan.exit727

if.end26.i720:                                    ; preds = %if.end11.i710
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i706, i32 %wbits.2)
  %cmp27.not.i719 = icmp ult i32 %call14.i706, %wbits.2
  br i1 %cmp27.not.i719, label %cleanup.i725, label %if.end26.i720.wnd_scan.exit727_crit_edge

if.end26.i720.wnd_scan.exit727_crit_edge:         ; preds = %if.end26.i720
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_scan.exit727

cleanup.i725:                                     ; preds = %if.end26.i720
  %add32.i723 = add nuw i32 %call14.i706, 1
  %cmp.i724 = icmp ult i32 %add32.i723, %wbits.2
  br i1 %cmp.i724, label %cleanup.i725.while.body.i690_crit_edge, label %cleanup.i725.wnd_scan.exit727_crit_edge

cleanup.i725.wnd_scan.exit727_crit_edge:          ; preds = %cleanup.i725
  call void @__sanitizer_cov_trace_pc() #10
  br label %wnd_scan.exit727

cleanup.i725.while.body.i690_crit_edge:           ; preds = %cleanup.i725
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i690

wnd_scan.exit727:                                 ; preds = %cleanup.i725.wnd_scan.exit727_crit_edge, %if.end26.i720.wnd_scan.exit727_crit_edge, %if.end11.i710.wnd_scan.exit727_crit_edge, %if.then.i692, %if.end325.wnd_scan.exit727_crit_edge
  %b_len.23 = phi i32 [ %b_len.2858, %if.end325.wnd_scan.exit727_crit_edge ], [ %108, %if.then.i692 ], [ %111, %if.end11.i710.wnd_scan.exit727_crit_edge ], [ %111, %cleanup.i725.wnd_scan.exit727_crit_edge ], [ %111, %if.end26.i720.wnd_scan.exit727_crit_edge ]
  %b_pos.23 = phi i32 [ %b_pos.2859, %if.end325.wnd_scan.exit727_crit_edge ], [ %spec.select798, %if.then.i692 ], [ %b_pos.22, %if.end11.i710.wnd_scan.exit727_crit_edge ], [ %b_pos.22, %cleanup.i725.wnd_scan.exit727_crit_edge ], [ %b_pos.22, %if.end26.i720.wnd_scan.exit727_crit_edge ]
  %prev_tail.9 = phi i32 [ %prev_tail.0860, %if.end325.wnd_scan.exit727_crit_edge ], [ 0, %if.then.i692 ], [ %sub16.i708, %if.end26.i720.wnd_scan.exit727_crit_edge ], [ 0, %cleanup.i725.wnd_scan.exit727_crit_edge ], [ %prev_tail.8, %if.end11.i710.wnd_scan.exit727_crit_edge ]
  %retval.2.i726 = phi i32 [ -1, %if.end325.wnd_scan.exit727_crit_edge ], [ -1, %if.then.i692 ], [ -1, %if.end26.i720.wnd_scan.exit727_crit_edge ], [ -1, %cleanup.i725.wnd_scan.exit727_crit_edge ], [ %sub20.i712, %if.end11.i710.wnd_scan.exit727_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i728 = getelementptr inbounds %struct.buffer_head, ptr %call322, i32 0, i32 11
  %call.i.i.i729 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i728, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i728, i32 1, i32 3, i32 1) #8
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i728, ptr %b_count.i728, i32 1, ptr elementtype(i32) %b_count.i728) #8, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.2.i726)
  %cmp328.not = icmp eq i32 %retval.2.i726, -1
  br i1 %cmp328.not, label %wnd_scan.exit727.for.inc332_crit_edge, label %wnd_scan.exit727.found_crit_edge

wnd_scan.exit727.found_crit_edge:                 ; preds = %wnd_scan.exit727
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

wnd_scan.exit727.for.inc332_crit_edge:            ; preds = %wnd_scan.exit727
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc332

for.inc332:                                       ; preds = %wnd_scan.exit727.for.inc332_crit_edge, %if.end321.for.inc332_crit_edge, %if.then312.for.inc332_crit_edge, %if.end299, %if.end270.for.inc332_crit_edge, %if.else260.for.inc332_crit_edge, %if.then205
  %inc333.pre-phi = phi i32 [ %.pre, %if.then205 ], [ %add212, %if.end321.for.inc332_crit_edge ], [ %add212, %if.then312.for.inc332_crit_edge ], [ %add212, %if.end270.for.inc332_crit_edge ], [ %add212, %if.else260.for.inc332_crit_edge ], [ %add212, %wnd_scan.exit727.for.inc332_crit_edge ], [ %add212, %if.end299 ]
  %b_len.24 = phi i32 [ %84, %if.then205 ], [ %b_len.2858, %if.end321.for.inc332_crit_edge ], [ %b_len.2858, %if.then312.for.inc332_crit_edge ], [ %b_len.2858, %if.end270.for.inc332_crit_edge ], [ %b_len.2858, %if.else260.for.inc332_crit_edge ], [ %b_len.23, %wnd_scan.exit727.for.inc332_crit_edge ], [ %b_len.17, %if.end299 ]
  %b_pos.24 = phi i32 [ %spec.select789, %if.then205 ], [ %b_pos.2859, %if.end321.for.inc332_crit_edge ], [ %b_pos.2859, %if.then312.for.inc332_crit_edge ], [ %b_pos.2859, %if.end270.for.inc332_crit_edge ], [ %b_pos.2859, %if.else260.for.inc332_crit_edge ], [ %b_pos.23, %wnd_scan.exit727.for.inc332_crit_edge ], [ %b_pos.17, %if.end299 ]
  %prev_tail.10 = phi i32 [ 0, %if.then205 ], [ 0, %if.end321.for.inc332_crit_edge ], [ %add313, %if.then312.for.inc332_crit_edge ], [ 0, %if.end270.for.inc332_crit_edge ], [ 0, %if.else260.for.inc332_crit_edge ], [ %prev_tail.9, %wnd_scan.exit727.for.inc332_crit_edge ], [ %prev_tail.6, %if.end299 ]
  %fbits_valid.3.off0 = phi i1 [ %fbits_valid.0.off0861, %if.then205 ], [ %fbits_valid.2.off0, %if.end321.for.inc332_crit_edge ], [ true, %if.then312.for.inc332_crit_edge ], [ %fbits_valid.2.off0, %if.end270.for.inc332_crit_edge ], [ %fbits_valid.2.off0, %if.else260.for.inc332_crit_edge ], [ %fbits_valid.2.off0, %wnd_scan.exit727.for.inc332_crit_edge ], [ %fbits_valid.2.off0, %if.end299 ]
  %wpos.1 = phi i32 [ 0, %if.then205 ], [ 0, %if.end321.for.inc332_crit_edge ], [ 0, %if.then312.for.inc332_crit_edge ], [ 0, %if.end270.for.inc332_crit_edge ], [ 0, %if.else260.for.inc332_crit_edge ], [ %wpos.0865, %wnd_scan.exit727.for.inc332_crit_edge ], [ 0, %if.end299 ]
  %wbits.3 = phi i32 [ %wbits.0868, %if.then205 ], [ %wbits.2, %if.end321.for.inc332_crit_edge ], [ %wbits.2, %if.then312.for.inc332_crit_edge ], [ %wbits.2, %if.end270.for.inc332_crit_edge ], [ %wbits.2, %if.else260.for.inc332_crit_edge ], [ %wbits.2, %wnd_scan.exit727.for.inc332_crit_edge ], [ %wbits.2, %if.end299 ]
  %exitcond.not = icmp eq i32 %inc333.pre-phi, %nwnd.0
  br i1 %exitcond.not, label %for.inc332.for.end334_crit_edge, label %for.inc332.for.body202_crit_edge

for.inc332.for.body202_crit_edge:                 ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body202

for.inc332.for.end334_crit_edge:                  ; preds = %for.inc332
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end334

for.end334:                                       ; preds = %for.inc332.for.end334_crit_edge, %if.end198.for.end334_crit_edge
  %b_len.2.lcssa = phi i32 [ %b_len.1, %if.end198.for.end334_crit_edge ], [ %b_len.24, %for.inc332.for.end334_crit_edge ]
  %b_pos.2.lcssa = phi i32 [ %b_pos.1, %if.end198.for.end334_crit_edge ], [ %b_pos.24, %for.inc332.for.end334_crit_edge ]
  %prev_tail.0.lcssa = phi i32 [ 0, %if.end198.for.end334_crit_edge ], [ %prev_tail.10, %for.inc332.for.end334_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %b_len.2.lcssa, i32 %prev_tail.0.lcssa)
  %cmp335 = icmp ult i32 %b_len.2.lcssa, %prev_tail.0.lcssa
  %sub338 = sub i32 %max_alloc.0, %prev_tail.0.lcssa
  %113 = tail call i32 @llvm.umax.i32(i32 %b_len.2.lcssa, i32 %prev_tail.0.lcssa)
  %spec.select802 = select i1 %cmp335, i32 %sub338, i32 %b_pos.2.lcssa
  %tobool340.not = icmp eq i32 %hint.addr.2, 0
  br i1 %tobool340.not, label %if.end357, label %if.then341

if.then341:                                       ; preds = %for.end334
  call void @__sanitizer_cov_trace_pc() #10
  %add342 = add i32 %hint.addr.2, %to_alloc.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add342, i32 %hint.addr.2)
  %cmp343.not = icmp uge i32 %add342, %hint.addr.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add342, i32 %max_alloc.0)
  %cmp352 = icmp ult i32 %add342, %max_alloc.0
  %or.cond638 = select i1 %cmp343.not, i1 %cmp352, i1 false
  %max_alloc.1 = select i1 %or.cond638, i32 %add342, i32 %max_alloc.0, !prof !30
  br label %Again

if.end357:                                        ; preds = %for.end334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool358.not = icmp eq i32 %113, 0
  br i1 %tobool358.not, label %if.end357.cleanup385_crit_edge, label %if.end360

if.end357.cleanup385_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end360:                                        ; preds = %if.end357
  %extent_max361 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %114 = ptrtoint ptr %extent_max361 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %extent_max361, align 4
  br i1 %tobool.not, label %if.end360.found_crit_edge, label %if.end360.cleanup385_crit_edge

if.end360.cleanup385_crit_edge:                   ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.end360.found_crit_edge:                        ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

found:                                            ; preds = %if.end360.found_crit_edge, %wnd_scan.exit727.found_crit_edge, %if.then316, %if.then297, %if.then281, %if.end152, %if.then74.found_crit_edge, %if.then59.found_crit_edge
  %fnd.1 = phi i32 [ %sub318, %if.then316 ], [ %sub20.i, %if.then281 ], [ %add19.i668, %if.then297 ], [ %63, %if.end152 ], [ %spec.select802, %if.end360.found_crit_edge ], [ %spec.select631, %if.then59.found_crit_edge ], [ %spec.select631, %if.then74.found_crit_edge ], [ %retval.2.i726, %wnd_scan.exit727.found_crit_edge ]
  %to_alloc.addr.5 = phi i32 [ %to_alloc.addr.0, %if.then316 ], [ %to_alloc.addr.0, %if.then281 ], [ %to_alloc.addr.0, %if.then297 ], [ %spec.select635, %if.end152 ], [ %113, %if.end360.found_crit_edge ], [ %to_alloc.addr.0, %if.then59.found_crit_edge ], [ %32, %if.then74.found_crit_edge ], [ %to_alloc.addr.0, %wnd_scan.exit727.found_crit_edge ]
  %and366 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and366)
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %if.else373, label %if.then368

if.then368:                                       ; preds = %found
  %call369 = tail call i32 @wnd_set_used(ptr noundef %wnd, i32 noundef %fnd.1, i32 noundef %to_alloc.addr.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.then368.if.end384_crit_edge, label %if.then368.cleanup385_crit_edge

if.then368.cleanup385_crit_edge:                  ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup385

if.then368.if.end384_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end384

if.else373:                                       ; preds = %found
  %extent_max374 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 13
  %115 = ptrtoint ptr %extent_max374 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %extent_max374, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp375.not = icmp ne i32 %116, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %to_alloc.addr.5, i32 %116)
  %cmp379 = icmp ugt i32 %to_alloc.addr.5, %116
  %or.cond639 = select i1 %cmp375.not, i1 %cmp379, i1 false
  br i1 %or.cond639, label %if.then381, label %if.else373.if.end384_crit_edge

if.else373.if.end384_crit_edge:                   ; preds = %if.else373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end384

if.then381:                                       ; preds = %if.else373
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %extent_max374 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %to_alloc.addr.5, ptr %extent_max374, align 4
  br label %if.end384

if.end384:                                        ; preds = %if.then381, %if.else373.if.end384_crit_edge, %if.then368.if.end384_crit_edge
  %118 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %fnd.1, ptr %allocated, align 4
  br label %cleanup385

cleanup385:                                       ; preds = %if.end384, %if.then368.cleanup385_crit_edge, %if.end360.cleanup385_crit_edge, %if.end357.cleanup385_crit_edge, %if.end164.cleanup385_crit_edge, %if.then111.cleanup385_crit_edge, %if.then23.cleanup385_crit_edge, %if.end.cleanup385_crit_edge, %if.then.cleanup385_crit_edge
  %retval.0 = phi i32 [ %to_alloc.addr.5, %if.end384 ], [ 0, %if.then368.cleanup385_crit_edge ], [ 0, %if.end360.cleanup385_crit_edge ], [ 0, %if.end357.cleanup385_crit_edge ], [ 0, %if.end164.cleanup385_crit_edge ], [ 0, %if.then111.cleanup385_crit_edge ], [ 0, %if.then23.cleanup385_crit_edge ], [ 0, %if.then.cleanup385_crit_edge ], [ 0, %if.end.cleanup385_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wnd_extend(ptr noundef %wnd, i32 noundef %new_bits) local_unnamed_addr #2 align 64 {
entry:
  %lbo = alloca i64, align 8
  %bytes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wnd, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %5, 3
  %nbits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 3
  %6 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_bits)
  %cmp.not = icmp ult i32 %7, %new_bits
  br i1 %cmp.not, label %if.end, label %entry.cleanup78_crit_edge

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end:                                           ; preds = %entry
  %add.i = add i32 %new_bits, 7
  %shr.i = lshr i32 %add.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add1.i, 1073741816
  %conv = zext i32 %and.i to i64
  %conv.i = zext i32 %5 to i64
  %add.i161 = add nsw i64 %conv, -1
  %sub.i = add nsw i64 %add.i161, %conv.i
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %9 to i64
  %shr.i162 = lshr i64 %sub.i, %sh_prom.i
  %conv3 = trunc i64 %shr.i162 to i32
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %new_bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 %mul, i32 %and
  %nwnd = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 6
  %10 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv3)
  %cmp6.not = icmp eq i32 %11, %conv3
  br i1 %cmp6.not, label %if.end.if.end27_crit_edge, label %if.end8.i

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end8.i:                                        ; preds = %if.end
  %mul9 = shl i32 %conv3, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul9, i32 noundef 3136) #11
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.end8.i.cleanup78_crit_edge, label %if.end13

if.end8.i.cleanup78_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end13:                                         ; preds = %if.end8.i
  %free_bits = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %12 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free_bits, align 4
  %cmp14.not = icmp eq ptr %call9.i, %13
  br i1 %cmp14.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nwnd, align 4
  %mul19 = shl i32 %15, 1
  %16 = call ptr @memcpy(ptr %call9.i, ptr %13, i32 %mul19)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %17 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nwnd, align 4
  %add.ptr = getelementptr i16, ptr %call9.i, i32 %18
  %sub23 = sub i32 %conv3, %18
  %mul24 = shl i32 %sub23, 1
  %19 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul24)
  %20 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_bits, align 4
  tail call void @kfree(ptr noundef %21) #8
  %22 = ptrtoint ptr %free_bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %free_bits, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.end.if.end27_crit_edge
  %sub28 = sub i32 %new_bits, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub28)
  %tobool32.not180 = icmp eq i32 %sub28, 0
  br i1 %tobool32.not180, label %if.end27.for.end_crit_edge, label %for.body.lr.ph

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end27
  %23 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv31 = zext i8 %24 to i32
  %add = add nuw nsw i32 %conv31, 3
  %shr = lshr i32 %7, %add
  %and30 = and i32 %sub, %7
  %run = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 2
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %free_bits60 = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 5
  %total_zeroes = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %iw.0184 = phi i32 [ %shr, %for.body.lr.ph ], [ %add33, %cleanup.for.body_crit_edge ]
  %bits.0183 = phi i32 [ %sub28, %for.body.lr.ph ], [ %51, %cleanup.for.body_crit_edge ]
  %b0.0182 = phi i32 [ %and30, %for.body.lr.ph ], [ 0, %cleanup.for.body_crit_edge ]
  %wbits.0181 = phi i32 [ %mul, %for.body.lr.ph ], [ %spec.select158, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lbo) #8
  %25 = ptrtoint ptr %lbo to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %lbo, align 8, !annotation !23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes) #8
  %26 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %bytes, align 8, !annotation !23
  %add33 = add i32 %iw.0184, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %conv3)
  %cmp34 = icmp eq i32 %add33, %conv3
  %spec.select158 = select i1 %cmp34, i32 %spec.select, i32 %wbits.0181
  %add38 = add i32 %bits.0183, %b0.0182
  %conv42 = zext i32 %iw.0184 to i64
  %mul44 = mul nuw i64 %conv42, %conv.i
  %call45 = call i32 @ntfs_vbo_to_lbo(ptr noundef %3, ptr noundef %run, i64 noundef %mul44, ptr noundef nonnull %lbo, ptr noundef nonnull %bytes) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %cleanup.thread176

cleanup.thread176:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lbo) #8
  br label %for.end

if.end48:                                         ; preds = %for.body
  %27 = ptrtoint ptr %lbo to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %lbo, align 8
  %29 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom = zext i8 %30 to i64
  %shr51 = lshr i64 %28, %sh_prom
  %31 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_bdev.i.i, align 4
  %33 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %32, i64 noundef %shr51, i32 noundef %34, i32 noundef 8) #8
  %tobool.not.i163 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i163, label %cleanup.thread, label %if.end55

cleanup.thread:                                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i165 = zext i8 %36 to i64
  %shl.i = shl i64 %shr51, %sh_prom.i165
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %1, ptr noundef nonnull @.str.4, i64 noundef %shl.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lbo) #8
  br label %cleanup78

if.end55:                                         ; preds = %if.end48
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 366) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end55.if.then.i167_crit_edge

if.end55.if.then.i167_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i167

trylock_buffer.exit.i:                            ; preds = %if.end55
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #8
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 4, ptr nonnull elementtype(i32) %call.i.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %40 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i167_crit_edge

trylock_buffer.exit.i.if.then.i167_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i167

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i167:                                     ; preds = %trylock_buffer.exit.i.if.then.i167_crit_edge, %if.end55.if.then.i167_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call.i.i) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i167, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data, align 4
  %sub57 = sub i32 %mul, %b0.0182
  call void @__bitmap_clear(ptr noundef %42, i32 noundef %b0.0182, i32 noundef %sub57) #8
  %call58 = call i32 @__bitmap_weight(ptr noundef %42, i32 noundef %spec.select158) #8
  %sub59 = sub i32 %spec.select158, %call58
  %43 = ptrtoint ptr %free_bits60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %free_bits60, align 4
  %arrayidx = getelementptr i16, ptr %44, i32 %iw.0184
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx, align 2
  %conv61 = zext i16 %46 to i32
  %sub62 = sub i32 %sub59, %conv61
  %47 = ptrtoint ptr %total_zeroes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total_zeroes, align 4
  %add63 = add i32 %sub62, %48
  store i32 %add63, ptr %total_zeroes, align 4
  %conv64 = trunc i32 %sub59 to i16
  store i16 %conv64, ptr %arrayidx, align 2
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i159, label %lock_buffer.exit.cleanup_crit_edge

lock_buffer.exit.cleanup_crit_edge:               ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i159:                                     ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i159, %lock_buffer.exit.cleanup_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #8
  call void @unlock_buffer(ptr noundef nonnull %call.i.i) #8
  %51 = call i32 @llvm.usub.sat.i32(i32 %add38, i32 %spec.select158)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lbo) #8
  %tobool32.not.not = icmp ugt i32 %add38, %spec.select158
  br i1 %tobool32.not.not, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread176, %if.end27.for.end_crit_edge
  %52 = ptrtoint ptr %nbits to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %new_bits, ptr %nbits, align 4
  %53 = ptrtoint ptr %nwnd to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv3, ptr %nwnd, align 4
  %bits_last = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 7
  %54 = ptrtoint ptr %bits_last to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select, ptr %bits_last, align 4
  call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %7, i32 noundef %sub28, i1 noundef zeroext false)
  br label %cleanup78

cleanup78:                                        ; preds = %for.end, %cleanup.thread, %if.end8.i.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup78_crit_edge ], [ -12, %if.end8.i.cleanup78_crit_edge ], [ -5, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_vbo_to_lbo(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wnd_zone_set(ptr noundef %wnd, i32 noundef %lcn, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_end = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 15
  %0 = ptrtoint ptr %zone_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_end, align 4
  %zone_bit = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 14
  %2 = ptrtoint ptr %zone_bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zone_bit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp eq i32 %1, %3
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %1, %3
  tail call fastcc void @wnd_add_free_ext(ptr noundef %wnd, i32 noundef %3, i32 noundef %sub, i1 noundef zeroext false)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %start_tree = getelementptr inbounds %struct.wnd_bitmap, ptr %wnd, i32 0, i32 8
  %4 = ptrtoint ptr %start_tree to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %start_tree, align 4
  %cmp = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %do.end.if.end4_crit_edge, label %if.then3

do.end.if.end4_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wnd_remove_free_ext(ptr noundef %wnd, i32 noundef %lcn, i32 noundef %len)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.end.if.end4_crit_edge
  %6 = ptrtoint ptr %zone_bit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %lcn, ptr %zone_bit, align 4
  %add = add i32 %len, %lcn
  %7 = ptrtoint ptr %zone_end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %zone_end, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_trim_fs(ptr noundef %sbi, ptr nocapture noundef %range) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi, align 8
  %used = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %mul = shl i32 %3, 3
  %minlen2 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 2
  %4 = ptrtoint ptr %minlen2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %minlen2, align 8
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %6 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %7 to i64
  %add.i = add i64 %5, %conv.i
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %8 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %9 to i64
  %shr.i148 = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i148 to i32
  %10 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %range, align 8
  %add.i151 = add i64 %11, %conv.i
  %shr.i154 = lshr i64 %add.i151, %sh_prom.i
  %conv2.i155 = trunc i64 %shr.i154 to i32
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv, 3
  %shr = lshr i32 %conv2.i155, %add
  %sub = add i32 %mul, -1
  %and = and i32 %sub, %conv2.i155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %tobool.not = icmp eq i32 %conv2.i, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %conv2.i
  %len4 = getelementptr inbounds %struct.fstrim_range, ptr %range, i32 0, i32 1
  %14 = ptrtoint ptr %len4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %cmp = icmp eq i64 %15, -1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nbits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 3
  %16 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nbits, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i158 = add i64 %add.i151, %15
  %shr.i161 = lshr i64 %add.i158, %sh_prom.i
  %conv2.i162 = trunc i64 %shr.i161 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %lcn_to.0 = phi i32 [ %17, %if.then6 ], [ %conv2.i162, %if.else ]
  %rw_lock = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 1
  tail call void @down_read_nested(ptr noundef %rw_lock, i32 noundef 0) #8
  %nbits12 = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 3
  %18 = ptrtoint ptr %nbits12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbits12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %19)
  %cmp13204 = icmp ult i32 %shr, %19
  br i1 %cmp13204, label %for.body.lr.ph, label %if.end11.for.end64_crit_edge

if.end11.for.end64_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

for.body.lr.ph:                                   ; preds = %if.end11
  %free_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 5
  %nwnd = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 6
  %bits_last = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 28, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc62.for.body_crit_edge, %for.body.lr.ph
  %wbit.0210 = phi i32 [ %and, %for.body.lr.ph ], [ 0, %for.inc62.for.body_crit_edge ]
  %iw.0209 = phi i32 [ %shr, %for.body.lr.ph ], [ %.pre, %for.inc62.for.body_crit_edge ]
  %done.0208 = phi i32 [ 0, %for.body.lr.ph ], [ %done.4.ph, %for.inc62.for.body_crit_edge ]
  %lcn.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %lcn.4.ph, %for.inc62.for.body_crit_edge ]
  %len.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %len.3.ph, %for.inc62.for.body_crit_edge ]
  %wbits.0205 = phi i32 [ %mul, %for.body.lr.ph ], [ %wbits.3.ph, %for.inc62.for.body_crit_edge ]
  %mul15 = mul i32 %iw.0209, %wbits.0205
  call void @__sanitizer_cov_trace_cmp4(i32 %lcn_to.0, i32 %mul15)
  %cmp16 = icmp ult i32 %lcn_to.0, %mul15
  br i1 %cmp16, label %for.body.for.end64_crit_edge, label %if.end19

for.body.for.end64_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

if.end19:                                         ; preds = %for.body
  %20 = ptrtoint ptr %free_bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_bits, align 4
  %arrayidx = getelementptr i16, ptr %21, i32 %iw.0209
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool20.not = icmp eq i16 %23, 0
  %.pre = add nuw i32 %iw.0209, 1
  br i1 %tobool20.not, label %if.end19.for.inc62_crit_edge, label %if.end22

if.end19.for.inc62_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62

if.end22:                                         ; preds = %if.end19
  %24 = ptrtoint ptr %nwnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nwnd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %25)
  %cmp24 = icmp eq i32 %.pre, %25
  br i1 %cmp24, label %if.then26, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %bits_last to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bits_last, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %wbits.1 = phi i32 [ %27, %if.then26 ], [ %wbits.0205, %if.end22.if.end27_crit_edge ]
  %add28 = add i32 %wbits.1, %mul15
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %lcn_to.0)
  %cmp29 = icmp ugt i32 %add28, %lcn_to.0
  %sub32 = sub i32 %lcn_to.0, %mul15
  %spec.select = select i1 %cmp29, i32 %sub32, i32 %wbits.1
  %call34 = tail call fastcc ptr @wnd_map(ptr noundef %used, i32 noundef %iw.0209)
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call34 to i32
  br label %for.end64

if.end38:                                         ; preds = %if.end27
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call34, i32 0, i32 5
  %29 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wbit.0210, i32 %spec.select)
  %cmp40197 = icmp ult i32 %wbit.0210, %spec.select
  br i1 %cmp40197, label %if.end38.for.body42_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end38.for.body42_crit_edge:                    ; preds = %if.end38
  br label %for.body42

for.body42:                                       ; preds = %for.inc.for.body42_crit_edge, %if.end38.for.body42_crit_edge
  %wbit.1201 = phi i32 [ %inc, %for.inc.for.body42_crit_edge ], [ %wbit.0210, %if.end38.for.body42_crit_edge ]
  %done.1200 = phi i32 [ %done.3, %for.inc.for.body42_crit_edge ], [ %done.0208, %if.end38.for.body42_crit_edge ]
  %lcn.1199 = phi i32 [ %lcn.3, %for.inc.for.body42_crit_edge ], [ %lcn.0207, %if.end38.for.body42_crit_edge ]
  %len.1198 = phi i32 [ %len.2, %for.inc.for.body42_crit_edge ], [ %len.0206, %if.end38.for.body42_crit_edge ]
  %div3.i = lshr i32 %wbit.1201, 5
  %arrayidx.i = getelementptr i32, ptr %30, i32 %div3.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %wbit.1201, 31
  %33 = shl nuw i32 1, %and.i
  %34 = and i32 %32, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool44.not = icmp eq i32 %34, 0
  br i1 %tobool44.not, label %if.then45, label %if.end51

if.then45:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1198)
  %tobool46.not = icmp eq i32 %len.1198, 0
  %add48 = add i32 %wbit.1201, %mul15
  %spec.select145 = select i1 %tobool46.not, i32 %add48, i32 %lcn.1199
  %add50 = add i32 %len.1198, 1
  br label %for.inc

if.end51:                                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1198, i32 %spec.store.select)
  %cmp52.not = icmp ult i32 %len.1198, %spec.store.select
  br i1 %cmp52.not, label %if.end51.for.inc_crit_edge, label %if.then54

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then54:                                        ; preds = %if.end51
  %call55 = tail call i32 @ntfs_discard(ptr noundef %sbi, i32 noundef %lcn.1199, i32 noundef %len.1198) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then54.cleanup78_crit_edge

if.then54.cleanup78_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end58:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %add59 = add i32 %done.1200, %len.1198
  br label %for.inc

for.inc:                                          ; preds = %if.end58, %if.end51.for.inc_crit_edge, %if.then45
  %len.2 = phi i32 [ %add50, %if.then45 ], [ 0, %if.end58 ], [ 0, %if.end51.for.inc_crit_edge ]
  %lcn.3 = phi i32 [ %spec.select145, %if.then45 ], [ %lcn.1199, %if.end58 ], [ %lcn.1199, %if.end51.for.inc_crit_edge ]
  %done.3 = phi i32 [ %done.1200, %if.then45 ], [ %add59, %if.end58 ], [ %done.1200, %if.end51.for.inc_crit_edge ]
  %inc = add nuw i32 %wbit.1201, 1
  %cmp40 = icmp ult i32 %inc, %spec.select
  br i1 %cmp40, label %for.inc.for.body42_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  %len.1.lcssa = phi i32 [ %len.0206, %if.end38.for.end_crit_edge ], [ %len.2, %for.inc.for.end_crit_edge ]
  %lcn.1.lcssa = phi i32 [ %lcn.0207, %if.end38.for.end_crit_edge ], [ %lcn.3, %for.inc.for.end_crit_edge ]
  %done.1.lcssa = phi i32 [ %done.0208, %if.end38.for.end_crit_edge ], [ %done.3, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call34, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !26
  br label %for.inc62

for.inc62:                                        ; preds = %for.end, %if.end19.for.inc62_crit_edge
  %wbits.3.ph = phi i32 [ %spec.select, %for.end ], [ %wbits.0205, %if.end19.for.inc62_crit_edge ]
  %len.3.ph = phi i32 [ %len.1.lcssa, %for.end ], [ %len.0206, %if.end19.for.inc62_crit_edge ]
  %lcn.4.ph = phi i32 [ %lcn.1.lcssa, %for.end ], [ %lcn.0207, %if.end19.for.inc62_crit_edge ]
  %done.4.ph = phi i32 [ %done.1.lcssa, %for.end ], [ %done.0208, %if.end19.for.inc62_crit_edge ]
  %36 = ptrtoint ptr %nbits12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nbits12, align 4
  %cmp13 = icmp ult i32 %.pre, %37
  br i1 %cmp13, label %for.inc62.for.body_crit_edge, label %for.inc62.for.end64_crit_edge

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end64

for.inc62.for.body_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %if.then36, %for.body.for.end64_crit_edge, %if.end11.for.end64_crit_edge
  %len.0195 = phi i32 [ %len.0206, %if.then36 ], [ 0, %if.end11.for.end64_crit_edge ], [ %len.3.ph, %for.inc62.for.end64_crit_edge ], [ %len.0206, %for.body.for.end64_crit_edge ]
  %lcn.0192 = phi i32 [ %lcn.0207, %if.then36 ], [ 0, %if.end11.for.end64_crit_edge ], [ %lcn.4.ph, %for.inc62.for.end64_crit_edge ], [ %lcn.0207, %for.body.for.end64_crit_edge ]
  %done.0189 = phi i32 [ %done.0208, %if.then36 ], [ 0, %if.end11.for.end64_crit_edge ], [ %done.4.ph, %for.inc62.for.end64_crit_edge ], [ %done.0208, %for.body.for.end64_crit_edge ]
  %err.5 = phi i32 [ %28, %if.then36 ], [ 0, %if.end11.for.end64_crit_edge ], [ 0, %for.body.for.end64_crit_edge ], [ 0, %for.inc62.for.end64_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0195, i32 %spec.store.select)
  %cmp65.not = icmp ult i32 %len.0195, %spec.store.select
  br i1 %cmp65.not, label %for.end64.cleanup78_crit_edge, label %if.then67

for.end64.cleanup78_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.then67:                                        ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #10
  %call68 = tail call i32 @ntfs_discard(ptr noundef %sbi, i32 noundef %lcn.0192, i32 noundef %len.0195) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  %add72 = select i1 %tobool69.not, i32 %len.0195, i32 0
  %spec.select147 = add i32 %add72, %done.0189
  br label %cleanup78

cleanup78:                                        ; preds = %if.then67, %for.end64.cleanup78_crit_edge, %if.then54.cleanup78_crit_edge
  %err.6 = phi i32 [ %err.5, %for.end64.cleanup78_crit_edge ], [ %call68, %if.then67 ], [ %call55, %if.then54.cleanup78_crit_edge ]
  %done.6 = phi i32 [ %done.0189, %for.end64.cleanup78_crit_edge ], [ %spec.select147, %if.then67 ], [ %done.1200, %if.then54.cleanup78_crit_edge ]
  %conv74 = zext i32 %done.6 to i64
  %38 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom = zext i8 %39 to i64
  %shl = shl i64 %conv74, %sh_prom
  %40 = ptrtoint ptr %len4 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %shl, ptr %len4, align 8
  tail call void @up_read(ptr noundef %rw_lock) #8
  ret i32 %err.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_discard(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @are_bits_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/bitmap.c", i32 44, i32 21}
!2 = !{ptr @wnd_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/bitmap.c", i32 657, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ntfs_enode_cachep, !6, !"ntfs_enode_cachep", i1 false, i1 false}
!6 = !{!"../fs/ntfs3/bitmap.c", i32 39, i32 27}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ntfs3/bitmap.c", i32 221, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs3/ntfs_fs.h", i32 1018, i32 2}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"auto-init"}
!24 = !{i8 0, i8 2}
!25 = !{i64 2153824334}
!26 = !{i64 2148697419, i64 2148697445, i64 2148697474, i64 2148697508, i64 2148697539, i64 2148697562}
!27 = !{i64 2148703812, i64 2148703844, i64 2148703873, i64 2148703907, i64 2148703938, i64 2148703961}
!28 = !{i64 2148792917}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 2000, i32 2002}
