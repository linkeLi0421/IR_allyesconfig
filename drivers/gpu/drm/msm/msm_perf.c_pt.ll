; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_perf.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_perf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.109, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.109 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_perf_state = type { ptr, i8, i32, %struct.mutex, [256 x i8], i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.108, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.108 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.81, ptr }
%union.anon.81 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.msm_gpu_perfcntr = type { i32, i32, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.84 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.86 = type { ptr }

@msm_perf_debugfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&perf->read_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"perf\00", [27 x i8] zeroinitializer }, align 32
@perf_debugfs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @perf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @perf_open, ptr null, ptr @perf_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%%BUSY\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\09%s\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%3d.%d%%\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09%5d.%02d\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 214, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 217, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"perf_debugfs_fops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 191, i32 37 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 68, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 74, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 96, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 103, i32 27 }
@___asan_gen_.35 = private constant [34 x i8] c"../drivers/gpu/drm/msm/msm_perf.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 110, i32 25 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 230, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 214, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 174, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @msm_perf_debugfs_init.__key, ptr @.str, ptr @.str.1, ptr @perf_debugfs_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_perf_debugfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perf_debugfs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_perf_debugfs_init(ptr nocapture noundef readonly %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %perf1 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %perf1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %perf1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 372) #9
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %read_lock = getelementptr inbounds %struct.msm_perf_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %read_lock, ptr noundef nonnull @.str, ptr noundef nonnull @msm_perf_debugfs_init.__key) #6
  %10 = ptrtoint ptr %perf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %perf1, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %11 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root, align 4
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext -32476, ptr noundef %12, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @perf_debugfs_fops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_perf_debugfs_cleanup(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %perf1 = getelementptr inbounds %struct.msm_drm_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %perf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %perf1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %perf1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %perf1, align 4
  %read_lock = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %read_lock) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %sz, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %activetime.i = alloca i32, align 4
  %totaltime.i = alloca i32, align 4
  %cntrs.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_lock = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %read_lock, i32 noundef 0) #6
  %bufpos = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bufpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bufpos, align 4
  %buftot = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %buftot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buftot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp slt i32 %3, %5
  br i1 %cmp.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i, align 4
  %gpu1.i = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %gpu1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpu1.i, align 8
  %buf.i = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 4
  %cnt.i = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cnt.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %cnt.i, align 4
  %14 = and i32 %13, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i36, label %if.else.i

if.then.i36:                                      ; preds = %if.then
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.i, i32 noundef 256, ptr noundef nonnull @.str.2) #6
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %call.i
  %sub.i = sub i32 256, %call.i
  %num_perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_perfcntrs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3110.not.i = icmp eq i32 %16, 0
  br i1 %cmp3110.not.i, label %if.then.i36.refill_buf.exit.thread_crit_edge, label %for.body.lr.ph.i

if.then.i36.refill_buf.exit.thread_crit_edge:     ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %refill_buf.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then.i36
  %perfcntrs.i = getelementptr inbounds %struct.msm_gpu, ptr %11, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc7.i, %for.body.i.for.body.i_crit_edge ]
  %rem.0112.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %sub6.i, %for.body.i.for.body.i_crit_edge ]
  %ptr.0111.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr5.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %perfcntrs.i, align 4
  %name.i = getelementptr %struct.msm_gpu_perfcntr, ptr %18, i32 %i.0113.i, i32 3
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  %call4.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ptr.0111.i, i32 noundef %rem.0112.i, ptr noundef nonnull @.str.3, ptr noundef %20) #6
  %add.ptr5.i = getelementptr i8, ptr %ptr.0111.i, i32 %call4.i
  %sub6.i = sub i32 %rem.0112.i, %call4.i
  %inc7.i = add nuw i32 %i.0113.i, 1
  %21 = ptrtoint ptr %num_perfcntrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_perfcntrs.i, align 8
  %cmp3.i = icmp ult i32 %inc7.i, %22
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.refill_buf.exit.thread_crit_edge

for.body.i.refill_buf.exit.thread_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refill_buf.exit.thread

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.else.i:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %activetime.i) #6
  %23 = ptrtoint ptr %activetime.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %activetime.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %totaltime.i) #6
  %24 = ptrtoint ptr %totaltime.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %totaltime.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cntrs.i) #6
  %25 = call ptr @memset(ptr %cntrs.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %next_jiffies.i.i = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %next_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_jiffies.i.i, align 4
  %sub.i.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i37 = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i37, label %if.then.i.i39, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i39:                                    ; preds = %if.else.i
  %sub2.i.i = sub i32 %28, %26
  %call.i.i38 = tail call i32 @schedule_timeout_interruptible(i32 noundef %sub2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp3.i.i = icmp sgt i32 %call.i.i38, 0
  br i1 %cmp3.i.i, label %if.then.i.i39.refill_buf.exit_crit_edge, label %if.then.i.i39.if.end.i_crit_edge

if.then.i.i39.if.end.i_crit_edge:                 ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i39.refill_buf.exit_crit_edge:          ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %refill_buf.exit

if.end.i:                                         ; preds = %if.then.i.i39.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge
  %29 = ptrtoint ptr %next_jiffies.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %next_jiffies.i.i, align 4
  %add.i.i = add i32 %30, 25
  store i32 %add.i.i, ptr %next_jiffies.i.i, align 4
  %call11.i = call i32 @msm_gpu_perfcntr_sample(ptr noundef %11, ptr noundef nonnull %activetime.i, ptr noundef nonnull %totaltime.i, i32 noundef 5, ptr noundef nonnull %cntrs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end.i.refill_buf.exit_crit_edge, label %if.end14.i

if.end.i.refill_buf.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refill_buf.exit

if.end14.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %totaltime.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %totaltime.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool15.not.i = icmp eq i32 %32, 0
  br i1 %tobool15.not.i, label %if.end14.i.cond.end.i_crit_edge, label %cond.true.i

if.end14.i.cond.end.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %activetime.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %activetime.i, align 4
  %mul.i = mul i32 %34, 1000
  %div.i = udiv i32 %mul.i, %32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end14.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 0, %if.end14.i.cond.end.i_crit_edge ]
  %cond.i.frozen = freeze i32 %cond.i
  %div16.i = udiv i32 %cond.i.frozen, 10
  %35 = mul i32 %div16.i, 10
  %rem17.i.decomposed = sub i32 %cond.i.frozen, %35
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf.i, i32 noundef 256, ptr noundef nonnull @.str.4, i32 noundef %div16.i, i32 noundef %rem17.i.decomposed) #6
  %add.ptr19.i = getelementptr i8, ptr %buf.i, i32 %call18.i
  %sub20.i = sub i32 256, %call18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp22105.not.i = icmp eq i32 %call11.i, 0
  br i1 %cmp22105.not.i, label %cond.end.i.cleanup.i_crit_edge, label %cond.end.i.for.body23.i_crit_edge

cond.end.i.for.body23.i_crit_edge:                ; preds = %cond.end.i
  br label %for.body23.i

cond.end.i.cleanup.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %cond.end.i.for.body23.i_crit_edge
  %i.1108.i = phi i32 [ %inc32.i, %for.body23.i.for.body23.i_crit_edge ], [ 0, %cond.end.i.for.body23.i_crit_edge ]
  %rem.1107.i = phi i32 [ %sub30.i, %for.body23.i.for.body23.i_crit_edge ], [ %sub20.i, %cond.end.i.for.body23.i_crit_edge ]
  %ptr.1106.i = phi ptr [ %add.ptr29.i, %for.body23.i.for.body23.i_crit_edge ], [ %add.ptr19.i, %cond.end.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr [5 x i32], ptr %cntrs.i, i32 0, i32 %i.1108.i
  %36 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx24.i, align 4
  %div25.i = udiv i32 %37, 10000
  %div26.i = udiv i32 %37, 1000000
  %rem27.i = urem i32 %div25.i, 100
  %call28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ptr.1106.i, i32 noundef %rem.1107.i, ptr noundef nonnull @.str.5, i32 noundef %div26.i, i32 noundef %rem27.i) #6
  %add.ptr29.i = getelementptr i8, ptr %ptr.1106.i, i32 %call28.i
  %sub30.i = sub i32 %rem.1107.i, %call28.i
  %inc32.i = add nuw nsw i32 %i.1108.i, 1
  %exitcond.not.i = icmp eq i32 %inc32.i, %call11.i
  br i1 %exitcond.not.i, label %for.body23.i.cleanup.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i

for.body23.i.cleanup.i_crit_edge:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body23.i.cleanup.i_crit_edge, %cond.end.i.cleanup.i_crit_edge
  %ptr.1.lcssa.i = phi ptr [ %add.ptr19.i, %cond.end.i.cleanup.i_crit_edge ], [ %add.ptr29.i, %for.body23.i.cleanup.i_crit_edge ]
  %rem.1.lcssa.i = phi i32 [ %sub20.i, %cond.end.i.cleanup.i_crit_edge ], [ %sub30.i, %for.body23.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cntrs.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %totaltime.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activetime.i) #6
  br label %refill_buf.exit.thread

refill_buf.exit.thread:                           ; preds = %cleanup.i, %for.body.i.refill_buf.exit.thread_crit_edge, %if.then.i36.refill_buf.exit.thread_crit_edge
  %ptr.3.i = phi ptr [ %ptr.1.lcssa.i, %cleanup.i ], [ %add.ptr.i, %if.then.i36.refill_buf.exit.thread_crit_edge ], [ %add.ptr5.i, %for.body.i.refill_buf.exit.thread_crit_edge ]
  %rem.3.i = phi i32 [ %rem.1.lcssa.i, %cleanup.i ], [ %sub.i, %if.then.i36.refill_buf.exit.thread_crit_edge ], [ %sub6.i, %for.body.i.refill_buf.exit.thread_crit_edge ]
  %call39.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ptr.3.i, i32 noundef %rem.3.i, ptr noundef nonnull @.str.6) #6
  %add.ptr40.i = getelementptr i8, ptr %ptr.3.i, i32 %call39.i
  %38 = ptrtoint ptr %bufpos to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bufpos, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr40.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %39 = ptrtoint ptr %buftot to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.ptr.sub.i, ptr %buftot, align 4
  br label %if.end2

refill_buf.exit:                                  ; preds = %if.end.i.refill_buf.exit_crit_edge, %if.then.i.i39.refill_buf.exit_crit_edge
  %retval.0.ph.i = phi i32 [ -512, %if.then.i.i39.refill_buf.exit_crit_edge ], [ %call11.i, %if.end.i.refill_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cntrs.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %totaltime.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activetime.i) #6
  br label %out.thread

if.end2:                                          ; preds = %refill_buf.exit.thread, %entry.if.end2_crit_edge
  %40 = ptrtoint ptr %buftot to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buftot, align 4
  %42 = ptrtoint ptr %bufpos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bufpos, align 4
  %sub = sub i32 %41, %43
  %44 = call i32 @llvm.smin.i32(i32 %sub, i32 %sz)
  %arrayidx = getelementptr %struct.msm_perf_state, ptr %1, i32 0, i32 4, i32 %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp9.i.i = icmp slt i32 %44, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end2
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.out.thread_crit_edge, label %if.then27.i.i, !prof !33

land.rhs16.i.i.out.thread_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %out.thread

if.then.i.i.i:                                    ; preds = %if.end2
  call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %44, i1 noundef zeroext true) #6
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 174) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %44, i32 -1226833920) #10, !srcloc !34
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef %44) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %44) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %44, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %44, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool9.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool9.not, label %46, label %copy_to_user.exit.out.thread_crit_edge

copy_to_user.exit.out.thread_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

46:                                               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %bufpos to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bufpos, align 4
  %add = add i32 %48, %44
  store i32 %add, ptr %bufpos, align 4
  %conv47 = zext i32 %44 to i64
  %49 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ppos, align 8
  %add13 = add i64 %50, %conv47
  store i64 %add13, ptr %ppos, align 8
  br label %out.thread

out.thread:                                       ; preds = %46, %copy_to_user.exit.out.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out.thread_crit_edge, %refill_buf.exit
  %51 = phi i32 [ %44, %46 ], [ -14, %copy_to_user.exit.out.thread_crit_edge ], [ %retval.0.ph.i, %refill_buf.exit ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %read_lock) #6
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %gpu2 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gpu2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu2, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %7, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %open = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %open, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %private_data, align 4
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %open, align 4
  %cnt = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cnt, align 4
  %buftot = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %buftot to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buftot, align 4
  %bufpos = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %bufpos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bufpos, align 4
  tail call void @msm_gpu_perfcntr_start(ptr noundef nonnull %7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 25
  %next_jiffies = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %next_jiffies to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %next_jiffies, align 4
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5 ], [ -16, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perf_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %gpu = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpu, align 8
  tail call void @msm_gpu_perfcntr_stop(ptr noundef %7) #6
  %open = getelementptr inbounds %struct.msm_perf_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %open, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_perfcntr_sample(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_perfcntr_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_perfcntr_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @msm_perf_debugfs_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 214, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 217, i32 22}
!5 = !{ptr @perf_debugfs_fops, !6, !"perf_debugfs_fops", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 191, i32 37}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 68, i32 26}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 74, i32 27}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 96, i32 26}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 103, i32 27}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/msm_perf.c", i32 110, i32 25}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2152179621, i64 2152179646}
!35 = !{i8 0, i8 2}
