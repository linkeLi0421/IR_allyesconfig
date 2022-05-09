; ModuleID = '/llk/IR_all_yes/fs/xfs/scrub/inode.c_pt.bc'
source_filename = "../fs/xfs/scrub/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.xfs_scrub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.xchk_ag }
%struct.xchk_ag = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfs_dinode = type { i16, i16, i8, i8, i16, i32, i32, i32, i16, i16, [6 x i8], i16, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, i64, i32, [12 x i8], i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }

@XFS_RMAP_OINFO_INODES = external dso_local constant %struct.xfs_owner_info, align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_setup_inode(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xchk_get_inode(ptr noundef %sc) #4
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %sw.epilog
    i32 -117, label %entry.sw.bb_crit_edge
    i32 -74, label %entry.sw.bb_crit_edge16
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %call1 = tail call i32 @xchk_trans_alloc(ptr noundef %sc, i32 noundef 0) #4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %ilock_flags = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 7
  %1 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %ilock_flags, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %3, i32 noundef 17) #4
  %call3 = tail call i32 @xchk_trans_alloc(ptr noundef %sc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %ilock_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ilock_flags, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %ilock_flags, align 4
  %6 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ip, align 4
  tail call void @xfs_ilock(ptr noundef %7, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_get_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xchk_inode(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %has_shared.i = alloca i8, align 1
  %error.i = alloca i32, align 4
  %di = alloca %struct.xfs_dinode, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %di) #4
  %0 = call ptr @memset(ptr %di, i32 255, i32 176)
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_ino = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %sm_ino to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sm_ino, align 8
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %6) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @xfs_inode_to_disk(ptr noundef nonnull %2, ptr noundef nonnull %di, i64 noundef 0) #4
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_ino, align 8
  call fastcc void @xchk_dinode(ptr noundef %sc, ptr noundef nonnull %di, i64 noundef %10)
  %sm3 = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %11 = ptrtoint ptr %sm3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sm3, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sm_flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i_vnode.i, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %19)
  %cmp = icmp eq i16 %19, -32768
  br i1 %cmp, label %if.then10, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  %i_ino12 = getelementptr inbounds %struct.xfs_inode, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ino12, align 8
  %22 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %has_shared.i) #4
  %24 = ptrtoint ptr %has_shared.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %has_shared.i, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #4
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %23, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then10.xchk_inode_check_reflink_iflag.exit_crit_edge, label %if.end.i

if.then10.xchk_inode_check_reflink_iflag.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_check_reflink_iflag.exit

if.end.i:                                         ; preds = %if.then10
  %tp.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %27 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp.i, align 4
  %call2.i = call i32 @xfs_reflink_inode_has_shared_extents(ptr noundef %28, ptr noundef %16, ptr noundef nonnull %has_shared.i) #4
  %29 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call2.i, ptr %error.i, align 4
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %23, i32 0, i32 64, i32 15
  %30 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agino_log.i, align 8
  %sh_prom.i = zext i32 %31 to i64
  %shr.i = lshr i64 %21, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv3.i = trunc i64 %21 to i32
  %sb_inopblog.i = getelementptr inbounds %struct.xfs_sb, ptr %23, i32 0, i32 23
  %32 = ptrtoint ptr %sb_inopblog.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sb_inopblog.i, align 1
  %conv4.i = zext i8 %33 to i32
  %shr5.i = lshr i32 %conv3.i, %conv4.i
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %23, i32 0, i32 24
  %34 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sb_agblklog.i, align 4
  %sh_prom8.i = zext i8 %35 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom8.i
  %36 = trunc i64 %notmask.i to i32
  %conv9.i = xor i32 %36, -1
  %and.i = and i32 %shr5.i, %conv9.i
  %call10.i = call zeroext i1 @xchk_xref_process_error(ptr noundef %sc, i32 noundef %conv.i, i32 noundef %and.i, ptr noundef nonnull %error.i) #4
  br i1 %call10.i, label %if.end12.i, label %if.end.i.xchk_inode_check_reflink_iflag.exit_crit_edge

if.end.i.xchk_inode_check_reflink_iflag.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_check_reflink_iflag.exit

if.end12.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ip, align 4
  %i_diflags2.i.i = getelementptr inbounds %struct.xfs_inode, ptr %38, i32 0, i32 25
  %39 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i40.i = and i64 %40, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i40.i)
  %tobool.i41.not.i = icmp eq i64 %and.i40.i, 0
  %41 = ptrtoint ptr %has_shared.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_shared.i, align 1, !range !10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool20.not.i = icmp eq i8 %42, 0
  br i1 %tobool.i41.not.i, label %land.lhs.true19.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  br i1 %tobool20.not.i, label %if.then16.i, label %land.lhs.true.i.xchk_inode_check_reflink_iflag.exit_crit_edge

land.lhs.true.i.xchk_inode_check_reflink_iflag.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_check_reflink_iflag.exit

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_preen(ptr noundef %sc, i64 noundef %21) #4
  br label %xchk_inode_check_reflink_iflag.exit

land.lhs.true19.i:                                ; preds = %if.end12.i
  br i1 %tobool20.not.i, label %land.lhs.true19.i.xchk_inode_check_reflink_iflag.exit_crit_edge, label %if.then22.i

land.lhs.true19.i.xchk_inode_check_reflink_iflag.exit_crit_edge: ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_check_reflink_iflag.exit

if.then22.i:                                      ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %21) #4
  br label %xchk_inode_check_reflink_iflag.exit

xchk_inode_check_reflink_iflag.exit:              ; preds = %if.then22.i, %land.lhs.true19.i.xchk_inode_check_reflink_iflag.exit_crit_edge, %if.then16.i, %land.lhs.true.i.xchk_inode_check_reflink_iflag.exit_crit_edge, %if.end.i.xchk_inode_check_reflink_iflag.exit_crit_edge, %if.then10.xchk_inode_check_reflink_iflag.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %has_shared.i) #4
  br label %if.end13

if.end13:                                         ; preds = %xchk_inode_check_reflink_iflag.exit, %if.end6.if.end13_crit_edge
  %43 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ip, align 4
  %i_ino15 = getelementptr inbounds %struct.xfs_inode, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %i_ino15 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_ino15, align 8
  call fastcc void @xchk_inode_xref(ptr noundef %sc, i64 noundef %46, ptr noundef nonnull %di)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %di) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_to_disk(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_dinode(ptr noundef %sc, ptr noundef %dip, i64 noundef %ino) unnamed_addr #3 align 64 {
entry:
  %tmp.i514 = alloca %struct.timespec64, align 8
  %tmp.i503 = alloca %struct.timespec64, align 8
  %tmp.i498 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %di_flags = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 24
  %2 = ptrtoint ptr %di_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %di_flags, align 2
  %di_version = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %4 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ugt i8 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %di_flags2 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 30
  %6 = ptrtoint ptr %di_flags2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %di_flags2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags2.0 = phi i64 [ %7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %di_mode = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 1
  %8 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %di_mode, align 2
  %10 = and i16 %9, -4096
  %and = zext i16 %10 to i32
  %11 = add nsw i32 %and, -4096
  %12 = lshr exact i32 %11, 12
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %12, label %sw.default [
    i32 9, label %if.end.sw.epilog_crit_edge
    i32 7, label %if.end.sw.epilog_crit_edge525
    i32 3, label %if.end.sw.epilog_crit_edge526
    i32 1, label %if.end.sw.epilog_crit_edge527
    i32 5, label %if.end.sw.epilog_crit_edge528
    i32 0, label %if.end.sw.epilog_crit_edge529
    i32 11, label %if.end.sw.epilog_crit_edge530
  ]

if.end.sw.epilog_crit_edge530:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge529:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge528:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge527:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge526:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge525:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge525, %if.end.sw.epilog_crit_edge526, %if.end.sw.epilog_crit_edge527, %if.end.sw.epilog_crit_edge528, %if.end.sw.epilog_crit_edge529, %if.end.sw.epilog_crit_edge530
  %14 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %di_version, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %15, label %sw.default26 [
    i8 1, label %sw.bb6
    i8 2, label %sw.epilog.sw.bb7_crit_edge
    i8 3, label %sw.epilog.sw.bb7_crit_edge531
  ]

sw.epilog.sw.bb7_crit_edge531:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_preen(ptr noundef %sc, i64 noundef %ino) #4
  br label %sw.epilog27

sw.bb7:                                           ; preds = %sw.epilog.sw.bb7_crit_edge, %sw.epilog.sw.bb7_crit_edge531
  %di_onlink = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 4
  %17 = ptrtoint ptr %di_onlink to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %di_onlink, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp9.not = icmp eq i16 %18, 0
  br i1 %cmp9.not, label %sw.bb7.if.end12_crit_edge, label %if.then11

sw.bb7.if.end12_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %sw.bb7.if.end12_crit_edge
  %19 = ptrtoint ptr %di_mode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %di_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp15 = icmp eq i16 %20, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end12
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %land.lhs.true.if.end18_crit_edge, label %if.then17

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %di_projid_hi = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 9
  %23 = ptrtoint ptr %di_projid_hi to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %di_projid_hi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp20.not = icmp eq i16 %24, 0
  br i1 %cmp20.not, label %if.end18.if.end24_crit_edge, label %land.lhs.true22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true22:                                  ; preds = %if.end18
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %25 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %26, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then23, label %land.lhs.true22.if.end24_crit_edge

land.lhs.true22.if.end24_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true22.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %di_projid_lo = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 8
  %27 = ptrtoint ptr %di_projid_lo to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %di_projid_lo, align 4
  %conv25 = zext i16 %28 to i32
  br label %sw.epilog27

sw.default26:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %cleanup

sw.epilog27:                                      ; preds = %if.end24, %sw.bb6
  %prid.0 = phi i32 [ %conv25, %if.end24 ], [ 0, %sw.bb6 ]
  %m_features.i495 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %29 = ptrtoint ptr %m_features.i495 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i495, align 8
  %and.i496 = and i64 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i496)
  %tobool.i497.not = icmp eq i64 %and.i496, 0
  br i1 %tobool.i497.not, label %sw.epilog27.if.end32_crit_edge, label %if.then29

sw.epilog27.if.end32_crit_edge:                   ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then29:                                        ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #6
  %di_projid_hi30 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 9
  %31 = ptrtoint ptr %di_projid_hi30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %di_projid_hi30, align 2
  %conv31 = zext i16 %32 to i32
  %shl = shl nuw i32 %conv31, 16
  %or = or i32 %shl, %prid.0
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %sw.epilog27.if.end32_crit_edge
  %prid.1 = phi i32 [ %or, %if.then29 ], [ %prid.0, %sw.epilog27.if.end32_crit_edge ]
  %di_uid = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 5
  %33 = ptrtoint ptr %di_uid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %di_uid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp33 = icmp eq i32 %34, -1
  br i1 %cmp33, label %if.end32.if.then37_crit_edge, label %lor.lhs.false

if.end32.if.then37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end32
  %di_gid = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 6
  %35 = ptrtoint ptr %di_gid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %di_gid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp35 = icmp eq i32 %36, -1
  br i1 %cmp35, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end38_crit_edge

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end32.if.then37_crit_edge
  tail call void @xchk_ino_set_warning(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %prid.1)
  %cmp39 = icmp eq i32 %prid.1, -1
  br i1 %cmp39, label %if.then41, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_warning(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end38.if.end42_crit_edge
  %di_format = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 3
  %37 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %di_format, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %38, label %if.end42.sw.epilog109.sink.split_crit_edge [
    i8 0, label %sw.bb44
    i8 1, label %sw.bb66
    i8 2, label %sw.bb78
    i8 3, label %sw.bb95
  ]

if.end42.sw.epilog109.sink.split_crit_edge:       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109.sink.split

sw.bb44:                                          ; preds = %if.end42
  %40 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %10, label %sw.bb44.sw.epilog109.sink.split_crit_edge [
    i16 8192, label %sw.bb44.sw.epilog109_crit_edge
    i16 24576, label %sw.bb44.sw.epilog109_crit_edge532
    i16 4096, label %sw.bb44.sw.epilog109_crit_edge533
    i16 -16384, label %sw.bb44.sw.epilog109_crit_edge534
  ]

sw.bb44.sw.epilog109_crit_edge534:                ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb44.sw.epilog109_crit_edge533:                ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb44.sw.epilog109_crit_edge532:                ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb44.sw.epilog109_crit_edge:                   ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb44.sw.epilog109.sink.split_crit_edge:        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109.sink.split

sw.bb66:                                          ; preds = %if.end42
  %41 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %10, label %sw.bb66.sw.epilog109.sink.split_crit_edge [
    i16 16384, label %sw.bb66.sw.epilog109_crit_edge
    i16 -24576, label %sw.bb66.sw.epilog109_crit_edge535
  ]

sw.bb66.sw.epilog109_crit_edge535:                ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb66.sw.epilog109_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb66.sw.epilog109.sink.split_crit_edge:        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109.sink.split

sw.bb78:                                          ; preds = %if.end42
  %42 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %10, label %sw.bb78.sw.epilog109.sink.split_crit_edge [
    i16 -32768, label %sw.bb78.sw.epilog109_crit_edge
    i16 16384, label %sw.bb78.sw.epilog109_crit_edge536
    i16 -24576, label %sw.bb78.sw.epilog109_crit_edge537
  ]

sw.bb78.sw.epilog109_crit_edge537:                ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb78.sw.epilog109_crit_edge536:                ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb78.sw.epilog109_crit_edge:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb78.sw.epilog109.sink.split_crit_edge:        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109.sink.split

sw.bb95:                                          ; preds = %if.end42
  %43 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %10, label %sw.bb95.sw.epilog109.sink.split_crit_edge [
    i16 -32768, label %sw.bb95.sw.epilog109_crit_edge
    i16 16384, label %sw.bb95.sw.epilog109_crit_edge538
  ]

sw.bb95.sw.epilog109_crit_edge538:                ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb95.sw.epilog109_crit_edge:                   ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109

sw.bb95.sw.epilog109.sink.split_crit_edge:        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog109.sink.split

sw.epilog109.sink.split:                          ; preds = %sw.bb95.sw.epilog109.sink.split_crit_edge, %sw.bb78.sw.epilog109.sink.split_crit_edge, %sw.bb66.sw.epilog109.sink.split_crit_edge, %sw.bb44.sw.epilog109.sink.split_crit_edge, %if.end42.sw.epilog109.sink.split_crit_edge
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %sw.epilog109

sw.epilog109:                                     ; preds = %sw.epilog109.sink.split, %sw.bb95.sw.epilog109_crit_edge, %sw.bb95.sw.epilog109_crit_edge538, %sw.bb78.sw.epilog109_crit_edge, %sw.bb78.sw.epilog109_crit_edge536, %sw.bb78.sw.epilog109_crit_edge537, %sw.bb66.sw.epilog109_crit_edge, %sw.bb66.sw.epilog109_crit_edge535, %sw.bb44.sw.epilog109_crit_edge, %sw.bb44.sw.epilog109_crit_edge532, %sw.bb44.sw.epilog109_crit_edge533, %sw.bb44.sw.epilog109_crit_edge534
  %di_atime = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 12
  %44 = ptrtoint ptr %di_atime to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %di_atime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #4
  call void @xfs_inode_from_disk_ts(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %dip, i64 noundef %45) #4
  %tv.sroa.4.0.tmp.sroa_idx.i = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %46 = ptrtoint ptr %tv.sroa.4.0.tmp.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %tv.sroa.4.0.copyload4.i = load i32, ptr %tv.sroa.4.0.tmp.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %tv.sroa.4.0.copyload4.i)
  %47 = icmp ugt i32 %tv.sroa.4.0.copyload4.i, 999999999
  br i1 %47, label %if.then.i, label %sw.epilog109.xchk_dinode_nsec.exit_crit_edge

sw.epilog109.xchk_dinode_nsec.exit_crit_edge:     ; preds = %sw.epilog109
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_dinode_nsec.exit

if.then.i:                                        ; preds = %sw.epilog109
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %xchk_dinode_nsec.exit

xchk_dinode_nsec.exit:                            ; preds = %if.then.i, %sw.epilog109.xchk_dinode_nsec.exit_crit_edge
  %di_mtime = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 13
  %48 = ptrtoint ptr %di_mtime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %di_mtime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i498) #4
  call void @xfs_inode_from_disk_ts(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i498, ptr noundef %dip, i64 noundef %49) #4
  %tv.sroa.4.0.tmp.sroa_idx.i499 = getelementptr inbounds i8, ptr %tmp.i498, i32 8
  %50 = ptrtoint ptr %tv.sroa.4.0.tmp.sroa_idx.i499 to i32
  call void @__asan_load4_noabort(i32 %50)
  %tv.sroa.4.0.copyload4.i500 = load i32, ptr %tv.sroa.4.0.tmp.sroa_idx.i499, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i498) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %tv.sroa.4.0.copyload4.i500)
  %51 = icmp ugt i32 %tv.sroa.4.0.copyload4.i500, 999999999
  br i1 %51, label %if.then.i501, label %xchk_dinode_nsec.exit.xchk_dinode_nsec.exit502_crit_edge

xchk_dinode_nsec.exit.xchk_dinode_nsec.exit502_crit_edge: ; preds = %xchk_dinode_nsec.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_dinode_nsec.exit502

if.then.i501:                                     ; preds = %xchk_dinode_nsec.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %xchk_dinode_nsec.exit502

xchk_dinode_nsec.exit502:                         ; preds = %if.then.i501, %xchk_dinode_nsec.exit.xchk_dinode_nsec.exit502_crit_edge
  %di_ctime = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 14
  %52 = ptrtoint ptr %di_ctime to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %di_ctime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i503) #4
  call void @xfs_inode_from_disk_ts(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i503, ptr noundef %dip, i64 noundef %53) #4
  %tv.sroa.4.0.tmp.sroa_idx.i504 = getelementptr inbounds i8, ptr %tmp.i503, i32 8
  %54 = ptrtoint ptr %tv.sroa.4.0.tmp.sroa_idx.i504 to i32
  call void @__asan_load4_noabort(i32 %54)
  %tv.sroa.4.0.copyload4.i505 = load i32, ptr %tv.sroa.4.0.tmp.sroa_idx.i504, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i503) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %tv.sroa.4.0.copyload4.i505)
  %55 = icmp ugt i32 %tv.sroa.4.0.copyload4.i505, 999999999
  br i1 %55, label %if.then.i506, label %xchk_dinode_nsec.exit502.xchk_dinode_nsec.exit507_crit_edge

xchk_dinode_nsec.exit502.xchk_dinode_nsec.exit507_crit_edge: ; preds = %xchk_dinode_nsec.exit502
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_dinode_nsec.exit507

if.then.i506:                                     ; preds = %xchk_dinode_nsec.exit502
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %xchk_dinode_nsec.exit507

xchk_dinode_nsec.exit507:                         ; preds = %if.then.i506, %xchk_dinode_nsec.exit502.xchk_dinode_nsec.exit507_crit_edge
  %di_size = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 15
  %56 = ptrtoint ptr %di_size to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %di_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %57)
  %tobool111.not = icmp sgt i64 %57, -1
  br i1 %tobool111.not, label %if.end113, label %if.end113.thread

if.end113.thread:                                 ; preds = %xchk_dinode_nsec.exit507
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %switch.early.test

if.end113:                                        ; preds = %xchk_dinode_nsec.exit507
  %.fr = freeze i64 %57
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.fr)
  %cmp129.not = icmp eq i64 %.fr, 0
  br i1 %cmp129.not, label %if.end113.if.end132_crit_edge, label %if.end113.switch.early.test_crit_edge

if.end113.switch.early.test_crit_edge:            ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %switch.early.test

if.end113.if.end132_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end132

switch.early.test:                                ; preds = %if.end113.switch.early.test_crit_edge, %if.end113.thread
  %58 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %10, label %if.then131 [
    i16 16384, label %switch.early.test.land.lhs.true137_crit_edge
    i16 -24576, label %switch.early.test.land.lhs.true149_crit_edge
    i16 -32768, label %switch.early.test.if.end156_crit_edge
  ]

switch.early.test.if.end156_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

switch.early.test.land.lhs.true149_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true149

switch.early.test.land.lhs.true137_crit_edge:     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true137

if.then131:                                       ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end132

if.end132:                                        ; preds = %if.then131, %if.end113.if.end132_crit_edge
  %cmp129.not522 = phi i1 [ true, %if.end113.if.end132_crit_edge ], [ false, %if.then131 ]
  %59 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %10, label %if.end132.if.end156_crit_edge [
    i16 16384, label %if.end132.land.lhs.true137_crit_edge
    i16 -24576, label %if.end132.land.lhs.true149_crit_edge
  ]

if.end132.land.lhs.true149_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true149

if.end132.land.lhs.true137_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true137

if.end132.if.end156_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

land.lhs.true137:                                 ; preds = %if.end132.land.lhs.true137_crit_edge, %switch.early.test.land.lhs.true137_crit_edge
  %cmp129.not520 = phi i1 [ false, %switch.early.test.land.lhs.true137_crit_edge ], [ %cmp129.not522, %if.end132.land.lhs.true137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 34359738367, i64 %57)
  %cmp141 = icmp ugt i64 %57, 34359738367
  %or.cond493 = or i1 %cmp141, %cmp129.not520
  br i1 %or.cond493, label %land.lhs.true137.if.end156.sink.split_crit_edge, label %land.lhs.true137.if.end156_crit_edge

land.lhs.true137.if.end156_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

land.lhs.true137.if.end156.sink.split_crit_edge:  ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156.sink.split

land.lhs.true149:                                 ; preds = %if.end132.land.lhs.true149_crit_edge, %switch.early.test.land.lhs.true149_crit_edge
  %cmp129.not523 = phi i1 [ false, %switch.early.test.land.lhs.true149_crit_edge ], [ %cmp129.not522, %if.end132.land.lhs.true149_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %57)
  %cmp153 = icmp ugt i64 %57, 1023
  %or.cond494 = or i1 %cmp153, %cmp129.not523
  br i1 %or.cond494, label %land.lhs.true149.if.end156.sink.split_crit_edge, label %land.lhs.true149.if.end156_crit_edge

land.lhs.true149.if.end156_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156

land.lhs.true149.if.end156.sink.split_crit_edge:  ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end156.sink.split

if.end156.sink.split:                             ; preds = %land.lhs.true149.if.end156.sink.split_crit_edge, %land.lhs.true137.if.end156.sink.split_crit_edge
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end156

if.end156:                                        ; preds = %if.end156.sink.split, %land.lhs.true149.if.end156_crit_edge, %land.lhs.true137.if.end156_crit_edge, %if.end132.if.end156_crit_edge, %switch.early.test.if.end156_crit_edge
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %63)
  %cmp157.not = icmp ult i64 %57, %63
  br i1 %cmp157.not, label %if.end156.if.end160_crit_edge, label %if.then159

if.end156.if.end160_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end160

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_warning(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end156.if.end160_crit_edge
  %and161 = and i64 %flags2.0, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and161)
  %tobool162.not = icmp eq i64 %and161, 0
  br i1 %tobool162.not, label %if.else164, label %if.end160.if.end183_crit_edge

if.end160.if.end183_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.else164:                                       ; preds = %if.end160
  %64 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool167.not = icmp eq i16 %64, 0
  %di_nblocks175 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 16
  %65 = ptrtoint ptr %di_nblocks175 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %di_nblocks175, align 8
  %sb_dblocks177 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %sb_dblocks177 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sb_dblocks177, align 8
  br i1 %tobool167.not, label %if.else174, label %if.then168

if.then168:                                       ; preds = %if.else164
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sb_rblocks, align 16
  %add = add i64 %70, %68
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %add)
  %cmp170.not = icmp ult i64 %66, %add
  br i1 %cmp170.not, label %if.then168.if.end183_crit_edge, label %if.then168.if.end183.sink.split_crit_edge

if.then168.if.end183.sink.split_crit_edge:        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183.sink.split

if.then168.if.end183_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.else174:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %68)
  %cmp178.not = icmp ult i64 %66, %68
  br i1 %cmp178.not, label %if.else174.if.end183_crit_edge, label %if.else174.if.end183.sink.split_crit_edge

if.else174.if.end183.sink.split_crit_edge:        ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183.sink.split

if.else174.if.end183_crit_edge:                   ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.end183.sink.split:                             ; preds = %if.else174.if.end183.sink.split_crit_edge, %if.then168.if.end183.sink.split_crit_edge
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end183

if.end183:                                        ; preds = %if.end183.sink.split, %if.else174.if.end183_crit_edge, %if.then168.if.end183_crit_edge, %if.end160.if.end183_crit_edge
  call fastcc void @xchk_inode_flags(ptr noundef %sc, i64 noundef %ino, i16 noundef zeroext %9, i16 noundef zeroext %3)
  call fastcc void @xchk_inode_extsize(ptr noundef %sc, ptr noundef %dip, i64 noundef %ino, i16 noundef zeroext %9, i16 noundef zeroext %3)
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %71 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %di_nextents, align 4
  %di_forkoff = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 20
  %73 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool185.not = icmp eq i8 %74, 0
  br i1 %tobool185.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  %conv184 = zext i8 %74 to i32
  %shl188 = shl nuw nsw i32 %conv184, 3
  br label %cond.end

cond.false:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %75 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sb_inodesize, align 8
  %conv190 = zext i16 %76 to i32
  %77 = ptrtoint ptr %m_features.i495 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %m_features.i495, align 8
  %and.i509 = and i64 %78, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i509)
  %tobool.i510.not = icmp eq i64 %and.i509, 0
  %cond.neg = select i1 %tobool.i510.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv190
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond193 = phi i32 [ %shl188, %cond.true ], [ %sub, %cond.false ]
  %div489 = lshr i32 %cond193, 4
  %79 = ptrtoint ptr %di_format to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %di_format, align 1
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %80, label %sw.default206 [
    i8 2, label %sw.bb196
    i8 3, label %sw.bb201
  ]

sw.bb196:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %div489)
  %cmp197 = icmp ugt i32 %72, %div489
  br i1 %cmp197, label %sw.bb196.sw.epilog211.sink.split_crit_edge, label %sw.bb196.sw.epilog211_crit_edge

sw.bb196.sw.epilog211_crit_edge:                  ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211

sw.bb196.sw.epilog211.sink.split_crit_edge:       ; preds = %sw.bb196
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211.sink.split

sw.bb201:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %div489)
  %cmp202.not = icmp ugt i32 %72, %div489
  br i1 %cmp202.not, label %sw.bb201.sw.epilog211_crit_edge, label %sw.bb201.sw.epilog211.sink.split_crit_edge

sw.bb201.sw.epilog211.sink.split_crit_edge:       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211.sink.split

sw.bb201.sw.epilog211_crit_edge:                  ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211

sw.default206:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp207.not = icmp eq i32 %72, 0
  br i1 %cmp207.not, label %sw.default206.sw.epilog211_crit_edge, label %sw.default206.sw.epilog211.sink.split_crit_edge

sw.default206.sw.epilog211.sink.split_crit_edge:  ; preds = %sw.default206
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211.sink.split

sw.default206.sw.epilog211_crit_edge:             ; preds = %sw.default206
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog211

sw.epilog211.sink.split:                          ; preds = %sw.default206.sw.epilog211.sink.split_crit_edge, %sw.bb201.sw.epilog211.sink.split_crit_edge, %sw.bb196.sw.epilog211.sink.split_crit_edge
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %sw.epilog211

sw.epilog211:                                     ; preds = %sw.epilog211.sink.split, %sw.default206.sw.epilog211_crit_edge, %sw.bb201.sw.epilog211_crit_edge, %sw.bb196.sw.epilog211_crit_edge
  %82 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp.i = icmp eq i8 %83, 3
  %..i = select i1 %cmp.i, i32 176, i32 100
  %add.ptr = getelementptr i8, ptr %dip, i32 %..i
  %84 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %di_forkoff, align 2
  %conv216 = zext i8 %85 to i32
  %shl217 = shl nuw nsw i32 %conv216, 3
  %add.ptr218 = getelementptr i8, ptr %add.ptr, i32 %shl217
  %sb_inodesize220 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %86 = ptrtoint ptr %sb_inodesize220 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %sb_inodesize220, align 8
  %conv221 = zext i16 %87 to i32
  %add.ptr222 = getelementptr i8, ptr %dip, i32 %conv221
  %cmp223.not = icmp ult ptr %add.ptr218, %add.ptr222
  br i1 %cmp223.not, label %sw.epilog211.if.end226_crit_edge, label %if.then225

sw.epilog211.if.end226_crit_edge:                 ; preds = %sw.epilog211
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end226

if.then225:                                       ; preds = %sw.epilog211
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end226

if.end226:                                        ; preds = %if.then225, %sw.epilog211.if.end226_crit_edge
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %88 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %di_anextents, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %cmp228.not = icmp eq i16 %89, 0
  br i1 %cmp228.not, label %if.end226.if.end236_crit_edge, label %land.lhs.true230

if.end226.if.end236_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end236

land.lhs.true230:                                 ; preds = %if.end226
  %90 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp233 = icmp eq i8 %91, 0
  br i1 %cmp233, label %if.then235, label %land.lhs.true230.if.end246_crit_edge

land.lhs.true230.if.end246_crit_edge:             ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end246

if.then235:                                       ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end236

if.end236:                                        ; preds = %if.then235, %if.end226.if.end236_crit_edge
  %92 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %92)
  %.pr = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp239 = icmp eq i8 %.pr, 0
  br i1 %cmp239, label %land.lhs.true241, label %if.end236.if.end246_crit_edge

if.end236.if.end246_crit_edge:                    ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end246

land.lhs.true241:                                 ; preds = %if.end236
  %di_aformat = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 21
  %93 = ptrtoint ptr %di_aformat to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %di_aformat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp243.not = icmp eq i8 %94, 2
  br i1 %cmp243.not, label %land.lhs.true241.if.end246_crit_edge, label %if.then245

land.lhs.true241.if.end246_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end246

if.then245:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %land.lhs.true241.if.end246_crit_edge, %if.end236.if.end246_crit_edge, %land.lhs.true230.if.end246_crit_edge
  %di_aformat247 = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 21
  %95 = ptrtoint ptr %di_aformat247 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %di_aformat247, align 1
  %.off = add i8 %96, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end246.if.end262_crit_edge, label %if.then261

if.end246.if.end262_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end262

if.then261:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %if.end246.if.end262_crit_edge
  %97 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %di_anextents, align 8
  %conv264 = zext i16 %98 to i32
  %99 = ptrtoint ptr %di_forkoff to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %di_forkoff, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool267.not = icmp eq i8 %100, 0
  br i1 %tobool267.not, label %if.end262.cond.end281_crit_edge, label %cond.true268

if.end262.cond.end281_crit_edge:                  ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end281

cond.true268:                                     ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %sb_inodesize220 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %sb_inodesize220, align 8
  %conv271 = zext i16 %102 to i32
  %103 = ptrtoint ptr %m_features.i495 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %m_features.i495, align 8
  %and.i512 = and i64 %104, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i512)
  %tobool.i513.not = icmp eq i64 %and.i512, 0
  %cond274.neg = select i1 %tobool.i513.not, i32 -100, i32 -176
  %conv277 = zext i8 %100 to i32
  %shl278.neg = mul nsw i32 %conv277, -8
  %sub275 = add nsw i32 %shl278.neg, %conv271
  %sub279 = add nsw i32 %sub275, %cond274.neg
  %phi.bo490 = lshr i32 %sub279, 4
  br label %cond.end281

cond.end281:                                      ; preds = %cond.true268, %if.end262.cond.end281_crit_edge
  %cond282 = phi i32 [ %phi.bo490, %cond.true268 ], [ 0, %if.end262.cond.end281_crit_edge ]
  %105 = ptrtoint ptr %di_aformat247 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %di_aformat247, align 1
  %conv285 = sext i8 %106 to i32
  %107 = zext i32 %conv285 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv285, label %sw.default296 [
    i32 2, label %sw.bb286
    i32 3, label %sw.bb291
  ]

sw.bb286:                                         ; preds = %cond.end281
  call void @__sanitizer_cov_trace_cmp4(i32 %cond282, i32 %conv264)
  %cmp287 = icmp ult i32 %cond282, %conv264
  br i1 %cmp287, label %sw.bb286.sw.epilog301.sink.split_crit_edge, label %sw.bb286.sw.epilog301_crit_edge

sw.bb286.sw.epilog301_crit_edge:                  ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301

sw.bb286.sw.epilog301.sink.split_crit_edge:       ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301.sink.split

sw.bb291:                                         ; preds = %cond.end281
  call void @__sanitizer_cov_trace_cmp4(i32 %cond282, i32 %conv264)
  %cmp292.not = icmp ult i32 %cond282, %conv264
  br i1 %cmp292.not, label %sw.bb291.sw.epilog301_crit_edge, label %sw.bb291.sw.epilog301.sink.split_crit_edge

sw.bb291.sw.epilog301.sink.split_crit_edge:       ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301.sink.split

sw.bb291.sw.epilog301_crit_edge:                  ; preds = %sw.bb291
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301

sw.default296:                                    ; preds = %cond.end281
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp297.not = icmp eq i16 %98, 0
  br i1 %cmp297.not, label %sw.default296.sw.epilog301_crit_edge, label %sw.default296.sw.epilog301.sink.split_crit_edge

sw.default296.sw.epilog301.sink.split_crit_edge:  ; preds = %sw.default296
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301.sink.split

sw.default296.sw.epilog301_crit_edge:             ; preds = %sw.default296
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog301

sw.epilog301.sink.split:                          ; preds = %sw.default296.sw.epilog301.sink.split_crit_edge, %sw.bb291.sw.epilog301.sink.split_crit_edge, %sw.bb286.sw.epilog301.sink.split_crit_edge
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %sw.epilog301

sw.epilog301:                                     ; preds = %sw.epilog301.sink.split, %sw.default296.sw.epilog301_crit_edge, %sw.bb291.sw.epilog301_crit_edge, %sw.bb286.sw.epilog301_crit_edge
  %108 = ptrtoint ptr %di_version to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %di_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %cmp304 = icmp ugt i8 %109, 2
  br i1 %cmp304, label %if.then306, label %sw.epilog301.cleanup_crit_edge

sw.epilog301.cleanup_crit_edge:                   ; preds = %sw.epilog301
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then306:                                       ; preds = %sw.epilog301
  %di_crtime = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 33
  %110 = ptrtoint ptr %di_crtime to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %di_crtime, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i514) #4
  call void @xfs_inode_from_disk_ts(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i514, ptr noundef %dip, i64 noundef %111) #4
  %tv.sroa.4.0.tmp.sroa_idx.i515 = getelementptr inbounds i8, ptr %tmp.i514, i32 8
  %112 = ptrtoint ptr %tv.sroa.4.0.tmp.sroa_idx.i515 to i32
  call void @__asan_load4_noabort(i32 %112)
  %tv.sroa.4.0.copyload4.i516 = load i32, ptr %tv.sroa.4.0.tmp.sroa_idx.i515, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i514) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %tv.sroa.4.0.copyload4.i516)
  %113 = icmp ugt i32 %tv.sroa.4.0.copyload4.i516, 999999999
  br i1 %113, label %if.then.i517, label %if.then306.xchk_dinode_nsec.exit518_crit_edge

if.then306.xchk_dinode_nsec.exit518_crit_edge:    ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_dinode_nsec.exit518

if.then.i517:                                     ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #6
  call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %xchk_dinode_nsec.exit518

xchk_dinode_nsec.exit518:                         ; preds = %if.then.i517, %if.then306.xchk_dinode_nsec.exit518_crit_edge
  call fastcc void @xchk_inode_flags2(ptr noundef %sc, ptr noundef %dip, i64 noundef %ino, i16 noundef zeroext %9, i16 noundef zeroext %3, i64 noundef %flags2.0)
  call fastcc void @xchk_inode_cowextsize(ptr noundef %sc, ptr noundef %dip, i64 noundef %ino, i16 noundef zeroext %9, i16 noundef zeroext %3, i64 noundef %flags2.0)
  br label %cleanup

cleanup:                                          ; preds = %xchk_dinode_nsec.exit518, %sw.epilog301.cleanup_crit_edge, %sw.default26
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_xref(ptr noundef %sc, i64 noundef %ino, ptr nocapture noundef readonly %dip) unnamed_addr #3 align 64 {
entry:
  %rec.i = alloca %struct.xfs_inobt_rec_incore, align 8
  %has_record.i = alloca i32, align 4
  %error.i = alloca i32, align 4
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm, align 4
  %sm_flags = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 4
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 64, i32 15
  %6 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %ino, %sh_prom
  %conv = trunc i64 %shr to i32
  %conv1 = trunc i64 %ino to i32
  %sb_inopblog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %sb_inopblog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_inopblog, align 1
  %conv3 = zext i8 %9 to i32
  %shr4 = lshr i32 %conv1, %conv3
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_agblklog, align 4
  %sh_prom8 = zext i8 %11 to i64
  %notmask = shl nsw i64 -1, %sh_prom8
  %12 = trunc i64 %notmask to i32
  %conv9 = xor i32 %12, -1
  %and10 = and i32 %shr4, %conv9
  %sa = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10
  %call.i = tail call i32 @xchk_ag_init(ptr noundef %sc, i32 noundef %conv, ptr noundef %sa) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -2
  %spec.select.i = select i1 %cmp.i, i32 -117, i32 %call.i
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %error, align 4
  %call11 = call zeroext i1 @xchk_xref_process_error(ptr noundef %sc, i32 noundef %conv, i32 noundef %and10, ptr noundef nonnull %error) #4
  br i1 %call11, label %if.end13, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free

if.end13:                                         ; preds = %if.end
  call void @xchk_xref_is_used_space(ptr noundef %sc, i32 noundef %and10, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rec.i) #4
  %14 = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %rec.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %rec.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %has_record.i) #4
  %16 = ptrtoint ptr %has_record.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %has_record.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #4
  %fino_cur.i = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 10, i32 7
  %17 = ptrtoint ptr %fino_cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fino_cur.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end13.xchk_inode_xref_finobt.exit_crit_edge, label %lor.lhs.false.i

if.end13.xchk_inode_xref_finobt.exit_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

lor.lhs.false.i:                                  ; preds = %if.end13
  %19 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sm, align 4
  %sm_flags.i.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sm_flags.i.i, align 4
  %and.i.i = and i32 %22, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.xchk_inode_xref_finobt.exit_crit_edge

lor.lhs.false.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %23 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc, align 4
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %24, i32 0, i32 64, i32 15
  %25 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %agino_log.i, align 8
  %sh_prom.i = zext i32 %26 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %27 = trunc i64 %notmask.i to i32
  %conv1.i = xor i32 %27, -1
  %and.i = and i32 %conv1.i, %conv1
  %call4.i = call i32 @xfs_inobt_lookup(ptr noundef nonnull %18, i32 noundef %and.i, i32 noundef 1, ptr noundef nonnull %has_record.i) #4
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call4.i, ptr %error.i, align 4
  %call7.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %fino_cur.i) #4
  br i1 %call7.i, label %lor.lhs.false8.i, label %if.end.i.xchk_inode_xref_finobt.exit_crit_edge

if.end.i.xchk_inode_xref_finobt.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %29 = ptrtoint ptr %has_record.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %has_record.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not.i = icmp eq i32 %30, 0
  br i1 %tobool9.not.i, label %lor.lhs.false8.i.xchk_inode_xref_finobt.exit_crit_edge, label %if.end11.i

lor.lhs.false8.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %31 = ptrtoint ptr %fino_cur.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fino_cur.i, align 4
  %call14.i = call i32 @xfs_inobt_get_rec(ptr noundef %32, ptr noundef nonnull %rec.i, ptr noundef nonnull %has_record.i) #4
  %33 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call14.i, ptr %error.i, align 4
  %call17.i = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error.i, ptr noundef %fino_cur.i) #4
  br i1 %call17.i, label %lor.lhs.false18.i, label %if.end11.i.xchk_inode_xref_finobt.exit_crit_edge

if.end11.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

lor.lhs.false18.i:                                ; preds = %if.end11.i
  %34 = ptrtoint ptr %has_record.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %has_record.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool19.not.i = icmp eq i32 %35, 0
  br i1 %tobool19.not.i, label %lor.lhs.false18.i.xchk_inode_xref_finobt.exit_crit_edge, label %if.end21.i

lor.lhs.false18.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

if.end21.i:                                       ; preds = %lor.lhs.false18.i
  %36 = ptrtoint ptr %rec.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rec.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %37)
  %cmp.i36 = icmp uge i32 %and.i, %37
  %add.i = add i32 %37, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %and.i)
  %cmp25.not.i = icmp ugt i32 %add.i, %and.i
  %or.cond.i = and i1 %cmp.i36, %cmp25.not.i
  br i1 %or.cond.i, label %if.end28.i, label %if.end21.i.xchk_inode_xref_finobt.exit_crit_edge

if.end21.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

if.end28.i:                                       ; preds = %if.end21.i
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %14, align 8
  %sub30.i = sub i32 %and.i, %37
  %sh_prom31.i = zext i32 %sub30.i to i64
  %shl32.i = shl nuw i64 1, %sh_prom31.i
  %and33.i = and i64 %39, %shl32.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33.i)
  %tobool34.not.i = icmp eq i64 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end28.i.xchk_inode_xref_finobt.exit_crit_edge, label %if.then35.i

if.end28.i.xchk_inode_xref_finobt.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %xchk_inode_xref_finobt.exit

if.then35.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %fino_cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fino_cur.i, align 4
  call void @xchk_btree_xref_set_corrupt(ptr noundef %sc, ptr noundef %41, i32 noundef 0) #4
  br label %xchk_inode_xref_finobt.exit

xchk_inode_xref_finobt.exit:                      ; preds = %if.then35.i, %if.end28.i.xchk_inode_xref_finobt.exit_crit_edge, %if.end21.i.xchk_inode_xref_finobt.exit_crit_edge, %lor.lhs.false18.i.xchk_inode_xref_finobt.exit_crit_edge, %if.end11.i.xchk_inode_xref_finobt.exit_crit_edge, %lor.lhs.false8.i.xchk_inode_xref_finobt.exit_crit_edge, %if.end.i.xchk_inode_xref_finobt.exit_crit_edge, %lor.lhs.false.i.xchk_inode_xref_finobt.exit_crit_edge, %if.end13.xchk_inode_xref_finobt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %has_record.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rec.i) #4
  call void @xchk_xref_is_owned_by(ptr noundef %sc, i32 noundef %and10, i32 noundef 1, ptr noundef nonnull @XFS_RMAP_OINFO_INODES) #4
  call void @xchk_xref_is_not_shared(ptr noundef %sc, i32 noundef %and10, i32 noundef 1) #4
  call fastcc void @xchk_inode_xref_bmap(ptr noundef %sc, ptr noundef %dip)
  br label %out_free

out_free:                                         ; preds = %xchk_inode_xref_finobt.exit, %if.end.out_free_crit_edge
  call void @xchk_ag_free(ptr noundef %sc, ptr noundef %sa) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_preen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_set_warning(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_flags(ptr noundef %sc, i64 noundef %ino, i16 noundef zeroext %mode, i16 noundef zeroext %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %conv = zext i16 %flags to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.bad_crit_edge

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end:                                           ; preds = %entry
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true.bad_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true.bad_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true11

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.end7
  %sb_rbmino = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sb_rbmino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_rbmino, align 64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %ino)
  %cmp.not = icmp eq i64 %5, %ino
  br i1 %cmp.not, label %land.lhs.true11.if.end14_crit_edge, label %land.lhs.true11.bad_crit_edge

land.lhs.true11.bad_crit_edge:                    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %and16 = and i32 %conv, 5888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %6 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp21 = icmp eq i16 %6, 16384
  %or.cond = or i1 %cmp21, %tobool17.not
  br i1 %or.cond, label %if.end24, label %if.end14.bad_crit_edge

if.end14.bad_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end24:                                         ; preds = %if.end14
  %and26 = and i32 %conv, 2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp ne i32 %and26, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp31 = icmp ne i16 %6, -32768
  %or.cond1.not = and i1 %cmp31, %tobool27.not
  %7 = and i32 %conv, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %7)
  %.not = icmp eq i32 %7, 16385
  %or.cond2 = or i1 %.not, %or.cond1.not
  br i1 %or.cond2, label %if.end24.bad_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24.bad_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

bad:                                              ; preds = %if.end24.bad_crit_edge, %if.end14.bad_crit_edge, %land.lhs.true11.bad_crit_edge, %land.lhs.true.bad_crit_edge, %entry.bad_crit_edge
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end24.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_extsize(ptr noundef %sc, ptr nocapture noundef readonly %dip, i64 noundef %ino, i16 noundef zeroext %mode, i16 noundef zeroext %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %di_extsize = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 17
  %0 = ptrtoint ptr %di_extsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %di_extsize, align 8
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %call = tail call ptr @xfs_inode_validate_extsize(ptr noundef %3, i32 noundef %1, i16 noundef zeroext %mode, i16 noundef zeroext %flags) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = and i16 %flags, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %4)
  %.not = icmp eq i16 %4, 4352
  br i1 %.not, label %land.lhs.true5, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.end
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 4
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_rextsize, align 16
  %rem = urem i32 %1, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %land.lhs.true5.if.end9_crit_edge, label %if.then8

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_warning(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_flags2(ptr noundef %sc, ptr nocapture noundef readonly %dip, i64 noundef %ino, i16 noundef zeroext %mode, i16 noundef zeroext %flags, i64 noundef %flags2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %flags2)
  %tobool.not = icmp ult i64 %flags2, 16
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_warning(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i64 %flags2, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.bad_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true.bad_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %and6 = and i64 %flags2, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  %.pre = and i16 %mode, -4096
  br i1 %tobool7.not, label %if.end5.if.end16_crit_edge, label %land.lhs.true8

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.end5
  %4 = zext i16 %.pre to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %.pre, label %land.lhs.true8.bad_crit_edge [
    i16 -32768, label %land.lhs.true8.if.end16_crit_edge
    i16 16384, label %land.lhs.true8.if.end16_crit_edge55
  ]

land.lhs.true8.if.end16_crit_edge55:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

land.lhs.true8.bad_crit_edge:                     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end16:                                         ; preds = %land.lhs.true8.if.end16_crit_edge, %land.lhs.true8.if.end16_crit_edge55, %if.end5.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %.pre)
  %cmp22 = icmp eq i16 %.pre, -32768
  %or.cond = or i1 %cmp22, %tobool3.not
  br i1 %or.cond, label %if.end25, label %if.end16.bad_crit_edge

if.end16.bad_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end25:                                         ; preds = %if.end16
  %5 = and i16 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool28.not = icmp eq i16 %5, 0
  %brmerge = or i1 %tobool28.not, %tobool3.not
  br i1 %brmerge, label %if.end33, label %if.end25.bad_crit_edge

if.end25.bad_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

if.end33:                                         ; preds = %if.end25
  %di_version.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 2
  %6 = ptrtoint ptr %di_version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %di_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp ugt i8 %7, 2
  br i1 %cmp.i, label %xfs_dinode_has_bigtime.exit, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

xfs_dinode_has_bigtime.exit:                      ; preds = %if.end33
  %di_flags2.i = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 30
  %8 = ptrtoint ptr %di_flags2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %di_flags2.i, align 8
  %and.i50 = and i64 %9, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i50)
  %tobool.i51.not = icmp eq i64 %and.i50, 0
  br i1 %tobool.i51.not, label %xfs_dinode_has_bigtime.exit.cleanup_crit_edge, label %land.lhs.true36

xfs_dinode_has_bigtime.exit.cleanup_crit_edge:    ; preds = %xfs_dinode_has_bigtime.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true36:                                  ; preds = %xfs_dinode_has_bigtime.exit
  %m_features.i52 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i52 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i52, align 8
  %and.i53 = and i64 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i53)
  %tobool.i54.not = icmp eq i64 %and.i53, 0
  br i1 %tobool.i54.not, label %land.lhs.true36.bad_crit_edge, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true36.bad_crit_edge:                    ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %bad

bad:                                              ; preds = %land.lhs.true36.bad_crit_edge, %if.end25.bad_crit_edge, %if.end16.bad_crit_edge, %land.lhs.true8.bad_crit_edge, %land.lhs.true.bad_crit_edge
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %cleanup

cleanup:                                          ; preds = %bad, %land.lhs.true36.cleanup_crit_edge, %xfs_dinode_has_bigtime.exit.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_cowextsize(ptr noundef %sc, ptr nocapture noundef readonly %dip, i64 noundef %ino, i16 noundef zeroext %mode, i16 noundef zeroext %flags, i64 noundef %flags2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 4
  %di_cowextsize = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 31
  %2 = ptrtoint ptr %di_cowextsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %di_cowextsize, align 8
  %call = tail call ptr @xfs_inode_validate_cowextsize(ptr noundef %1, i32 noundef %3, i16 noundef zeroext %mode, i16 noundef zeroext %flags, i64 noundef %flags2) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xchk_ino_set_corrupt(ptr noundef %sc, i64 noundef %ino) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_from_disk_ts(ptr sret(%struct.timespec64) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_extsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_cowextsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_inode_has_shared_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_xref_process_error(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_used_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_owned_by(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_xref_is_not_shared(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xchk_inode_xref_bmap(ptr noundef %sc, ptr nocapture noundef readonly %dip) unnamed_addr #3 align 64 {
entry:
  %nextents = alloca i32, align 4
  %count = alloca i64, align 8
  %acount = alloca i64, align 8
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextents) #4
  %0 = ptrtoint ptr %nextents to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nextents, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #4
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %count, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acount) #4
  %2 = ptrtoint ptr %acount to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %acount, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #4
  %sm = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 1
  %3 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sm, align 4
  %sm_flags.i = getelementptr inbounds %struct.xfs_scrub_metadata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %sm_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sm_flags.i, align 4
  %and.i = and i32 %6, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tp = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 3
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tp, align 4
  %ip = getelementptr inbounds %struct.xfs_scrub, ptr %sc, i32 0, i32 5
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip, align 4
  %call1 = call i32 @xfs_bmap_count_blocks(ptr noundef %8, ptr noundef %10, i32 noundef 0, ptr noundef nonnull %nextents, ptr noundef nonnull %count) #4
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1, ptr %error, align 4
  %call2 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef null) #4
  br i1 %call2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %nextents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nextents, align 4
  %di_nextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 18
  %14 = ptrtoint ptr %di_nextents to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %di_nextents, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp = icmp ult i32 %13, %15
  br i1 %cmp, label %if.then5, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_ino, align 8
  call void @xchk_ino_xref_set_corrupt(ptr noundef %sc, i64 noundef %19) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end4.if.end7_crit_edge
  %20 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tp, align 4
  %22 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ip, align 4
  %call10 = call i32 @xfs_bmap_count_blocks(ptr noundef %21, ptr noundef %23, i32 noundef 1, ptr noundef nonnull %nextents, ptr noundef nonnull %acount) #4
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call10, ptr %error, align 4
  %call11 = call zeroext i1 @xchk_should_check_xref(ptr noundef %sc, ptr noundef nonnull %error, ptr noundef null) #4
  br i1 %call11, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %25 = ptrtoint ptr %nextents to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nextents, align 4
  %di_anextents = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 19
  %27 = ptrtoint ptr %di_anextents to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %di_anextents, align 8
  %conv = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp14.not = icmp eq i32 %26, %conv
  br i1 %cmp14.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ip, align 4
  %i_ino18 = getelementptr inbounds %struct.xfs_inode, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %i_ino18 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_ino18, align 8
  call void @xchk_ino_xref_set_corrupt(ptr noundef %sc, i64 noundef %32) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %count, align 8
  %35 = ptrtoint ptr %acount to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %acount, align 8
  %add = add i64 %36, %34
  %di_nblocks = getelementptr inbounds %struct.xfs_dinode, ptr %dip, i32 0, i32 16
  %37 = ptrtoint ptr %di_nblocks to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %di_nblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %38)
  %cmp20.not = icmp eq i64 %add, %38
  br i1 %cmp20.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ip, align 4
  %i_ino24 = getelementptr inbounds %struct.xfs_inode, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_ino24, align 8
  call void @xchk_ino_xref_set_corrupt(ptr noundef %sc, i64 noundef %42) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acount) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextents) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ag_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xchk_ag_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xchk_should_check_xref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_get_rec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_btree_xref_set_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_count_blocks(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xchk_ino_xref_set_corrupt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
