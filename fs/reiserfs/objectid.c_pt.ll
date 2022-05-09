; ModuleID = '/llk/IR_all_yes/fs/reiserfs/objectid.c_pt.bc'
source_filename = "../fs/reiserfs/objectid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.70, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.70 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reiserfs_super_block = type { %struct.reiserfs_super_block_v1, i32, i32, [16 x i8], [16 x i8], i16, i16, i32, i32, [76 x i8] }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-15100\00", [17 x i8] zeroinitializer }, align 32
@__func__.reiserfs_get_unused_objectid = private unnamed_addr constant [29 x i8] c"reiserfs_get_unused_objectid\00", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no more object ids\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.reiserfs_release_objectid = private unnamed_addr constant [26 x i8] c"reiserfs_release_objectid\00", align 1
@.str.3 = internal constant { [348 x i8], [68 x i8] } { [348 x i8] c"(!(((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((rs)->s_v1.s_oid_cursize)))) < 2 || ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((rs)->s_v1.s_oid_cursize)))) > ((__u16)__builtin_bswap16((__u16)(( __u16)(__le16)((rs)->s_v1.s_oid_maxsize)))))) at fs/reiserfs/objectid.c:%i:%s: vs-15005: objectid map corrupted cur_size == %d (max == %d)\0A\00", [68 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-15011\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tried to free free object id (%lu)\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-15010\00", [23 x i8] zeroinitializer }, align 32
@__func__.check_objectid_map = private unnamed_addr constant [19 x i8] c"check_objectid_map\00", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"map corrupted: %lx\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 64, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 135, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 175, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [26 x i8] c"../fs/reiserfs/objectid.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 20, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_get_unused_objectid(ptr noundef %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_properties, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add.ptr = getelementptr %struct.reiserfs_super_block_v1, ptr %5, i32 1
  %add.ptr2 = getelementptr %struct.reiserfs_super_block, ptr %5, i32 1
  %cond = select i1 %tobool.not, ptr %add.ptr2, ptr %add.ptr
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %do.body7, label %do.end12, !prof !24

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/objectid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 56, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

do.end12:                                         ; preds = %entry
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 16777216
  br i1 %cmp.not.i, label %check_objectid_map.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.check_objectid_map, ptr noundef nonnull @.str.7, i32 noundef %12) #7
  unreachable

check_objectid_map.exit:                          ; preds = %do.end12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call14 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %14, i32 noundef 1) #4
  %arrayidx = getelementptr i32, ptr %cond, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp = icmp eq i32 %16, -1
  br i1 %cmp, label %if.then15, label %if.end18

if.then15:                                        ; preds = %check_objectid_map.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_get_unused_objectid, ptr noundef nonnull @.str.1) #4
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @reiserfs_restore_prepared_buffer(ptr noundef %1, ptr noundef %21) #4
  br label %cleanup

if.end18:                                         ; preds = %check_objectid_map.exit
  %add = add i32 %17, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %add)
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx, align 4
  %s_oid_cursize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %s_oid_cursize, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp20 = icmp ugt i16 %26, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end18.if.end39_crit_edge

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end18
  %arrayidx23 = getelementptr i32, ptr %cond, i32 2
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %28)
  %cmp24 = icmp eq i32 %22, %28
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr28 = getelementptr i32, ptr %cond, i32 3
  %sub = shl nuw nsw i32 %conv, 2
  %mul = add nsw i32 %sub, -12
  %29 = call ptr @memmove(ptr %arrayidx, ptr %add.ptr28, i32 %mul)
  %30 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %s_oid_cursize, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %sub35 = add i16 %32, -2
  %33 = tail call i16 @llvm.bswap.i16(i16 %sub35)
  %34 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %s_oid_cursize, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %land.lhs.true.if.end39_crit_edge, %if.end18.if.end39_crit_edge
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call42 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %38) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ %17, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_prepare_for_journal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_restore_prepared_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @journal_mark_dirty(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_release_objectid(ptr noundef %th, i32 noundef %objectid_to_release) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs, align 4
  %s_properties = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %s_properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_properties, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add.ptr = getelementptr %struct.reiserfs_super_block_v1, ptr %5, i32 1
  %add.ptr2 = getelementptr %struct.reiserfs_super_block, ptr %5, i32 1
  %cond = select i1 %tobool.not, ptr %add.ptr2, ptr %add.ptr
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %do.body7, label %do.end12, !prof !24

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/objectid.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 105, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end12:                                         ; preds = %entry
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 16777216
  br i1 %cmp.not.i, label %check_objectid_map.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.check_objectid_map, ptr noundef nonnull @.str.7, i32 noundef %12) #7
  unreachable

check_objectid_map.exit:                          ; preds = %do.end12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call14 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %14, i32 noundef 1) #4
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call17 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %18) #4
  %s_oid_cursize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %s_oid_cursize, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp205.not = icmp eq i16 %20, 0
  br i1 %cmp205.not, label %check_objectid_map.exit.while.end_crit_edge, label %check_objectid_map.exit.while.body_crit_edge

check_objectid_map.exit.while.body_crit_edge:     ; preds = %check_objectid_map.exit
  br label %while.body

check_objectid_map.exit.while.end_crit_edge:      ; preds = %check_objectid_map.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end117.while.body_crit_edge, %check_objectid_map.exit.while.body_crit_edge
  %i.0206 = phi i32 [ %add118, %if.end117.while.body_crit_edge ], [ 0, %check_objectid_map.exit.while.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %cond, i32 %i.0206
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %objectid_to_release)
  %cmp19 = icmp eq i32 %24, %objectid_to_release
  br i1 %cmp19, label %if.then21, label %if.end66

if.then21:                                        ; preds = %while.body
  %arrayidx.le219 = getelementptr i32, ptr %cond, i32 %i.0206
  %add.i = add i32 %objectid_to_release, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %add.i) #4
  %26 = ptrtoint ptr %arrayidx.le219 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.le219, align 4
  %add = or i32 %i.0206, 1
  %arrayidx24 = getelementptr i32, ptr %cond, i32 %add
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %28)
  %cmp25 = icmp eq i32 %25, %28
  br i1 %cmp25, label %if.then27, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %if.then21
  %add.ptr30 = getelementptr i32, ptr %arrayidx.le219, i32 2
  %29 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %s_oid_cursize, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv33 = zext i16 %31 to i32
  %sub = sub nsw i32 %conv33, %i.0206
  %sub34 = shl i32 %sub, 2
  %mul = add i32 %sub34, -8
  %32 = call ptr @memmove(ptr %arrayidx.le219, ptr %add.ptr30, i32 %mul)
  %33 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %s_oid_cursize, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %sub38 = add i16 %35, -2
  %36 = tail call i16 @llvm.bswap.i16(i16 %sub38)
  %37 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %s_oid_cursize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %sub38)
  %cmp46 = icmp ult i16 %sub38, 2
  br i1 %cmp46, label %if.then27.if.then55_crit_edge, label %lor.lhs.false

if.then27.if.then55_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.then27
  %s_oid_maxsize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %s_oid_maxsize to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %s_oid_maxsize, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  call void @__sanitizer_cov_trace_cmp2(i16 %sub38, i16 %40)
  %cmp53 = icmp ugt i16 %sub38, %40
  br i1 %cmp53, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %if.then27.if.then55_crit_edge
  %conv58 = zext i16 %sub38 to i32
  %s_oid_maxsize60 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %s_oid_maxsize60 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %s_oid_maxsize60, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv61 = zext i16 %43 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.reiserfs_release_objectid, ptr noundef nonnull @.str.3, i32 noundef 138, ptr noundef nonnull @__func__.reiserfs_release_objectid, i32 noundef %conv58, i32 noundef %conv61) #7
  unreachable

if.end66:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %objectid_to_release)
  %cmp68 = icmp ult i32 %24, %objectid_to_release
  br i1 %cmp68, label %land.lhs.true, label %if.end66.if.end117_crit_edge

if.end66.if.end117_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end66
  %add70 = or i32 %i.0206, 1
  %arrayidx71 = getelementptr i32, ptr %cond, i32 %add70
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx71, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %objectid_to_release)
  %cmp72 = icmp ugt i32 %46, %objectid_to_release
  br i1 %cmp72, label %if.then74, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end117

if.then74:                                        ; preds = %land.lhs.true
  %arrayidx.le = getelementptr i32, ptr %cond, i32 %i.0206
  %arrayidx71.le = getelementptr i32, ptr %cond, i32 %add70
  %add75 = add nuw i32 %objectid_to_release, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %46)
  %cmp78 = icmp eq i32 %add75, %46
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  %add.i187 = add i32 %46, -1
  %47 = tail call i32 @llvm.bswap.i32(i32 %add.i187) #4
  %48 = ptrtoint ptr %arrayidx71.le to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx71.le, align 4
  br label %cleanup

if.end83:                                         ; preds = %if.then74
  %s_oid_maxsize88 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %5, i32 0, i32 5
  %49 = ptrtoint ptr %s_oid_maxsize88 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %s_oid_maxsize88, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %50)
  %cmp90 = icmp eq i16 %20, %50
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i, align 16
  %leaked_oid = getelementptr inbounds %struct.reiserfs_sb_info, ptr %52, i32 0, i32 27, i32 13
  %53 = ptrtoint ptr %leaked_oid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %leaked_oid, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %leaked_oid, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr96 = getelementptr i32, ptr %arrayidx.le, i32 3
  %add.ptr98 = getelementptr i32, ptr %arrayidx.le, i32 1
  %55 = xor i32 %i.0206, -1
  %sub103 = add nsw i32 %conv, %55
  %mul104 = shl i32 %sub103, 2
  %56 = call ptr @memmove(ptr %add.ptr96, ptr %add.ptr98, i32 %mul104)
  %57 = tail call i32 @llvm.bswap.i32(i32 %objectid_to_release)
  %58 = ptrtoint ptr %arrayidx71.le to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx71.le, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %add75)
  %add108 = add nuw i32 %i.0206, 2
  %arrayidx109 = getelementptr i32, ptr %cond, i32 %add108
  %60 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx109, align 4
  %61 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %s_oid_cursize, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %add113 = add i16 %63, 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %add113)
  %65 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %s_oid_cursize, align 1
  br label %cleanup

if.end117:                                        ; preds = %land.lhs.true.if.end117_crit_edge, %if.end66.if.end117_crit_edge
  %add118 = add nuw nsw i32 %i.0206, 2
  %cmp = icmp ult i32 %add118, %conv
  br i1 %cmp, label %if.end117.while.body_crit_edge, label %if.end117.while.end_crit_edge

if.end117.while.end_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end117.while.body_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end117.while.end_crit_edge, %check_objectid_map.exit.while.end_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_error(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.reiserfs_release_objectid, ptr noundef nonnull @.str.5, i32 noundef %objectid_to_release) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end94, %if.then92, %if.then80, %lor.lhs.false.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_error(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_convert_objectid_map_v1(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs, align 4
  %s_oid_cursize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %s_oid_cursize, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %8, -204
  %9 = lshr i32 %sub, 2
  %mul = and i32 %9, 1073741822
  %s_oid_maxsize = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %s_oid_maxsize to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %s_oid_maxsize, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv3 = zext i16 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr %struct.reiserfs_super_block_v1, ptr %16, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp = icmp ult i32 %mul, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub6 = add nsw i32 %conv, -1
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %sub6
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %sub7 = add nsw i32 %mul, -1
  %arrayidx8 = getelementptr i32, ptr %add.ptr, i32 %sub7
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx8, align 4
  %conv9 = trunc i32 %mul to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %21 = ptrtoint ptr %s_oid_cursize to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %s_oid_cursize, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1347.not = icmp eq i32 %mul, 0
  br i1 %cmp1347.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub16 = sub nsw i32 %conv3, %mul
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.048.in = phi i32 [ %mul, %for.body.lr.ph ], [ %i.048, %for.body.for.body_crit_edge ]
  %i.048 = add nsw i32 %i.048.in, -1
  %arrayidx15 = getelementptr i32, ptr %add.ptr, i32 %i.048
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %sub16, %i.048
  %arrayidx17 = getelementptr i32, ptr %add.ptr, i32 %add
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx17, align 4
  %cmp13 = icmp ugt i32 %i.048.in, 1
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %conv18 = trunc i32 %mul to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %26 = ptrtoint ptr %s_oid_maxsize to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %s_oid_maxsize, align 1
  %s_label = getelementptr inbounds %struct.reiserfs_super_block, ptr %3, i32 0, i32 4
  %27 = call ptr @memset(ptr %s_label, i32 0, i32 16)
  %s_uuid = getelementptr inbounds %struct.reiserfs_super_block, ptr %3, i32 0, i32 3
  tail call void @generate_random_uuid(ptr noundef %s_uuid) #4
  %s_unused = getelementptr inbounds %struct.reiserfs_super_block, ptr %3, i32 0, i32 9
  %28 = call ptr @memset(ptr %s_unused, i32 0, i32 76)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/objectid.c", i32 64, i32 3}
!2 = !{ptr @__func__.reiserfs_get_unused_objectid, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/objectid.c", i32 135, i32 5}
!6 = !{ptr @__func__.reiserfs_release_objectid, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/objectid.c", i32 175, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/objectid.c", i32 20, i32 3}
!13 = !{ptr @__func__.check_objectid_map, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2154091327, i64 2154091813, i64 2154091364, i64 2154091420, i64 2154091454, i64 2154091478, i64 2154091519, i64 2154091540, i64 2154091568, i64 2154091602}
!26 = !{i64 2154094650, i64 2154095137, i64 2154094687, i64 2154094743, i64 2154094777, i64 2154094801, i64 2154094842, i64 2154094863, i64 2154094891, i64 2154094925}
