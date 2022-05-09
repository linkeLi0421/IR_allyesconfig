; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a5xx_debugfs.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
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
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i8, i64 }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@a5xx_debugfs_list = internal global { [4 x %struct.drm_info_list], [32 x i8] } { [4 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.1, ptr @show, i32 0, ptr @pfp_print }, %struct.drm_info_list { ptr @.str.2, ptr @show, i32 0, ptr @me_print }, %struct.drm_info_list { ptr @.str.3, ptr @show, i32 0, ptr @meq_print }, %struct.drm_info_list { ptr @.str.4, ptr @show, i32 0, ptr @roq_print }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @reset_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pfp\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"me\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"meq\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"roq\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PFP state:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  %02x: %08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ME state:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MEQ state:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ROQ state:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  %02x: %08x %08x %08x %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llx\0A\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"a5xx_debugfs_list\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 84, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 157, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"reset_fops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 85, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 86, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 87, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 88, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 18, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 22, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 31, i32 16 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 44, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 57, i32 16 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 65, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [45 x i8] c"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 141, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @a5xx_debugfs_list, ptr @.str, ptr @reset_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_debugfs_list to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_debugfs_init(ptr nocapture noundef readnone %gpu, ptr noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %minor, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @a5xx_debugfs_list, i32 noundef 4, ptr noundef %3, ptr noundef nonnull %minor) #4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str, i16 noundef zeroext 146, ptr noundef %5, ptr noundef %1, ptr noundef nonnull @reset_fops) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show(ptr noundef %m, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #4
  %8 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %9 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %10 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !36
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @__drm_puts_seq_file, ptr %8, align 4, !alias.scope !36
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %9, align 4, !alias.scope !36
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %10, align 4, !alias.scope !36
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %gpu = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 7
  %19 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpu, align 8
  call void %18(ptr noundef %20, ptr noundef nonnull %p) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pfp_print(ptr nocapture noundef readonly %gpu, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.5) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8224
  tail call void @msm_writel(i32 noundef %i.08, ptr noundef %add.ptr.i) #4
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 8228
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i7) #4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %i.08, i32 noundef %call.i) #4
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @me_print(ptr nocapture noundef readonly %gpu, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.7) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8296
  tail call void @msm_writel(i32 noundef %i.08, ptr noundef %add.ptr.i) #4
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 11344
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i7) #4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %i.08, i32 noundef %call.i) #4
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meq_print(ptr nocapture noundef readonly %gpu, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.8) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8332
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %3, i32 8336
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i6) #4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i32 noundef %i.07, i32 noundef %call.i) #4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @roq_print(ptr nocapture noundef readonly %gpu, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.9) #4
  %mmio.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8324
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc9, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %3, i32 8328
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i18) #4
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18.1 = getelementptr i8, ptr %5, i32 8328
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i18.1) #4
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18.2 = getelementptr i8, ptr %7, i32 8328
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i18.2) #4
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i18.3 = getelementptr i8, ptr %9, i32 8328
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i18.3) #4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %p, ptr noundef nonnull @.str.10, i32 noundef %i.020, i32 noundef %call.i, i32 noundef %call.i.1, i32 noundef %call.i.2, i32 noundef %call.i.3) #4
  %inc9 = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc9, 128
  br i1 %exitcond.not, label %for.end10, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @reset_set, ptr noundef nonnull @.str.11) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_set(ptr nocapture noundef readonly %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %gpu1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu1, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #4
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %fw = getelementptr inbounds %struct.adreno_gpu, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %5) #4
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw, align 4
  %arrayidx8 = getelementptr %struct.adreno_gpu, ptr %3, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx8, align 4
  tail call void @release_firmware(ptr noundef %8) #4
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx8, align 4
  %pm4_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %pm4_bo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm4_bo, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %if.end
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 24
  %12 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aspace, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %11, ptr noundef %13) #4
  %14 = ptrtoint ptr %pm4_bo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm4_bo, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then11.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.then11.drm_gem_object_put.exit_crit_edge:      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.then11
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %15, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr nonnull %15, i32 1, i32 3, i32 1) #4
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #4, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !41

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %15, i32 noundef 3) #4
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @drm_gem_object_free(ptr noundef nonnull %15) #4
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.then11.drm_gem_object_put.exit_crit_edge
  %17 = ptrtoint ptr %pm4_bo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pm4_bo, align 8
  br label %if.end15

if.end15:                                         ; preds = %drm_gem_object_put.exit, %if.end.if.end15_crit_edge
  %pfp_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %pfp_bo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfp_bo, align 8
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end15.if.end22_crit_edge, label %if.then17

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then17:                                        ; preds = %if.end15
  %aspace19 = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 24
  %20 = ptrtoint ptr %aspace19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aspace19, align 8
  tail call void @msm_gem_unpin_iova(ptr noundef nonnull %19, ptr noundef %21) #4
  %22 = ptrtoint ptr %pfp_bo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pfp_bo, align 8
  %tobool.not.i54 = icmp eq ptr %23, null
  br i1 %tobool.not.i54, label %if.then17.drm_gem_object_put.exit63_crit_edge, label %if.then.i58

if.then17.drm_gem_object_put.exit63_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_gem_object_put.exit63

if.then.i58:                                      ; preds = %if.then17
  %call.i.i.i.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %23, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr nonnull %23, i32 1, i32 3, i32 1) #4
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #4, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i56)
  %cmp.i.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i56, 1
  br i1 %cmp.i.i.i.i.i.i57, label %if.then.i.i.i62, label %if.end5.i.i.i.i.i.i60

if.end5.i.i.i.i.i.i60:                            ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i56)
  %.not.i.i.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i56, 0
  br i1 %.not.i.i.i.i.i.i59, label %if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge, label %if.then10.i.i.i.i.i.i61, !prof !41

if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge: ; preds = %if.end5.i.i.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_gem_object_put.exit63

if.then10.i.i.i.i.i.i61:                          ; preds = %if.end5.i.i.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef 3) #4
  br label %drm_gem_object_put.exit63

if.then.i.i.i62:                                  ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @drm_gem_object_free(ptr noundef nonnull %23) #4
  br label %drm_gem_object_put.exit63

drm_gem_object_put.exit63:                        ; preds = %if.then.i.i.i62, %if.then10.i.i.i.i.i.i61, %if.end5.i.i.i.i.i.i60.drm_gem_object_put.exit63_crit_edge, %if.then17.drm_gem_object_put.exit63_crit_edge
  %25 = ptrtoint ptr %pfp_bo to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pfp_bo, align 8
  br label %if.end22

if.end22:                                         ; preds = %drm_gem_object_put.exit63, %if.end15.if.end22_crit_edge
  %needs_hw_init = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 20
  %26 = ptrtoint ptr %needs_hw_init to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %needs_hw_init, align 8
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev23, i32 noundef 4) #4
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %funcs, align 4
  %recover = getelementptr inbounds %struct.msm_gpu_funcs, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %recover to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recover, align 4
  tail call void %32(ptr noundef %3) #4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %call.i64 = tail call i32 @__pm_runtime_idle(ptr noundef %dev26, i32 noundef 4) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 157, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 85, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 86, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 87, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 88, i32 2}
!10 = !{ptr @a5xx_debugfs_list, !11, !"a5xx_debugfs_list", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 84, i32 29}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 18, i32 16}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 22, i32 17}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 31, i32 16}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 44, i32 16}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 57, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 65, i32 17}
!24 = !{ptr @reset_fops, !25, !"reset_fops", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_debugfs.c", i32 141, i32 1}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"drm_seq_file_printer: %agg.result"}
!38 = distinct !{!38, !"drm_seq_file_printer"}
!39 = !{i64 2148755087}
!40 = !{i64 2148669527, i64 2148669559, i64 2148669588, i64 2148669622, i64 2148669653, i64 2148669676}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2150376176}
