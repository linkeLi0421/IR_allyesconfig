; ModuleID = '/llk/IR_all_yes/fs/ext4/bitmap.c_pt.bc'
source_filename = "../fs/ext4/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.79 = type { %struct.shash_desc, [4 x i8], [4 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [20 x i8] c"../fs/ext4/bitmap.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 3288, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_count_free(ptr noundef %bitmap, i32 noundef %numchars) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %numchars, 3
  %call = tail call i32 @memweight(ptr noundef %bitmap, i32 noundef %numchars) #4
  %sub = sub i32 %mul, %call
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_bitmap_csum_verify(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef readonly %gdp, ptr nocapture noundef readonly %bh, i32 noundef %sz) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %6 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !12

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 121
  %14 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %15, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %if.end

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ext4_has_metadata_csum.exit
  %bg_inode_bitmap_csum_lo = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 9
  %16 = ptrtoint ptr %bg_inode_bitmap_csum_lo to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bg_inode_bitmap_csum_lo, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv = zext i16 %18 to i32
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 122
  %19 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_csum_seed, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %21 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #4
  %23 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i18 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %24 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %25 = ptrtoint ptr %s_chksum_driver.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_chksum_driver.i18, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !12

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end7.i:                                        ; preds = %if.end
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %desc.i, align 8
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %23, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %22, i32 noundef %sz) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !12

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %34)
  %cmp = icmp ugt i32 %34, 59
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bg_inode_bitmap_csum_hi = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 21
  %35 = ptrtoint ptr %bg_inode_bitmap_csum_hi to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bg_inode_bitmap_csum_hi, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv5 = zext i16 %37 to i32
  %shl = shl nuw i32 %conv5, 16
  %or = or i32 %shl, %conv
  br label %if.end6

if.else:                                          ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %32, 65535
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %provided.0 = phi i32 [ %or, %if.then4 ], [ %conv, %if.else ]
  %calculated.0 = phi i32 [ %32, %if.then4 ], [ %and, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %provided.0, i32 %calculated.0)
  %cmp7 = icmp eq i32 %provided.0, %calculated.0
  %conv8 = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8, %if.end6 ], [ 1, %ext4_has_metadata_csum.exit.cleanup_crit_edge ], [ 1, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_inode_bitmap_csum_set(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef writeonly %gdp, ptr nocapture noundef readonly %bh, i32 noundef %sz) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %6 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !12

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 121
  %14 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %15, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %if.end

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ext4_has_metadata_csum.exit
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 122
  %16 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_csum_seed, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %18 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #4
  %20 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i13 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %21 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %22 = ptrtoint ptr %s_chksum_driver.i13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_chksum_driver.i13, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !12

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end7.i:                                        ; preds = %if.end
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %desc.i, align 8
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %17, ptr %20, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %19, i32 noundef %sz) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !12

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #4
  %conv = trunc i32 %29 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv)
  %bg_inode_bitmap_csum_lo = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 9
  %31 = ptrtoint ptr %bg_inode_bitmap_csum_lo to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %bg_inode_bitmap_csum_lo, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %33)
  %cmp = icmp ugt i32 %33, 59
  br i1 %cmp, label %if.then4, label %ext4_chksum.exit.cleanup_crit_edge

ext4_chksum.exit.cleanup_crit_edge:               ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %29, 16
  %conv5 = trunc i32 %shr to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv5)
  %bg_inode_bitmap_csum_hi = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 21
  %35 = ptrtoint ptr %bg_inode_bitmap_csum_hi to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %bg_inode_bitmap_csum_hi, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %ext4_chksum.exit.cleanup_crit_edge, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_block_bitmap_csum_verify(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef readonly %gdp, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_clusters_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_clusters_per_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_clusters_per_group, align 4
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %8 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !12

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 121
  %16 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %if.end

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ext4_has_metadata_csum.exit
  %bg_block_bitmap_csum_lo = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 8
  %18 = ptrtoint ptr %bg_block_bitmap_csum_lo to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bg_block_bitmap_csum_lo, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 122
  %21 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_csum_seed, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #4
  %25 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i25 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %26 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %27 = ptrtoint ptr %s_chksum_driver.i25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_chksum_driver.i25, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !12

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end7.i:                                        ; preds = %if.end
  %div23 = lshr i32 %3, 3
  %31 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %desc.i, align 8
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %22, ptr %25, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %24, i32 noundef %div23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !12

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %25, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %36)
  %cmp = icmp ugt i32 %36, 57
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %bg_block_bitmap_csum_hi = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 20
  %37 = ptrtoint ptr %bg_block_bitmap_csum_hi to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bg_block_bitmap_csum_hi, align 4
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv6 = zext i16 %39 to i32
  %shl = shl nuw i32 %conv6, 16
  %or = or i32 %shl, %conv
  br label %if.end7

if.else:                                          ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %34, 65535
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %provided.0 = phi i32 [ %or, %if.then5 ], [ %conv, %if.else ]
  %calculated.0 = phi i32 [ %34, %if.then5 ], [ %and, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %provided.0, i32 %calculated.0)
  %cmp8 = icmp eq i32 %provided.0, %calculated.0
  %. = zext i1 %cmp8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %ext4_has_metadata_csum.exit.cleanup_crit_edge ], [ %., %if.end7 ], [ 1, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_block_bitmap_csum_set(ptr nocapture noundef readonly %sb, i32 noundef %group, ptr nocapture noundef writeonly %gdp, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.anon.79, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_clusters_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_clusters_per_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_clusters_per_group, align 4
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %entry.if.end32.i_crit_edge, label %land.rhs.i

entry.if.end32.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs.i:                                       ; preds = %entry
  %s_chksum_driver.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %8 = ptrtoint ptr %s_chksum_driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_chksum_driver.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %land.rhs5.i, label %land.rhs.i.if.end32.i_crit_edge

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

land.rhs5.i:                                      ; preds = %land.rhs.i
  %.b50.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i, label %land.rhs5.i.if.end32.i_crit_edge, label %if.then.i, !prof !12

land.rhs5.i.if.end32.i_crit_edge:                 ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then.i:                                        ; preds = %land.rhs5.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3289, i32 noundef 9, ptr noundef null) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then.i, %land.rhs5.i.if.end32.i_crit_edge, %land.rhs.i.if.end32.i_crit_edge, %entry.if.end32.i_crit_edge
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %s_es.i53.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_es.i53.i, align 4
  %s_feature_ro_compat.i54.i = getelementptr inbounds %struct.ext4_super_block, ptr %13, i32 0, i32 30
  %14 = ptrtoint ptr %s_feature_ro_compat.i54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_ro_compat.i54.i, align 4
  %and.i55.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp.i56.not.i = icmp eq i32 %and.i55.i, 0
  br i1 %cmp.i56.not.i, label %if.end32.i.cleanup_crit_edge, label %ext4_has_metadata_csum.exit

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ext4_has_metadata_csum.exit:                      ; preds = %if.end32.i
  %s_chksum_driver43.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 121
  %16 = ptrtoint ptr %s_chksum_driver43.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_chksum_driver43.i, align 4
  %cmp.i.not = icmp eq ptr %17, null
  br i1 %cmp.i.not, label %ext4_has_metadata_csum.exit.cleanup_crit_edge, label %if.end

ext4_has_metadata_csum.exit.cleanup_crit_edge:    ; preds = %ext4_has_metadata_csum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ext4_has_metadata_csum.exit
  %s_csum_seed = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 122
  %18 = ptrtoint ptr %s_csum_seed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_csum_seed, align 16
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #4
  %22 = getelementptr inbounds %struct.anon.79, ptr %desc.i, i32 0, i32 1
  %s_chksum_driver.i18 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 121
  %23 = call ptr @memset(ptr %desc.i, i32 255, i32 16)
  %24 = ptrtoint ptr %s_chksum_driver.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_chksum_driver.i18, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp.not.i = icmp eq i32 %27, 4
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !12

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2447, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end7.i:                                        ; preds = %if.end
  %div16 = lshr i32 %3, 3
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %desc.i, align 8
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %19, ptr %22, align 8
  %call11.i = call i32 @crypto_shash_update(ptr noundef nonnull %desc.i, ptr noundef %21, i32 noundef %div16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ext4_chksum.exit, label %do.body20.i, !prof !12

do.body20.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/ext4.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2452, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

ext4_chksum.exit:                                 ; preds = %do.end7.i
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %22, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #4
  %conv = trunc i32 %31 to i16
  %32 = call i16 @llvm.bswap.i16(i16 %conv)
  %bg_block_bitmap_csum_lo = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 8
  %33 = ptrtoint ptr %bg_block_bitmap_csum_lo to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %bg_block_bitmap_csum_lo, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %35)
  %cmp = icmp ugt i32 %35, 57
  br i1 %cmp, label %if.then5, label %ext4_chksum.exit.cleanup_crit_edge

ext4_chksum.exit.cleanup_crit_edge:               ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %ext4_chksum.exit
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %31, 16
  %conv6 = trunc i32 %shr to i16
  %36 = call i16 @llvm.bswap.i16(i16 %conv6)
  %bg_block_bitmap_csum_hi = getelementptr inbounds %struct.ext4_group_desc, ptr %gdp, i32 0, i32 20
  %37 = ptrtoint ptr %bg_block_bitmap_csum_hi to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %bg_block_bitmap_csum_hi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %ext4_chksum.exit.cleanup_crit_edge, %ext4_has_metadata_csum.exit.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2155009689, i64 2155010169, i64 2155009726, i64 2155009782, i64 2155009816, i64 2155009840, i64 2155009881, i64 2155009902, i64 2155009930, i64 2155009964}
!14 = !{i64 2155011331, i64 2155011811, i64 2155011368, i64 2155011424, i64 2155011458, i64 2155011482, i64 2155011523, i64 2155011544, i64 2155011572, i64 2155011606}
