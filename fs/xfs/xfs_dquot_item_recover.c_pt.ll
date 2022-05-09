; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_dquot_item_recover.c_pt.bc'
source_filename = "../fs/xfs/xfs_dquot_item_recover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xlog_recover_item_ops = type { i16, ptr, ptr, ptr, ptr }
%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xlog_recover_item = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.xfs_log_iovec = type { ptr, i32, i32 }
%struct.xfs_disk_dquot = type { i16, i8, i8, i32, i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i32, i64, i64, i64, i32, i16, i16 }
%struct.xlog = type { ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i32, i32, i32, i64, i32, i32, [88 x i8], %struct.wait_queue_head, i32, ptr, %struct.spinlock, i32, i32, i32, i32, [8 x i8], %struct.atomic64_t, [120 x i8], %struct.atomic64_t, [120 x i8], %struct.xlog_grant_head, %struct.xlog_grant_head, %struct.xfs_kobj, [8 x ptr], i64, i32, %struct.rw_semaphore, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xlog_grant_head = type { %struct.spinlock, %struct.list_head, %struct.atomic64_t, [64 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_dq_logformat = type { i16, i16, i32, i64, i32, i32 }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_dqblk = type { %struct.xfs_disk_dquot, [4 x i8], i32, i64, %struct.uuid_t }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_qoff_logformat = type { i16, i16, i32, [12 x i8] }

@xlog_dquot_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4669, ptr null, ptr @xlog_recover_dquot_ra_pass2, ptr null, ptr @xlog_recover_dquot_commit_pass2 }, [44 x i8] zeroinitializer }, align 32
@xlog_quotaoff_item_ops = dso_local constant { %struct.xlog_recover_item_ops, [44 x i8] } { %struct.xlog_recover_item_ops { i16 4670, ptr null, ptr null, ptr @xlog_recover_quotaoff_commit_pass1, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/xfs/xfs_dquot_item_recover.c\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dq_f\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dq_f->qlf_len == 1\00", [45 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ra_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NULL dquot in %s.\00", [46 x i8] zeroinitializer }, align 32
@__func__.xlog_recover_dquot_commit_pass2 = private unnamed_addr constant [32 x i8] c"xlog_recover_dquot_commit_pass2\00", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dquot too small (%d) in %s.\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"corrupt dquot ID 0x%x in log at %pS\00", [60 x i8] zeroinitializer }, align 32
@xfs_dquot_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bp\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dq_f->qlf_size == 2\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp->b_mount == mp\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qoff_f\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"xlog_dquot_item_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 164, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"xlog_quotaoff_item_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 197, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 43, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 48, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 49, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 82, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 86, i32 24 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 113, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 132, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 154, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 155, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [35 x i8] c"../fs/xfs/xfs_dquot_item_recover.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 181, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @xlog_dquot_item_ops, ptr @xlog_quotaoff_item_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_dquot_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlog_quotaoff_item_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlog_recover_dquot_ra_pass2(ptr noundef %log, ptr nocapture noundef readonly %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %4 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ri_buf, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %7, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %5, i32 1, i32 1
  %8 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %9)
  %cmp6 = icmp ult i32 %9, 104
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %d_type, align 1
  %12 = and i8 %11, 7
  %and = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %cond.false, label %if.end8.cond.end_crit_edge, !prof !36

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 43) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end8.cond.end_crit_edge
  %l_quotaoffs_flag = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %13 = ptrtoint ptr %l_quotaoffs_flag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_quotaoffs_flag, align 4
  %and11 = and i32 %14, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  %15 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ri_buf, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %cond.false26, label %if.end14.cond.end27_crit_edge, !prof !36

if.end14.cond.end27_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end27

cond.false26:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 48) #4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %if.end14.cond.end27_crit_edge
  %qlf_len = getelementptr inbounds %struct.xfs_dq_logformat, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %qlf_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp28 = icmp eq i32 %20, 1
  br i1 %cmp28, label %cond.end27.cond.end38_crit_edge, label %cond.false37, !prof !37

cond.end27.cond.end38_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end38

cond.false37:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 49) #4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.end27.cond.end38_crit_edge
  %qlf_blkno = getelementptr inbounds %struct.xfs_dq_logformat, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %qlf_blkno to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %qlf_blkno, align 8
  %23 = ptrtoint ptr %qlf_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlf_len, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %25 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %m_blkbb_log, align 1
  %conv40 = zext i8 %26 to i32
  %shl = shl i32 %24, %conv40
  tail call void @xlog_buf_readahead(ptr noundef %log, i64 noundef %22, i32 noundef %shl, ptr noundef nonnull @xfs_dquot_buf_ra_ops) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end38, %cond.end.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_dquot_commit_pass2(ptr nocapture noundef readonly %log, ptr noundef %buffer_list, ptr nocapture noundef readonly %item, i64 noundef %current_lsn) #0 align 64 {
entry:
  %map.i = alloca %struct.xfs_buf_map, align 8
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #4
  %2 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !38
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %3 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_qflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup108_crit_edge, label %if.end

entry.cleanup108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup108

if.end:                                           ; preds = %entry
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ri_buf, align 4
  %arrayidx = getelementptr %struct.xfs_log_iovec, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %8, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.xlog_recover_dquot_commit_pass2) #4
  br label %cleanup108

if.end4:                                          ; preds = %if.end
  %i_len = getelementptr %struct.xfs_log_iovec, ptr %6, i32 1, i32 1
  %9 = ptrtoint ptr %i_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %10)
  %cmp7 = icmp ult i32 %10, 104
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %10, ptr noundef nonnull @__func__.xlog_recover_dquot_commit_pass2) #4
  br label %cleanup108

if.end13:                                         ; preds = %if.end4
  %d_type = getelementptr inbounds %struct.xfs_disk_dquot, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %d_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %d_type, align 1
  %13 = and i8 %12, 7
  %and = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %cond.false, label %if.end13.cond.end_crit_edge, !prof !36

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 95) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end13.cond.end_crit_edge
  %l_quotaoffs_flag = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %14 = ptrtoint ptr %l_quotaoffs_flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_quotaoffs_flag, align 4
  %and16 = and i32 %15, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %cond.end.cleanup108_crit_edge

cond.end.cleanup108_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup108

if.end19:                                         ; preds = %cond.end
  %16 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ri_buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %cond.false31, label %if.end19.cond.end32_crit_edge, !prof !36

if.end19.cond.end32_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end32

cond.false31:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 110) #4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %if.end19.cond.end32_crit_edge
  %qlf_id = getelementptr inbounds %struct.xfs_dq_logformat, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %qlf_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlf_id, align 4
  %call = tail call ptr @xfs_dquot_verify(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %21) #4
  %tobool33.not = icmp eq ptr %call, null
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %qlf_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlf_id, align 4
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %23, ptr noundef nonnull %call) #4
  br label %cleanup108

if.end36:                                         ; preds = %cond.end32
  %qlf_len = getelementptr inbounds %struct.xfs_dq_logformat, ptr %19, i32 0, i32 4
  %24 = ptrtoint ptr %qlf_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp37 = icmp eq i32 %25, 1
  br i1 %cmp37, label %if.end36.cond.end47_crit_edge, label %cond.false46, !prof !37

if.end36.cond.end47_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end47

cond.false46:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 117) #4
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %if.end36.cond.end47_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_ddev_targp, align 8
  %qlf_blkno = getelementptr inbounds %struct.xfs_dq_logformat, ptr %19, i32 0, i32 3
  %28 = ptrtoint ptr %qlf_blkno to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %qlf_blkno, align 8
  %30 = ptrtoint ptr %qlf_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlf_len, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %m_blkbb_log, align 1
  %conv49 = zext i8 %33 to i32
  %shl = shl i32 %31, %conv49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map.i) #4
  %34 = getelementptr inbounds i8, ptr %map.i, i32 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %34, align 8
  %36 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %29, ptr %map.i, align 8
  store i32 %shl, ptr %34, align 8
  %call.i = call i32 @xfs_trans_read_buf_map(ptr noundef %1, ptr noundef null, ptr noundef %27, ptr noundef nonnull %map.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef nonnull @xfs_dquot_buf_ops) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end53, label %cond.end47.cleanup108_crit_edge

cond.end47.cleanup108_crit_edge:                  ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup108

if.end53:                                         ; preds = %cond.end47
  %37 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bp, align 4
  %tobool54.not = icmp eq ptr %38, null
  br i1 %tobool54.not, label %cond.false62, label %if.end53.cond.end63_crit_edge, !prof !36

if.end53.cond.end63_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end63

cond.false62:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 132) #4
  br label %cond.end63

cond.end63:                                       ; preds = %cond.false62, %if.end53.cond.end63_crit_edge
  %39 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bp, align 4
  %qlf_boffset = getelementptr inbounds %struct.xfs_dq_logformat, ptr %19, i32 0, i32 5
  %41 = ptrtoint ptr %qlf_boffset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlf_boffset, align 4
  %call64 = call ptr @xfs_buf_offset(ptr noundef %40, i32 noundef %42) #4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %43 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %44, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %cond.end63.if.end77_crit_edge, label %if.then66

cond.end63.if.end77_crit_edge:                    ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then66:                                        ; preds = %cond.end63
  %dd_lsn = getelementptr inbounds %struct.xfs_dqblk, ptr %call64, i32 0, i32 3
  %45 = ptrtoint ptr %dd_lsn to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dd_lsn, align 8
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i64 %46, label %land.lhs.true70 [
    i64 0, label %if.then66.if.end77_crit_edge
    i64 -1, label %if.then66.if.end77_crit_edge161
  ]

if.then66.if.end77_crit_edge161:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

land.lhs.true70:                                  ; preds = %if.then66
  %47 = lshr i64 %46, 32
  %conv.i = trunc i64 %47 to i32
  %48 = lshr i64 %current_lsn, 32
  %conv2.i = trunc i64 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %conv.i, %conv2.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv2.i)
  %cmp8.i = icmp ult i32 %conv.i, %conv2.i
  br i1 %cmp8.i, label %if.then.i.if.end77_crit_edge, label %if.then.i.out_release_crit_edge

if.then.i.out_release_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_release

if.then.i.if.end77_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.end.i:                                         ; preds = %land.lhs.true70
  %conv11.i = trunc i64 %46 to i32
  %conv12.i = trunc i64 %current_lsn to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv12.i)
  %cmp18.i = icmp ult i32 %conv11.i, %conv12.i
  br i1 %cmp18.i, label %if.end.i.if.end77_crit_edge, label %if.end.i.out_release_crit_edge

if.end.i.out_release_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_release

if.end.i.if.end77_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.end77:                                         ; preds = %if.end.i.if.end77_crit_edge, %if.then.i.if.end77_crit_edge, %if.then66.if.end77_crit_edge, %if.then66.if.end77_crit_edge161, %cond.end63.if.end77_crit_edge
  %49 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ri_buf, align 4
  %i_len80 = getelementptr %struct.xfs_log_iovec, ptr %50, i32 1, i32 1
  %51 = ptrtoint ptr %i_len80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_len80, align 4
  %53 = call ptr @memcpy(ptr %call64, ptr %8, i32 %52)
  %54 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %m_features.i, align 8
  %and.i152 = and i64 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i152)
  %tobool.i153.not = icmp eq i64 %and.i152, 0
  br i1 %tobool.i153.not, label %if.end77.if.end83_crit_edge, label %if.then82

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr i8, ptr %call64, i32 108
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %add.ptr.i.i, align 4
  %call.i.i = call i32 @crc32c(i32 noundef -1, ptr noundef %call64, i32 noundef 136) #4
  %57 = xor i32 %call.i.i, -1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #4
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %add.ptr.i.i, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end77.if.end83_crit_edge
  %qlf_size = getelementptr inbounds %struct.xfs_dq_logformat, ptr %19, i32 0, i32 1
  %60 = ptrtoint ptr %qlf_size to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %qlf_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp85 = icmp eq i16 %61, 2
  br i1 %cmp85, label %if.end83.cond.end95_crit_edge, label %cond.false94, !prof !37

if.end83.cond.end95_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end95

cond.false94:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 154) #4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %if.end83.cond.end95_crit_edge
  %62 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bp, align 4
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_mount, align 4
  %cmp96 = icmp eq ptr %65, %1
  br i1 %cmp96, label %cond.end95.cond.end106_crit_edge, label %cond.false105, !prof !37

cond.end95.cond.end106_crit_edge:                 ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end106

cond.false105:                                    ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 155) #4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %cond.end95.cond.end106_crit_edge
  %66 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bp, align 4
  %b_flags = getelementptr inbounds %struct.xfs_buf, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %b_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %b_flags, align 4
  %or = or i32 %69, 262144
  store i32 %or, ptr %b_flags, align 4
  %call107 = call zeroext i1 @xfs_buf_delwri_queue(ptr noundef %67, ptr noundef %buffer_list) #4
  br label %out_release

out_release:                                      ; preds = %cond.end106, %if.end.i.out_release_crit_edge, %if.then.i.out_release_crit_edge
  %70 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %71) #4
  call void @xfs_buf_rele(ptr noundef %71) #4
  br label %cleanup108

cleanup108:                                       ; preds = %out_release, %cond.end47.cleanup108_crit_edge, %if.then34, %cond.end.cleanup108_crit_edge, %if.then8, %if.then2, %entry.cleanup108_crit_edge
  %retval.0 = phi i32 [ -117, %if.then2 ], [ -117, %if.then8 ], [ -117, %if.then34 ], [ 0, %out_release ], [ 0, %entry.cleanup108_crit_edge ], [ 0, %cond.end.cleanup108_crit_edge ], [ %call.i, %cond.end47.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #4
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlog_recover_quotaoff_commit_pass1(ptr nocapture noundef %log, ptr nocapture noundef readonly %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ri_buf = getelementptr inbounds %struct.xlog_recover_item, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %ri_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ri_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !36

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 181) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %qf_flags = getelementptr inbounds %struct.xfs_qoff_logformat, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %qf_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qf_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %l_quotaoffs_flag = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %6 = ptrtoint ptr %l_quotaoffs_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %l_quotaoffs_flag, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %l_quotaoffs_flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %8 = ptrtoint ptr %qf_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qf_flags, align 4
  %and5 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %l_quotaoffs_flag8 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %10 = ptrtoint ptr %l_quotaoffs_flag8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %l_quotaoffs_flag8, align 4
  %or9 = or i32 %11, 2
  store i32 %or9, ptr %l_quotaoffs_flag8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %12 = ptrtoint ptr %qf_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qf_flags, align 4
  %and12 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end17_crit_edge, label %if.then14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %l_quotaoffs_flag15 = getelementptr inbounds %struct.xlog, ptr %log, i32 0, i32 7
  %14 = ptrtoint ptr %l_quotaoffs_flag15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_quotaoffs_flag15, align 4
  %or16 = or i32 %15, 4
  store i32 %or16, ptr %l_quotaoffs_flag15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlog_buf_readahead(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_dquot_verify(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_buf_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_buf_delwri_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_read_buf_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @xlog_dquot_item_ops, !1, !"xlog_dquot_item_ops", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 164, i32 36}
!2 = !{ptr @xlog_quotaoff_item_ops, !3, !"xlog_quotaoff_item_ops", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 197, i32 36}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 43, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 48, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 49, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 82, i32 24}
!13 = !{ptr @__func__.xlog_recover_dquot_commit_pass2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 82, i32 45}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 86, i32 24}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 113, i32 17}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 132, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 154, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 155, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_dquot_item_recover.c", i32 181, i32 2}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"auto-init"}
