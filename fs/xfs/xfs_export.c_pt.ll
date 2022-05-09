; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_export.c_pt.bc'
source_filename = "../fs/xfs/xfs_export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xfs_name = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.81, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.82, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.83, ptr, %struct.address_space, %struct.list_head, %union.anon.84, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.81 = type { i32 }
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
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.84 = type { ptr }
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
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.77 = type { i32, i32, i32, i32 }
%struct.xfs_fid64 = type <{ i64, i32, i64, i32 }>
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }

@xfs_export_operations = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @xfs_fs_encode_fh, ptr @xfs_fs_fh_to_dentry, ptr @xfs_fs_fh_to_parent, ptr null, ptr @xfs_fs_get_parent, ptr @xfs_fs_nfs_commit_metadata, ptr @xfs_fs_get_uuid, ptr @xfs_fs_map_blocks, ptr @xfs_fs_commit_blocks, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@xfs_name_dotdot = external dso_local global %struct.xfs_name, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 129, i64 130]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 129, i64 130]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 129, i64 130]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 129, i64 130]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 129, i64 130]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 130]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967179, i64 4294967274, i64 4294967294]
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"xfs_export_operations\00", align 1
@___asan_gen_.8 = private constant [23 x i8] c"../fs/xfs/xfs_export.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 226, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @xfs_export_operations], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_export_operations to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_fs_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %max_len, ptr noundef readonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %tobool.not = icmp eq ptr %parent, null
  %. = select i1 %tobool.not, i32 1, i32 2
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %5, 72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.then2_crit_edge, label %lor.lhs.false

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

lor.lhs.false:                                    ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i52.not = icmp eq i32 %8, 0
  br i1 %tobool.i52.not, label %lor.lhs.false.if.end3_crit_edge, label %lor.lhs.false.if.then2_crit_edge

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %entry.if.then2_crit_edge
  %or = or i32 %., 128
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %fileid_type.1 = phi i32 [ %or, %if.then2 ], [ %., %lor.lhs.false.if.end3_crit_edge ]
  %9 = zext i32 %fileid_type.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fileid_type.1, label %sw.epilog.i [
    i32 1, label %if.end3.xfs_fileid_length.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 129, label %sw.bb2.i
    i32 130, label %sw.bb3.i
  ]

if.end3.xfs_fileid_length.exit_crit_edge:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb1.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb2.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb3.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.epilog.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

xfs_fileid_length.exit:                           ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end3.xfs_fileid_length.exit_crit_edge
  %retval.0.i = phi i32 [ 255, %sw.epilog.i ], [ 6, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %if.end3.xfs_fileid_length.exit_crit_edge ]
  %10 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i)
  %cmp = icmp slt i32 %11, %retval.0.i
  %12 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %max_len, align 4
  br i1 %cmp, label %xfs_fileid_length.exit.cleanup_crit_edge, label %if.end6

xfs_fileid_length.exit.cleanup_crit_edge:         ; preds = %xfs_fileid_length.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %xfs_fileid_length.exit
  %13 = zext i32 %fileid_type.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %fileid_type.1, label %if.end6.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end6.sw.bb8_crit_edge
    i32 130, label %sw.bb13
    i32 129, label %if.end6.sw.bb19_crit_edge
  ]

if.end6.sw.bb19_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb19

if.end6.sw.bb8_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino = getelementptr i8, ptr %parent, i32 -296
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ino, align 8
  %conv = trunc i64 %15 to i32
  %parent_ino = getelementptr inbounds %struct.anon.77, ptr %fh, i32 0, i32 2
  %16 = ptrtoint ptr %parent_ino to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %parent_ino, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %17 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_generation, align 8
  %parent_gen = getelementptr inbounds %struct.anon.77, ptr %fh, i32 0, i32 3
  %19 = ptrtoint ptr %parent_gen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %parent_gen, align 4
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb, %if.end6.sw.bb8_crit_edge
  %i_ino10 = getelementptr i8, ptr %inode, i32 -296
  %20 = ptrtoint ptr %i_ino10 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_ino10, align 8
  %conv11 = trunc i64 %21 to i32
  %22 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv11, ptr %fh, align 4
  %i_generation12 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %23 = ptrtoint ptr %i_generation12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_generation12, align 8
  %gen = getelementptr inbounds %struct.anon.77, ptr %fh, i32 0, i32 1
  %25 = ptrtoint ptr %gen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %gen, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %i_ino15 = getelementptr i8, ptr %parent, i32 -296
  %26 = ptrtoint ptr %i_ino15 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_ino15, align 8
  %parent_ino16 = getelementptr inbounds %struct.xfs_fid64, ptr %fh, i32 0, i32 2
  %28 = ptrtoint ptr %parent_ino16 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %parent_ino16, align 1
  %i_generation17 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %29 = ptrtoint ptr %i_generation17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_generation17, align 8
  %parent_gen18 = getelementptr inbounds %struct.xfs_fid64, ptr %fh, i32 0, i32 3
  %31 = ptrtoint ptr %parent_gen18 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %parent_gen18, align 1
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb13, %if.end6.sw.bb19_crit_edge
  %i_ino21 = getelementptr i8, ptr %inode, i32 -296
  %32 = ptrtoint ptr %i_ino21 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ino21, align 8
  %34 = ptrtoint ptr %fh to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %fh, align 1
  %i_generation23 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %35 = ptrtoint ptr %i_generation23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_generation23, align 8
  %gen24 = getelementptr inbounds %struct.xfs_fid64, ptr %fh, i32 0, i32 1
  %37 = ptrtoint ptr %gen24 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %gen24, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb8, %if.end6.cleanup_crit_edge, %xfs_fileid_length.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %fileid_type.1, %if.end6.cleanup_crit_edge ], [ %fileid_type.1, %sw.bb19 ], [ %fileid_type.1, %sw.bb8 ], [ 255, %xfs_fileid_length.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_fs_fh_to_dentry(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fileid_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %fileid_type, label %sw.epilog.i [
    i32 1, label %entry.xfs_fileid_length.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 129, label %sw.bb2.i
    i32 130, label %sw.bb3.i
  ]

entry.xfs_fileid_length.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

xfs_fileid_length.exit:                           ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.xfs_fileid_length.exit_crit_edge
  %retval.0.i = phi i32 [ 255, %sw.epilog.i ], [ 6, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %entry.xfs_fileid_length.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %fh_len)
  %cmp = icmp sgt i32 %retval.0.i, %fh_len
  br i1 %cmp, label %xfs_fileid_length.exit.cleanup_crit_edge, label %if.end

xfs_fileid_length.exit.cleanup_crit_edge:         ; preds = %xfs_fileid_length.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %xfs_fileid_length.exit
  %1 = zext i32 %fileid_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %fileid_type, label %if.end.sw.epilog_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge13
    i32 130, label %if.end.sw.bb2_crit_edge
    i32 129, label %if.end.sw.bb2_crit_edge14
  ]

if.end.sw.bb2_crit_edge14:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge13
  %2 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fid, align 4
  %conv = zext i32 %3 to i64
  %gen = getelementptr inbounds %struct.anon.77, ptr %fid, i32 0, i32 1
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gen, align 4
  %call1 = tail call fastcc ptr @xfs_nfs_get_inode(ptr noundef %sb, i64 noundef %conv, i32 noundef %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge14
  %6 = ptrtoint ptr %fid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %fid, align 1
  %gen4 = getelementptr inbounds %struct.xfs_fid64, ptr %fid, i32 0, i32 1
  %8 = ptrtoint ptr %gen4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %gen4, align 1
  %call5 = tail call fastcc ptr @xfs_nfs_get_inode(ptr noundef %sb, i64 noundef %7, i32 noundef %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %inode.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ %call5, %sw.bb2 ], [ %call1, %sw.bb ]
  %call6 = tail call ptr @d_obtain_alias(ptr noundef %inode.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %xfs_fileid_length.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %sw.epilog ], [ null, %xfs_fileid_length.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_fs_fh_to_parent(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fileid_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fileid_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %fileid_type, label %sw.epilog.i [
    i32 1, label %entry.xfs_fileid_length.exit_crit_edge
    i32 2, label %sw.bb1.i
    i32 129, label %sw.bb2.i
    i32 130, label %sw.bb3.i
  ]

entry.xfs_fileid_length.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %xfs_fileid_length.exit

xfs_fileid_length.exit:                           ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.xfs_fileid_length.exit_crit_edge
  %retval.0.i = phi i32 [ 255, %sw.epilog.i ], [ 6, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 2, %entry.xfs_fileid_length.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %fh_len)
  %cmp = icmp sgt i32 %retval.0.i, %fh_len
  br i1 %cmp, label %xfs_fileid_length.exit.cleanup_crit_edge, label %if.end

xfs_fileid_length.exit.cleanup_crit_edge:         ; preds = %xfs_fileid_length.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %xfs_fileid_length.exit
  %1 = zext i32 %fileid_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %fileid_type, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 130, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parent_ino = getelementptr inbounds %struct.anon.77, ptr %fid, i32 0, i32 2
  %2 = ptrtoint ptr %parent_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_ino, align 4
  %conv = zext i32 %3 to i64
  %parent_gen = getelementptr inbounds %struct.anon.77, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %parent_gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_gen, align 4
  %call1 = tail call fastcc ptr @xfs_nfs_get_inode(ptr noundef %sb, i64 noundef %conv, i32 noundef %5)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parent_ino3 = getelementptr inbounds %struct.xfs_fid64, ptr %fid, i32 0, i32 2
  %6 = ptrtoint ptr %parent_ino3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %parent_ino3, align 1
  %parent_gen4 = getelementptr inbounds %struct.xfs_fid64, ptr %fid, i32 0, i32 3
  %8 = ptrtoint ptr %parent_gen4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %parent_gen4, align 1
  %call5 = tail call fastcc ptr @xfs_nfs_get_inode(ptr noundef %sb, i64 noundef %7, i32 noundef %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %if.end.sw.epilog_crit_edge
  %inode.0 = phi ptr [ null, %if.end.sw.epilog_crit_edge ], [ %call5, %sw.bb2 ], [ %call1, %sw.bb ]
  %call6 = tail call ptr @d_obtain_alias(ptr noundef %inode.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %xfs_fileid_length.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %sw.epilog ], [ null, %xfs_fileid_length.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_fs_get_parent(ptr nocapture noundef readonly %child) #1 align 64 {
entry:
  %cip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cip) #4
  %0 = ptrtoint ptr %cip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cip, align 4, !annotation !11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -312
  %call2 = call i32 @xfs_lookup(ptr noundef %add.ptr.i, ptr noundef nonnull @xfs_name_dotdot, ptr noundef nonnull %cip, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %cip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %5, i32 0, i32 27
  %call7 = call ptr @d_obtain_alias(ptr noundef %i_vnode.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %call7, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cip) #4
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_fs_nfs_commit_metadata(ptr noundef %inode) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %call1 = tail call i32 @xfs_log_force_inode(ptr noundef %add.ptr.i) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_get_uuid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_map_blocks(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_commit_blocks(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_nfs_get_inode(ptr nocapture noundef readonly %sb, i64 noundef %ino, i32 noundef %generation) unnamed_addr #1 align 64 {
entry:
  %ip = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #4
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ino)
  %cmp = icmp eq i64 %ino, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @xfs_iget(ptr noundef %1, ptr noundef null, i64 noundef %ino, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %ip) #4
  %3 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call1, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end4
    i32 -22, label %if.end.sw.bb_crit_edge
    i32 -2, label %if.end.sw.bb_crit_edge17
    i32 -117, label %if.end.sw.bb_crit_edge18
  ]

if.end.sw.bb_crit_edge18:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge17:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge17, %if.end.sw.bb_crit_edge18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %error.0 = phi i32 [ -116, %sw.bb ], [ %call1, %if.end.sw.epilog_crit_edge ]
  %4 = inttoptr i32 %error.0 to ptr
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 27
  %i_generation = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 27, i32 49
  %7 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_generation, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %generation)
  %cmp6.not = icmp eq i32 %8, %generation
  br i1 %cmp6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_irele(ptr noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %sw.epilog ], [ inttoptr (i32 -116 to ptr), %if.then7 ], [ inttoptr (i32 -116 to ptr), %entry.cleanup_crit_edge ], [ %i_vnode.i, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree noinline norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @xfs_export_operations, !1, !"xfs_export_operations", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_export.c", i32 226, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
!12 = !{!"branch_weights", i32 2000, i32 1}
