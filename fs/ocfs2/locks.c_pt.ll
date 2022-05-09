; ModuleID = '/llk/IR_all_yes/fs/ocfs2/locks.c_pt.bc'
source_filename = "../fs/ocfs2/locks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.70 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.70 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.86, ptr }
%union.anon.86 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_file_private = type { ptr, %struct.mutex, %struct.ocfs2_lock_res }

@__func__.ocfs2_do_flock = private unnamed_addr constant [15 x i8] c"ocfs2_do_flock\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967285, i64 4294967292]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [20 x i8] c"../fs/ocfs2/locks.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 67, i32 4 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_flock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  %request.i = alloca %struct.file_lock, align 8
  %_m.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %8 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_flags, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_mount_opt = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 28
  %10 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_mount_opt, align 8
  %and1 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 19
  %12 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %14 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end6, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %15 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %16, ptr noundef %fl) #3
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %17 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp = icmp eq i8 %18, 2
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %fp_mutex.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %20, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fp_mutex.i, i32 noundef 0) #3
  tail call void @ocfs2_file_unlock(ptr noundef %file) #3
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i.i.i, align 8
  %call1.i.i = tail call i32 @locks_lock_inode_wait(ptr noundef %22, ptr noundef %fl) #3
  tail call void @mutex_unlock(ptr noundef %fp_mutex.i) #3
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.i = icmp eq i8 %18, 1
  %spec.select.i = zext i1 %cmp.i to i32
  %23 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then6.i [
    i32 7, label %if.else.if.end7.i_crit_edge
    i32 14, label %if.else.if.end7.i_crit_edge29
  ]

if.else.if.end7.i_crit_edge29:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.else.if.end7.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.else.if.end7.i_crit_edge, %if.else.if.end7.i_crit_edge29
  %tobool31.not.i = phi i1 [ false, %if.then6.i ], [ true, %if.else.if.end7.i_crit_edge ], [ true, %if.else.if.end7.i_crit_edge29 ]
  %trylock.0.i = phi i32 [ 1, %if.then6.i ], [ 0, %if.else.if.end7.i_crit_edge ], [ 0, %if.else.if.end7.i_crit_edge29 ]
  %fp_mutex.i23 = getelementptr inbounds %struct.ocfs2_file_private, ptr %20, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %fp_mutex.i23, i32 noundef 0) #3
  %l_flags.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %20, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %l_flags.i, align 8
  %and.i24 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.end7.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %l_level.i = getelementptr inbounds %struct.ocfs2_file_private, ptr %20, i32 0, i32 2, i32 9
  %26 = ptrtoint ptr %l_level.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %l_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp9.i = icmp sgt i8 %27, 0
  br i1 %cmp9.i, label %if.then11.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %request.i) #3
  %28 = call ptr @memset(ptr %request.i, i32 255, i32 168)
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %cmp14.i = icmp ne i8 %27, 5
  %cmp18.i = xor i1 %cmp.i, %cmp14.i
  br i1 %cmp18.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @locks_init_lock(ptr noundef nonnull %request.i) #3
  %fl_type22.i = getelementptr inbounds %struct.file_lock, ptr %request.i, i32 0, i32 7
  %29 = ptrtoint ptr %fl_type22.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %fl_type22.i, align 4
  %fl_flags.i = getelementptr inbounds %struct.file_lock, ptr %request.i, i32 0, i32 6
  %30 = ptrtoint ptr %fl_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %fl_flags.i, align 8
  %f_inode.i.i.i26 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %31 = ptrtoint ptr %f_inode.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %f_inode.i.i.i26, align 8
  %call1.i.i27 = call i32 @locks_lock_inode_wait(ptr noundef %32, ptr noundef nonnull %request.i) #3
  call void @ocfs2_file_unlock(ptr noundef %file) #3
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %request.i) #3
  br label %if.end24.i

cleanup.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %request.i) #3
  br label %ocfs2_do_flock.exit

if.end24.i:                                       ; preds = %cleanup.thread.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end7.i.if.end24.i_crit_edge
  %call25.i = call i32 @ocfs2_file_lock(ptr noundef %file, i32 noundef %spec.select.i, i32 noundef %trylock.0.i) #3
  %33 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %call25.i, label %if.end24.i.do.body.i_crit_edge [
    i32 0, label %if.end55.i
    i32 -11, label %land.lhs.true30.i
    i32 -512, label %if.end24.i.ocfs2_do_flock.exit_crit_edge
    i32 -4, label %if.end24.i.ocfs2_do_flock.exit_crit_edge30
    i32 524289, label %if.end24.i.ocfs2_do_flock.exit_crit_edge31
    i32 -28, label %if.end24.i.ocfs2_do_flock.exit_crit_edge32
    i32 -122, label %if.end24.i.ocfs2_do_flock.exit_crit_edge33
  ]

if.end24.i.ocfs2_do_flock.exit_crit_edge33:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.end24.i.ocfs2_do_flock.exit_crit_edge32:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.end24.i.ocfs2_do_flock.exit_crit_edge31:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.end24.i.ocfs2_do_flock.exit_crit_edge30:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.end24.i.ocfs2_do_flock.exit_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

land.lhs.true30.i:                                ; preds = %if.end24.i
  br i1 %tobool31.not.i, label %land.lhs.true30.i.do.body.i_crit_edge, label %land.lhs.true30.i.ocfs2_do_flock.exit_crit_edge

land.lhs.true30.i.ocfs2_do_flock.exit_crit_edge:  ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

land.lhs.true30.i.do.body.i_crit_edge:            ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true30.i.do.body.i_crit_edge, %if.end24.i.do.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #3
  %34 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv51.i = sext i32 %call25.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_do_flock, i32 noundef 67, ptr noundef nonnull @.str, i64 noundef %conv51.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #3
  br label %ocfs2_do_flock.exit

if.end55.i:                                       ; preds = %if.end24.i
  %f_inode.i.i3.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %35 = ptrtoint ptr %f_inode.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %f_inode.i.i3.i, align 8
  %call1.i4.i = call i32 @locks_lock_inode_wait(ptr noundef %36, ptr noundef %fl) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool57.not.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.ocfs2_do_flock.exit_crit_edge, label %if.then58.i

if.end55.i.ocfs2_do_flock.exit_crit_edge:         ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ocfs2_do_flock.exit

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @ocfs2_file_unlock(ptr noundef %file) #3
  br label %ocfs2_do_flock.exit

ocfs2_do_flock.exit:                              ; preds = %if.then58.i, %if.end55.i.ocfs2_do_flock.exit_crit_edge, %do.body.i, %land.lhs.true30.i.ocfs2_do_flock.exit_crit_edge, %if.end24.i.ocfs2_do_flock.exit_crit_edge, %if.end24.i.ocfs2_do_flock.exit_crit_edge30, %if.end24.i.ocfs2_do_flock.exit_crit_edge31, %if.end24.i.ocfs2_do_flock.exit_crit_edge32, %if.end24.i.ocfs2_do_flock.exit_crit_edge33, %cleanup.i
  %ret.0.i = phi i32 [ 0, %cleanup.i ], [ %call1.i4.i, %if.then58.i ], [ 0, %if.end55.i.ocfs2_do_flock.exit_crit_edge ], [ -11, %land.lhs.true30.i.ocfs2_do_flock.exit_crit_edge ], [ %call25.i, %if.end24.i.ocfs2_do_flock.exit_crit_edge ], [ %call25.i, %if.end24.i.ocfs2_do_flock.exit_crit_edge30 ], [ %call25.i, %if.end24.i.ocfs2_do_flock.exit_crit_edge31 ], [ %call25.i, %if.end24.i.ocfs2_do_flock.exit_crit_edge32 ], [ %call25.i, %if.end24.i.ocfs2_do_flock.exit_crit_edge33 ], [ %call25.i, %do.body.i ]
  call void @mutex_unlock(ptr noundef %fp_mutex.i23) #3
  br label %cleanup

cleanup:                                          ; preds = %ocfs2_do_flock.exit, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then4 ], [ %call1.i.i, %if.then8 ], [ %ret.0.i, %ocfs2_do_flock.exit ], [ -37, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_lock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %0 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fl_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %cconn = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 65
  %10 = ptrtoint ptr %cconn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cconn, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -1608
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.i, align 8
  %call1 = tail call i32 @ocfs2_plock(ptr noundef %11, i64 noundef %13, ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -37, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_plock(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_file_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_init_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_file_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__func__.ocfs2_do_flock, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/locks.c", i32 67, i32 4}
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
