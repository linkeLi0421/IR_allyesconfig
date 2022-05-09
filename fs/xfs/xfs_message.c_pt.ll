; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_message.c_pt.bc'
source_filename = "../fs/xfs/xfs_message.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_param = type { %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val, %struct.xfs_sysctl_val }
%struct.xfs_sysctl_val = type { i32, i32, i32 }
%struct.xfs_globals = type { i32, i32, i32, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
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
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@xfs_params = external dso_local local_unnamed_addr global %struct.xfs_param, align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transforming an alert into a BUG.\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Assertion failed: %s, file: %s, line: %d\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/xfs/xfs_message.c\00", [43 x i8] zeroinitializer }, align 32
@xfs_globals = external dso_local local_unnamed_addr global %struct.xfs_globals, align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__xfs_printk._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.10, i32 24, ptr null, ptr null }, align 1
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%sXFS (%s): %pV\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__xfs_printk\00", [19 x i8] zeroinitializer }, align 32
@__xfs_printk._entry_ptr = internal global ptr @__xfs_printk._entry, section ".printk_index", align 4
@__xfs_printk._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.10, i32 27, ptr null, ptr null }, align 1
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%sXFS: %pV\0A\00", [20 x i8] zeroinitializer }, align 32
@__xfs_printk._entry_ptr.16 = internal global ptr @__xfs_printk._entry.14, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 51, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 52, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 53, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 54, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 55, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 56, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 57, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 59, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 73, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 95, i32 15 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 97, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 118, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 24, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [24 x i8] c"../fs/xfs/xfs_message.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 27, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__xfs_printk._entry, ptr @__xfs_printk._entry.14, ptr @__xfs_printk._entry_ptr, ptr @__xfs_printk._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_emerg(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__xfs_printk(ptr noundef %level, ptr noundef readonly %mp, ptr noundef %vaf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mp, null
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %land.lhs.true

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

land.lhs.true:                                    ; preds = %entry
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.do.end4_crit_edge, label %do.end

land.lhs.true.do.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %s_id = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 39
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %level, ptr noundef %s_id, ptr noundef %vaf) #8
  br label %return

do.end4:                                          ; preds = %land.lhs.true.do.end4_crit_edge, %entry.do.end4_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %level, ptr noundef %vaf) #8
  br label %return

return:                                           ; preds = %do.end4, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_alert(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_crit(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_err(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_warn(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_notice(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_info(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.6, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_debug(ptr noundef readonly %mp, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #5
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %level, align 4, !annotation !42
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %land.lhs.true.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %entry
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %entry.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %call = call i32 @kstrtoint(ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull %level) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %__xfs_printk.exit.if.end_crit_edge

__xfs_printk.exit.if.end_crit_edge:               ; preds = %__xfs_printk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %__xfs_printk.exit
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp slt i32 %8, 4
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp3 = icmp sgt i32 %9, 4
  br i1 %cmp3, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  call void @dump_stack() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %__xfs_printk.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_alert_tag(ptr noundef %mp, i32 noundef %panic_tag, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  %0 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vaf, align 4, !annotation !42
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 2, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.xfs_param, ptr @xfs_params, i32 0, i32 2, i32 1), align 4
  %and = and i32 %4, %panic_tag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %mp, ptr noundef nonnull @.str.8)
  call void @llvm.va_start(ptr nonnull %args)
  %5 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fmt, ptr %vaf, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %args, ptr %1, align 4
  call fastcc void @__xfs_printk(ptr noundef nonnull @.str.1, ptr noundef %mp, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/xfs/xfs_message.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 85, 0\0A.popsection", ""() #5, !srcloc !43
  unreachable

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %7 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %fmt, ptr %vaf, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %args, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %mp, null
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %land.lhs.true.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %if.end
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %9 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %if.end.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asswarn(ptr noundef %mp, ptr noundef %expr, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.9, ptr noundef %expr, ptr noundef %file, i32 noundef %line)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 97, i32 noundef 9, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @assfail(ptr noundef %mp, ptr noundef %expr, ptr noundef %file, i32 noundef %line) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @xfs_emerg(ptr noundef %mp, ptr noundef nonnull @.str.9, ptr noundef %expr, ptr noundef %file, i32 noundef %line)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3) to i32))
  %0 = load i8, ptr getelementptr inbounds (%struct.xfs_globals, ptr @xfs_globals, i32 0, i32 3), align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/xfs/xfs_message.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #5, !srcloc !45
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 112, i32 noundef 9, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_hex_dump(ptr noundef %p, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %p, i32 noundef %length, i1 noundef zeroext true) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_buf_alert_ratelimited(ptr nocapture noundef readonly %bp, ptr noundef %rlmsg, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #5
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !42
  %b_target = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 15
  %3 = ptrtoint ptr %b_target to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %b_target, align 8
  %bt_ioerror_rl = getelementptr inbounds %struct.xfs_buftarg, ptr %4, i32 0, i32 12
  %call = tail call i32 @___ratelimit(ptr noundef %bt_ioerror_rl, ptr noundef %rlmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.do.end4.i_crit_edge, label %land.lhs.true.i

if.end.do.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

land.lhs.true.i:                                  ; preds = %if.end
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_super.i, align 8
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end4.i_crit_edge, label %do.end.i

land.lhs.true.i.do.end4.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %s_id.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 39
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, ptr noundef %s_id.i, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

do.end4.i:                                        ; preds = %land.lhs.true.i.do.end4.i_crit_edge, %if.end.do.end4.i_crit_edge
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef nonnull %vaf) #8
  br label %__xfs_printk.exit

__xfs_printk.exit:                                ; preds = %do.end4.i, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %__xfs_printk.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_message.c", i32 51, i32 1}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_message.c", i32 52, i32 1}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_message.c", i32 53, i32 1}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_message.c", i32 54, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/xfs/xfs_message.c", i32 55, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/xfs/xfs_message.c", i32 56, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/xfs/xfs_message.c", i32 57, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_message.c", i32 59, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_message.c", i32 73, i32 17}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_message.c", i32 95, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_message.c", i32 97, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_message.c", i32 118, i32 29}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_message.c", i32 24, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__xfs_printk._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @__xfs_printk._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_message.c", i32 27, i32 2}
!31 = !{ptr @__xfs_printk._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__xfs_printk._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{i64 2155629234, i64 2155629718, i64 2155629271, i64 2155629327, i64 2155629361, i64 2155629385, i64 2155629426, i64 2155629447, i64 2155629475, i64 2155629509}
!44 = !{i8 0, i8 2}
!45 = !{i64 2155631198, i64 2155631683, i64 2155631235, i64 2155631291, i64 2155631325, i64 2155631349, i64 2155631390, i64 2155631411, i64 2155631439, i64 2155631473}
