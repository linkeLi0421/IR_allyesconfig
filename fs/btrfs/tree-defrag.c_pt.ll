; ModuleID = '/llk/IR_all_yes/fs/btrfs/tree-defrag.c_pt.bc'
source_filename = "../fs/btrfs/tree-defrag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_root = type { %struct.rb_node, ptr, ptr, ptr, ptr, i32, %struct.btrfs_root_item, %struct.btrfs_key, ptr, %struct.extent_io_tree, %struct.mutex, %struct.spinlock, ptr, %struct.mutex, %struct.wait_queue_head, [2 x %struct.wait_queue_head], [2 x %struct.list_head], %struct.atomic_t, [2 x %struct.atomic_t], %struct.atomic_t, i32, i32, i32, i32, i64, i32, i64, %struct.btrfs_key, %struct.btrfs_key, %struct.list_head, %struct.list_head, [2 x %struct.spinlock], [2 x %struct.list_head], %struct.spinlock, %struct.rb_root, %struct.xarray, i32, %struct.spinlock, %struct.refcount_struct, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, i64, %struct.list_head, i32, i32, %struct.btrfs_drew_lock, %struct.atomic_t, %struct.spinlock, i64, i64, %struct.wait_queue_head, %struct.atomic_t, %struct.btrfs_qgroup_swapped_blocks, %struct.extent_io_tree, i64, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.btrfs_root_item = type <{ %struct.btrfs_inode_item, i64, i64, i64, i64, i64, i64, i64, i32, %struct.btrfs_disk_key, i8, i8, i64, [16 x i8], [16 x i8], [16 x i8], i64, i64, i64, i64, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, [8 x i64] }>
%struct.btrfs_inode_item = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, [4 x i64], %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec, %struct.btrfs_timespec }
%struct.btrfs_timespec = type <{ i64, i32 }>
%struct.rb_root = type { ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.btrfs_drew_lock = type { %struct.atomic_t, %struct.percpu_counter, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.btrfs_qgroup_swapped_blocks = type { %struct.spinlock, i8, [8 x %struct.rb_root] }
%struct.extent_io_tree = type { %struct.rb_root, ptr, ptr, i64, i8, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btrfs_header = type <{ [32 x i8], [16 x i8], i64, i64, [16 x i8], i64, i64, i32, i8 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/btrfs/tree-defrag.c\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../fs/btrfs/tree-defrag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 96, i32 3 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_defrag_leaves(ptr noundef %trans, ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i = alloca %struct.btrfs_disk_key, align 8
  %key = alloca %struct.btrfs_key, align 8
  %last_ret = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key) #4
  %0 = call ptr @memset(ptr %key, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %last_ret) #4
  %1 = ptrtoint ptr %last_ret to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %last_ret, align 8
  %state = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @btrfs_alloc_path() #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %node = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 1
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %pages.i = getelementptr inbounds %struct.extent_buffer, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %8) #4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %6, align 8
  %conv.i = trunc i64 %10 to i32
  %and.i = and i32 %conv.i, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %and.i
  %level.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i, i32 0, i32 8
  %11 = ptrtoint ptr %level.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %level.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %if.end4.out.thread_crit_edge, label %if.end8

if.end4.out.thread_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end8:                                          ; preds = %if.end4
  %defrag_progress = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 27
  %13 = ptrtoint ptr %defrag_progress to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %defrag_progress, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp9 = icmp eq i64 %14, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @btrfs_lock_root_node(ptr noundef %root) #4
  %pages.i178 = getelementptr inbounds %struct.extent_buffer, ptr %call12, i32 0, i32 12
  %15 = ptrtoint ptr %pages.i178 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i178, align 4
  %call.i179 = tail call ptr @page_address(ptr noundef %16) #4
  %17 = ptrtoint ptr %call12 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %call12, align 8
  %conv.i180 = trunc i64 %18 to i32
  %and.i181 = and i32 %conv.i180, 4095
  %add.ptr.i182 = getelementptr i8, ptr %call.i179, i32 %and.i181
  %nritems.i = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i182, i32 0, i32 7
  %19 = ptrtoint ptr %nritems.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %nritems.i, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  %defrag_max = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28
  %22 = ptrtoint ptr %defrag_max to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %defrag_max, align 1
  %sub = add i32 %21, -1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i) #4
  %23 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 1
  %24 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i, i32 0, i32 2
  %25 = call ptr @memset(ptr %disk_key.i, i32 255, i32 17)
  call void @btrfs_node_key(ptr noundef %call12, ptr noundef nonnull %disk_key.i, i32 noundef %sub) #4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %24, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27) #4
  %offset1.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28, i32 2
  %29 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %offset1.i.i, align 1
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %23, align 8
  %type2.i.i = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28, i32 1
  %32 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %type2.i.i, align 1
  %33 = ptrtoint ptr %disk_key.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %disk_key.i, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #4
  %36 = ptrtoint ptr %defrag_max to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %defrag_max, align 1
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i) #4
  call void @btrfs_tree_unlock(ptr noundef %call12) #4
  call void @free_extent_buffer(ptr noundef %call12) #4
  %37 = call ptr @memset(ptr %key, i32 0, i32 17)
  br label %if.end17

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %38 = call ptr @memcpy(ptr %key, ptr %defrag_progress, i32 17)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then11
  %keep_locks = getelementptr inbounds %struct.btrfs_path, ptr %call1, i32 0, i32 5
  %39 = ptrtoint ptr %keep_locks to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %keep_locks, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %keep_locks, align 2
  %call18 = call i32 @btrfs_search_forward(ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call1, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.out_crit_edge, label %if.end22

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp23.not = icmp eq i32 %call18, 0
  br i1 %cmp23.not, label %if.end26, label %if.end22.out.thread_crit_edge

if.end22.out.thread_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end26:                                         ; preds = %if.end22
  call void @btrfs_release_path(ptr noundef nonnull %call1) #4
  %lowest_level = getelementptr inbounds %struct.btrfs_path, ptr %call1, i32 0, i32 4
  %40 = ptrtoint ptr %lowest_level to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %lowest_level, align 1
  %call27 = call i32 @btrfs_search_slot(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %key, ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.out_crit_edge, label %if.end31

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end31:                                         ; preds = %if.end26
  %arrayidx = getelementptr [8 x ptr], ptr %call1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %42, null
  br i1 %tobool32.not, label %if.end31.out.thread_crit_edge, label %do.body

if.end31.out.thread_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

do.body:                                          ; preds = %if.end31
  %arrayidx35 = getelementptr %struct.btrfs_path, ptr %call1, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp37 = icmp eq i8 %44, 0
  br i1 %cmp37, label %do.body42, label %do.end48, !prof !11

do.body42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/tree-defrag.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.end48:                                         ; preds = %do.body
  %call52 = call i32 @btrfs_realloc_node(ptr noundef %trans, ptr noundef %root, ptr noundef nonnull %42, i32 noundef 0, ptr noundef nonnull %last_ret, ptr noundef %defrag_progress) #4
  %45 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call52, label %do.end48.out.thread_crit_edge [
    i32 0, label %if.end85
    i32 -11, label %do.end72
  ], !prof !13

do.end48.out.thread_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

do.end72:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #4
  br label %out.thread194

if.end85:                                         ; preds = %do.end48
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %pages.i183 = getelementptr inbounds %struct.extent_buffer, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %pages.i183 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pages.i183, align 4
  %call.i184 = call ptr @page_address(ptr noundef %49) #4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %47, align 8
  %conv.i185 = trunc i64 %51 to i32
  %and.i186 = and i32 %conv.i185, 4095
  %add.ptr.i187 = getelementptr i8, ptr %call.i184, i32 %and.i186
  %nritems.i188 = getelementptr inbounds %struct.btrfs_header, ptr %add.ptr.i187, i32 0, i32 7
  %52 = ptrtoint ptr %nritems.i188 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %nritems.i188, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #4
  %arrayidx89 = getelementptr %struct.btrfs_path, ptr %call1, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx89, align 4
  %call90 = call i32 @btrfs_find_next_key(ptr noundef %root, ptr noundef nonnull %call1, ptr noundef nonnull %key, i32 noundef 1, i64 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp eq i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end85.out.thread_crit_edge

if.end85.out.thread_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.then93:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %56 = call ptr @memcpy(ptr %defrag_progress, ptr %key, i32 17)
  br label %out.thread194

out.thread:                                       ; preds = %if.end85.out.thread_crit_edge, %do.end48.out.thread_crit_edge, %if.end31.out.thread_crit_edge, %if.end22.out.thread_crit_edge, %if.end4.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ %call52, %do.end48.out.thread_crit_edge ], [ 0, %if.end31.out.thread_crit_edge ], [ 0, %if.end22.out.thread_crit_edge ], [ 0, %entry.out.thread_crit_edge ], [ 0, %if.end85.out.thread_crit_edge ], [ 0, %if.end4.out.thread_crit_edge ]
  %path.0.ph = phi ptr [ %call1, %do.end48.out.thread_crit_edge ], [ %call1, %if.end31.out.thread_crit_edge ], [ %call1, %if.end22.out.thread_crit_edge ], [ null, %entry.out.thread_crit_edge ], [ %call1, %if.end85.out.thread_crit_edge ], [ %call1, %if.end4.out.thread_crit_edge ]
  call void @btrfs_free_path(ptr noundef %path.0.ph) #4
  br label %if.then126

out.thread194:                                    ; preds = %if.then93, %do.end72
  call void @btrfs_free_path(ptr noundef nonnull %call1) #4
  br label %if.then98

out:                                              ; preds = %if.end26.out_crit_edge, %if.end17.out_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.out_crit_edge ], [ %call27, %if.end26.out_crit_edge ]
  call void @btrfs_free_path(ptr noundef nonnull %call1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.0)
  %cmp96 = icmp eq i32 %ret.0, -11
  br i1 %cmp96, label %out.if.then98_crit_edge, label %out.if.then126_crit_edge

out.if.then126_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then126

out.if.then98_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then98

if.then98:                                        ; preds = %out.if.then98_crit_edge, %out.thread194
  %defrag_max99 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28
  %57 = ptrtoint ptr %defrag_max99 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %defrag_max99, align 1
  %59 = ptrtoint ptr %defrag_progress to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %defrag_progress, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %60)
  %cmp103 = icmp ugt i64 %58, %60
  br i1 %cmp103, label %if.then98.cleanup_crit_edge, label %if.end106

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end106:                                        ; preds = %if.then98
  %type = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28, i32 1
  %61 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %type, align 1
  %type110 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 27, i32 1
  %63 = ptrtoint ptr %type110 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %type110, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp112 = icmp ugt i8 %62, %64
  br i1 %cmp112, label %if.end106.cleanup_crit_edge, label %if.end115

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end115:                                        ; preds = %if.end106
  %offset = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 28, i32 2
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %offset, align 1
  %offset118 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 27, i32 2
  %67 = ptrtoint ptr %offset118 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %offset118, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp119 = icmp ugt i64 %66, %68
  br i1 %cmp119, label %if.end115.cleanup_crit_edge, label %if.end115.if.then126_crit_edge

if.end115.if.then126_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then126

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then126:                                       ; preds = %if.end115.if.then126_crit_edge, %out.if.then126_crit_edge, %out.thread
  %ret.1204 = phi i32 [ %ret.0.ph, %out.thread ], [ 0, %if.end115.if.then126_crit_edge ], [ %ret.0, %out.if.then126_crit_edge ]
  %defrag_progress127 = getelementptr inbounds %struct.btrfs_root, ptr %root, i32 0, i32 27
  %69 = call ptr @memset(ptr %defrag_progress127, i32 0, i32 17)
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %if.end115.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %ret.1204, %if.then126 ], [ -11, %if.then98.cleanup_crit_edge ], [ -11, %if.end106.cleanup_crit_edge ], [ -11, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %last_ret) #4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_lock_root_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_tree_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_extent_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_forward(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_release_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_search_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_realloc_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_find_next_key(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_node_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tree-defrag.c", i32 96, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2158277259, i64 2158277745, i64 2158277296, i64 2158277352, i64 2158277386, i64 2158277410, i64 2158277451, i64 2158277472, i64 2158277500, i64 2158277534}
!13 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
