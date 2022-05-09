; ModuleID = '/llk/IR_all_yes/fs/ext4/migrate.c_pt.bc'
source_filename = "../fs/ext4/migrate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.migrate_struct = type { i32, i32, i32, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_extent = type { i32, i16, i16, i32 }
%struct.ext4_extent_idx = type { i32, i32, i16, i16 }
%struct.ext4_extent_header = type { i16, i16, i16, i16, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@__func__.ext4_ext_migrate = private unnamed_addr constant [17 x i8] c"ext4_ext_migrate\00", align 1
@__func__.ext4_ind_migrate = private unnamed_addr constant [17 x i8] c"ext4_ind_migrate\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ext4_ext_swap_inode_data = private unnamed_addr constant [25 x i8] c"ext4_ext_swap_inode_data\00", align 1
@___asan_gen_ = private constant [21 x i8] c"../fs/ext4/migrate.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 271, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_ext_migrate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %lb = alloca %struct.migrate_struct, align 8
  %owner = alloca [2 x i32], align 4
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lb) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %owner) #8
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %owner, align 4, !annotation !19
  %5 = getelementptr inbounds [2 x i32], ptr %owner, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !19
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %8, i32 0, i32 29
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_flags.i, align 4
  %13 = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %inode, align 8
  %16 = and i16 %15, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %16)
  %cmp = icmp eq i16 %16, -24576
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %17 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp6 = icmp eq i64 %18, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %s_writepages_rwsem = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 138
  tail call void @percpu_down_write(ptr noundef %s_writepages_rwsem) #8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i218 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i218 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i218, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_mount_opt.i, align 4
  %and.i219 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i219)
  %tobool.not.i = icmp eq i32 %and.i219, 0
  br i1 %tobool.not.i, label %ext4_quota_capable.exit, label %if.end9.ext4_quota_capable.exit.thread_crit_edge

if.end9.ext4_quota_capable.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_quota_capable.exit.thread

ext4_quota_capable.exit:                          ; preds = %if.end9
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %25 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %ext4_quota_capable.exit._crit_edge, label %ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge

ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge: ; preds = %ext4_quota_capable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_quota_capable.exit.thread

ext4_quota_capable.exit._crit_edge:               ; preds = %ext4_quota_capable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %29

ext4_quota_capable.exit.thread:                   ; preds = %ext4_quota_capable.exit.ext4_quota_capable.exit.thread_crit_edge, %if.end9.ext4_quota_capable.exit.thread_crit_edge
  br label %29

29:                                               ; preds = %ext4_quota_capable.exit.thread, %ext4_quota_capable.exit._crit_edge
  %30 = phi i32 [ 6, %ext4_quota_capable.exit.thread ], [ 3, %ext4_quota_capable.exit._crit_edge ]
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 11
  %31 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %32, 3
  %call.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %20, i32 noundef 445, i32 noundef 8, i32 noundef %30, i32 noundef 0, i32 noundef %mul.i.i) #8
  %cmp.i220 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then17, label %if.end19

if.then17:                                        ; preds = %29
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call.i to i32
  br label %out_unlock

if.end19:                                         ; preds = %29
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  %sub = add i32 %35, -1
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i221 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i221 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i221, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_inodes_per_group, align 16
  %42 = urem i32 %sub, %41
  %add26 = sub i32 %35, %42
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %45 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %44, [1 x i32] %46) #8
  %47 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call1.i, ptr %owner, align 4
  %48 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i224 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 53
  %50 = ptrtoint ptr %s_user_ns.i.i224 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_user_ns.i.i224, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %52 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack.i225 = load i32, ptr %i_gid.i, align 8
  %53 = insertvalue [1 x i32] undef, i32 %.unpack.i225, 0
  %call1.i226 = tail call i32 @from_kgid(ptr noundef %51, [1 x i32] %53) #8
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call1.i226, ptr %5, align 4
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 13
  %57 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %d_inode.i, align 8
  %call32 = call ptr @__ext4_new_inode(ptr noundef nonnull @init_user_ns, ptr noundef %call.i, ptr noundef %60, i16 noundef zeroext -32768, ptr noundef null, i32 noundef %add26, ptr noundef nonnull %owner, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %cmp.i227 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call32 to i32
  %call36 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 459, ptr noundef %call.i) #8
  br label %out_unlock

if.end37:                                         ; preds = %if.end19
  %i_csum_seed = getelementptr i8, ptr %inode, i32 1172
  %62 = ptrtoint ptr %i_csum_seed to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_csum_seed, align 4
  %i_csum_seed40 = getelementptr i8, ptr %call32, i32 1172
  %64 = ptrtoint ptr %i_csum_seed40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %i_csum_seed40, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end37
  %65 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !20
  %and.i.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @trace_hardirqs_off() #8
  %66 = call ptr @llvm.returnaddress(i32 0) #8
  %67 = ptrtoint ptr %66 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %67) #8
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %67) #8
  call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = call ptr @llvm.returnaddress(i32 0) #8
  %69 = ptrtoint ptr %68 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %69) #8
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %69) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !21
  %and.i.i.i.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !22

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %65) #8, !srcloc !23
  %71 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !25
  %73 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i229 = and i32 %74, 1
  %tobool.not.i230 = icmp eq i32 %and.i229, 0
  br i1 %tobool.not.i230, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %72, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %74, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  %75 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  %77 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %78, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -464
  call fastcc void @i_size_write(ptr noundef %call32, i64 noundef %76)
  call void @clear_nlink(ptr noundef %call32) #8
  call void @ext4_ext_tree_init(ptr noundef %call.i, ptr noundef %call32) #8
  %call42 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 477, ptr noundef %call.i) #8
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  call void @down_read(ptr noundef %i_data_sem) #8
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  call void @_set_bit(i32 noundef 5, ptr noundef %i_state_flags.i) #8
  call void @up_read(ptr noundef %i_data_sem) #8
  %79 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i233 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i.i233, align 16
  %s_cluster_ratio.i.i234 = getelementptr inbounds %struct.ext4_sb_info, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %s_cluster_ratio.i.i234 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_cluster_ratio.i.i234, align 4
  %mul.i.i235 = shl i32 %84, 3
  %call.i237 = call ptr @__ext4_journal_start_sb(ptr noundef %80, i32 noundef 499, i32 noundef 8, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i235) #8
  %cmp.i238 = icmp ugt ptr %call.i237, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i238, label %if.then50, label %if.end52

if.then50:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %call.i237 to i32
  br label %out_tmp_inode

if.end52:                                         ; preds = %i_size_read.exit
  %86 = call ptr @memset(ptr %lb, i32 0, i32 32)
  %87 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %90, 2
  %first_pblock.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 3
  %last_pblock.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 4
  %last_block.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 1
  %curr_block.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end52
  %i.0247 = phi i32 [ 0, %if.end52 ], [ %inc68, %for.inc.for.body_crit_edge ]
  %arrayidx58 = getelementptr i32, ptr %add.ptr.i, i32 %i.0247
  %91 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool59.not = icmp eq i32 %92, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %for.body
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %conv62 = zext i32 %93 to i64
  %94 = ptrtoint ptr %first_pblock.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %first_pblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool.not.i239 = icmp eq i64 %95, 0
  br i1 %tobool.not.i239, label %if.then60.update_extent_range.exit_crit_edge, label %land.lhs.true.i

if.then60.update_extent_range.exit_crit_edge:     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

land.lhs.true.i:                                  ; preds = %if.then60
  %96 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %last_pblock.i, align 8
  %add.i = add i64 %97, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv62)
  %cmp.i240 = icmp eq i64 %add.i, %conv62
  br i1 %cmp.i240, label %land.lhs.true2.i, label %land.lhs.true.i.update_extent_range.exit_crit_edge

land.lhs.true.i.update_extent_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %98 = ptrtoint ptr %last_block.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %last_block.i, align 4
  %add3.i = add i32 %99, 1
  %100 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %curr_block.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %101)
  %cmp4.i = icmp eq i32 %add3.i, %101
  br i1 %cmp4.i, label %update_extent_range.exit.thread, label %land.lhs.true2.i.update_extent_range.exit_crit_edge

land.lhs.true2.i.update_extent_range.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

update_extent_range.exit.thread:                  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv62, ptr %last_pblock.i, align 8
  %103 = ptrtoint ptr %last_block.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add3.i, ptr %last_block.i, align 4
  %inc.i = add i32 %99, 2
  br label %for.inc.sink.split

update_extent_range.exit:                         ; preds = %land.lhs.true2.i.update_extent_range.exit_crit_edge, %land.lhs.true.i.update_extent_range.exit_crit_edge, %if.then60.update_extent_range.exit_crit_edge
  %call.i241 = call fastcc i32 @finish_range(ptr noundef %call.i237, ptr noundef %call32, ptr noundef nonnull %lb) #8
  %104 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv62, ptr %last_pblock.i, align 8
  %105 = ptrtoint ptr %first_pblock.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv62, ptr %first_pblock.i, align 8
  %106 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %curr_block.i, align 8
  %108 = ptrtoint ptr %last_block.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %last_block.i, align 4
  %109 = ptrtoint ptr %lb to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %107, ptr %lb, align 8
  %inc14.i = add i32 %107, 1
  store i32 %inc14.i, ptr %curr_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool64.not = icmp eq i32 %call.i241, 0
  br i1 %tobool64.not, label %update_extent_range.exit.for.inc_crit_edge, label %update_extent_range.exit.if.end116.sink.split_crit_edge

update_extent_range.exit.if.end116.sink.split_crit_edge: ; preds = %update_extent_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

update_extent_range.exit.for.inc_crit_edge:       ; preds = %update_extent_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %curr_block.i, align 8
  %inc = add i32 %111, 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else, %update_extent_range.exit.thread
  %inc.i.sink = phi i32 [ %inc.i, %update_extent_range.exit.thread ], [ %inc, %if.else ]
  %112 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %inc.i.sink, ptr %curr_block.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %update_extent_range.exit.for.inc_crit_edge
  %inc68 = add nuw nsw i32 %i.0247, 1
  %exitcond.not = icmp eq i32 %inc68, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx69 = getelementptr i8, ptr %inode, i32 -416
  %113 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool70.not = icmp eq i32 %114, 0
  br i1 %tobool70.not, label %if.else78, label %if.then71

if.then71:                                        ; preds = %for.end
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %conv73 = zext i32 %115 to i64
  %call74 = call fastcc i32 @update_ind_extent_range(ptr noundef %call.i237, ptr noundef %call32, i64 noundef %conv73, ptr noundef nonnull %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then71.if.end81_crit_edge, label %if.then71.if.end116.sink.split_crit_edge

if.then71.if.end116.sink.split_crit_edge:         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

if.then71.if.end81_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.else78:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %curr_block.i, align 8
  %add80 = add i32 %117, %shr
  store i32 %add80, ptr %curr_block.i, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then71.if.end81_crit_edge
  %arrayidx82 = getelementptr i8, ptr %inode, i32 -412
  %118 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool83.not = icmp eq i32 %119, 0
  br i1 %tobool83.not, label %if.else91, label %if.then84

if.then84:                                        ; preds = %if.end81
  %120 = call i32 @llvm.bswap.i32(i32 %119)
  %conv86 = zext i32 %120 to i64
  %call87 = call fastcc i32 @update_dind_extent_range(ptr noundef %call.i237, ptr noundef %call32, i64 noundef %conv86, ptr noundef nonnull %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then84.if.end95_crit_edge, label %if.then84.if.end116.sink.split_crit_edge

if.then84.if.end116.sink.split_crit_edge:         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

if.then84.if.end95_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.else91:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %mul92 = mul i32 %shr, %shr
  %121 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %curr_block.i, align 8
  %add94 = add i32 %122, %mul92
  store i32 %add94, ptr %curr_block.i, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.else91, %if.then84.if.end95_crit_edge
  %arrayidx96 = getelementptr i8, ptr %inode, i32 -408
  %123 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool97.not = icmp eq i32 %124, 0
  br i1 %tobool97.not, label %if.end95.err_out_crit_edge, label %if.then98

if.end95.err_out_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then98:                                        ; preds = %if.end95
  %125 = call i32 @llvm.bswap.i32(i32 %124)
  %conv100 = zext i32 %125 to i64
  %call101 = call fastcc i32 @update_tind_extent_range(ptr noundef %call.i237, ptr noundef %call32, i64 noundef %conv100, ptr noundef nonnull %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then98.err_out_crit_edge, label %if.then98.if.end116.sink.split_crit_edge

if.then98.if.end116.sink.split_crit_edge:         ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

if.then98.err_out_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

err_out:                                          ; preds = %if.then98.err_out_crit_edge, %if.end95.err_out_crit_edge
  %call106 = call fastcc i32 @finish_range(ptr noundef %call.i237, ptr noundef %call32, ptr noundef nonnull %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.else110, label %err_out.if.end116.sink.split_crit_edge

err_out.if.end116.sink.split_crit_edge:           ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

if.else110:                                       ; preds = %err_out
  %call111 = call fastcc i32 @ext4_ext_swap_inode_data(ptr noundef %call.i237, ptr noundef %inode, ptr noundef %call32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.else110.if.end116_crit_edge, label %if.else110.if.end116.sink.split_crit_edge

if.else110.if.end116.sink.split_crit_edge:        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.sink.split

if.else110.if.end116_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.end116.sink.split:                             ; preds = %if.else110.if.end116.sink.split_crit_edge, %err_out.if.end116.sink.split_crit_edge, %if.then98.if.end116.sink.split_crit_edge, %if.then84.if.end116.sink.split_crit_edge, %if.then71.if.end116.sink.split_crit_edge, %update_extent_range.exit.if.end116.sink.split_crit_edge
  call fastcc void @free_ext_block(ptr noundef %call.i237, ptr noundef %call32)
  br label %if.end116

if.end116:                                        ; preds = %if.end116.sink.split, %if.else110.if.end116_crit_edge
  %call117 = call fastcc i32 @ext4_journal_ensure_credits(ptr noundef %call.i237, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end116.out_stop_crit_edge, label %if.end121

if.end116.out_stop_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_stop

if.end121:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @i_size_write(ptr noundef %call32, i64 noundef 0)
  %i_blocks122 = getelementptr inbounds %struct.inode, ptr %call32, i32 0, i32 22
  %126 = ptrtoint ptr %i_blocks122 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %i_blocks122, align 8
  call void @ext4_ext_tree_init(ptr noundef %call.i237, ptr noundef %call32) #8
  br label %out_stop

out_stop:                                         ; preds = %if.end121, %if.end116.out_stop_crit_edge
  %call123 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ext_migrate, i32 noundef 582, ptr noundef %call.i237) #8
  br label %out_tmp_inode

out_tmp_inode:                                    ; preds = %out_stop, %if.then50
  %retval1.1 = phi i32 [ %85, %if.then50 ], [ %call117, %out_stop ]
  call void @unlock_new_inode(ptr noundef %call32) #8
  call void @iput(ptr noundef %call32) #8
  br label %out_unlock

out_unlock:                                       ; preds = %out_tmp_inode, %if.then34, %if.then17
  %retval1.2 = phi i32 [ %33, %if.then17 ], [ %61, %if.then34 ], [ %retval1.1, %out_tmp_inode ]
  call void @percpu_up_write(ptr noundef %s_writepages_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %out_unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %owner) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lb) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_new_inode(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %9 = tail call i32 @llvm.read_register.i32(metadata !9) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %18 = tail call i32 @llvm.read_register.i32(metadata !9) #8
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
  %22 = tail call i32 @llvm.read_register.i32(metadata !9) #8
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !9) #8
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !31
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !32
  %37 = tail call i32 @llvm.read_register.i32(metadata !9) #8
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
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !33

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !36
  %48 = tail call i32 @llvm.read_register.i32(metadata !9) #8
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
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_tree_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_ind_extent_range(ptr noundef %handle, ptr noundef %inode, i64 noundef %pblock, ptr nocapture noundef %lb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %3, 2
  %call = tail call ptr @ext4_sb_bread(ptr noundef %1, i64 noundef %pblock, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp31.not = icmp ult i32 %3, 4
  br i1 %cmp31.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %first_pblock.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 3
  %last_pblock.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 4
  %last_block.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 1
  %curr_block.i = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %6, i32 %i.032
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %for.body
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %conv = zext i32 %9 to i64
  %10 = ptrtoint ptr %first_pblock.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %first_pblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i, label %if.then5.update_extent_range.exit_crit_edge, label %land.lhs.true.i

if.then5.update_extent_range.exit_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %12 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %last_pblock.i, align 8
  %add.i = add i64 %13, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv)
  %cmp.i28 = icmp eq i64 %add.i, %conv
  br i1 %cmp.i28, label %land.lhs.true2.i, label %land.lhs.true.i.update_extent_range.exit_crit_edge

land.lhs.true.i.update_extent_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %last_block.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_block.i, align 4
  %add3.i = add i32 %15, 1
  %16 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %curr_block.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %17)
  %cmp4.i = icmp eq i32 %add3.i, %17
  br i1 %cmp4.i, label %update_extent_range.exit.thread, label %land.lhs.true2.i.update_extent_range.exit_crit_edge

land.lhs.true2.i.update_extent_range.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_extent_range.exit

update_extent_range.exit.thread:                  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %last_pblock.i, align 8
  %19 = ptrtoint ptr %last_block.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add3.i, ptr %last_block.i, align 4
  %inc.i = add i32 %15, 2
  br label %for.inc.sink.split

update_extent_range.exit:                         ; preds = %land.lhs.true2.i.update_extent_range.exit_crit_edge, %land.lhs.true.i.update_extent_range.exit_crit_edge, %if.then5.update_extent_range.exit_crit_edge
  %call.i = tail call fastcc i32 @finish_range(ptr noundef %handle, ptr noundef %inode, ptr noundef %lb) #8
  %20 = ptrtoint ptr %last_pblock.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %last_pblock.i, align 8
  %21 = ptrtoint ptr %first_pblock.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv, ptr %first_pblock.i, align 8
  %22 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %curr_block.i, align 8
  %24 = ptrtoint ptr %last_block.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_block.i, align 4
  %25 = ptrtoint ptr %lb to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %lb, align 8
  %inc14.i = add i32 %23, 1
  store i32 %inc14.i, ptr %curr_block.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %update_extent_range.exit.for.inc_crit_edge, label %update_extent_range.exit.for.end_crit_edge

update_extent_range.exit.for.end_crit_edge:       ; preds = %update_extent_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

update_extent_range.exit.for.inc_crit_edge:       ; preds = %update_extent_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %curr_block.i, align 8
  %inc = add i32 %27, 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else, %update_extent_range.exit.thread
  %inc.i.sink = phi i32 [ %inc.i, %update_extent_range.exit.thread ], [ %inc, %if.else ]
  %28 = ptrtoint ptr %curr_block.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i.sink, ptr %curr_block.i, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %update_extent_range.exit.for.inc_crit_edge
  %inc12 = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc12, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %update_extent_range.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %retval1.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call.i, %update_extent_range.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval1.2, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_dind_extent_range(ptr noundef %handle, ptr noundef %inode, i64 noundef %pblock, ptr nocapture noundef %lb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %3, 2
  %call = tail call ptr @ext4_sb_bread(ptr noundef %1, i64 noundef %pblock, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp28.not = icmp ult i32 %3, 4
  br i1 %cmp28.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %curr_block = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %6, i32 %i.029
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %for.body
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %conv = zext i32 %9 to i64
  %call7 = tail call fastcc i32 @update_ind_extent_range(ptr noundef %handle, ptr noundef %inode, i64 noundef %conv, ptr noundef %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.for.inc_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %curr_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_block, align 8
  %add = add i32 %11, %shr
  store i32 %add, ptr %curr_block, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5.for.end_crit_edge, %if.end.for.end_crit_edge
  %retval1.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call7, %if.then5.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval1.2, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_tind_extent_range(ptr noundef %handle, ptr noundef %inode, i64 noundef %pblock, ptr nocapture noundef %lb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %3, 2
  %call = tail call ptr @ext4_sb_bread(ptr noundef %1, i64 noundef %pblock, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp29.not = icmp ult i32 %3, 4
  br i1 %cmp29.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %mul = mul i32 %shr, %shr
  %curr_block = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %6, i32 %i.030
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %for.body
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %conv = zext i32 %9 to i64
  %call7 = tail call fastcc i32 @update_dind_extent_range(ptr noundef %handle, ptr noundef %inode, i64 noundef %conv, ptr noundef %lb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.for.inc_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %curr_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_block, align 8
  %add = add i32 %11, %mul
  store i32 %add, ptr %curr_block, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then5.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5.for.end_crit_edge, %if.end.for.end_crit_edge
  %retval1.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call7, %if.then5.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval1.2, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @finish_range(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef %lb) unnamed_addr #0 align 64 {
entry:
  %newext = alloca %struct.ext4_extent, align 4
  %path = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %newext) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %path) #8
  %first_pblock = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 3
  %0 = ptrtoint ptr %first_pblock to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %first_pblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.ext4_extent, ptr %newext, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ext4_extent, ptr %newext, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ext4_extent, ptr %newext, i32 0, i32 1
  %5 = ptrtoint ptr %lb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lb, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %newext to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %newext, align 4
  %last_block = getelementptr inbounds %struct.migrate_struct, ptr %lb, i32 0, i32 1
  %9 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_block, align 4
  %sub = sub i32 %10, %6
  %11 = trunc i32 %sub to i16
  %conv = add i16 %11, 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %4, align 4
  %conv.i = trunc i64 %1 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %2, align 4
  %shr.i = lshr i64 %1, 32
  %conv2.i = trunc i64 %shr.i to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %3, align 2
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %18 = ptrtoint ptr %lb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lb, align 8
  %call5 = tail call ptr @ext4_find_extent(ptr noundef %inode, i32 noundef %19, ptr noundef null, i32 noundef 0) #8
  %20 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5, ptr %path, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call5 to i32
  %22 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %path, align 4
  br label %err_out

if.end9:                                          ; preds = %if.end
  %23 = ptrtoint ptr %last_block to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_block, align 4
  %25 = ptrtoint ptr %lb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lb, align 8
  %sub12 = add i32 %24, 1
  %add13 = sub i32 %sub12, %26
  %call14 = tail call i32 @ext4_ext_calc_credits_for_single_extent(ptr noundef %inode, i32 noundef %add13, ptr noundef %call5) #8
  %call15 = tail call i32 @ext4_datasem_ensure_credits(ptr noundef %handle, ptr noundef %inode, i32 noundef %call14, i32 noundef %call14, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end9.err_out_crit_edge, label %if.end19

if.end9.err_out_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call i32 @ext4_ext_insert_extent(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull %path, ptr noundef nonnull %newext, i32 noundef 0) #8
  br label %err_out

err_out:                                          ; preds = %if.end19, %if.end9.err_out_crit_edge, %if.then7
  %retval1.0 = phi i32 [ %21, %if.then7 ], [ %call15, %if.end9.err_out_crit_edge ], [ %call20, %if.end19 ]
  call void @up_write(ptr noundef %i_data_sem) #8
  %27 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %path, align 4
  call void @ext4_ext_drop_refs(ptr noundef %28) #8
  %29 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %path, align 4
  call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %first_pblock to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %first_pblock, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %err_out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %path) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %newext) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_ext_block(ptr noundef %handle, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eh_depth = getelementptr i8, ptr %inode, i32 -458
  %0 = ptrtoint ptr %eh_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %eh_depth, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %eh_entries = getelementptr i8, ptr %inode, i32 -462
  %2 = ptrtoint ptr %eh_entries to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eh_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp42.not = icmp eq i16 %3, 0
  br i1 %cmp42.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %inode, i32 -452
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ix.04 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.03 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call6 = tail call fastcc i32 @free_ext_idx(ptr noundef %handle, ptr noundef %inode, ptr noundef %ix.04)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.03, 1
  %incdec.ptr = getelementptr %struct.ext4_extent_idx, ptr %ix.04, i32 1
  %4 = ptrtoint ptr %eh_entries to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %eh_entries, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %6 to i32
  %cmp4 = icmp ult i32 %inc, %conv3
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_ext_swap_inode_data(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef readonly %tmp_inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -464
  %add.ptr.i55 = getelementptr i8, ptr %tmp_inode, i32 -464
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %entry.ext4_journal_ensure_credits.exit_crit_edge, label %if.end3.i

entry.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

if.end3.i:                                        ; preds = %entry
  %cmp.i.not.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i, label %if.end3.i.if.end_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 1, i32 noundef 0, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end_crit_edge, label %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge

ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

ext4_journal_restart.exit.i.if.end_crit_edge:     ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ext4_journal_ensure_credits.exit:                 ; preds = %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge, %entry.ext4_journal_ensure_credits.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %entry.ext4_journal_ensure_credits.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %ext4_journal_ensure_credits.exit.err_out_crit_edge, label %ext4_journal_ensure_credits.exit.if.end_crit_edge

ext4_journal_ensure_credits.exit.if.end_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

ext4_journal_ensure_credits.exit.err_out_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %ext4_journal_ensure_credits.exit.if.end_crit_edge, %ext4_journal_restart.exit.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %arrayidx = getelementptr i8, ptr %inode, i32 -416
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %arrayidx7 = getelementptr i8, ptr %inode, i32 -412
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx7, align 4
  %arrayidx10 = getelementptr i8, ptr %inode, i32 -408
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 8
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %i_state_flags.i = getelementptr i8, ptr %inode, i32 -384
  %6 = ptrtoint ptr %i_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_state_flags.i, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %i_data_sem) #8
  br label %err_out

if.else:                                          ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %i_state_flags.i) #8
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  tail call void @_set_bit(i32 noundef 19, ptr noundef %i_flags.i) #8
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr.i55, i32 60)
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %tmp_inode, i32 0, i32 22
  %10 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_blocks, align 8
  %i_blocks21 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %12 = ptrtoint ptr %i_blocks21 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_blocks21, align 8
  %add = add i64 %13, %11
  store i64 %add, ptr %i_blocks21, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  tail call void @up_write(ptr noundef %i_data_sem) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.if.end5.i_crit_edge, label %if.then.i

if.else.if.end5.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %if.else
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %call.i.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef 12, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i.i, label %if.then.i.ext4_journal_ensure_credits.exit.i_crit_edge, label %if.end3.i.i

if.then.i.ext4_journal_ensure_credits.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit.i

if.end3.i.i:                                      ; preds = %if.then.i
  %cmp.i.not.i.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i.i, label %if.end3.i.i.if.end.i_crit_edge, label %ext4_journal_restart.exit.i.i

if.end3.i.i.if.end.i_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ext4_journal_restart.exit.i.i:                    ; preds = %if.end3.i.i
  %call1.i.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 12, i32 noundef %19, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp5.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %cmp5.i.i, label %ext4_journal_restart.exit.i.i.if.end.i_crit_edge, label %ext4_journal_restart.exit.i.i.ext4_journal_ensure_credits.exit.i_crit_edge

ext4_journal_restart.exit.i.i.ext4_journal_ensure_credits.exit.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit.i

ext4_journal_restart.exit.i.i.if.end.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ext4_journal_ensure_credits.exit.i:               ; preds = %ext4_journal_restart.exit.i.i.ext4_journal_ensure_credits.exit.i_crit_edge, %if.then.i.ext4_journal_ensure_credits.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %if.then.i.ext4_journal_ensure_credits.exit.i_crit_edge ], [ %call1.i.i.i, %ext4_journal_restart.exit.i.i.ext4_journal_ensure_credits.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i60 = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i60, label %ext4_journal_ensure_credits.exit.i.free_ind_block.exit_crit_edge, label %ext4_journal_ensure_credits.exit.i.if.end.i_crit_edge

ext4_journal_ensure_credits.exit.i.if.end.i_crit_edge: ; preds = %ext4_journal_ensure_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

ext4_journal_ensure_credits.exit.i.free_ind_block.exit_crit_edge: ; preds = %ext4_journal_ensure_credits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_ind_block.exit

if.end.i:                                         ; preds = %ext4_journal_ensure_credits.exit.i.if.end.i_crit_edge, %ext4_journal_restart.exit.i.i.if.end.i_crit_edge, %if.end3.i.i.if.end.i_crit_edge
  %20 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %conv.i = zext i32 %20 to i64
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %conv.i, i32 noundef 1, i32 noundef 3) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.else.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not.i = icmp eq i32 %3, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end14.i_crit_edge, label %if.then8.i

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end5.i
  %call10.i = tail call fastcc i32 @free_dind_blocks(ptr noundef %handle, ptr noundef %inode, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end14.i_crit_edge, label %if.then8.i.free_ind_block.exit_crit_edge

if.then8.i.free_ind_block.exit_crit_edge:         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_ind_block.exit

if.then8.i.if.end14.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not.i = icmp eq i32 %5, 0
  br i1 %tobool16.not.i, label %if.end14.i.free_ind_block.exit_crit_edge, label %if.then17.i

if.end14.i.free_ind_block.exit_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_ind_block.exit

if.then17.i:                                      ; preds = %if.end14.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize.i.i, align 16
  %shr.i.i61 = lshr i32 %24, 2
  %25 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %conv.i.i = zext i32 %25 to i64
  %call.i41.i = tail call ptr @ext4_sb_bread(ptr noundef %22, i64 noundef %conv.i.i, i32 noundef 0) #8
  %cmp.i.i.i = icmp ugt ptr %call.i41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %free_tind_blocks.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then17.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i41.i, i32 0, i32 5
  %26 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp48.not.i.i = icmp ult i32 %24, 4
  br i1 %cmp48.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %shr.i.i61, i32 1) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.049.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %27, i32 %i.049.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  %call8.i.i = tail call fastcc i32 @free_dind_blocks(ptr noundef %handle, ptr noundef %inode, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then6.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i

if.then6.i.i.for.inc.i.i_crit_edge:               ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i41.i, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #8
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #8, !srcloc !38
  br label %free_ind_block.exit

for.inc.i.i:                                      ; preds = %if.then6.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i43.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i41.i, i32 0, i32 11
  %call.i.i.i44.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i43.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i43.i.i, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i43.i.i, ptr %b_count.i43.i.i, i32 1, ptr elementtype(i32) %b_count.i43.i.i) #8, !srcloc !38
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %call.i.i.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef 12, i32 noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i45.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i45.i.i, label %for.end.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge, label %if.end3.i.i.i

for.end.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit.i.i

if.end3.i.i.i:                                    ; preds = %for.end.i.i
  %cmp.i.not.i.i.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i.i.i, label %if.end3.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge, label %ext4_journal_restart.exit.i.i.i

if.end3.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tind_blocks.exit.thread46.i

ext4_journal_restart.exit.i.i.i:                  ; preds = %if.end3.i.i.i
  %call1.i.i.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 12, i32 noundef %37, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp5.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %cmp5.i.i.i, label %ext4_journal_restart.exit.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge, label %ext4_journal_restart.exit.i.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge

ext4_journal_restart.exit.i.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit.i.i

ext4_journal_restart.exit.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tind_blocks.exit.thread46.i

ext4_journal_ensure_credits.exit.i.i:             ; preds = %ext4_journal_restart.exit.i.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge, %for.end.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call.i.i.i, %for.end.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge ], [ %call1.i.i.i.i, %ext4_journal_restart.exit.i.i.i.ext4_journal_ensure_credits.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %cmp16.i.i = icmp slt i32 %err.0.i.i.i, 0
  br i1 %cmp16.i.i, label %ext4_journal_ensure_credits.exit.i.i.free_ind_block.exit_crit_edge, label %ext4_journal_ensure_credits.exit.i.i.free_tind_blocks.exit.thread46.i_crit_edge

ext4_journal_ensure_credits.exit.i.i.free_tind_blocks.exit.thread46.i_crit_edge: ; preds = %ext4_journal_ensure_credits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tind_blocks.exit.thread46.i

ext4_journal_ensure_credits.exit.i.i.free_ind_block.exit_crit_edge: ; preds = %ext4_journal_ensure_credits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_ind_block.exit

free_tind_blocks.exit.thread46.i:                 ; preds = %ext4_journal_ensure_credits.exit.i.i.free_tind_blocks.exit.thread46.i_crit_edge, %ext4_journal_restart.exit.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge, %if.end3.i.i.i.free_tind_blocks.exit.thread46.i_crit_edge
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %conv.i.i, i32 noundef 1, i32 noundef 3) #8
  br label %free_ind_block.exit

free_tind_blocks.exit.i:                          ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call.i41.i to i32
  br label %free_ind_block.exit

free_ind_block.exit:                              ; preds = %free_tind_blocks.exit.i, %free_tind_blocks.exit.thread46.i, %ext4_journal_ensure_credits.exit.i.i.free_ind_block.exit_crit_edge, %if.then10.i.i, %if.end14.i.free_ind_block.exit_crit_edge, %if.then8.i.free_ind_block.exit_crit_edge, %ext4_journal_ensure_credits.exit.i.free_ind_block.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i.i, %ext4_journal_ensure_credits.exit.i.free_ind_block.exit_crit_edge ], [ %call10.i, %if.then8.i.free_ind_block.exit_crit_edge ], [ %38, %free_tind_blocks.exit.i ], [ %err.0.i.i.i, %ext4_journal_ensure_credits.exit.i.i.free_ind_block.exit_crit_edge ], [ %call8.i.i, %if.then10.i.i ], [ 0, %free_tind_blocks.exit.thread46.i ], [ 0, %if.end14.i.free_ind_block.exit_crit_edge ]
  %call27 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %handle, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_ext_swap_inode_data, i32 noundef 345) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp ne i32 %call27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool29.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool28.not, i1 %tobool29.not, i1 false
  br i1 %spec.select, label %if.then33, label %free_ind_block.exit.err_out_crit_edge, !prof !22

free_ind_block.exit.err_out_crit_edge:            ; preds = %free_ind_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then33:                                        ; preds = %free_ind_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

err_out:                                          ; preds = %if.then33, %free_ind_block.exit.err_out_crit_edge, %if.then14, %ext4_journal_ensure_credits.exit.err_out_crit_edge
  %retval1.0 = phi i32 [ %err.0.i, %ext4_journal_ensure_credits.exit.err_out_crit_edge ], [ %call27, %if.then33 ], [ %retval.0.i, %free_ind_block.exit.err_out_crit_edge ], [ -11, %if.then14 ]
  ret i32 %retval1.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef %credits, i32 noundef %revoke_creds) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef %credits, i32 noundef %credits, i32 noundef %revoke_creds) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.__ensure_end_crit_edge, label %if.end3

entry.__ensure_end_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ensure_end

if.end3:                                          ; preds = %entry
  %cmp.i.not.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i, label %if.end3.ext4_journal_restart.exit.thread_crit_edge, label %ext4_journal_restart.exit

if.end3.ext4_journal_restart.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_restart.exit.thread

ext4_journal_restart.exit:                        ; preds = %if.end3
  %call1.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef %credits, i32 noundef %revoke_creds, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp eq i32 %call1.i, 0
  br i1 %cmp5, label %ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge, label %ext4_journal_restart.exit.__ensure_end_crit_edge

ext4_journal_restart.exit.__ensure_end_crit_edge: ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ensure_end

ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge: ; preds = %ext4_journal_restart.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_restart.exit.thread

ext4_journal_restart.exit.thread:                 ; preds = %ext4_journal_restart.exit.ext4_journal_restart.exit.thread_crit_edge, %if.end3.ext4_journal_restart.exit.thread_crit_edge
  br label %__ensure_end

__ensure_end:                                     ; preds = %ext4_journal_restart.exit.thread, %ext4_journal_restart.exit.__ensure_end_crit_edge, %entry.__ensure_end_crit_edge
  %err.0 = phi i32 [ %call, %entry.__ensure_end_crit_edge ], [ 1, %ext4_journal_restart.exit.thread ], [ %call1.i, %ext4_journal_restart.exit.__ensure_end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_ind_migrate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
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
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -464
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_incompat.i, align 8
  %and.i = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %i_flags.i = getelementptr i8, ptr %inode, i32 -380
  %8 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_flags.i, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 30
  %11 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i113 = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %cmp.i114.not = icmp eq i32 %and.i113, 0
  br i1 %cmp.i114.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %14, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @ext4_alloc_da_blocks(ptr noundef %inode) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  %s_writepages_rwsem = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 138
  tail call void @percpu_down_write(ptr noundef %s_writepages_rwsem) #8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %20, 3
  %call.i = tail call ptr @__ext4_journal_start_sb(ptr noundef %16, i32 noundef 624, i32 noundef 8, i32 noundef 1, i32 noundef 0, i32 noundef %mul.i.i) #8
  %cmp.i116 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  br label %out_unlock

if.end21:                                         ; preds = %if.end14
  %i_data_sem = getelementptr i8, ptr %inode, i32 -96
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %call23 = tail call i32 @ext4_ext_check_inode(ptr noundef %inode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.errout_crit_edge

if.end21.errout_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end26:                                         ; preds = %if.end21
  %add.ptr = getelementptr i8, ptr %inode, i32 -452
  %22 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not.i = icmp sgt i32 %23, -1
  br i1 %tobool.not.i, label %if.end26.lor.lhs.false29_crit_edge, label %cond.true.i

if.end26.lor.lhs.false29_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29

cond.true.i:                                      ; preds = %if.end26
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 50
  %24 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocks_count_hi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp = icmp eq i32 %25, 0
  br i1 %phi.cmp, label %cond.true.i.lor.lhs.false29_crit_edge, label %cond.true.i.errout_crit_edge

cond.true.i.errout_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

cond.true.i.lor.lhs.false29_crit_edge:            ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %cond.true.i.lor.lhs.false29_crit_edge, %if.end26.lor.lhs.false29_crit_edge
  %eh_depth = getelementptr i8, ptr %inode, i32 -458
  %26 = ptrtoint ptr %eh_depth to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %eh_depth, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp30.not = icmp eq i16 %27, 0
  br i1 %cmp30.not, label %lor.lhs.false32, label %lor.lhs.false29.errout_crit_edge

lor.lhs.false29.errout_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %eh_entries = getelementptr i8, ptr %inode, i32 -462
  %28 = ptrtoint ptr %eh_entries to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %eh_entries, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp34 = icmp ugt i16 %30, 1
  br i1 %cmp34, label %lor.lhs.false32.errout_crit_edge, label %if.end37

lor.lhs.false32.errout_crit_edge:                 ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end37:                                         ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp40 = icmp eq i16 %29, 0
  br i1 %cmp40, label %if.end37.if.end49_crit_edge, label %if.else

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else:                                          ; preds = %if.end37
  %ee_len = getelementptr i8, ptr %inode, i32 -448
  %31 = ptrtoint ptr %ee_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ee_len, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv43 = zext i16 %33 to i32
  %ee_start_lo.i = getelementptr i8, ptr %inode, i32 -444
  %34 = ptrtoint ptr %ee_start_lo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ee_start_lo.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %conv.i119 = zext i32 %36 to i64
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %add = add nsw i32 %conv43, -1
  %sub = add i32 %add, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub)
  %cmp45 = icmp ugt i32 %sub, 11
  br i1 %cmp45, label %if.else.errout_crit_edge, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else.errout_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %start.0 = phi i32 [ %39, %if.else.if.end49_crit_edge ], [ 0, %if.end37.if.end49_crit_edge ]
  %end.0 = phi i32 [ %sub, %if.else.if.end49_crit_edge ], [ 0, %if.end37.if.end49_crit_edge ]
  %blk.0 = phi i64 [ %conv.i119, %if.else.if.end49_crit_edge ], [ 0, %if.end37.if.end49_crit_edge ]
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %i_flags.i) #8
  %40 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 60)
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0, i32 %end.0)
  %cmp50.not125 = icmp ugt i32 %start.0, %end.0
  br i1 %cmp50.not125, label %if.end49.for.end_crit_edge, label %if.end49.for.body_crit_edge

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  br label %for.body

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end49.for.body_crit_edge
  %blk.1127 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ %blk.0, %if.end49.for.body_crit_edge ]
  %i.0126 = phi i32 [ %inc54, %for.body.for.body_crit_edge ], [ %start.0, %if.end49.for.body_crit_edge ]
  %inc = add i64 %blk.1127, 1
  %conv52 = trunc i64 %blk.1127 to i32
  %41 = tail call i32 @llvm.bswap.i32(i32 %conv52)
  %arrayidx = getelementptr [15 x i32], ptr %add.ptr.i, i32 0, i32 %i.0126
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx, align 4
  %inc54 = add i32 %i.0126, 1
  %cmp50.not = icmp ugt i32 %inc54, %end.0
  br i1 %cmp50.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end49.for.end_crit_edge
  %call55 = tail call i32 @__ext4_mark_inode_dirty(ptr noundef %call.i, ptr noundef %inode, ptr noundef nonnull @__func__.ext4_ind_migrate, i32 noundef 659) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.end.errout_crit_edge, label %if.then61, !prof !33

for.end.errout_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.then61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

errout:                                           ; preds = %if.then61, %for.end.errout_crit_edge, %if.else.errout_crit_edge, %lor.lhs.false32.errout_crit_edge, %lor.lhs.false29.errout_crit_edge, %cond.true.i.errout_crit_edge, %if.end21.errout_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end21.errout_crit_edge ], [ %call55, %if.then61 ], [ 0, %for.end.errout_crit_edge ], [ -95, %lor.lhs.false32.errout_crit_edge ], [ -95, %lor.lhs.false29.errout_crit_edge ], [ -95, %cond.true.i.errout_crit_edge ], [ -95, %if.else.errout_crit_edge ]
  %call63 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_ind_migrate, i32 noundef 663, ptr noundef %call.i) #8
  tail call void @up_write(ptr noundef %i_data_sem) #8
  br label %out_unlock

out_unlock:                                       ; preds = %errout, %if.then19
  %ret.1 = phi i32 [ %21, %if.then19 ], [ %ret.0, %errout ]
  tail call void @percpu_up_write(ptr noundef %s_writepages_rwsem) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_unlock ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_da_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_check_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_find_extent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_calc_credits_for_single_extent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_datasem_ensure_credits(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_ext_insert_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_ext_drop_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_ext_idx(ptr noundef %handle, ptr noundef %inode, ptr nocapture noundef readonly %ix) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ei_leaf_lo.i = getelementptr inbounds %struct.ext4_extent_idx, ptr %ix, i32 0, i32 1
  %0 = ptrtoint ptr %ei_leaf_lo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ei_leaf_lo.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %conv.i = zext i32 %2 to i64
  %ei_leaf_hi.i = getelementptr inbounds %struct.ext4_extent_idx, ptr %ix, i32 0, i32 2
  %3 = ptrtoint ptr %ei_leaf_hi.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ei_leaf_hi.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  %conv1.i = zext i16 %5 to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 32
  %or.i = or i64 %shl.i, %conv.i
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %call2 = tail call ptr @ext4_sb_bread(ptr noundef %7, i64 noundef %or.i, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %eh_depth = getelementptr inbounds %struct.ext4_extent_header, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %eh_depth to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %eh_depth, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.not = icmp eq i16 %12, 0
  br i1 %cmp.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %eh_entries = getelementptr inbounds %struct.ext4_extent_header, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %eh_entries to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %eh_entries, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp849.not = icmp eq i16 %14, 0
  br i1 %cmp849.not, label %if.then6.if.end13_crit_edge, label %for.body.preheader

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.body.preheader:                               ; preds = %if.then6
  %add.ptr = getelementptr i8, ptr %10, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ix.addr.050 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %call10 = tail call fastcc i32 @free_ext_idx(ptr noundef %handle, ptr noundef %inode, ptr noundef %ix.addr.050)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !38
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.051, 1
  %incdec.ptr = getelementptr %struct.ext4_extent_idx, ptr %ix.addr.050, i32 1
  %16 = ptrtoint ptr %eh_entries to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %eh_entries, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv7 = zext i16 %18 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.if.end13_crit_edge

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i43 = getelementptr inbounds %struct.buffer_head, ptr %call2, i32 0, i32 11
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i43, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i43, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i43, ptr %b_count.i43, i32 1, ptr elementtype(i32) %b_count.i43) #8, !srcloc !38
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_cluster_ratio.i, align 4
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef 12, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i45 = icmp slt i32 %call.i, 1
  br i1 %cmp.i45, label %if.end13.ext4_journal_ensure_credits.exit_crit_edge, label %if.end3.i

if.end13.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

if.end3.i:                                        ; preds = %if.end13
  %cmp.i.not.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i, label %if.end3.i.if.end20_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i.if.end20_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 12, i32 noundef %25, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end20_crit_edge, label %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge

ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

ext4_journal_restart.exit.i.if.end20_crit_edge:   ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_ensure_credits.exit:                 ; preds = %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge, %if.end13.ext4_journal_ensure_credits.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end13.ext4_journal_ensure_credits.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp17 = icmp slt i32 %err.0.i, 0
  br i1 %cmp17, label %ext4_journal_ensure_credits.exit.cleanup_crit_edge, label %ext4_journal_ensure_credits.exit.if.end20_crit_edge

ext4_journal_ensure_credits.exit.if.end20_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_ensure_credits.exit.cleanup_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %ext4_journal_ensure_credits.exit.if.end20_crit_edge, %ext4_journal_restart.exit.i.if.end20_crit_edge, %if.end3.i.if.end20_crit_edge
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %or.i, i32 noundef 1, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %ext4_journal_ensure_credits.exit.cleanup_crit_edge, %if.then11, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %call10, %if.then11 ], [ 0, %if.end20 ], [ %err.0.i, %ext4_journal_ensure_credits.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @free_dind_blocks(ptr noundef %handle, ptr noundef %inode, i32 noundef %i_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize, align 16
  %shr = lshr i32 %3, 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %i_data)
  %conv = zext i32 %4 to i64
  %call = tail call ptr @ext4_sb_bread(ptr noundef %1, i64 noundef %conv, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp66.not = icmp ult i32 %3, 4
  br i1 %cmp66.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %cmp.i.not.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.067
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_cluster_ratio.i, align 4
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef 12, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i47 = icmp slt i32 %call.i, 1
  br i1 %cmp.i47, label %if.then5.ext4_journal_ensure_credits.exit_crit_edge, label %if.end3.i

if.then5.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

if.end3.i:                                        ; preds = %if.then5
  br i1 %cmp.i.not.i.i, label %if.end3.i.if.end11_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i.if.end11_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 12, i32 noundef %13, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end11_crit_edge, label %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge

ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit

ext4_journal_restart.exit.i.if.end11_crit_edge:   ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ext4_journal_ensure_credits.exit:                 ; preds = %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge, %if.then5.ext4_journal_ensure_credits.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.then5.ext4_journal_ensure_credits.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_journal_ensure_credits.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp8 = icmp slt i32 %err.0.i, 0
  br i1 %cmp8, label %if.then10, label %ext4_journal_ensure_credits.exit.if.end11_crit_edge

ext4_journal_ensure_credits.exit.if.end11_crit_edge: ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %ext4_journal_ensure_credits.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !38
  br label %cleanup

if.end11:                                         ; preds = %ext4_journal_ensure_credits.exit.if.end11_crit_edge, %ext4_journal_restart.exit.i.if.end11_crit_edge, %if.end3.i.if.end11_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %conv13 = zext i32 %17 to i64
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %conv13, i32 noundef 1, i32 noundef 3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %b_count.i48 = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i48, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i48, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i48, ptr %b_count.i48, i32 1, ptr elementtype(i32) %b_count.i48) #8, !srcloc !38
  %s_fs_info.i.i50 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i50, align 16
  %s_cluster_ratio.i51 = getelementptr inbounds %struct.ext4_sb_info, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %s_cluster_ratio.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_cluster_ratio.i51, align 4
  %call.i52 = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 12, i32 noundef 12, i32 noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 1
  br i1 %cmp.i53, label %for.end.ext4_journal_ensure_credits.exit61_crit_edge, label %if.end3.i55

for.end.ext4_journal_ensure_credits.exit61_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit61

if.end3.i55:                                      ; preds = %for.end
  %cmp.i.not.i.i54 = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  br i1 %cmp.i.not.i.i54, label %if.end3.i55.if.end20_crit_edge, label %ext4_journal_restart.exit.i58

if.end3.i55.if.end20_crit_edge:                   ; preds = %if.end3.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_restart.exit.i58:                    ; preds = %if.end3.i55
  %call1.i.i56 = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 12, i32 noundef %22, i32 noundef 3136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i56)
  %cmp5.i57 = icmp eq i32 %call1.i.i56, 0
  br i1 %cmp5.i57, label %ext4_journal_restart.exit.i58.if.end20_crit_edge, label %ext4_journal_restart.exit.i58.ext4_journal_ensure_credits.exit61_crit_edge

ext4_journal_restart.exit.i58.ext4_journal_ensure_credits.exit61_crit_edge: ; preds = %ext4_journal_restart.exit.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %ext4_journal_ensure_credits.exit61

ext4_journal_restart.exit.i58.if.end20_crit_edge: ; preds = %ext4_journal_restart.exit.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_ensure_credits.exit61:               ; preds = %ext4_journal_restart.exit.i58.ext4_journal_ensure_credits.exit61_crit_edge, %for.end.ext4_journal_ensure_credits.exit61_crit_edge
  %err.0.i60 = phi i32 [ %call.i52, %for.end.ext4_journal_ensure_credits.exit61_crit_edge ], [ %call1.i.i56, %ext4_journal_restart.exit.i58.ext4_journal_ensure_credits.exit61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i60)
  %cmp17 = icmp slt i32 %err.0.i60, 0
  br i1 %cmp17, label %ext4_journal_ensure_credits.exit61.cleanup_crit_edge, label %ext4_journal_ensure_credits.exit61.if.end20_crit_edge

ext4_journal_ensure_credits.exit61.if.end20_crit_edge: ; preds = %ext4_journal_ensure_credits.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

ext4_journal_ensure_credits.exit61.cleanup_crit_edge: ; preds = %ext4_journal_ensure_credits.exit61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %ext4_journal_ensure_credits.exit61.if.end20_crit_edge, %ext4_journal_restart.exit.i58.if.end20_crit_edge, %if.end3.i55.if.end20_crit_edge
  tail call void @ext4_free_blocks(ptr noundef %handle, ptr noundef %inode, ptr noundef null, i64 noundef %conv, i32 noundef 1, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %ext4_journal_ensure_credits.exit61.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %err.0.i, %if.then10 ], [ 0, %if.end20 ], [ %err.0.i60, %ext4_journal_ensure_credits.exit61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__func__.ext4_ext_migrate, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/migrate.c", i32 459, i32 3}
!2 = !{ptr @__func__.ext4_ind_migrate, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/migrate.c", i32 659, i32 9}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.ext4_ext_swap_inode_data, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ext4/migrate.c", i32 345, i32 12}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i64 1000445, i64 1000506}
!21 = !{i64 1003177}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 1003462}
!24 = !{i64 2152932778}
!25 = !{i64 2152932620}
!26 = !{i64 2152932948}
!27 = !{i64 2149775164}
!28 = !{i64 2152934709}
!29 = !{i64 2149667496}
!30 = !{i64 2149672428}
!31 = !{i64 2149694140}
!32 = !{i64 2149699032}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2149775489}
!35 = !{i64 2149775814}
!36 = !{i64 2152946571}
!37 = !{i64 2153876644}
!38 = !{i64 2148598230, i64 2148598256, i64 2148598285, i64 2148598319, i64 2148598350, i64 2148598373}
