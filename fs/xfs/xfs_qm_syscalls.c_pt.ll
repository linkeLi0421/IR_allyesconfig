; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_qm_syscalls.c_pt.bc'
source_filename = "../fs/xfs/xfs_qm_syscalls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.xfs_quotainfo = type { %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, ptr, ptr, %struct.list_lru, i32, %struct.mutex, i64, i32, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.xfs_def_quota, %struct.shrinker, i64, i64 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.xfs_def_quota = type { %struct.xfs_quota_limits, %struct.xfs_quota_limits, %struct.xfs_quota_limits }
%struct.xfs_quota_limits = type { i64, i64, i64, i16 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_dquot = type { %struct.list_head, ptr, i8, i16, i32, i32, i32, i64, i64, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dquot_res, %struct.xfs_dq_logitem, i64, i64, [3 x i64], %struct.mutex, %struct.completion, %struct.atomic_t, %struct.wait_queue_head }
%struct.xfs_dquot_res = type { i64, i64, i64, i64, i64, i16 }
%struct.xfs_dq_logitem = type { %struct.xfs_log_item, ptr, i64 }
%struct.xfs_log_item = type { %struct.list_head, %struct.list_head, i64, ptr, ptr, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"disabling of quota accounting not supported.\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: flags=%x m_qflags=%x\00", [39 x i8] zeroinitializer }, align 32
@__func__.xfs_qm_scall_trunc_qfiles = private unnamed_addr constant [26 x i8] c"xfs_qm_scall_trunc_qfiles\00", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: zero flags, m_qflags=%x\00", [36 x i8] zeroinitializer }, align 32
@__func__.xfs_qm_scall_quotaon = private unnamed_addr constant [21 x i8] c"xfs_qm_scall_quotaon\00", align 1
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Can't enforce without acct, flags=%x sbflags=%x\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -ENOENT\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/xfs_qm_syscalls.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"blk\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtb\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ino\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip->i_df.if_nextents == 0\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/xfs/xfs_qm.h\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%shard %lld < %ssoft %lld\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dst->d_spc_timer != 0\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dst->d_ino_timer != 0\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_dquot.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 40, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 110, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 151, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 168, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 314, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 355, i32 52 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 372, i32 48 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 388, i32 48 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 89, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"../fs/xfs/xfs_qm.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 171, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 238, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 454, i32 4 }
@___asan_gen_.62 = private constant [28 x i8] c"../fs/xfs/xfs_qm_syscalls.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 458, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_dquot.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 190, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_quotaoff(ptr noundef %mp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_qflags, align 4
  %and = and i32 %1, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @xfs_info(ptr noundef %mp, ptr noundef nonnull @.str) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %2 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_quotainfo, align 4
  %qi_quotaofflock = getelementptr inbounds %struct.xfs_quotainfo, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %qi_quotaofflock, i32 noundef 0) #4
  %and4 = and i32 %flags, 642
  %neg = xor i32 %and4, -1
  %4 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_qflags, align 4
  %and6 = and i32 %5, %neg
  store i32 %and6, ptr %m_qflags, align 4
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #4
  %6 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_qflags, align 4
  %conv = trunc i32 %7 to i16
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %8 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %sb_qflags, align 16
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #4
  %9 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_quotainfo, align 4
  %qi_quotaofflock10 = getelementptr inbounds %struct.xfs_quotainfo, ptr %10, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %qi_quotaofflock10) #4
  %call = tail call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end3 ], [ -17, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_trunc_qfiles(ptr noundef %mp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp ne i64 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp = icmp ne i32 %flags, 0
  %or.cond.not = and i1 %cmp, %tobool.i.not
  %and = and i32 %flags, -8205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond42 = and i1 %tobool.not, %or.cond.not
  br i1 %or.cond42, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  tail call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xfs_qm_scall_trunc_qfiles, i32 noundef %flags, i32 noundef %3) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %sb_uquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 32
  %4 = ptrtoint ptr %sb_uquotino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sb_uquotino, align 32
  %call5 = tail call fastcc i32 @xfs_qm_scall_trunc_qfile(ptr noundef %mp, i64 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %error.0 = phi i32 [ 0, %if.then4.if.end9_crit_edge ], [ -22, %if.end.if.end9_crit_edge ]
  %and10 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  %sb_gquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 33
  %6 = ptrtoint ptr %sb_gquotino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_gquotino, align 8
  %call14 = tail call fastcc i32 @xfs_qm_scall_trunc_qfile(ptr noundef %mp, i64 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end18_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %error.1 = phi i32 [ 0, %if.then12.if.end18_crit_edge ], [ %error.0, %if.end9.if.end18_crit_edge ]
  %and19 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %sb_pquotino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 52
  %8 = ptrtoint ptr %sb_pquotino to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_pquotino, align 8
  %call23 = tail call fastcc i32 @xfs_qm_scall_trunc_qfile(ptr noundef %mp, i64 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end18.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call14, %if.then12.cleanup_crit_edge ], [ %call23, %if.then21 ], [ %error.1, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_qm_scall_trunc_qfile(ptr noundef %mp, i64 noundef %ino) unnamed_addr #3 align 64 {
entry:
  %ip = alloca ptr, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip) #4
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ip, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #4
  %1 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %ino)
  %cmp = icmp eq i64 %ino, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %ino, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %ip) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 4
  call void @xfs_ilock(ptr noundef %3, i32 noundef 1) #4
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 1
  %call3 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip, align 4
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  call void @xfs_iunlock(ptr noundef %5, i32 noundef 1) #4
  br label %out_put

if.end6:                                          ; preds = %if.end2
  call void @xfs_ilock(ptr noundef %5, i32 noundef 4) #4
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 4
  call void @xfs_trans_ijoin(ptr noundef %7, ptr noundef %9, i32 noundef 0) #4
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 4
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %i_disk_size, align 8
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %14, ptr noundef %11, i32 noundef 1) #4
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 4
  %call.i = call i32 @xfs_itruncate_extents_flags(ptr noundef nonnull %tp, ptr noundef %16, i32 noundef 0, i64 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %18) #4
  br label %out_unlock

if.end10:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ip, align 4
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %20, i32 0, i32 8, i32 7
  %21 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp11 = icmp eq i32 %22, 0
  br i1 %cmp11, label %if.end10.cond.end_crit_edge, label %cond.false, !prof !44

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 89) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %23 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tp, align 4
  %25 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ip, align 4
  call void @xfs_trans_ichgtime(ptr noundef %24, ptr noundef %26, i32 noundef 3) #4
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  %call14 = call i32 @xfs_trans_commit(ptr noundef %28) #4
  br label %out_unlock

out_unlock:                                       ; preds = %cond.end, %if.then9
  %error.0 = phi i32 [ %call.i, %if.then9 ], [ %call14, %cond.end ]
  %29 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ip, align 4
  call void @xfs_iunlock(ptr noundef %30, i32 noundef 5) #4
  br label %out_put

out_put:                                          ; preds = %out_unlock, %if.then5
  %error.1 = phi i32 [ %call3, %if.then5 ], [ %error.0, %out_unlock ]
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ip, align 4
  call void @xfs_irele(ptr noundef %32) #4
  br label %cleanup

cleanup:                                          ; preds = %out_put, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %out_put ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_quotaon(ptr noundef %mp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 642
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_qflags, align 4
  tail call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.xfs_qm_scall_quotaon, i32 noundef %1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %2 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sb_qflags, align 16
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp2 = icmp ne i16 %4, 0
  %and4 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %or.cond = or i1 %tobool.not, %cmp2
  br i1 %or.cond, label %lor.lhs.false, label %if.end.if.then24_crit_edge

if.end.if.then24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end
  %5 = and i16 %3, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp9 = icmp ne i16 %5, 0
  %and12 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond124 = or i1 %tobool13.not, %cmp9
  br i1 %or.cond124, label %lor.lhs.false14, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %6 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp19 = icmp ne i16 %6, 0
  %and22 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond125 = or i1 %tobool23.not, %cmp19
  br i1 %or.cond125, label %if.end28, label %lor.lhs.false14.if.then24_crit_edge

lor.lhs.false14.if.then24_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false14.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %if.end.if.then24_crit_edge
  %conv27 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.xfs_qm_scall_quotaon, i32 noundef %and, i32 noundef %conv27) #4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false14
  %m_qflags29 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %7 = ptrtoint ptr %m_qflags29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %m_qflags29, align 4
  %and30 = and i32 %8, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %and)
  %cmp31 = icmp eq i32 %and30, %and
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #4
  %9 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sb_qflags, align 16
  %conv37 = zext i16 %10 to i32
  %11 = trunc i32 %and to i16
  %conv38 = or i16 %10, %11
  store i16 %conv38, ptr %sb_qflags, align 16
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #4
  %and42 = and i32 %and, %conv37
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %and)
  %cmp43 = icmp eq i32 %and42, %and
  br i1 %cmp43, label %if.end34.cleanup_crit_edge, label %if.end46

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %if.end34
  %call = tail call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool47.not = icmp eq i32 %call, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  %12 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sb_qflags, align 16
  %conv52 = zext i16 %13 to i32
  %14 = ptrtoint ptr %m_qflags29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_qflags29, align 4
  %16 = xor i32 %15, %conv52
  %17 = and i32 %16, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %if.end77, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end49
  %and79 = and i32 %15, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %if.end82

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end82:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %19 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_quotainfo, align 4
  %qi_quotaofflock = getelementptr inbounds %struct.xfs_quotainfo, ptr %20, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %qi_quotaofflock, i32 noundef 0) #4
  %21 = ptrtoint ptr %m_qflags29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_qflags29, align 4
  %or85 = or i32 %22, %and
  store i32 %or85, ptr %m_qflags29, align 4
  %23 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_quotainfo, align 4
  %qi_quotaofflock87 = getelementptr inbounds %struct.xfs_quotainfo, ptr %24, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %qi_quotaofflock87) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.end77.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then24, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then24 ], [ 0, %if.end82 ], [ -17, %if.end28.cleanup_crit_edge ], [ -17, %if.end34.cleanup_crit_edge ], [ %call, %if.end46.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -3, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_setqlim(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, ptr noundef readonly %newlim) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %m_quotainfo = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 12
  %0 = ptrtoint ptr %m_quotainfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_quotainfo, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #4
  %2 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #4
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !43
  %4 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %newlim, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %tobool.not = icmp ult i32 %5, 4096
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = call i32 @xfs_qm_dqget(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext true, ptr noundef nonnull %dqp) #4
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end4.cleanup_crit_edge [
    i32 0, label %if.end10
    i32 -2, label %cond.false
  ], !prof !45

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 314) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dqp, align 4
  %q_type.i = getelementptr inbounds %struct.xfs_dquot, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %q_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %q_type.i, align 4
  %trunc = trunc i8 %10 to i3
  %11 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i3 %trunc, label %sw.default.i [
    i3 1, label %sw.bb.i
    i3 -4, label %sw.bb1.i
    i3 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %qi_usr_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 12
  br label %xfs_get_defquota.exit

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %qi_grp_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 13
  br label %xfs_get_defquota.exit

sw.bb2.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %qi_prj_default.i = getelementptr inbounds %struct.xfs_quotainfo, ptr %1, i32 0, i32 14
  br label %xfs_get_defquota.exit

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 171) #4
  br label %xfs_get_defquota.exit

xfs_get_defquota.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %qi_prj_default.i, %sw.bb2.i ], [ %qi_grp_default.i, %sw.bb1.i ], [ %qi_usr_default.i, %sw.bb.i ]
  %12 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dqp, align 4
  %q_qlock.i = getelementptr inbounds %struct.xfs_dquot, ptr %13, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %q_qlock.i) #4
  %tr_qm_setqlim = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 65, i32 22
  %call13 = call i32 @xfs_trans_alloc(ptr noundef %mp, ptr noundef %tr_qm_setqlim, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %xfs_get_defquota.exit.out_rele_crit_edge

xfs_get_defquota.exit.out_rele_crit_edge:         ; preds = %xfs_get_defquota.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_rele

if.end16:                                         ; preds = %xfs_get_defquota.exit
  %14 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dqp, align 4
  %q_qlock.i236 = getelementptr inbounds %struct.xfs_dquot, ptr %15, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %q_qlock.i236, i32 noundef 0) #4
  %16 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tp, align 4
  %18 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dqp, align 4
  call void @xfs_trans_dqjoin(ptr noundef %17, ptr noundef %19) #4
  %20 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %newlim, align 8
  %and18 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %cond.false23, label %cond.true20

cond.true20:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %d_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 1
  %22 = ptrtoint ptr %d_spc_hardlimit to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %d_spc_hardlimit, align 8
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %24 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_blockmask, align 8
  %conv21 = zext i32 %25 to i64
  %add = add i64 %23, %conv21
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %26 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %27 to i64
  %shr = lshr i64 %add, %sh_prom
  br label %cond.end24

cond.false23:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dqp, align 4
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %29, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hardlimit, align 8
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true20
  %cond = phi i64 [ %shr, %cond.true20 ], [ %31, %cond.false23 ]
  %and26 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %cond.false37, label %cond.true28

cond.true28:                                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #6
  %d_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 2
  %32 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %d_spc_softlimit, align 8
  %m_blockmask29 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %34 = ptrtoint ptr %m_blockmask29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %m_blockmask29, align 8
  %conv30 = zext i32 %35 to i64
  %add31 = add i64 %33, %conv30
  %sb_blocklog33 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %36 = ptrtoint ptr %sb_blocklog33 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sb_blocklog33, align 8
  %sh_prom35 = zext i8 %37 to i64
  %shr36 = lshr i64 %add31, %sh_prom35
  br label %cond.end39

cond.false37:                                     ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dqp, align 4
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %39, i32 0, i32 9, i32 3
  %40 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %softlimit, align 8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false37, %cond.true28
  %cond40 = phi i64 [ %shr36, %cond.true28 ], [ %41, %cond.false37 ]
  %42 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dqp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp42 = icmp eq i32 %id, 0
  %spec.select = select i1 %cmp42, ptr %retval.0.i, ptr null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond)
  %cmp.not.i = icmp ne i64 %cond, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %cond, i64 %cond40)
  %cmp1.i = icmp ult i64 %cond, %cond40
  %or.cond.i = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %xfs_setqlim_limits.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end39
  %hardlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %43, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %hardlimit.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cond, ptr %hardlimit.i, align 8
  %softlimit.i = getelementptr inbounds %struct.xfs_dquot, ptr %43, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %softlimit.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %cond40, ptr %softlimit.i, align 8
  %tobool.not.i = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i, label %if.end.i.if.then49_crit_edge, label %if.then2.i

if.end.i.if.then49_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then49

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %spec.select to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %cond, ptr %spec.select, align 8
  %soft4.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select, i32 0, i32 1
  %47 = ptrtoint ptr %soft4.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %cond40, ptr %soft4.i, align 8
  br label %if.then49

xfs_setqlim_limits.exit:                          ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, i64 noundef %cond, ptr noundef nonnull @.str.6, i64 noundef %cond40) #4
  br label %if.end50

if.then49:                                        ; preds = %if.then2.i, %if.end.i.if.then49_crit_edge
  %48 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dqp, align 4
  call void @xfs_dquot_set_prealloc_limits(ptr noundef %49) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %xfs_setqlim_limits.exit
  %50 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %newlim, align 8
  %and52 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end55_crit_edge, label %if.then54

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then54:                                        ; preds = %if.end50
  %d_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 10
  %52 = ptrtoint ptr %d_spc_warns to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %d_spc_warns, align 4
  %conv.i = trunc i32 %53 to i16
  %warnings.i = getelementptr inbounds %struct.xfs_dquot, ptr %43, i32 0, i32 9, i32 5
  %54 = ptrtoint ptr %warnings.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %warnings.i, align 8
  %tobool.not.i237 = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i237, label %if.end55.thread, label %if.then.i238

if.then.i238:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  %warn.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select, i32 0, i32 3
  %55 = ptrtoint ptr %warn.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i, ptr %warn.i, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then.i238, %if.end50.if.end55_crit_edge
  %56 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %newlim, align 8
  %and57 = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end55.if.end60_crit_edge, label %if.then59

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.end55.thread:                                  ; preds = %if.then54
  %58 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %newlim, align 8
  %and57301 = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57301)
  %tobool58.not302 = icmp eq i32 %and57301, 0
  br i1 %tobool58.not302, label %if.end55.thread.if.end60_crit_edge, label %if.then59.thread

if.end55.thread.if.end60_crit_edge:               ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then59.thread:                                 ; preds = %if.end55.thread
  call void @__sanitizer_cov_trace_pc() #6
  %d_spc_timer303 = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 8
  %60 = ptrtoint ptr %d_spc_timer303 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %d_spc_timer303, align 8
  br label %if.else.i

if.then59:                                        ; preds = %if.end55
  %d_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 8
  %62 = ptrtoint ptr %d_spc_timer to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %d_spc_timer, align 8
  %tobool.not.i240 = icmp eq ptr %spec.select, null
  br i1 %tobool.not.i240, label %if.then59.if.else.i_crit_edge, label %if.then.i241

if.then59.if.else.i_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i241:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i64 @xfs_dquot_set_grace_period(i64 noundef %63) #4
  %timer1.i = getelementptr inbounds %struct.xfs_dquot, ptr %43, i32 0, i32 9, i32 4
  %64 = ptrtoint ptr %timer1.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call.i, ptr %timer1.i, align 8
  %time.i = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select, i32 0, i32 2
  %65 = ptrtoint ptr %time.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call.i, ptr %time.i, align 8
  br label %if.end60

if.else.i:                                        ; preds = %if.then59.if.else.i_crit_edge, %if.then59.thread
  %66 = phi i64 [ %61, %if.then59.thread ], [ %63, %if.then59.if.else.i_crit_edge ]
  %call3.i = call i64 @xfs_dquot_set_timeout(ptr noundef %mp, i64 noundef %66) #4
  %timer4.i = getelementptr inbounds %struct.xfs_dquot, ptr %43, i32 0, i32 9, i32 4
  %67 = ptrtoint ptr %timer4.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %call3.i, ptr %timer4.i, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else.i, %if.then.i241, %if.end55.thread.if.end60_crit_edge, %if.end55.if.end60_crit_edge
  %68 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %newlim, align 8
  %and62 = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %cond.false73, label %cond.true64

cond.true64:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %d_rt_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 11
  %70 = ptrtoint ptr %d_rt_spc_hardlimit to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %d_rt_spc_hardlimit, align 8
  %m_blockmask65 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %72 = ptrtoint ptr %m_blockmask65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %m_blockmask65, align 8
  %conv66 = zext i32 %73 to i64
  %add67 = add i64 %71, %conv66
  %sb_blocklog69 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %74 = ptrtoint ptr %sb_blocklog69 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sb_blocklog69, align 8
  %sh_prom71 = zext i8 %75 to i64
  %shr72 = lshr i64 %add67, %sh_prom71
  br label %cond.end75

cond.false73:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dqp, align 4
  %hardlimit74 = getelementptr inbounds %struct.xfs_dquot, ptr %77, i32 0, i32 11, i32 2
  %78 = ptrtoint ptr %hardlimit74 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %hardlimit74, align 8
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false73, %cond.true64
  %cond76 = phi i64 [ %shr72, %cond.true64 ], [ %79, %cond.false73 ]
  %and78 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %cond.false89, label %cond.true80

cond.true80:                                      ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #6
  %d_rt_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 12
  %80 = ptrtoint ptr %d_rt_spc_softlimit to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %d_rt_spc_softlimit, align 8
  %m_blockmask81 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %82 = ptrtoint ptr %m_blockmask81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %m_blockmask81, align 8
  %conv82 = zext i32 %83 to i64
  %add83 = add i64 %81, %conv82
  %sb_blocklog85 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %84 = ptrtoint ptr %sb_blocklog85 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sb_blocklog85, align 8
  %sh_prom87 = zext i8 %85 to i64
  %shr88 = lshr i64 %add83, %sh_prom87
  br label %cond.end92

cond.false89:                                     ; preds = %cond.end75
  call void @__sanitizer_cov_trace_pc() #6
  %86 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dqp, align 4
  %softlimit91 = getelementptr inbounds %struct.xfs_dquot, ptr %87, i32 0, i32 11, i32 3
  %88 = ptrtoint ptr %softlimit91 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %softlimit91, align 8
  br label %cond.end92

cond.end92:                                       ; preds = %cond.false89, %cond.true80
  %cond93 = phi i64 [ %shr88, %cond.true80 ], [ %89, %cond.false89 ]
  %90 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dqp, align 4
  %rtb = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 2
  %spec.select234 = select i1 %cmp42, ptr %rtb, ptr null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond76)
  %cmp.not.i243 = icmp ne i64 %cond76, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %cond76, i64 %cond93)
  %cmp1.i244 = icmp ult i64 %cond76, %cond93
  %or.cond.i245 = and i1 %cmp.not.i243, %cmp1.i244
  br i1 %or.cond.i245, label %if.then.i246, label %if.end.i250

if.then.i246:                                     ; preds = %cond.end92
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i64 noundef %cond76, ptr noundef nonnull @.str.7, i64 noundef %cond93) #4
  br label %xfs_setqlim_limits.exit254

if.end.i250:                                      ; preds = %cond.end92
  %hardlimit.i247 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 2
  %92 = ptrtoint ptr %hardlimit.i247 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %cond76, ptr %hardlimit.i247, align 8
  %softlimit.i248 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 3
  %93 = ptrtoint ptr %softlimit.i248 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %cond93, ptr %softlimit.i248, align 8
  %tobool.not.i249 = icmp eq ptr %spec.select234, null
  br i1 %tobool.not.i249, label %xfs_setqlim_limits.exit254.thread, label %if.then2.i252

if.then2.i252:                                    ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #6
  %94 = ptrtoint ptr %spec.select234 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %cond76, ptr %spec.select234, align 8
  %soft4.i251 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select234, i32 0, i32 1
  %95 = ptrtoint ptr %soft4.i251 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %cond93, ptr %soft4.i251, align 8
  br label %xfs_setqlim_limits.exit254

xfs_setqlim_limits.exit254:                       ; preds = %if.then2.i252, %if.then.i246
  %96 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %newlim, align 8
  %and103 = and i32 %97, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %xfs_setqlim_limits.exit254.if.end106_crit_edge, label %if.then105

xfs_setqlim_limits.exit254.if.end106_crit_edge:   ; preds = %xfs_setqlim_limits.exit254
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

xfs_setqlim_limits.exit254.thread:                ; preds = %if.end.i250
  %98 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %newlim, align 8
  %and103305 = and i32 %99, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103305)
  %tobool104.not306 = icmp eq i32 %and103305, 0
  br i1 %tobool104.not306, label %xfs_setqlim_limits.exit254.thread.if.end106_crit_edge, label %if.then105.thread

xfs_setqlim_limits.exit254.thread.if.end106_crit_edge: ; preds = %xfs_setqlim_limits.exit254.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then105.thread:                                ; preds = %xfs_setqlim_limits.exit254.thread
  call void @__sanitizer_cov_trace_pc() #6
  %d_rt_spc_warns307 = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 15
  %100 = ptrtoint ptr %d_rt_spc_warns307 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %d_rt_spc_warns307, align 8
  %conv.i255308 = trunc i32 %101 to i16
  %warnings.i256309 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 5
  %102 = ptrtoint ptr %warnings.i256309 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i255308, ptr %warnings.i256309, align 8
  br label %if.end106

if.then105:                                       ; preds = %xfs_setqlim_limits.exit254
  %d_rt_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 15
  %103 = ptrtoint ptr %d_rt_spc_warns to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %d_rt_spc_warns, align 8
  %conv.i255 = trunc i32 %104 to i16
  %warnings.i256 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 5
  %105 = ptrtoint ptr %warnings.i256 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i255, ptr %warnings.i256, align 8
  %tobool.not.i257 = icmp eq ptr %spec.select234, null
  br i1 %tobool.not.i257, label %if.then105.if.end106_crit_edge, label %if.then.i259

if.then105.if.end106_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then.i259:                                     ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  %warn.i258 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select234, i32 0, i32 3
  %106 = ptrtoint ptr %warn.i258 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i255, ptr %warn.i258, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then.i259, %if.then105.if.end106_crit_edge, %if.then105.thread, %xfs_setqlim_limits.exit254.thread.if.end106_crit_edge, %xfs_setqlim_limits.exit254.if.end106_crit_edge
  %107 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %newlim, align 8
  %and108 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end111_crit_edge, label %if.then110

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then110:                                       ; preds = %if.end106
  %d_rt_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 14
  %109 = ptrtoint ptr %d_rt_spc_timer to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %d_rt_spc_timer, align 8
  %tobool.not.i262 = icmp eq ptr %spec.select234, null
  br i1 %tobool.not.i262, label %if.else.i269, label %if.then.i266

if.then.i266:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  %call.i263 = call i64 @xfs_dquot_set_grace_period(i64 noundef %110) #4
  %timer1.i264 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 4
  %111 = ptrtoint ptr %timer1.i264 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %call.i263, ptr %timer1.i264, align 8
  %time.i265 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select234, i32 0, i32 2
  %112 = ptrtoint ptr %time.i265 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %call.i263, ptr %time.i265, align 8
  br label %if.end111

if.else.i269:                                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i267 = call i64 @xfs_dquot_set_timeout(ptr noundef %mp, i64 noundef %110) #4
  %timer4.i268 = getelementptr inbounds %struct.xfs_dquot, ptr %91, i32 0, i32 11, i32 4
  %113 = ptrtoint ptr %timer4.i268 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %call3.i267, ptr %timer4.i268, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.else.i269, %if.then.i266, %if.end106.if.end111_crit_edge
  %114 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %newlim, align 8
  %and113 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %cond.false116, label %cond.true115

cond.true115:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  %d_ino_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 3
  br label %cond.end118

cond.false116:                                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dqp, align 4
  %hardlimit117 = getelementptr inbounds %struct.xfs_dquot, ptr %117, i32 0, i32 10, i32 2
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false116, %cond.true115
  %cond119.in = phi ptr [ %d_ino_hardlimit, %cond.true115 ], [ %hardlimit117, %cond.false116 ]
  %118 = ptrtoint ptr %cond119.in to i32
  call void @__asan_load8_noabort(i32 %118)
  %cond119 = load i64, ptr %cond119.in, align 8
  %and121 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %cond.false124, label %cond.true123

cond.true123:                                     ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #6
  %d_ino_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 4
  br label %cond.end127

cond.false124:                                    ; preds = %cond.end118
  call void @__sanitizer_cov_trace_pc() #6
  %119 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dqp, align 4
  %softlimit126 = getelementptr inbounds %struct.xfs_dquot, ptr %120, i32 0, i32 10, i32 3
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false124, %cond.true123
  %cond128.in = phi ptr [ %d_ino_softlimit, %cond.true123 ], [ %softlimit126, %cond.false124 ]
  %121 = ptrtoint ptr %cond128.in to i32
  call void @__asan_load8_noabort(i32 %121)
  %cond128 = load i64, ptr %cond128.in, align 8
  %122 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dqp, align 4
  %ino = getelementptr inbounds %struct.xfs_def_quota, ptr %retval.0.i, i32 0, i32 1
  %spec.select235 = select i1 %cmp42, ptr %ino, ptr null
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond119)
  %cmp.not.i272 = icmp ne i64 %cond119, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %cond119, i64 %cond128)
  %cmp1.i273 = icmp ult i64 %cond119, %cond128
  %or.cond.i274 = and i1 %cmp.not.i272, %cmp1.i273
  br i1 %or.cond.i274, label %if.then.i275, label %if.end.i279

if.then.i275:                                     ; preds = %cond.end127
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @xfs_debug(ptr noundef %mp, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i64 noundef %cond119, ptr noundef nonnull @.str.8, i64 noundef %cond128) #4
  br label %xfs_setqlim_limits.exit283

if.end.i279:                                      ; preds = %cond.end127
  %hardlimit.i276 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 2
  %124 = ptrtoint ptr %hardlimit.i276 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %cond119, ptr %hardlimit.i276, align 8
  %softlimit.i277 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 3
  %125 = ptrtoint ptr %softlimit.i277 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %cond128, ptr %softlimit.i277, align 8
  %tobool.not.i278 = icmp eq ptr %spec.select235, null
  br i1 %tobool.not.i278, label %xfs_setqlim_limits.exit283.thread, label %if.then2.i281

if.then2.i281:                                    ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #6
  %126 = ptrtoint ptr %spec.select235 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %cond119, ptr %spec.select235, align 8
  %soft4.i280 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select235, i32 0, i32 1
  %127 = ptrtoint ptr %soft4.i280 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %cond128, ptr %soft4.i280, align 8
  br label %xfs_setqlim_limits.exit283

xfs_setqlim_limits.exit283:                       ; preds = %if.then2.i281, %if.then.i275
  %128 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %newlim, align 8
  %and138 = and i32 %129, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %xfs_setqlim_limits.exit283.if.end141_crit_edge, label %if.then140

xfs_setqlim_limits.exit283.if.end141_crit_edge:   ; preds = %xfs_setqlim_limits.exit283
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end141

xfs_setqlim_limits.exit283.thread:                ; preds = %if.end.i279
  %130 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %newlim, align 8
  %and138311 = and i32 %131, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138311)
  %tobool139.not312 = icmp eq i32 %and138311, 0
  br i1 %tobool139.not312, label %xfs_setqlim_limits.exit283.thread.if.end141_crit_edge, label %if.then140.thread

xfs_setqlim_limits.exit283.thread.if.end141_crit_edge: ; preds = %xfs_setqlim_limits.exit283.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end141

if.then140.thread:                                ; preds = %xfs_setqlim_limits.exit283.thread
  call void @__sanitizer_cov_trace_pc() #6
  %d_ino_warns313 = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 9
  %132 = ptrtoint ptr %d_ino_warns313 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %d_ino_warns313, align 8
  %conv.i284314 = trunc i32 %133 to i16
  %warnings.i285315 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 5
  %134 = ptrtoint ptr %warnings.i285315 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i284314, ptr %warnings.i285315, align 8
  br label %if.end141

if.then140:                                       ; preds = %xfs_setqlim_limits.exit283
  %d_ino_warns = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 9
  %135 = ptrtoint ptr %d_ino_warns to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %d_ino_warns, align 8
  %conv.i284 = trunc i32 %136 to i16
  %warnings.i285 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 5
  %137 = ptrtoint ptr %warnings.i285 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i284, ptr %warnings.i285, align 8
  %tobool.not.i286 = icmp eq ptr %spec.select235, null
  br i1 %tobool.not.i286, label %if.then140.if.end141_crit_edge, label %if.then.i288

if.then140.if.end141_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end141

if.then.i288:                                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #6
  %warn.i287 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select235, i32 0, i32 3
  %138 = ptrtoint ptr %warn.i287 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i284, ptr %warn.i287, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then.i288, %if.then140.if.end141_crit_edge, %if.then140.thread, %xfs_setqlim_limits.exit283.thread.if.end141_crit_edge, %xfs_setqlim_limits.exit283.if.end141_crit_edge
  %139 = ptrtoint ptr %newlim to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %newlim, align 8
  %and143 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end141.if.end146_crit_edge, label %if.then145

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end146

if.then145:                                       ; preds = %if.end141
  %d_ino_timer = getelementptr inbounds %struct.qc_dqblk, ptr %newlim, i32 0, i32 7
  %141 = ptrtoint ptr %d_ino_timer to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %d_ino_timer, align 8
  %tobool.not.i291 = icmp eq ptr %spec.select235, null
  br i1 %tobool.not.i291, label %if.else.i298, label %if.then.i295

if.then.i295:                                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #6
  %call.i292 = call i64 @xfs_dquot_set_grace_period(i64 noundef %142) #4
  %timer1.i293 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 4
  %143 = ptrtoint ptr %timer1.i293 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %call.i292, ptr %timer1.i293, align 8
  %time.i294 = getelementptr inbounds %struct.xfs_quota_limits, ptr %spec.select235, i32 0, i32 2
  %144 = ptrtoint ptr %time.i294 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %call.i292, ptr %time.i294, align 8
  br label %if.end146

if.else.i298:                                     ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i296 = call i64 @xfs_dquot_set_timeout(ptr noundef %mp, i64 noundef %142) #4
  %timer4.i297 = getelementptr inbounds %struct.xfs_dquot, ptr %123, i32 0, i32 10, i32 4
  %145 = ptrtoint ptr %timer4.i297 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %call3.i296, ptr %timer4.i297, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.else.i298, %if.then.i295, %if.end141.if.end146_crit_edge
  br i1 %cmp42, label %if.end146.if.end150_crit_edge, label %if.then149

if.end146.if.end150_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end150

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #6
  %146 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dqp, align 4
  call void @xfs_qm_adjust_dqtimers(ptr noundef %147) #4
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end146.if.end150_crit_edge
  %148 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dqp, align 4
  %q_flags = getelementptr inbounds %struct.xfs_dquot, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %q_flags to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %q_flags, align 2
  %152 = or i16 %151, 1
  store i16 %152, ptr %q_flags, align 2
  %153 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_dquot(ptr noundef %154, ptr noundef %149) #4
  %155 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %tp, align 4
  %call153 = call i32 @xfs_trans_commit(ptr noundef %156) #4
  br label %out_rele

out_rele:                                         ; preds = %if.end150, %xfs_get_defquota.exit.out_rele_crit_edge
  %error.0 = phi i32 [ %call13, %xfs_get_defquota.exit.out_rele_crit_edge ], [ %call153, %if.end150 ]
  %157 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %158) #4
  br label %cleanup

cleanup:                                          ; preds = %out_rele, %cond.false, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_rele ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ -2, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqget(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_dqjoin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_dquot_set_prealloc_limits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_adjust_dqtimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_dquot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_getquota(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, ptr nocapture noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #4
  %0 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_inodegc_flush(ptr noundef %mp) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @xfs_qm_dqget(ptr noundef %mp, i32 noundef %id, i8 noundef zeroext %type, i1 noundef zeroext false, ptr noundef nonnull %dqp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dqp, align 4
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %hardlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool3.not = icmp eq i64 %4, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end2.if.end32_crit_edge

if.end2.if.end32_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end2
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %softlimit, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool5.not = icmp eq i64 %6, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true6:                                   ; preds = %land.lhs.true
  %hardlimit7 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %hardlimit7 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hardlimit7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool8.not = icmp eq i64 %8, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true6.if.end32_crit_edge

land.lhs.true6.if.end32_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %softlimit11 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %softlimit11 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %softlimit11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool12.not = icmp eq i64 %10, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %land.lhs.true9.if.end32_crit_edge

land.lhs.true9.if.end32_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %hardlimit14 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %hardlimit14 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hardlimit14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool15.not = icmp eq i64 %12, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %land.lhs.true13.if.end32_crit_edge

land.lhs.true13.if.end32_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %softlimit18 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %softlimit18 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %softlimit18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool19.not = icmp eq i64 %14, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true16.if.end32_crit_edge

land.lhs.true16.if.end32_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %count = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool22.not = icmp eq i64 %16, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true20.if.end32_crit_edge

land.lhs.true20.if.end32_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %count25 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %count25 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %count25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool26.not = icmp eq i64 %18, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true23.if.end32_crit_edge

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %count29 = getelementptr inbounds %struct.xfs_dquot, ptr %2, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %count29 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %count29, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool30.not = icmp eq i64 %20, 0
  br i1 %tobool30.not, label %land.lhs.true27.out_put_crit_edge, label %land.lhs.true27.if.end32_crit_edge

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true27.out_put_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put

if.end32:                                         ; preds = %land.lhs.true27.if.end32_crit_edge, %land.lhs.true23.if.end32_crit_edge, %land.lhs.true20.if.end32_crit_edge, %land.lhs.true16.if.end32_crit_edge, %land.lhs.true13.if.end32_crit_edge, %land.lhs.true9.if.end32_crit_edge, %land.lhs.true6.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end2.if.end32_crit_edge
  call fastcc void @xfs_qm_scall_getquota_fill_qc(ptr noundef %mp, ptr noundef %2, ptr noundef %dst)
  br label %out_put

out_put:                                          ; preds = %if.end32, %land.lhs.true27.out_put_crit_edge
  %error.0 = phi i32 [ 0, %if.end32 ], [ -2, %land.lhs.true27.out_put_crit_edge ]
  %21 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dqp, align 4
  call void @xfs_qm_dqput(ptr noundef %22) #4
  br label %cleanup

cleanup:                                          ; preds = %out_put, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_put ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_qm_scall_getquota_fill_qc(ptr nocapture noundef readonly %mp, ptr noundef readonly %dqp, ptr nocapture noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dst, i32 0, i32 120)
  %q_blk = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9
  %hardlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %hardlimit to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %hardlimit, align 8
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %3 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %4 to i64
  %shl = shl i64 %2, %sh_prom
  %d_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 1
  %5 = ptrtoint ptr %d_spc_hardlimit to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shl, ptr %d_spc_hardlimit, align 8
  %softlimit = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %softlimit to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %softlimit, align 8
  %8 = load i8, ptr %sb_blocklog, align 8
  %sh_prom5 = zext i8 %8 to i64
  %shl6 = shl i64 %7, %sh_prom5
  %d_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 2
  %9 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %shl6, ptr %d_spc_softlimit, align 8
  %q_ino = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10
  %hardlimit7 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %hardlimit7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hardlimit7, align 8
  %d_ino_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 3
  %12 = ptrtoint ptr %d_ino_hardlimit to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %d_ino_hardlimit, align 8
  %softlimit9 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %softlimit9 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %softlimit9, align 8
  %d_ino_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 4
  %15 = ptrtoint ptr %d_ino_softlimit to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %d_ino_softlimit, align 8
  %16 = ptrtoint ptr %q_blk to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %q_blk, align 8
  %18 = load i8, ptr %sb_blocklog, align 8
  %sh_prom14 = zext i8 %18 to i64
  %shl15 = shl i64 %17, %sh_prom14
  %d_space = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 5
  %19 = ptrtoint ptr %d_space to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shl15, ptr %d_space, align 8
  %20 = ptrtoint ptr %q_ino to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %q_ino, align 8
  %d_ino_count = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 6
  %22 = ptrtoint ptr %d_ino_count to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %d_ino_count, align 8
  %timer = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %timer to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %timer, align 8
  %d_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 8
  %25 = ptrtoint ptr %d_spc_timer to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %d_spc_timer, align 8
  %timer20 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %timer20 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %timer20, align 8
  %d_ino_timer = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 7
  %28 = ptrtoint ptr %d_ino_timer to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %d_ino_timer, align 8
  %warnings = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 10, i32 5
  %29 = ptrtoint ptr %warnings to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %warnings, align 8
  %conv22 = zext i16 %30 to i32
  %d_ino_warns = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 9
  %31 = ptrtoint ptr %d_ino_warns to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv22, ptr %d_ino_warns, align 8
  %warnings24 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 9, i32 5
  %32 = ptrtoint ptr %warnings24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %warnings24, align 8
  %conv25 = zext i16 %33 to i32
  %d_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 10
  %34 = ptrtoint ptr %d_spc_warns to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv25, ptr %d_spc_warns, align 4
  %q_rtb = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11
  %hardlimit26 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %hardlimit26 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %hardlimit26, align 8
  %37 = load i8, ptr %sb_blocklog, align 8
  %sh_prom30 = zext i8 %37 to i64
  %shl31 = shl i64 %36, %sh_prom30
  %d_rt_spc_hardlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 11
  %38 = ptrtoint ptr %d_rt_spc_hardlimit to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shl31, ptr %d_rt_spc_hardlimit, align 8
  %softlimit33 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 3
  %39 = ptrtoint ptr %softlimit33 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %softlimit33, align 8
  %41 = load i8, ptr %sb_blocklog, align 8
  %sh_prom37 = zext i8 %41 to i64
  %shl38 = shl i64 %40, %sh_prom37
  %d_rt_spc_softlimit = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 12
  %42 = ptrtoint ptr %d_rt_spc_softlimit to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %shl38, ptr %d_rt_spc_softlimit, align 8
  %43 = ptrtoint ptr %q_rtb to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %q_rtb, align 8
  %45 = load i8, ptr %sb_blocklog, align 8
  %sh_prom44 = zext i8 %45 to i64
  %shl45 = shl i64 %44, %sh_prom44
  %d_rt_space = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 13
  %46 = ptrtoint ptr %d_rt_space to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %shl45, ptr %d_rt_space, align 8
  %timer47 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 4
  %47 = ptrtoint ptr %timer47 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %timer47, align 8
  %d_rt_spc_timer = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 14
  %49 = ptrtoint ptr %d_rt_spc_timer to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %d_rt_spc_timer, align 8
  %warnings49 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 11, i32 5
  %50 = ptrtoint ptr %warnings49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %warnings49, align 8
  %conv50 = zext i16 %51 to i32
  %d_rt_spc_warns = getelementptr inbounds %struct.qc_dqblk, ptr %dst, i32 0, i32 15
  %52 = ptrtoint ptr %d_rt_spc_warns to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv50, ptr %d_rt_spc_warns, align 8
  %q_type.i.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 2
  %53 = ptrtoint ptr %q_type.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %q_type.i.i, align 4
  %55 = and i8 %54, 7
  %and.i.i = zext i8 %55 to i32
  %56 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and.i.i, label %xfs_dquot_is_enforced.exit.thread [
    i32 1, label %xfs_dquot_is_enforced.exit
    i32 4, label %sw.bb1.i
    i32 2, label %sw.bb6.i
  ]

sw.bb1.i:                                         ; preds = %entry
  %q_mount2.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %57 = ptrtoint ptr %q_mount2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %q_mount2.i, align 8
  %m_qflags3.i = getelementptr inbounds %struct.xfs_mount, ptr %58, i32 0, i32 60
  %59 = ptrtoint ptr %m_qflags3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %m_qflags3.i, align 4
  %and4.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool5.i.not, label %sw.bb1.i.if.then_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb1.i.if.then_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

sw.bb6.i:                                         ; preds = %entry
  %q_mount7.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %61 = ptrtoint ptr %q_mount7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %q_mount7.i, align 8
  %m_qflags8.i = getelementptr inbounds %struct.xfs_mount, ptr %62, i32 0, i32 60
  %63 = ptrtoint ptr %m_qflags8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %m_qflags8.i, align 4
  %and9.i = and i32 %64, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.i.not = icmp eq i32 %and9.i, 0
  br i1 %tobool10.i.not, label %sw.bb6.i.if.then_crit_edge, label %sw.bb6.i.if.end_crit_edge

sw.bb6.i.if.end_crit_edge:                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb6.i.if.then_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

xfs_dquot_is_enforced.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef 190) #4
  br label %if.then

xfs_dquot_is_enforced.exit:                       ; preds = %entry
  %q_mount.i = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %65 = ptrtoint ptr %q_mount.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %q_mount.i, align 8
  %m_qflags.i = getelementptr inbounds %struct.xfs_mount, ptr %66, i32 0, i32 60
  %67 = ptrtoint ptr %m_qflags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %m_qflags.i, align 4
  %and.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %xfs_dquot_is_enforced.exit.if.then_crit_edge, label %xfs_dquot_is_enforced.exit.if.end_crit_edge

xfs_dquot_is_enforced.exit.if.end_crit_edge:      ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

xfs_dquot_is_enforced.exit.if.then_crit_edge:     ; preds = %xfs_dquot_is_enforced.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %xfs_dquot_is_enforced.exit.if.then_crit_edge, %xfs_dquot_is_enforced.exit.thread, %sw.bb6.i.if.then_crit_edge, %sw.bb1.i.if.then_crit_edge
  %69 = ptrtoint ptr %d_rt_spc_timer to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %d_rt_spc_timer, align 8
  %70 = call ptr @memset(ptr %d_ino_timer, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %xfs_dquot_is_enforced.exit.if.end_crit_edge, %sw.bb6.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge
  %71 = ptrtoint ptr %q_type.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %q_type.i.i, align 4
  %73 = and i8 %72, 7
  %and.i.i3 = zext i8 %73 to i32
  %74 = zext i32 %and.i.i3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i.i3, label %xfs_dquot_is_enforced.exit21.thread [
    i32 1, label %xfs_dquot_is_enforced.exit21
    i32 4, label %sw.bb1.i13
    i32 2, label %sw.bb6.i18
  ]

sw.bb1.i13:                                       ; preds = %if.end
  %q_mount2.i9 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %75 = ptrtoint ptr %q_mount2.i9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %q_mount2.i9, align 8
  %m_qflags3.i10 = getelementptr inbounds %struct.xfs_mount, ptr %76, i32 0, i32 60
  %77 = ptrtoint ptr %m_qflags3.i10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %m_qflags3.i10, align 4
  %and4.i11 = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i11)
  %tobool5.i12.not = icmp eq i32 %and4.i11, 0
  br i1 %tobool5.i12.not, label %sw.bb1.i13.if.end96_crit_edge, label %sw.bb1.i13.land.lhs.true_crit_edge

sw.bb1.i13.land.lhs.true_crit_edge:               ; preds = %sw.bb1.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

sw.bb1.i13.if.end96_crit_edge:                    ; preds = %sw.bb1.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

sw.bb6.i18:                                       ; preds = %if.end
  %q_mount7.i14 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %79 = ptrtoint ptr %q_mount7.i14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %q_mount7.i14, align 8
  %m_qflags8.i15 = getelementptr inbounds %struct.xfs_mount, ptr %80, i32 0, i32 60
  %81 = ptrtoint ptr %m_qflags8.i15 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %m_qflags8.i15, align 4
  %and9.i16 = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i16)
  %tobool10.i17.not = icmp eq i32 %and9.i16, 0
  br i1 %tobool10.i17.not, label %sw.bb6.i18.if.end96_crit_edge, label %sw.bb6.i18.land.lhs.true_crit_edge

sw.bb6.i18.land.lhs.true_crit_edge:               ; preds = %sw.bb6.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

sw.bb6.i18.if.end96_crit_edge:                    ; preds = %sw.bb6.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

xfs_dquot_is_enforced.exit21.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef 190) #4
  br label %if.end96

xfs_dquot_is_enforced.exit21:                     ; preds = %if.end
  %q_mount.i4 = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 1
  %83 = ptrtoint ptr %q_mount.i4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %q_mount.i4, align 8
  %m_qflags.i5 = getelementptr inbounds %struct.xfs_mount, ptr %84, i32 0, i32 60
  %85 = ptrtoint ptr %m_qflags.i5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %m_qflags.i5, align 4
  %and.i6 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.i7.not = icmp eq i32 %and.i6, 0
  br i1 %tobool.i7.not, label %xfs_dquot_is_enforced.exit21.if.end96_crit_edge, label %xfs_dquot_is_enforced.exit21.land.lhs.true_crit_edge

xfs_dquot_is_enforced.exit21.land.lhs.true_crit_edge: ; preds = %xfs_dquot_is_enforced.exit21
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

xfs_dquot_is_enforced.exit21.if.end96_crit_edge:  ; preds = %xfs_dquot_is_enforced.exit21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

land.lhs.true:                                    ; preds = %xfs_dquot_is_enforced.exit21.land.lhs.true_crit_edge, %sw.bb6.i18.land.lhs.true_crit_edge, %sw.bb1.i13.land.lhs.true_crit_edge
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %dqp, i32 0, i32 4
  %87 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %q_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.not = icmp eq i32 %88, 0
  br i1 %cmp.not, label %land.lhs.true.if.end96_crit_edge, label %if.then57

land.lhs.true.if.end96_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then57:                                        ; preds = %land.lhs.true
  %89 = ptrtoint ptr %d_space to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %d_space, align 8
  %91 = ptrtoint ptr %d_spc_softlimit to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %d_spc_softlimit, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %92)
  %cmp60 = icmp ule i64 %90, %92
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %cmp64.not = icmp eq i64 %92, 0
  %or.cond = or i1 %cmp60, %cmp64.not
  br i1 %or.cond, label %if.then57.if.end71_crit_edge, label %if.then66

if.then57.if.end71_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then66:                                        ; preds = %if.then57
  %93 = ptrtoint ptr %d_spc_timer to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %d_spc_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %94)
  %cmp68.not = icmp eq i64 %94, 0
  br i1 %cmp68.not, label %cond.false, label %if.then66.if.end71_crit_edge, !prof !46

if.then66.if.end71_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

cond.false:                                       ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef 454) #4
  br label %if.end71

if.end71:                                         ; preds = %cond.false, %if.then66.if.end71_crit_edge, %if.then57.if.end71_crit_edge
  %95 = ptrtoint ptr %d_ino_count to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %d_ino_count, align 8
  %97 = ptrtoint ptr %softlimit9 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %softlimit9, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %98)
  %cmp75 = icmp ule i64 %96, %98
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %cmp80.not = icmp eq i64 %98, 0
  %or.cond1 = or i1 %cmp75, %cmp80.not
  br i1 %or.cond1, label %if.end71.if.end96_crit_edge, label %if.then82

if.end71.if.end96_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then82:                                        ; preds = %if.end71
  %99 = ptrtoint ptr %d_ino_timer to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %d_ino_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %cmp84.not = icmp eq i64 %100, 0
  br i1 %cmp84.not, label %cond.false93, label %if.then82.if.end96_crit_edge, !prof !46

if.then82.if.end96_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

cond.false93:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, i32 noundef 458) #4
  br label %if.end96

if.end96:                                         ; preds = %cond.false93, %if.then82.if.end96_crit_edge, %if.end71.if.end96_crit_edge, %land.lhs.true.if.end96_crit_edge, %xfs_dquot_is_enforced.exit21.if.end96_crit_edge, %xfs_dquot_is_enforced.exit21.thread, %sw.bb6.i18.if.end96_crit_edge, %sw.bb1.i13.if.end96_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_qm_scall_getquota_next(ptr noundef %mp, ptr nocapture noundef %id, i8 noundef zeroext %type, ptr nocapture noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  %dqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dqp) #4
  %0 = ptrtoint ptr %dqp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dqp, align 4, !annotation !43
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xfs_inodegc_flush(ptr noundef %mp) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %call = call i32 @xfs_qm_dqget_next(ptr noundef %mp, i32 noundef %4, i8 noundef zeroext %type, ptr noundef nonnull %dqp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dqp, align 4
  %q_id = getelementptr inbounds %struct.xfs_dquot, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %q_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %q_id, align 8
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %id, align 4
  call fastcc void @xfs_qm_scall_getquota_fill_qc(ptr noundef %mp, ptr noundef %6, ptr noundef %dst)
  %10 = ptrtoint ptr %dqp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dqp, align 4
  call void @xfs_qm_dqput(ptr noundef %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dqp) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqget_next(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_itruncate_extents_flags(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dquot_set_grace_period(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_dquot_set_timeout(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 40, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 110, i32 17}
!4 = !{ptr @__func__.xfs_qm_scall_trunc_qfiles, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 111, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 151, i32 17}
!8 = !{ptr @__func__.xfs_qm_scall_quotaon, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 152, i32 4}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 168, i32 4}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 314, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 355, i32 52}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 372, i32 48}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 388, i32 48}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 89, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_qm.h", i32 171, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 238, i32 17}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 454, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/xfs/xfs_qm_syscalls.c", i32 458, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_dquot.h", i32 190, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!46 = !{!"branch_weights", i32 1, i32 2000}
