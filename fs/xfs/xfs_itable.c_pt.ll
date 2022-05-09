; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_itable.c_pt.bc'
source_filename = "../fs/xfs/xfs_itable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.xfs_bstat_chunk = type { ptr, ptr, ptr }
%struct.xfs_ibulk = type { ptr, ptr, ptr, i64, i32, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.xfs_bulkstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [7 x i64] }
%struct.xfs_bstat = type { i64, i16, i16, i32, i32, i32, i32, i64, %struct.xfs_bstime, %struct.xfs_bstime, %struct.xfs_bstime, i64, i32, i32, i32, i32, i16, i16, i16, i16, i16, [2 x i8], i32, i32, i16, i16 }
%struct.xfs_bstime = type { i32, i32 }
%struct.xfs_inumbers_chunk = type { ptr, ptr }
%struct.xfs_inumbers = type { i64, i64, i8, i8, [6 x i8] }
%struct.xfs_inobt_rec_incore = type { i32, i16, i8, i8, i64 }
%struct.xfs_inogrp = type { i64, i32, i64 }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@xfs_bulkstat_one._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xfs_bulkstat_one = private unnamed_addr constant [17 x i8] c"xfs_bulkstat_one\00", align 1
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"bulkstat not supported inside of idmapped mounts.\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"breq->icount == 1\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/xfs/xfs_itable.c\00", [44 x i8] zeroinitializer }, align 32
@xfs_bulkstat._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.xfs_bulkstat = private unnamed_addr constant [13 x i8] c"xfs_bulkstat\00", align 1
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ip != NULL\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ip->i_imap.im_blkno != 0\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 171, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 176, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 262, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 80, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [23 x i8] c"../fs/xfs/xfs_itable.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 81, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @xfs_bulkstat_one._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xfs_bulkstat._rs, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bulkstat_one._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bulkstat._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bulkstat_one(ptr noundef %breq, ptr noundef %formatter) local_unnamed_addr #0 align 64 {
entry:
  %bc = alloca %struct.xfs_bstat_chunk, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bc) #5
  %0 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 2
  %2 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %formatter, ptr %bc, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %breq, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #5
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !24
  %mnt_userns = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 1
  %5 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mnt_userns, align 4
  %cmp.not = icmp eq ptr %6, @init_user_ns
  br i1 %cmp.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @xfs_bulkstat_one._rs, ptr noundef nonnull @__func__.xfs_bulkstat_one) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %breq, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %8, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %icount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %9 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %icount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.end4.cond.end_crit_edge, label %cond.false, !prof !25

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 176) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end4.cond.end_crit_edge
  %call.i = tail call ptr @kmem_alloc(i32 noundef 192, i32 noundef 24) #5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %1, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %cond.end.cleanup_crit_edge, label %if.end13

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %cond.end
  %12 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %breq, align 8
  %call15 = call i32 @xfs_trans_alloc_empty(ptr noundef %13, ptr noundef nonnull %tp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %breq, align 8
  %16 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mnt_userns, align 4
  %18 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tp, align 4
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %20 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %startino, align 8
  %call21 = call fastcc i32 @xfs_bulkstat_one_int(ptr noundef %15, ptr noundef %17, ptr noundef %19, i64 noundef %21, ptr noundef nonnull %bc)
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %23) #5
  br label %out

out:                                              ; preds = %if.end18, %if.end13.out_crit_edge
  %error.0 = phi i32 [ %call15, %if.end13.out_crit_edge ], [ %call21, %if.end18 ]
  call void @kvfree(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %error.0)
  %cmp23 = icmp eq i32 %error.0, -125
  %spec.store.select = select i1 %cmp23, i32 0, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %out ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bc) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_bulkstat_one_int(ptr noundef %mp, ptr noundef %mnt_userns, ptr noundef %tp, i64 noundef %ino, ptr nocapture noundef readonly %bc) unnamed_addr #3 align 64 {
entry:
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #5
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !24
  %buf1 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 2
  %5 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf1, align 4
  %call = tail call zeroext i1 @xfs_internal_inum(ptr noundef %mp, i64 noundef %ino) #5
  br i1 %call, label %entry.out_advance_crit_edge, label %if.end

entry.out_advance_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_advance

if.end:                                           ; preds = %entry
  %call2 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %ip) #5
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %if.end.out_crit_edge [
    i32 -2, label %if.end.out_advance_crit_edge
    i32 -22, label %out_advance.fold.split
    i32 0, label %if.end7
  ]

if.end.out_advance_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_advance

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  %cmp8.not = icmp eq ptr %9, null
  br i1 %cmp8.not, label %cond.false, label %if.end7.cond.end_crit_edge, !prof !26

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 80) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %i_imap = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %i_imap to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_imap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp11.not = icmp eq i64 %13, 0
  br i1 %cmp11.not, label %cond.false19, label %cond.end.cond.end20_crit_edge, !prof !26

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 81) #5
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.end.cond.end20_crit_edge
  %14 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_projid, align 8
  %bs_projectid = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 11
  %18 = ptrtoint ptr %bs_projectid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bs_projectid, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %ino, ptr %6, align 8
  %i_sb.i.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 8
  %20 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 2
  %24 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %25 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %23, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %cond.end20.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

cond.end20.i_uid_into_mnt.exit_crit_edge:         ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %cond.end20
  %cmp.i21.i.i = icmp eq ptr %23, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = call i32 @from_kuid(ptr noundef %23, [1 x i32] %25) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #5
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %cond.end20.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %cond.end20.i_uid_into_mnt.exit_crit_edge ]
  %.fca.0.insert74 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call24 = call i32 @from_kuid(ptr noundef %3, [1 x i32] %.fca.0.insert74) #5
  %bs_uid = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 9
  %26 = ptrtoint ptr %bs_uid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call24, ptr %bs_uid, align 4
  %27 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i139 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 53
  %29 = ptrtoint ptr %s_user_ns.i.i139 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_user_ns.i.i139, align 8
  %i_gid.i = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 3
  %31 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack.i140 = load i32, ptr %i_gid.i, align 8
  %32 = insertvalue [1 x i32] undef, i32 %.unpack.i140, 0
  %cmp.i.i.i142 = icmp eq ptr %30, %mnt_userns
  %spec.select.i.i.i143 = or i1 %cmp.i.i.i.i, %cmp.i.i.i142
  br i1 %spec.select.i.i.i143, label %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i145

i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge: ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit

if.end.i.i145:                                    ; preds = %i_uid_into_mnt.exit
  %cmp.i21.i.i144 = icmp eq ptr %30, @init_user_ns
  br i1 %cmp.i21.i.i144, label %if.end.i.i145.if.end7.i.i149_crit_edge, label %if.else.i.i147

if.end.i.i145.if.end7.i.i149_crit_edge:           ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i149

if.else.i.i147:                                   ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i146 = call i32 @from_kgid(ptr noundef %30, [1 x i32] %32) #5
  br label %if.end7.i.i149

if.end7.i.i149:                                   ; preds = %if.else.i.i147, %if.end.i.i145.if.end7.i.i149_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i146, %if.else.i.i147 ], [ %.unpack.i140, %if.end.i.i145.if.end7.i.i149_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i148 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i148, label %if.end7.i.i149.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i151

if.end7.i.i149.i_gid_into_mnt.exit_crit_edge:     ; preds = %if.end7.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit

if.end9.i.i151:                                   ; preds = %if.end7.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i150 = call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #5
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i151, %if.end7.i.i149.i_gid_into_mnt.exit_crit_edge, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i152 = phi i32 [ %call10.i.i150, %if.end9.i.i151 ], [ -1, %if.end7.i.i149.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i140, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i152, 0
  %call29 = call i32 @from_kgid(ptr noundef %3, [1 x i32] %.fca.0.insert) #5
  %bs_gid = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 10
  %33 = ptrtoint ptr %bs_gid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call29, ptr %bs_gid, align 8
  %34 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ip, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_disk_size, align 8
  %bs_size = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 1
  %38 = ptrtoint ptr %bs_size to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %bs_size, align 8
  %39 = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %bs_nlink = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 20
  %42 = ptrtoint ptr %bs_nlink to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %bs_nlink, align 8
  %i_atime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 15
  %43 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_atime, align 8
  %bs_atime = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 4
  %45 = ptrtoint ptr %bs_atime to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %bs_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 15, i32 1
  %46 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tv_nsec, align 8
  %bs_atime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 12
  %48 = ptrtoint ptr %bs_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %bs_atime_nsec, align 8
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 16
  %49 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_mtime, align 8
  %bs_mtime = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 5
  %51 = ptrtoint ptr %bs_mtime to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %bs_mtime, align 8
  %tv_nsec33 = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 16, i32 1
  %52 = ptrtoint ptr %tv_nsec33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tv_nsec33, align 8
  %bs_mtime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 13
  %54 = ptrtoint ptr %bs_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bs_mtime_nsec, align 4
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 17
  %55 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_ctime, align 8
  %bs_ctime = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 6
  %57 = ptrtoint ptr %bs_ctime to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %bs_ctime, align 8
  %tv_nsec36 = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 17, i32 1
  %58 = ptrtoint ptr %tv_nsec36 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tv_nsec36, align 8
  %bs_ctime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 14
  %60 = ptrtoint ptr %bs_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %bs_ctime_nsec, align 8
  %i_generation = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 49
  %61 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_generation, align 8
  %bs_gen = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 8
  %63 = ptrtoint ptr %bs_gen to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %bs_gen, align 8
  %64 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %i_vnode.i, align 8
  %bs_mode = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 27
  %66 = ptrtoint ptr %bs_mode to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %bs_mode, align 4
  %call37 = call i32 @xfs_ip2xflags(ptr noundef %35) #5
  %conv = zext i32 %call37 to i64
  %bs_xflags = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 3
  %67 = ptrtoint ptr %bs_xflags to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv, ptr %bs_xflags, align 8
  %68 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ip, align 4
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %69, i32 0, i32 21
  %70 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_extsize, align 4
  %bs_extsize_blks = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 19
  %72 = ptrtoint ptr %bs_extsize_blks to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %bs_extsize_blks, align 4
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %69, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %i_df, null
  br i1 %tobool.not.i, label %i_gid_into_mnt.exit.xfs_ifork_nextents.exit_crit_edge, label %if.end.i

i_gid_into_mnt.exit.xfs_ifork_nextents.exit_crit_edge: ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_nextents.exit

if.end.i:                                         ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %if_nextents.i = getelementptr inbounds %struct.xfs_inode, ptr %69, i32 0, i32 8, i32 7
  %73 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %if_nextents.i, align 4
  br label %xfs_ifork_nextents.exit

xfs_ifork_nextents.exit:                          ; preds = %if.end.i, %i_gid_into_mnt.exit.xfs_ifork_nextents.exit_crit_edge
  %retval.0.i = phi i32 [ %74, %if.end.i ], [ 0, %i_gid_into_mnt.exit.xfs_ifork_nextents.exit_crit_edge ]
  %bs_extents = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 21
  %75 = ptrtoint ptr %bs_extents to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i, ptr %bs_extents, align 4
  call void @xfs_bulkstat_health(ptr noundef %69, ptr noundef %6) #5
  %76 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ip, align 4
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_afp, align 8
  %tobool.not.i153 = icmp eq ptr %79, null
  br i1 %tobool.not.i153, label %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit157_crit_edge, label %if.end.i155

xfs_ifork_nextents.exit.xfs_ifork_nextents.exit157_crit_edge: ; preds = %xfs_ifork_nextents.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %xfs_ifork_nextents.exit157

if.end.i155:                                      ; preds = %xfs_ifork_nextents.exit
  call void @__sanitizer_cov_trace_pc() #7
  %if_nextents.i154 = getelementptr inbounds %struct.xfs_ifork, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %if_nextents.i154 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %if_nextents.i154, align 4
  br label %xfs_ifork_nextents.exit157

xfs_ifork_nextents.exit157:                       ; preds = %if.end.i155, %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit157_crit_edge
  %retval.0.i156 = phi i32 [ %81, %if.end.i155 ], [ 0, %xfs_ifork_nextents.exit.xfs_ifork_nextents.exit157_crit_edge ]
  %bs_aextents = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 22
  %82 = ptrtoint ptr %bs_aextents to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i156, ptr %bs_aextents, align 8
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 23
  %83 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i_forkoff, align 4
  %conv40 = zext i8 %84 to i16
  %shl = shl nuw nsw i16 %conv40, 3
  %bs_forkoff = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 24
  %85 = ptrtoint ptr %bs_forkoff to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %shl, ptr %bs_forkoff, align 2
  %bs_version = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 23
  %86 = ptrtoint ptr %bs_version to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 5, ptr %bs_version, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %87 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %m_features.i, align 8
  %and.i158 = and i64 %88, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i158)
  %tobool.i.not = icmp eq i64 %and.i158, 0
  br i1 %tobool.i.not, label %xfs_ifork_nextents.exit157.if.end50_crit_edge, label %if.then43

xfs_ifork_nextents.exit157.if.end50_crit_edge:    ; preds = %xfs_ifork_nextents.exit157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then43:                                        ; preds = %xfs_ifork_nextents.exit157
  %i_crtime = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 26
  %89 = ptrtoint ptr %i_crtime to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %i_crtime, align 8
  %bs_btime = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 7
  %91 = ptrtoint ptr %bs_btime to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %bs_btime, align 8
  %tv_nsec46 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 26, i32 1
  %92 = ptrtoint ptr %tv_nsec46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tv_nsec46, align 8
  %bs_btime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 15
  %94 = ptrtoint ptr %bs_btime_nsec to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %bs_btime_nsec, align 4
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 25
  %95 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %i_diflags2, align 8
  %and = and i64 %96, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool47.not = icmp eq i64 %and, 0
  br i1 %tobool47.not, label %if.then43.if.end50_crit_edge, label %if.then48

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %97 = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 22
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 8
  %bs_cowextsize_blks = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 18
  %100 = ptrtoint ptr %bs_cowextsize_blks to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %bs_cowextsize_blks, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then43.if.end50_crit_edge, %xfs_ifork_nextents.exit157.if.end50_crit_edge
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 8, i32 6
  %101 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %if_format, align 2
  %conv52 = sext i8 %102 to i32
  %103 = zext i32 %conv52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv52, label %if.end50.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb54
    i32 2, label %if.end50.sw.bb58_crit_edge
    i32 3, label %if.end50.sw.bb58_crit_edge159
  ]

if.end50.sw.bb58_crit_edge159:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb58

if.end50.sw.bb58_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb58

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %i_rdev = getelementptr inbounds %struct.xfs_inode, ptr %15, i32 0, i32 27, i32 13
  %104 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_rdev, align 8
  %and.i = and i32 %105, 1048575
  %106 = lshr i32 %105, 2
  %shl.i = and i32 %106, 1073479680
  %or.i = or i32 %shl.i, %and.i
  %bs_rdev = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 17
  %107 = ptrtoint ptr %bs_rdev to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or.i, ptr %bs_rdev, align 4
  %bs_blksize = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 16
  %108 = ptrtoint ptr %bs_blksize to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 4096, ptr %bs_blksize, align 8
  br label %sw.epilog.sink.split

sw.bb54:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %bs_rdev55 = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 17
  %109 = ptrtoint ptr %bs_rdev55 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %bs_rdev55, align 4
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %110 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sb_blocksize, align 4
  %bs_blksize56 = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 16
  %112 = ptrtoint ptr %bs_blksize56 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %bs_blksize56, align 8
  br label %sw.epilog.sink.split

sw.bb58:                                          ; preds = %if.end50.sw.bb58_crit_edge, %if.end50.sw.bb58_crit_edge159
  %bs_rdev59 = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 17
  %113 = ptrtoint ptr %bs_rdev59 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %bs_rdev59, align 4
  %sb_blocksize61 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %114 = ptrtoint ptr %sb_blocksize61 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sb_blocksize61, align 4
  %bs_blksize62 = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 16
  %116 = ptrtoint ptr %bs_blksize62 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %bs_blksize62, align 8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 19
  %117 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %i_nblocks, align 8
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %77, i32 0, i32 17
  %119 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %i_delayed_blks, align 8
  %add = add i64 %120, %118
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb58, %sw.bb54, %sw.bb
  %add.sink = phi i64 [ %add, %sw.bb58 ], [ 0, %sw.bb54 ], [ 0, %sw.bb ]
  %bs_blocks63 = getelementptr inbounds %struct.xfs_bulkstat, ptr %6, i32 0, i32 2
  %121 = ptrtoint ptr %bs_blocks63 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %add.sink, ptr %bs_blocks63, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end50.sw.epilog_crit_edge
  call void @xfs_iunlock(ptr noundef %77, i32 noundef 8) #5
  %122 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %123) #5
  %124 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bc, align 4
  %breq = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 1
  %126 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %breq, align 4
  %call64 = call i32 %125(ptr noundef %127, ptr noundef %6) #5
  %128 = zext i32 %call64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call64, label %sw.epilog.out_crit_edge [
    i32 -125, label %sw.epilog.out_advance_crit_edge
    i32 0, label %out_advance.fold.split137
  ]

sw.epilog.out_advance_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_advance

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out_advance.fold.split:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_advance

out_advance.fold.split137:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_advance

out_advance:                                      ; preds = %out_advance.fold.split137, %out_advance.fold.split, %sw.epilog.out_advance_crit_edge, %if.end.out_advance_crit_edge, %entry.out_advance_crit_edge
  %error.0 = phi i32 [ -22, %entry.out_advance_crit_edge ], [ %call2, %if.end.out_advance_crit_edge ], [ %call64, %sw.epilog.out_advance_crit_edge ], [ -22, %out_advance.fold.split ], [ 0, %out_advance.fold.split137 ]
  %add72 = add i64 %ino, 1
  %breq73 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 1
  %129 = ptrtoint ptr %breq73 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %breq73, align 4
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %startino to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %add72, ptr %startino, align 8
  br label %out

out:                                              ; preds = %out_advance, %sw.epilog.out_crit_edge, %if.end.out_crit_edge
  %error.1 = phi i32 [ %error.0, %out_advance ], [ %call2, %if.end.out_crit_edge ], [ %call64, %sw.epilog.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #5
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bulkstat(ptr noundef %breq, ptr noundef %formatter) local_unnamed_addr #0 align 64 {
entry:
  %bc = alloca %struct.xfs_bstat_chunk, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bc) #5
  %0 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %bc, i32 0, i32 2
  %2 = ptrtoint ptr %bc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %formatter, ptr %bc, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %breq, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #5
  %4 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !24
  %mnt_userns = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 1
  %5 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mnt_userns, align 4
  %cmp.not = icmp eq ptr %6, @init_user_ns
  br i1 %cmp.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @xfs_bulkstat._rs, ptr noundef nonnull @__func__.xfs_bulkstat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %breq, align 8
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %8, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end4:                                          ; preds = %entry
  %9 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %breq, align 8
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %11 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %startino, align 8
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 64, i32 15
  %13 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %agino_log.i, align 8
  %sh_prom.i = zext i32 %14 to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 12
  %15 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %16, %conv.i
  br i1 %cmp.not.i, label %xfs_bulkstat_already_done.exit, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfs_bulkstat_already_done.exit:                   ; preds = %if.end4
  %conv1.i = trunc i64 %12 to i32
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %17 = trunc i64 %notmask.i to i32
  %conv5.i = xor i32 %17, -1
  %and.i = and i32 %conv5.i, %conv1.i
  %conv7.i = and i64 %shr.i, 4294967295
  %shl11.i = shl i64 %conv7.i, %sh_prom.i
  %conv12.i = zext i32 %and.i to i64
  %or.i = or i64 %shl11.i, %conv12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %12)
  %cmp13.i.not = icmp eq i64 %or.i, %12
  br i1 %cmp13.i.not, label %if.end8, label %xfs_bulkstat_already_done.exit.cleanup_crit_edge

xfs_bulkstat_already_done.exit.cleanup_crit_edge: ; preds = %xfs_bulkstat_already_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %xfs_bulkstat_already_done.exit
  %call.i = tail call ptr @kmem_alloc(i32 noundef 192, i32 noundef 24) #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %1, align 4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %breq, align 8
  %call16 = call i32 @xfs_trans_alloc_empty(ptr noundef %20, ptr noundef nonnull %tp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %breq, align 8
  %23 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tp, align 4
  %25 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %startino, align 8
  %flags = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 8
  %icount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %29 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %icount, align 8
  %call22 = call i32 @xfs_iwalk(ptr noundef %22, ptr noundef %24, i64 noundef %26, i32 noundef %28, ptr noundef nonnull @xfs_bulkstat_iwalk, i32 noundef %30, ptr noundef nonnull %bc) #5
  %31 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %32) #5
  br label %out

out:                                              ; preds = %if.end19, %if.end14.out_crit_edge
  %error.0 = phi i32 [ %call16, %if.end14.out_crit_edge ], [ %call22, %if.end19 ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void @kvfree(ptr noundef %34) #5
  %ocount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %35 = ptrtoint ptr %ocount to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ocount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp24.not = icmp eq i32 %36, 0
  %spec.select = select i1 %cmp24.not, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %xfs_bulkstat_already_done.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %out ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %xfs_bulkstat_already_done.exit.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bc) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iwalk(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bulkstat_iwalk(ptr noundef %mp, ptr noundef %tp, i64 noundef %ino, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %breq = getelementptr inbounds %struct.xfs_bstat_chunk, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %breq, align 4
  %mnt_userns = getelementptr inbounds %struct.xfs_ibulk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mnt_userns, align 4
  %call = tail call fastcc i32 @xfs_bulkstat_one_int(ptr noundef %mp, ptr noundef %3, ptr noundef %tp, i64 noundef %ino, ptr noundef %data)
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call, label %if.end [
    i32 -2, label %entry.cleanup_crit_edge
    i32 -22, label %entry.cleanup_crit_edge6
  ]

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge6
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_bulkstat_to_bstat(ptr nocapture noundef readonly %mp, ptr noundef writeonly %bs1, ptr noundef readonly %bstat) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %bs1, i32 0, i32 112)
  %1 = ptrtoint ptr %bstat to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %bstat, align 8
  %3 = ptrtoint ptr %bs1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %bs1, align 8
  %bs_mode = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 27
  %4 = ptrtoint ptr %bs_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bs_mode, align 4
  %bs_mode2 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 1
  %6 = ptrtoint ptr %bs_mode2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %bs_mode2, align 8
  %bs_nlink = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 20
  %7 = ptrtoint ptr %bs_nlink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bs_nlink, align 8
  %conv = trunc i32 %8 to i16
  %bs_nlink3 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 2
  %9 = ptrtoint ptr %bs_nlink3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %bs_nlink3, align 2
  %bs_uid = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 9
  %10 = ptrtoint ptr %bs_uid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bs_uid, align 4
  %bs_uid4 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 3
  %12 = ptrtoint ptr %bs_uid4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bs_uid4, align 4
  %bs_gid = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 10
  %13 = ptrtoint ptr %bs_gid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bs_gid, align 8
  %bs_gid5 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 4
  %15 = ptrtoint ptr %bs_gid5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bs_gid5, align 8
  %bs_rdev = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 17
  %16 = ptrtoint ptr %bs_rdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bs_rdev, align 4
  %bs_rdev6 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 5
  %18 = ptrtoint ptr %bs_rdev6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %bs_rdev6, align 4
  %bs_blksize = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 16
  %19 = ptrtoint ptr %bs_blksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bs_blksize, align 8
  %bs_blksize7 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 6
  %21 = ptrtoint ptr %bs_blksize7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bs_blksize7, align 8
  %bs_size = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 1
  %22 = ptrtoint ptr %bs_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bs_size, align 8
  %bs_size8 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 7
  %24 = ptrtoint ptr %bs_size8 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %bs_size8, align 8
  %bs_atime = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 4
  %25 = ptrtoint ptr %bs_atime to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bs_atime, align 8
  %conv9 = trunc i64 %26 to i32
  %bs_atime10 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 8
  %27 = ptrtoint ptr %bs_atime10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv9, ptr %bs_atime10, align 8
  %bs_mtime = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 5
  %28 = ptrtoint ptr %bs_mtime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %bs_mtime, align 8
  %conv11 = trunc i64 %29 to i32
  %bs_mtime12 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 9
  %30 = ptrtoint ptr %bs_mtime12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv11, ptr %bs_mtime12, align 8
  %bs_ctime = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 6
  %31 = ptrtoint ptr %bs_ctime to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %bs_ctime, align 8
  %conv14 = trunc i64 %32 to i32
  %bs_ctime15 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 10
  %33 = ptrtoint ptr %bs_ctime15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv14, ptr %bs_ctime15, align 8
  %bs_atime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 12
  %34 = ptrtoint ptr %bs_atime_nsec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bs_atime_nsec, align 8
  %tv_nsec = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tv_nsec, align 4
  %bs_mtime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 13
  %37 = ptrtoint ptr %bs_mtime_nsec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bs_mtime_nsec, align 4
  %tv_nsec19 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %tv_nsec19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tv_nsec19, align 4
  %bs_ctime_nsec = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 14
  %40 = ptrtoint ptr %bs_ctime_nsec to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bs_ctime_nsec, align 8
  %tv_nsec21 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %tv_nsec21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tv_nsec21, align 4
  %bs_blocks = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 2
  %43 = ptrtoint ptr %bs_blocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bs_blocks, align 8
  %bs_blocks22 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 11
  %45 = ptrtoint ptr %bs_blocks22 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %bs_blocks22, align 8
  %bs_xflags = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 3
  %46 = ptrtoint ptr %bs_xflags to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bs_xflags, align 8
  %conv23 = trunc i64 %47 to i32
  %bs_xflags24 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 12
  %48 = ptrtoint ptr %bs_xflags24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv23, ptr %bs_xflags24, align 8
  %bs_extsize_blks = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 19
  %49 = ptrtoint ptr %bs_extsize_blks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bs_extsize_blks, align 4
  %conv25 = zext i32 %50 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %51 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %52 to i64
  %shl = shl i64 %conv25, %sh_prom
  %conv27 = trunc i64 %shl to i32
  %bs_extsize = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 13
  %53 = ptrtoint ptr %bs_extsize to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv27, ptr %bs_extsize, align 4
  %bs_extents = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 21
  %54 = ptrtoint ptr %bs_extents to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bs_extents, align 4
  %bs_extents28 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 14
  %56 = ptrtoint ptr %bs_extents28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %bs_extents28, align 8
  %bs_gen = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 8
  %57 = ptrtoint ptr %bs_gen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bs_gen, align 8
  %bs_gen29 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 15
  %59 = ptrtoint ptr %bs_gen29 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bs_gen29, align 4
  %bs_projectid = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 11
  %60 = ptrtoint ptr %bs_projectid to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bs_projectid, align 4
  %conv30 = trunc i32 %61 to i16
  %bs_projid_lo = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 16
  %62 = ptrtoint ptr %bs_projid_lo to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv30, ptr %bs_projid_lo, align 8
  %bs_forkoff = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 24
  %63 = ptrtoint ptr %bs_forkoff to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bs_forkoff, align 2
  %bs_forkoff31 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 17
  %65 = ptrtoint ptr %bs_forkoff31 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %bs_forkoff31, align 2
  %66 = load i32, ptr %bs_projectid, align 4
  %shr = lshr i32 %66, 16
  %conv33 = trunc i32 %shr to i16
  %bs_projid_hi = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 18
  %67 = ptrtoint ptr %bs_projid_hi to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv33, ptr %bs_projid_hi, align 4
  %bs_sick = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 25
  %68 = ptrtoint ptr %bs_sick to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bs_sick, align 8
  %bs_sick34 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 19
  %70 = ptrtoint ptr %bs_sick34 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %bs_sick34, align 2
  %bs_checked = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 26
  %71 = ptrtoint ptr %bs_checked to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %bs_checked, align 2
  %bs_checked35 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 20
  %73 = ptrtoint ptr %bs_checked35 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %bs_checked35, align 8
  %bs_cowextsize_blks = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 18
  %74 = ptrtoint ptr %bs_cowextsize_blks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bs_cowextsize_blks, align 8
  %conv36 = zext i32 %75 to i64
  %76 = load i8, ptr %sb_blocklog, align 8
  %sh_prom40 = zext i8 %76 to i64
  %shl41 = shl i64 %conv36, %sh_prom40
  %conv42 = trunc i64 %shl41 to i32
  %bs_cowextsize = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 22
  %77 = ptrtoint ptr %bs_cowextsize to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv42, ptr %bs_cowextsize, align 4
  %bs_dmevmask = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 23
  %78 = ptrtoint ptr %bs_dmevmask to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %bs_dmevmask, align 8
  %bs_dmstate = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 24
  %79 = ptrtoint ptr %bs_dmstate to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %bs_dmstate, align 4
  %bs_aextents = getelementptr inbounds %struct.xfs_bulkstat, ptr %bstat, i32 0, i32 22
  %80 = ptrtoint ptr %bs_aextents to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bs_aextents, align 8
  %conv43 = trunc i32 %81 to i16
  %bs_aextents44 = getelementptr inbounds %struct.xfs_bstat, ptr %bs1, i32 0, i32 25
  %82 = ptrtoint ptr %bs_aextents44 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv43, ptr %bs_aextents44, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_inumbers(ptr noundef %breq, ptr noundef %formatter) local_unnamed_addr #0 align 64 {
entry:
  %ic = alloca %struct.xfs_inumbers_chunk, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ic) #5
  %0 = getelementptr inbounds %struct.xfs_inumbers_chunk, ptr %ic, i32 0, i32 1
  %1 = ptrtoint ptr %ic to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %formatter, ptr %ic, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %breq, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #5
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !24
  %4 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %breq, align 8
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %6 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %startino, align 8
  %agino_log.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 64, i32 15
  %8 = ptrtoint ptr %agino_log.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %agino_log.i, align 8
  %sh_prom.i = zext i32 %9 to i64
  %shr.i = lshr i64 %7, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %sb_agcount.i = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %sb_agcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_agcount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %11, %conv.i
  br i1 %cmp.not.i, label %xfs_bulkstat_already_done.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

xfs_bulkstat_already_done.exit:                   ; preds = %entry
  %conv1.i = trunc i64 %7 to i32
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %12 = trunc i64 %notmask.i to i32
  %conv5.i = xor i32 %12, -1
  %and.i = and i32 %conv5.i, %conv1.i
  %conv7.i = and i64 %shr.i, 4294967295
  %shl11.i = shl i64 %conv7.i, %sh_prom.i
  %conv12.i = zext i32 %and.i to i64
  %or.i = or i64 %shl11.i, %conv12.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %7)
  %cmp13.i.not = icmp eq i64 %or.i, %7
  br i1 %cmp13.i.not, label %if.end, label %xfs_bulkstat_already_done.exit.cleanup_crit_edge

xfs_bulkstat_already_done.exit.cleanup_crit_edge: ; preds = %xfs_bulkstat_already_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %xfs_bulkstat_already_done.exit
  %call4 = call i32 @xfs_trans_alloc_empty(ptr noundef %5, ptr noundef nonnull %tp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %breq, align 8
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %17 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %startino, align 8
  %flags = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %icount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %21 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %icount, align 8
  %call9 = call i32 @xfs_inobt_walk(ptr noundef %14, ptr noundef %16, i64 noundef %18, i32 noundef %20, ptr noundef nonnull @xfs_inumbers_walk, i32 noundef %22, ptr noundef nonnull %ic) #5
  %23 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %24) #5
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call9, %if.end6 ]
  %ocount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %25 = ptrtoint ptr %ocount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ocount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  %spec.select = select i1 %cmp.not, i32 %error.0, i32 0
  br label %cleanup

cleanup:                                          ; preds = %out, %xfs_bulkstat_already_done.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %out ], [ 0, %xfs_bulkstat_already_done.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ic) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inobt_walk(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inumbers_walk(ptr nocapture noundef readonly %mp, ptr nocapture noundef readnone %tp, i32 noundef %agno, ptr nocapture noundef readonly %irec, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  %inogrp = alloca %struct.xfs_inumbers, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inogrp) #5
  %0 = getelementptr inbounds %struct.xfs_inumbers, ptr %inogrp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_inumbers, ptr %inogrp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xfs_inumbers, ptr %inogrp, i32 0, i32 3
  %3 = getelementptr inbounds %struct.xfs_inumbers, ptr %inogrp, i32 0, i32 4
  %conv = zext i32 %agno to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %4 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %5 to i64
  %shl = shl i64 %conv, %sh_prom
  %6 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irec, align 8
  %conv1 = zext i32 %7 to i64
  %or = or i64 %shl, %conv1
  %8 = ptrtoint ptr %inogrp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %or, ptr %inogrp, align 8
  %ir_free = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 4
  %9 = ptrtoint ptr %ir_free to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ir_free, align 8
  %neg = xor i64 %10, -1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %neg, ptr %0, align 8
  %ir_count = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 2
  %12 = ptrtoint ptr %ir_count to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ir_count, align 2
  %ir_freecount = getelementptr inbounds %struct.xfs_inobt_rec_incore, ptr %irec, i32 0, i32 3
  %14 = ptrtoint ptr %ir_freecount to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ir_freecount, align 1
  %sub = sub i8 %13, %15
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub, ptr %1, align 8
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %2, align 1
  %18 = call ptr @memset(ptr %3, i32 0, i32 6)
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %breq = getelementptr inbounds %struct.xfs_inumbers_chunk, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %breq, align 4
  %call = call i32 %20(ptr noundef %22, ptr noundef nonnull %inogrp) #5
  %23 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 -125, label %entry.if.end_crit_edge28
  ]

entry.if.end_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge28
  %24 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agino_log, align 8
  %sh_prom9 = zext i32 %25 to i64
  %shl10 = shl i64 %conv, %sh_prom9
  %26 = ptrtoint ptr %irec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irec, align 8
  %conv12 = zext i32 %27 to i64
  %or13 = or i64 %shl10, %conv12
  %add = add i64 %or13, 64
  %28 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %breq, align 4
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %startino to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add, ptr %startino, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inogrp) #5
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_inumbers_to_inogrp(ptr nocapture noundef writeonly %ig1, ptr nocapture noundef readonly %ig) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ig1, i32 0, i32 24)
  %1 = ptrtoint ptr %ig to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ig, align 8
  %3 = ptrtoint ptr %ig1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ig1, align 8
  %xi_alloccount = getelementptr inbounds %struct.xfs_inumbers, ptr %ig, i32 0, i32 2
  %4 = ptrtoint ptr %xi_alloccount to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %xi_alloccount, align 8
  %conv = zext i8 %5 to i32
  %xi_alloccount2 = getelementptr inbounds %struct.xfs_inogrp, ptr %ig1, i32 0, i32 1
  %6 = ptrtoint ptr %xi_alloccount2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %xi_alloccount2, align 8
  %xi_allocmask = getelementptr inbounds %struct.xfs_inumbers, ptr %ig, i32 0, i32 1
  %7 = ptrtoint ptr %xi_allocmask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %xi_allocmask, align 8
  %xi_allocmask3 = getelementptr inbounds %struct.xfs_inogrp, ptr %ig1, i32 0, i32 2
  %9 = ptrtoint ptr %xi_allocmask3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %xi_allocmask3, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_internal_inum(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ip2xflags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bulkstat_health(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_itable.c", i32 171, i32 3}
!2 = !{ptr @xfs_bulkstat_one._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.xfs_bulkstat_one, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_itable.c", i32 176, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @xfs_bulkstat._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_itable.c", i32 262, i32 3}
!10 = !{ptr @__func__.xfs_bulkstat, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_itable.c", i32 80, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_itable.c", i32 81, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 1, i32 2000}
