; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_gpu_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu_devfreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.106, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.106 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@msm_devfreq_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @msm_devfreq_target, ptr @msm_devfreq_get_dev_status, ptr @msm_devfreq_get_cur_freq, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Couldn't initialize GPU devfreq\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* Couldn't register GPU cooling device\0A\00", [50 x i8] zeroinitializer }, align 32
@__tracepoint_msm_gpu_freq_change = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/msm_gpu_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_msm_gpu_freq_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"msm_devfreq_profile\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 75, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 112, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 116, i32 3 }
@___asan_gen_.20 = private constant [41 x i8] c"../drivers/gpu/drm/msm/msm_gpu_devfreq.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 125, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/msm/msm_gpu_trace.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 87, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 108, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @msm_devfreq_profile, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_devfreq_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41
  %funcs = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %gpu_busy = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %gpu_busy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu_busy, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %idle_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 1
  %call = tail call i32 @dev_pm_qos_add_request(ptr noundef %dev, ptr noundef %idle_freq, i32 noundef 4, i32 noundef 2147483647) #5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %boost_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 2
  %call3 = tail call i32 @dev_pm_qos_add_request(ptr noundef %dev2, ptr noundef %boost_freq, i32 noundef 3, i32 noundef 0) #5
  %fast_rate = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 32
  %8 = ptrtoint ptr %fast_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fast_rate, align 8
  store i32 %9, ptr @msm_devfreq_profile, align 4
  store ptr null, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 9), align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call6 = tail call ptr @devm_devfreq_add_device(ptr noundef %dev5, ptr noundef nonnull @msm_devfreq_profile, ptr noundef nonnull @.str, ptr noundef null) #5
  %12 = ptrtoint ptr %devfreq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %devfreq, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  %15 = ptrtoint ptr %devfreq to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %devfreq, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @devfreq_suspend_device(ptr noundef %call6) #5
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %20 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devfreq, align 8
  %call20 = tail call ptr @of_devfreq_cooling_register(ptr noundef %19, ptr noundef %21) #5
  %cooling = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 46
  %22 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call20, ptr %cooling, align 4
  %cmp.i50 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then23, label %if.end14.if.end27_crit_edge

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #5
  %25 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cooling, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end14.if.end27_crit_edge
  %boost_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 7
  %worker = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 39
  %26 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %worker, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %boost_work, ptr noundef %27, ptr noundef nonnull @msm_devfreq_boost_work, i32 noundef 1, i32 noundef 1) #5
  %idle_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6
  %28 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %worker, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %idle_work, ptr noundef %29, ptr noundef nonnull @msm_devfreq_idle_work, i32 noundef 1, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_devfreq_cooling_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_work_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_devfreq_boost_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %boost_freq = getelementptr i8, ptr %work, i32 -184
  %call = tail call i32 @dev_pm_qos_update_request(ptr noundef %boost_freq, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_devfreq_idle_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %idle_time = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %idle_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %idle_time, align 8
  %clamp_to_idle = getelementptr i8, ptr %work, i32 104
  %1 = ptrtoint ptr %clamp_to_idle to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %clamp_to_idle, align 8, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idle_freq = getelementptr i8, ptr %work, i32 -148
  %call4 = tail call i32 @dev_pm_qos_update_request(ptr noundef %idle_freq, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_cleanup(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cooling = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 46
  %0 = ptrtoint ptr %cooling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cooling, align 4
  tail call void @devfreq_cooling_unregister(ptr noundef %1) #5
  %boost_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 2
  %call = tail call i32 @dev_pm_qos_remove_request(ptr noundef %boost_freq) #5
  %idle_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 1
  %call1 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %idle_freq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_resume(ptr nocapture noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41
  %busy_cycles = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %busy_cycles to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %busy_cycles, align 8
  %call = tail call i64 @ktime_get() #5
  %time = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 4
  %1 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call, ptr %time, align 8
  %2 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devfreq, align 8
  %call4 = tail call i32 @devfreq_resume_device(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_suspend(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %call = tail call i32 @devfreq_suspend_device(ptr noundef %1) #5
  %idle_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %idle_work.i) #5
  %work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6, i32 1
  %call2.i = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work.i) #5
  %boost_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 7
  %call.i4 = tail call i32 @hrtimer_cancel(ptr noundef %boost_work.i) #5
  %work.i5 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 7, i32 1
  %call2.i6 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work.i5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_boost(ptr noundef %gpu, i32 noundef %factor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %0 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs.i, align 4
  %gpu_get_freq.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %gpu_get_freq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpu_get_freq.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %3(ptr noundef %gpu) #5
  br label %if.end183

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %4 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core_clk.i, align 8
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %5) #5
  br label %if.end183

if.end183:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.end.i ]
  %conv = zext i32 %retval.0.i to i64
  %conv1 = zext i32 %factor to i64
  %mul = mul nuw i64 %conv, %conv1
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i32 0) #8, !srcloc !28
  %asmresult.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !29
  %asmresult10.i = extractvalue { i64, i32 } %7, 0
  %extract271 = lshr i64 %asmresult10.i, 9
  %extract.t272 = trunc i64 %extract271 to i32
  %boost_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 2
  %call186 = tail call i32 @dev_pm_qos_update_request(ptr noundef %boost_freq, i32 noundef %extract.t272) #5
  %boost_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 7
  %8 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  %conv187 = zext i32 %8 to i64
  %mul.i = mul nuw nsw i64 %conv187, 1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %boost_work, i64 noundef %mul.i, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_queue_work(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_active(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %idle_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %idle_work.i) #5
  %work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6, i32 1
  %call2.i = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work.i) #5
  %call = tail call i64 @ktime_get() #5
  %idle_time2 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 5
  %2 = ptrtoint ptr %idle_time2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %idle_time2, align 8
  %sub = sub i64 %call, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #5
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #8, !srcloc !30
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #8, !srcloc !29
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div181.i1.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div181.i1.i
  %spec.select.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div181.i1.i
  %conv = trunc i64 %spec.select.i.i to i32
  %7 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ult i32 %7, %conv
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %funcs.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 3
  %8 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i.i, align 4
  %gpu_get_freq.i.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %gpu_get_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpu_get_freq.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 %11(ptr noundef %gpu) #5
  br label %msm_devfreq_boost.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 30
  %12 = ptrtoint ptr %core_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_clk.i.i, align 8
  %call3.i.i = tail call i32 @clk_get_rate(ptr noundef %13) #5
  br label %msm_devfreq_boost.exit

msm_devfreq_boost.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call3.i.i, %if.end.i.i ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i32 0) #8, !srcloc !28
  %asmresult.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #8, !srcloc !29
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %extract271.i = lshr i64 %asmresult10.i.i, 9
  %extract.t272.i = trunc i64 %extract271.i to i32
  %boost_freq.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 2
  %call186.i = tail call i32 @dev_pm_qos_update_request(ptr noundef %boost_freq.i, i32 noundef %extract.t272.i) #5
  %boost_work.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 7
  %16 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  %conv187.i = zext i32 %16 to i64
  %mul.i.i = mul nuw nsw i64 %conv187.i, 1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %boost_work.i, i64 noundef %mul.i.i, i32 noundef 1) #5
  br label %if.end6

if.end6:                                          ; preds = %msm_devfreq_boost.exit, %if.end.if.end6_crit_edge
  %idle_freq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 1
  %call7 = tail call i32 @dev_pm_qos_update_request(ptr noundef %idle_freq, i32 noundef 2147483647) #5
  %pdev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 2
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -16
  %funcs.i.i16 = getelementptr i8, ptr %20, i32 -4
  %21 = ptrtoint ptr %funcs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i.i16, align 4
  %gpu_get_freq.i.i17 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %gpu_get_freq.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpu_get_freq.i.i17, align 4
  %tobool.not.i.i18 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i18, label %if.end.i.i23, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i19 = tail call i32 %24(ptr noundef %add.ptr.i.i) #5
  br label %msm_devfreq_get_dev_status.exit

if.end.i.i23:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk.i.i21 = getelementptr i8, ptr %20, i32 384
  %25 = ptrtoint ptr %core_clk.i.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core_clk.i.i21, align 8
  %call3.i.i22 = tail call i32 @clk_get_rate(ptr noundef %26) #5
  br label %msm_devfreq_get_dev_status.exit

msm_devfreq_get_dev_status.exit:                  ; preds = %if.end.i.i23, %if.then.i.i20
  %27 = ptrtoint ptr %funcs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs.i.i16, align 4
  %gpu_busy.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %gpu_busy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpu_busy.i, align 4
  %call2.i25 = tail call i32 %30(ptr noundef %add.ptr.i.i) #5
  %call3.i = tail call i64 @ktime_get() #5
  %time4.i = getelementptr i8, ptr %20, i32 680
  %31 = ptrtoint ptr %time4.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %time4.i, align 8
  %sub.i.i = sub i64 %call3.i, %32
  %33 = tail call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #5
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %33, i32 0) #8, !srcloc !28
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %33, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #8, !srcloc !29
  %36 = ptrtoint ptr %time4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call3.i, ptr %time4.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %msm_devfreq_get_dev_status.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_devfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %funcs.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %gpu_get_freq.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %gpu_get_freq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu_get_freq.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #5
  br label %get_freq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk.i = getelementptr i8, ptr %1, i32 384
  %6 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk.i, align 8
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %7) #5
  br label %get_freq.exit

get_freq.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.end.i ]
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 2
  %8 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %current_frequency, align 4
  %9 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs.i, align 4
  %gpu_busy = getelementptr inbounds %struct.msm_gpu_funcs, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %gpu_busy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpu_busy, align 4
  %call2 = tail call i32 %12(ptr noundef %add.ptr.i) #5
  %busy_time = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 1
  %13 = ptrtoint ptr %busy_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2, ptr %busy_time, align 4
  %call3 = tail call i64 @ktime_get() #5
  %time4 = getelementptr i8, ptr %1, i32 680
  %14 = ptrtoint ptr %time4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time4, align 8
  %sub.i = sub i64 %call3, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #8, !srcloc !28
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #8, !srcloc !29
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %conv = trunc i64 %spec.select.i.i.i to i32
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %status, align 4
  %20 = ptrtoint ptr %time4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call3, ptr %time4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_devfreq_idle(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %devfreq = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41
  %0 = ptrtoint ptr %devfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %idle_work = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 41, i32 6
  tail call void @msm_hrtimer_queue_work(ptr noundef %idle_work, i64 noundef 1000000, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_devfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %call1 = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %call1) #5
  tail call fastcc void @trace_msm_gpu_freq_change(i32 noundef %call4)
  %funcs = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %gpu_set_freq = getelementptr inbounds %struct.msm_gpu_funcs, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %gpu_set_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpu_set_freq, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %add.ptr.i, ptr noundef %call1) #5
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk = getelementptr i8, ptr %1, i32 384
  %7 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_clk, align 8
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %freq, align 4
  %call8 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %10) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  tail call void @dev_pm_opp_put(ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_devfreq_get_cur_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %funcs.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i, align 4
  %gpu_get_freq.i = getelementptr inbounds %struct.msm_gpu_funcs, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %gpu_get_freq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpu_get_freq.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %call.i = tail call i32 %5(ptr noundef %add.ptr.i) #5
  br label %get_freq.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %core_clk.i = getelementptr i8, ptr %1, i32 384
  %6 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk.i, align 8
  %call3.i = tail call i32 @clk_get_rate(ptr noundef %7) #5
  br label %get_freq.exit

get_freq.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.end.i ]
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_msm_gpu_freq_change(i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 1), ptr blockaddress(@trace_msm_gpu_freq_change, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !31

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !33
  %call42 = tail call i32 @__traceiter_msm_gpu_freq_change(ptr noundef null, i32 noundef %freq) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !34
  %13 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !32

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_msm_gpu_freq_change.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_msm_gpu_freq_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 100, ptr noundef nonnull @.str.5) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !36
  %31 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_freq_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !16}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_gpu_devfreq.c", i32 112, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_gpu_devfreq.c", i32 116, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/msm_gpu_devfreq.c", i32 125, i32 3}
!7 = !{ptr @msm_devfreq_profile, !8, !"msm_devfreq_profile", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/msm_gpu_devfreq.c", i32 75, i32 35}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/msm_gpu_trace.h", i32 87, i32 1}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{i64 1613462, i64 1613489, i64 1613511, i64 1613539}
!29 = !{i64 1613870, i64 1613897, i64 1613930, i64 1613951, i64 1613978, i64 1614004}
!30 = !{i64 1613175, i64 1613202}
!31 = !{i64 2148750854, i64 2148750859, i64 2148750872, i64 2148750916, i64 2148750950, i64 2148750971}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2157270180}
!34 = !{i64 2157270389}
!35 = !{i64 2150095156}
!36 = !{i64 2150096192}
