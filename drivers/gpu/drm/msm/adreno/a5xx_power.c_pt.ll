; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a5xx_power.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.109 = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.110, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.110 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
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
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpmufw\00", [25 x i8] zeroinitializer }, align 32
@a5xx_sequence_regs = internal constant { [55 x %struct.anon.109], [104 x i8] } { [55 x %struct.anon.109] [%struct.anon.109 { i32 47521, i32 66307 }, %struct.anon.109 { i32 47522, i32 318767104 }, %struct.anon.109 { i32 47523, i32 4587552 }, %struct.anon.109 { i32 47524, i32 268435456 }, %struct.anon.109 { i32 47525, i32 67770119 }, %struct.anon.109 { i32 47526, i32 65536 }, %struct.anon.109 { i32 47527, i32 234883332 }, %struct.anon.109 { i32 47528, i32 268435456 }, %struct.anon.109 { i32 47529, i32 18239488 }, %struct.anon.109 { i32 47530, i32 917506 }, %struct.anon.109 { i32 47531, i32 59261249 }, %struct.anon.109 { i32 47532, i32 268437568 }, %struct.anon.109 { i32 47533, i32 1462390784 }, %struct.anon.109 { i32 47534, i32 3 }, %struct.anon.109 { i32 47535, i32 0 }, %struct.anon.109 { i32 47536, i32 268435456 }, %struct.anon.109 { i32 47144, i32 1814052880 }, %struct.anon.109 { i32 47145, i32 1814052881 }, %struct.anon.109 { i32 47146, i32 1814052882 }, %struct.anon.109 { i32 47147, i32 1814052883 }, %struct.anon.109 { i32 47148, i32 1814052884 }, %struct.anon.109 { i32 47375, i32 4 }, %struct.anon.109 { i32 47376, i32 2 }, %struct.anon.109 { i32 47377, i32 2 }, %struct.anon.109 { i32 47378, i32 2 }, %struct.anon.109 { i32 47379, i32 2 }, %struct.anon.109 { i32 47407, i32 4 }, %struct.anon.109 { i32 47408, i32 5 }, %struct.anon.109 { i32 47409, i32 5 }, %struct.anon.109 { i32 47410, i32 5 }, %struct.anon.109 { i32 47411, i32 5 }, %struct.anon.109 { i32 47471, i32 1 }, %struct.anon.109 { i32 47472, i32 3 }, %struct.anon.109 { i32 47439, i32 4 }, %struct.anon.109 { i32 47440, i32 11 }, %struct.anon.109 { i32 47441, i32 11 }, %struct.anon.109 { i32 47442, i32 11 }, %struct.anon.109 { i32 47443, i32 11 }, %struct.anon.109 { i32 47367, i32 25 }, %struct.anon.109 { i32 47399, i32 25 }, %struct.anon.109 { i32 47431, i32 25 }, %struct.anon.109 { i32 47463, i32 25 }, %struct.anon.109 { i32 47495, i32 25 }, %struct.anon.109 { i32 47366, i32 2228225 }, %struct.anon.109 { i32 47398, i32 2228225 }, %struct.anon.109 { i32 47430, i32 2228225 }, %struct.anon.109 { i32 47462, i32 2228225 }, %struct.anon.109 { i32 47494, i32 3145728 }, %struct.anon.109 { i32 44096, i32 54591297 }, %struct.anon.109 { i32 44097, i32 62848720 }, %struct.anon.109 { i32 44098, i32 3350509 }, %struct.anon.109 { i32 44099, i32 35651027 }, %struct.anon.109 { i32 44100, i32 1431677610 }, %struct.anon.109 { i32 44101, i32 1431677610 }, %struct.anon.109 { i32 47546, i32 8 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Unable to load GPMU firmware. GPMU will not be active\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: GPMU firmware initialization timed out\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: GPMU firmware initialization failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 530, i64 540]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 530, i64 540]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 371, i32 45 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"a5xx_sequence_regs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 41, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 246, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 263, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/gpu/drm/msm/adreno/a5xx_power.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 270, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @a5xx_sequence_regs, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a5xx_sequence_regs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a5xx_power_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %0 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revn.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 530, label %if.then5
    i32 540, label %if.then8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then5:                                         ; preds = %entry
  %mmio.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then5
  %i.067.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [55 x %struct.anon.109], ptr @a5xx_sequence_regs, i32 0, i32 %i.067.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %value.i = getelementptr [55 x %struct.anon.109], ptr @a5xx_sequence_regs, i32 0, i32 %i.067.i, i32 1
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value.i, align 4
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 8
  %shl.i.i = shl i32 %4, 2
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %shl.i.i
  tail call void @msm_writel(i32 noundef %6, ptr noundef %add.ptr.i.i) #3
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 55
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %10, i32 176128
  tail call void @msm_writel(i32 noundef 393223, ptr noundef %add.ptr.i32.i) #3
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %12, i32 176140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i34.i) #3
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %14, i32 176132
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i36.i) #3
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i38.i = getelementptr i8, ptr %16, i32 176512
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %add.ptr.i38.i) #3
  %lm_leakage.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 8
  %17 = ptrtoint ptr %lm_leakage.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lm_leakage.i, align 4
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i40.i = getelementptr i8, ptr %20, i32 176408
  tail call void @msm_writel(i32 noundef %18, ptr noundef %add.ptr.i40.i) #3
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i42.i = getelementptr i8, ptr %22, i32 176640
  tail call void @msm_writel(i32 noundef -2147477648, ptr noundef %add.ptr.i42.i) #3
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %24, i32 190080
  tail call void @msm_writel(i32 noundef 268443647, ptr noundef %add.ptr.i44.i) #3
  %25 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %26, i32 188464
  tail call void @msm_writel(i32 noundef 2105329, ptr noundef %add.ptr.i46.i) #3
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i48.i = getelementptr i8, ptr %28, i32 190080
  tail call void @msm_writel(i32 noundef 268443647, ptr noundef %add.ptr.i48.i) #3
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %30, i32 188464
  tail call void @msm_writel(i32 noundef 2105329, ptr noundef %add.ptr.i50.i) #3
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %32, i32 155676
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i52.i) #3
  %33 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %34, i32 155680
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i54.i) #3
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i56.i = getelementptr i8, ptr %36, i32 155696
  tail call void @msm_writel(i32 noundef 5448, ptr noundef %add.ptr.i56.i) #3
  %37 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %38, i32 155700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i58.i) #3
  %fast_rate.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 32
  %39 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fast_rate.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %41 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i.i, align 4
  %gpu_pdev.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %gpu_pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gpu_pdev.i.i, align 8
  %dev2.i.i = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %call.i.i = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %dev2.i.i, i32 noundef %40, i1 noundef zeroext true) #3
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.end.i.a530_lm_setup.exit_crit_edge, label %if.then.i.i

for.end.i.a530_lm_setup.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %a530_lm_setup.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i.i = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i.i) #3
  %div.i.i = udiv i32 %call4.i.i, 1000
  tail call void @dev_pm_opp_put(ptr noundef %call.i.i) #3
  br label %a530_lm_setup.exit

a530_lm_setup.exit:                               ; preds = %if.then.i.i, %for.end.i.a530_lm_setup.exit_crit_edge
  %ret.0.i.i = phi i32 [ 0, %for.end.i.a530_lm_setup.exit_crit_edge ], [ %div.i.i, %if.then.i.i ]
  %47 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %48, i32 155704
  tail call void @msm_writel(i32 noundef %ret.0.i.i, ptr noundef %add.ptr.i60.i) #3
  %49 = ptrtoint ptr %fast_rate.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fast_rate.i, align 8
  %div.i = udiv i32 %50, 1000000
  br label %if.end10

if.then8:                                         ; preds = %entry
  %patchid.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %patchid.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %patchid.i, align 1
  %mmio.i.i34 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %53 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i.i35 = getelementptr i8, ptr %54, i32 176512
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %add.ptr.i.i35) #3
  %55 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %56, i32 176640
  tail call void @msm_writel(i32 noundef -2147477648, ptr noundef %add.ptr.i21.i) #3
  %57 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i23.i = getelementptr i8, ptr %58, i32 155676
  tail call void @msm_writel(i32 noundef -2147483647, ptr noundef %add.ptr.i23.i) #3
  %59 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i25.i = getelementptr i8, ptr %60, i32 155680
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i25.i) #3
  %61 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i27.i = getelementptr i8, ptr %62, i32 155696
  tail call void @msm_writel(i32 noundef 5448, ptr noundef %add.ptr.i27.i) #3
  %63 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %64, i32 155700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i29.i) #3
  %fast_rate.i36 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 32
  %65 = ptrtoint ptr %fast_rate.i36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fast_rate.i36, align 8
  %dev1.i.i37 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %67 = ptrtoint ptr %dev1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev1.i.i37, align 4
  %dev_private.i.i38 = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %dev_private.i.i38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_private.i.i38, align 4
  %gpu_pdev.i.i39 = getelementptr inbounds %struct.msm_drm_private, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %gpu_pdev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gpu_pdev.i.i39, align 8
  %dev2.i.i40 = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3
  %call.i.i41 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %dev2.i.i40, i32 noundef %66, i1 noundef zeroext true) #3
  %cmp.i.i.i42 = icmp ugt ptr %call.i.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i42, label %if.then8.a540_lm_setup.exit_crit_edge, label %if.then.i.i45

if.then8.a540_lm_setup.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %a540_lm_setup.exit

if.then.i.i45:                                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i.i43 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i.i41) #3
  %div.i.i44 = udiv i32 %call4.i.i43, 1000
  tail call void @dev_pm_opp_put(ptr noundef %call.i.i41) #3
  br label %a540_lm_setup.exit

a540_lm_setup.exit:                               ; preds = %if.then.i.i45, %if.then8.a540_lm_setup.exit_crit_edge
  %ret.0.i.i46 = phi i32 [ 0, %if.then8.a540_lm_setup.exit_crit_edge ], [ %div.i.i44, %if.then.i.i45 ]
  %conv.i47 = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %conv.i47, 17
  %or1.i = or i32 %shl.i, 16777728
  %73 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i31.i = getelementptr i8, ptr %74, i32 155704
  tail call void @msm_writel(i32 noundef %ret.0.i.i46, ptr noundef %add.ptr.i31.i) #3
  %75 = ptrtoint ptr %fast_rate.i36 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fast_rate.i36, align 8
  %div.i48 = udiv i32 %76, 1000000
  %77 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i33.i = getelementptr i8, ptr %78, i32 155708
  tail call void @msm_writel(i32 noundef %div.i48, ptr noundef %add.ptr.i33.i) #3
  %79 = ptrtoint ptr %mmio.i.i34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i.i34, align 8
  %add.ptr.i35.i = getelementptr i8, ptr %80, i32 155832
  tail call void @msm_writel(i32 noundef %or1.i, ptr noundef %add.ptr.i35.i) #3
  br label %if.end10

if.end10:                                         ; preds = %a540_lm_setup.exit, %a530_lm_setup.exit
  %mmio.i.i34.sink69 = phi ptr [ %mmio.i.i34, %a540_lm_setup.exit ], [ %mmio.i.i, %a530_lm_setup.exit ]
  %.sink68 = phi i32 [ 155836, %a540_lm_setup.exit ], [ 155708, %a530_lm_setup.exit ]
  %.sink66 = phi i32 [ -772, %a540_lm_setup.exit ], [ %div.i, %a530_lm_setup.exit ]
  %.sink = phi i32 [ 144, %a540_lm_setup.exit ], [ 16, %a530_lm_setup.exit ]
  %81 = ptrtoint ptr %mmio.i.i34.sink69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i34.sink69, align 8
  %add.ptr.i37.i = getelementptr i8, ptr %82, i32 %.sink68
  tail call void @msm_writel(i32 noundef %.sink66, ptr noundef %add.ptr.i37.i) #3
  %83 = ptrtoint ptr %mmio.i.i34.sink69 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i.i34.sink69, align 8
  %add.ptr.i39.i = getelementptr i8, ptr %84, i32 155688
  tail call void @msm_writel(i32 noundef %.sink, ptr noundef %add.ptr.i39.i) #3
  %85 = ptrtoint ptr %mmio.i.i34.sink69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i.i34.sink69, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %86, i32 155668
  tail call void @msm_writel(i32 noundef -1161889074, ptr noundef %add.ptr.i41.i) #3
  %mmio.i.i49 = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 22
  %87 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %88, i32 172616
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr.i.i50) #3
  %89 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %90, i32 172624
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i5.i) #3
  %91 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %92, i32 172620
  tail call void @msm_writel(i32 noundef 655488, ptr noundef %add.ptr.i7.i) #3
  %93 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i9.i = getelementptr i8, ptr %94, i32 172612
  tail call void @msm_writel(i32 noundef 6291520, ptr noundef %add.ptr.i9.i) #3
  %gpmu_dwords.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 7
  %95 = ptrtoint ptr %gpmu_dwords.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gpmu_dwords.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i, label %if.end10.if.end14_crit_edge, label %if.end.i

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.end.i:                                         ; preds = %if.end10
  %rb.i = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 13
  %97 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rb.i, align 4
  tail call void @adreno_wait_ring(ptr noundef %98, i32 noundef 2) #3
  %next.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %next.i.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 4
  %101 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i.i51 = icmp eq ptr %100, %102
  br i1 %cmp.i.i.i51, label %if.then.i.i.i, label %if.end.i.OUT_PKT7.exit.i_crit_edge

if.end.i.OUT_PKT7.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_PKT7.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %103 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %start.i.i.i, align 4
  %105 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit.i

OUT_PKT7.exit.i:                                  ; preds = %if.then.i.i.i, %if.end.i.OUT_PKT7.exit.i_crit_edge
  %106 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr i32, ptr %107, i32 1
  store ptr %incdec.ptr.i.i.i, ptr %next.i.i.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1893662721, ptr %107, align 4
  %109 = load ptr, ptr %next.i.i.i, align 8
  %110 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i = icmp eq ptr %109, %111
  br i1 %cmp.i.i, label %if.then.i.i52, label %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge

OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge:        ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_RING.exit.i

if.then.i.i52:                                    ; preds = %OUT_PKT7.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %112 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %start.i.i, align 4
  %114 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit.i

OUT_RING.exit.i:                                  ; preds = %if.then.i.i52, %OUT_PKT7.exit.i.OUT_RING.exit.i_crit_edge
  %115 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i = getelementptr i32, ptr %116, i32 1
  store ptr %incdec.ptr.i.i, ptr %next.i.i.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %116, align 4
  tail call void @adreno_wait_ring(ptr noundef %98, i32 noundef 4) #3
  %118 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %next.i.i.i, align 8
  %120 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i57.i = icmp eq ptr %119, %121
  br i1 %cmp.i.i57.i, label %if.then.i.i59.i, label %OUT_RING.exit.i.OUT_PKT7.exit61.i_crit_edge

OUT_RING.exit.i.OUT_PKT7.exit61.i_crit_edge:      ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_PKT7.exit61.i

if.then.i.i59.i:                                  ; preds = %OUT_RING.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i.i58.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %122 = ptrtoint ptr %start.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %start.i.i58.i, align 4
  %124 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit61.i

OUT_PKT7.exit61.i:                                ; preds = %if.then.i.i59.i, %OUT_RING.exit.i.OUT_PKT7.exit61.i_crit_edge
  %125 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i60.i = getelementptr i32, ptr %126, i32 1
  store ptr %incdec.ptr.i.i60.i, ptr %next.i.i.i, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1891598339, ptr %126, align 4
  %gpmu_iova.i = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 6
  %128 = ptrtoint ptr %gpmu_iova.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %gpmu_iova.i, align 8
  %conv.i53 = trunc i64 %129 to i32
  %130 = load ptr, ptr %next.i.i.i, align 8
  %131 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i64.i = icmp eq ptr %130, %132
  br i1 %cmp.i64.i, label %if.then.i66.i, label %OUT_PKT7.exit61.i.OUT_RING.exit68.i_crit_edge

OUT_PKT7.exit61.i.OUT_RING.exit68.i_crit_edge:    ; preds = %OUT_PKT7.exit61.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_RING.exit68.i

if.then.i66.i:                                    ; preds = %OUT_PKT7.exit61.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i65.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %133 = ptrtoint ptr %start.i65.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %start.i65.i, align 4
  %135 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %134, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit68.i

OUT_RING.exit68.i:                                ; preds = %if.then.i66.i, %OUT_PKT7.exit61.i.OUT_RING.exit68.i_crit_edge
  %136 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i67.i = getelementptr i32, ptr %137, i32 1
  store ptr %incdec.ptr.i67.i, ptr %next.i.i.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv.i53, ptr %137, align 4
  %139 = ptrtoint ptr %gpmu_iova.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %gpmu_iova.i, align 8
  %shr.i = lshr i64 %140, 32
  %conv6.i = trunc i64 %shr.i to i32
  %141 = load ptr, ptr %next.i.i.i, align 8
  %142 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i71.i = icmp eq ptr %141, %143
  br i1 %cmp.i71.i, label %if.then.i73.i, label %OUT_RING.exit68.i.OUT_RING.exit75.i_crit_edge

OUT_RING.exit68.i.OUT_RING.exit75.i_crit_edge:    ; preds = %OUT_RING.exit68.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_RING.exit75.i

if.then.i73.i:                                    ; preds = %OUT_RING.exit68.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i72.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %144 = ptrtoint ptr %start.i72.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %start.i72.i, align 4
  %146 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit75.i

OUT_RING.exit75.i:                                ; preds = %if.then.i73.i, %OUT_RING.exit68.i.OUT_RING.exit75.i_crit_edge
  %147 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i74.i = getelementptr i32, ptr %148, i32 1
  store ptr %incdec.ptr.i74.i, ptr %next.i.i.i, align 8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv6.i, ptr %148, align 4
  %150 = ptrtoint ptr %gpmu_dwords.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %gpmu_dwords.i, align 8
  %152 = load ptr, ptr %next.i.i.i, align 8
  %153 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i78.i = icmp eq ptr %152, %154
  br i1 %cmp.i78.i, label %if.then.i80.i, label %OUT_RING.exit75.i.OUT_RING.exit82.i_crit_edge

OUT_RING.exit75.i.OUT_RING.exit82.i_crit_edge:    ; preds = %OUT_RING.exit75.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_RING.exit82.i

if.then.i80.i:                                    ; preds = %OUT_RING.exit75.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i79.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %155 = ptrtoint ptr %start.i79.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %start.i79.i, align 4
  %157 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %156, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit82.i

OUT_RING.exit82.i:                                ; preds = %if.then.i80.i, %OUT_RING.exit75.i.OUT_RING.exit82.i_crit_edge
  %158 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i81.i = getelementptr i32, ptr %159, i32 1
  store ptr %incdec.ptr.i81.i, ptr %next.i.i.i, align 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %151, ptr %159, align 4
  tail call void @adreno_wait_ring(ptr noundef %98, i32 noundef 2) #3
  %161 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %next.i.i.i, align 8
  %163 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i.i85.i = icmp eq ptr %162, %164
  br i1 %cmp.i.i85.i, label %if.then.i.i87.i, label %OUT_RING.exit82.i.OUT_PKT7.exit89.i_crit_edge

OUT_RING.exit82.i.OUT_PKT7.exit89.i_crit_edge:    ; preds = %OUT_RING.exit82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_PKT7.exit89.i

if.then.i.i87.i:                                  ; preds = %OUT_RING.exit82.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i.i86.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %165 = ptrtoint ptr %start.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %start.i.i86.i, align 4
  %167 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %166, ptr %next.i.i.i, align 8
  br label %OUT_PKT7.exit89.i

OUT_PKT7.exit89.i:                                ; preds = %if.then.i.i87.i, %OUT_RING.exit82.i.OUT_PKT7.exit89.i_crit_edge
  %168 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i.i88.i = getelementptr i32, ptr %169, i32 1
  store ptr %incdec.ptr.i.i88.i, ptr %next.i.i.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1893662721, ptr %169, align 4
  %171 = load ptr, ptr %next.i.i.i, align 8
  %172 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %end.i.i.i, align 8
  %cmp.i92.i = icmp eq ptr %171, %173
  br i1 %cmp.i92.i, label %if.then.i94.i, label %OUT_PKT7.exit89.i.OUT_RING.exit96.i_crit_edge

OUT_PKT7.exit89.i.OUT_RING.exit96.i_crit_edge:    ; preds = %OUT_PKT7.exit89.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %OUT_RING.exit96.i

if.then.i94.i:                                    ; preds = %OUT_PKT7.exit89.i
  call void @__sanitizer_cov_trace_pc() #5
  %start.i93.i = getelementptr inbounds %struct.msm_ringbuffer, ptr %98, i32 0, i32 3
  %174 = ptrtoint ptr %start.i93.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %start.i93.i, align 4
  %176 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %next.i.i.i, align 8
  br label %OUT_RING.exit96.i

OUT_RING.exit96.i:                                ; preds = %if.then.i94.i, %OUT_PKT7.exit89.i.OUT_RING.exit96.i_crit_edge
  %177 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %next.i.i.i, align 8
  %incdec.ptr.i95.i = getelementptr i32, ptr %178, i32 1
  store ptr %incdec.ptr.i95.i, ptr %next.i.i.i, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %178, align 4
  tail call void @a5xx_flush(ptr noundef %gpu, ptr noundef %98, i1 noundef zeroext true) #3
  %call.i = tail call zeroext i1 @a5xx_idle(ptr noundef %gpu, ptr noundef %98) #3
  br i1 %call.i, label %if.end9.i, label %a5xx_gpmu_init.exit

if.end9.i:                                        ; preds = %OUT_RING.exit96.i
  %180 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %181)
  %cmp.i97.not.i = icmp eq i32 %181, 530
  br i1 %cmp.i97.not.i, label %if.then12.i, label %if.end9.i.if.end13.i_crit_edge

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i.i55 = getelementptr i8, ptr %183, i32 172804
  tail call void @msm_writel(i32 noundef 16404, ptr noundef %add.ptr.i.i55) #3
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end13.i_crit_edge
  %184 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i99.i = getelementptr i8, ptr %185, i32 172896
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i99.i) #3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %do.end.i.i.while.body.i.i_crit_edge, %if.end13.i
  %dec1.i.i = phi i32 [ 24, %if.end13.i ], [ %dec.i.i, %do.end.i.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748) #3
  %187 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %188, i32 172928
  %call.i.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1161889074, i32 %call.i.i.i)
  %cmp.i100.i = icmp eq i32 %call.i.i.i, -1161889074
  br i1 %cmp.i100.i, label %while.body.i.i.if.end18.i_crit_edge, label %do.end.i.i

while.body.i.i.if.end18.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

do.end.i.i:                                       ; preds = %while.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !20
  %dec.i.i = add nsw i32 %dec1.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then16.i, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

if.then16.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %189 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef %190) #3
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %while.body.i.i.if.end18.i_crit_edge
  %191 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %192)
  %cmp.i102.not.i = icmp eq i32 %192, 530
  br i1 %cmp.i102.not.i, label %if.end18.i.if.end.i60_crit_edge, label %if.then21.i

if.end18.i.if.end.i60_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i60

if.then21.i:                                      ; preds = %if.end18.i
  %193 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i105.i = getelementptr i8, ptr %194, i32 172932
  %call.i.i56 = tail call i32 @msm_readl(ptr noundef %add.ptr.i105.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool23.not.i = icmp eq i32 %call.i.i56, 0
  br i1 %tobool23.not.i, label %if.then21.i.if.end14_crit_edge, label %if.then24.i

if.then21.i.if.end14_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #5
  %195 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %196, i32 noundef %call.i.i56) #3
  br label %if.end14

a5xx_gpmu_init.exit:                              ; preds = %OUT_RING.exit96.i
  call void @__sanitizer_cov_trace_pc() #5
  %197 = ptrtoint ptr %gpu to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %gpu, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef %198) #3
  br label %cleanup

if.end14:                                         ; preds = %if.then24.i, %if.then21.i.if.end14_crit_edge, %if.end10.if.end14_crit_edge
  %199 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %.pr = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530, i32 %.pr)
  %cmp.i.not.i = icmp eq i32 %.pr, 530
  br i1 %cmp.i.not.i, label %if.end14.if.end.i60_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14.if.end.i60_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.end14.if.end.i60_crit_edge, %if.end18.i.if.end.i60_crit_edge
  %200 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i.i59 = getelementptr i8, ptr %201, i32 188484
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i59) #3
  %202 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %203, i32 188476
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr.i8.i) #3
  %204 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %205, i32 176520
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i10.i) #3
  %206 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %207, i32 176152
  tail call void @msm_writel(i32 noundef 327680, ptr noundef %add.ptr.i12.i) #3
  %208 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %209, i32 172704
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %add.ptr.i14.i) #3
  %210 = ptrtoint ptr %mmio.i.i49 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %mmio.i.i49, align 8
  %add.ptr.i16.i = getelementptr i8, ptr %211, i32 172684
  tail call void @msm_writel(i32 noundef 17, ptr noundef %add.ptr.i16.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i60, %if.end14.cleanup_crit_edge, %a5xx_gpmu_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %a5xx_gpmu_init.exit ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.i60 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a5xx_gpmu_ucode_init(ptr noundef %gpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %revn.i = getelementptr inbounds %struct.adreno_gpu, ptr %gpu, i32 0, i32 4
  %2 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revn.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 530, label %entry.if.end_crit_edge
    i32 540, label %entry.if.end_crit_edge140
  ]

entry.if.end_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge140
  %gpmu_bo = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 5
  %5 = ptrtoint ptr %gpmu_bo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpmu_bo, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.adreno_gpu, ptr %gpu, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %data9 = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data9, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp ult i32 %12, 8
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14 = icmp ugt i32 %14, 1
  %shr = lshr i32 %12, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %shr)
  %cmp20.not = icmp ult i32 %14, %shr
  %or.cond = select i1 %cmp14, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %if.end22, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false12
  %arrayidx23 = getelementptr i32, ptr %10, i32 1
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp24.not = icmp eq i32 %16, 2
  br i1 %cmp24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %arrayidx27 = getelementptr i32, ptr %10, i32 2
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx27, align 4
  %sub = sub i32 %14, %18
  %sub32 = add i32 %sub, -2
  %div = udiv i32 %sub32, 127
  %add = add i32 %div, %sub32
  %add33 = shl i32 %add, 2
  %shl = add i32 %add33, 4
  %aspace = getelementptr inbounds %struct.msm_gpu, ptr %gpu, i32 0, i32 24
  %19 = ptrtoint ptr %aspace to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aspace, align 8
  %gpmu_iova = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 6
  %call35 = tail call ptr @msm_gem_kernel_new(ptr noundef %1, i32 noundef %shl, i32 noundef 131074, ptr noundef %20, ptr noundef %gpmu_bo, ptr noundef %gpmu_iova) #3
  %cmp.i108 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.end26.cleanup_crit_edge, label %if.end38

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %gpmu_bo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpmu_bo, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %22, ptr noundef nonnull @.str) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp40.not132 = icmp eq i32 %sub32, 0
  br i1 %cmp40.not132, label %if.end38.while.end_crit_edge, label %while.body.preheader

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.preheader:                             ; preds = %if.end38
  %add.ptr28 = getelementptr i32, ptr %10, i32 %18
  %add.ptr29 = getelementptr i32, ptr %add.ptr28, i32 3
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.preheader
  %cmds_size.0136 = phi i32 [ %sub59, %for.end.while.body_crit_edge ], [ %sub32, %while.body.preheader ]
  %cmds.0135 = phi ptr [ %incdec.ptr, %for.end.while.body_crit_edge ], [ %add.ptr29, %while.body.preheader ]
  %offset.0134 = phi i32 [ %add58, %for.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %dwords.0133 = phi i32 [ %25, %for.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %23 = tail call i32 @llvm.umin.i32(i32 %cmds_size.0136, i32 127)
  %shr.i = lshr i32 %23, 4
  %.masked = and i32 %23, 15
  %xor10.masked.i = xor i32 %shr.i, %.masked
  %shr13.i = lshr i32 38505, %xor10.masked.i
  %and14.i = shl nuw nsw i32 %shr13.i, 7
  %shl44 = and i32 %and14.i, 128
  %add46 = add i32 %offset.0134, 34816
  %and = shl i32 %add46, 8
  %shl47 = and i32 %and, 67108608
  %shr.i109 = lshr i32 %add46, 4
  %xor.i110 = xor i32 %shr.i109, %add46
  %shr1.i111 = lshr i32 %add46, 8
  %xor2.i112 = xor i32 %xor.i110, %shr1.i111
  %shr3.i113 = lshr i32 %add46, 12
  %xor4.i114 = xor i32 %xor2.i112, %shr3.i113
  %shr5.i115 = lshr i32 %add46, 16
  %xor6.i116 = xor i32 %xor4.i114, %shr5.i115
  %shr7.i117 = lshr i32 %add46, 20
  %xor8.i118 = xor i32 %xor6.i116, %shr7.i117
  %shr9.i119 = lshr i32 %add46, 24
  %xor10.i120 = xor i32 %xor8.i118, %shr9.i119
  %shr11.i121 = lshr i32 %add46, 28
  %xor10.masked.i122 = and i32 %xor10.i120, 15
  %and.i123 = xor i32 %xor10.masked.i122, %shr11.i121
  %shr13.i124 = lshr i32 38505, %and.i123
  %and14.i125 = shl i32 %shr13.i124, 27
  %shl51 = and i32 %and14.i125, 134217728
  %or = or i32 %23, %shl47
  %or45 = or i32 %or, %shl44
  %or48 = or i32 %or45, %shl51
  %or52 = or i32 %or48, 1073741824
  %arrayidx53 = getelementptr i32, ptr %call35, i32 %dwords.0133
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or52, ptr %arrayidx53, align 4
  %dwords.1126 = add i32 %dwords.0133, 1
  %25 = add i32 %dwords.1126, %23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %dwords.1130 = phi i32 [ %dwords.1, %for.body.for.body_crit_edge ], [ %dwords.1126, %while.body ]
  %cmds.1128 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %cmds.0135, %while.body ]
  %incdec.ptr = getelementptr i32, ptr %cmds.1128, i32 1
  %26 = ptrtoint ptr %cmds.1128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmds.1128, align 4
  %arrayidx56 = getelementptr i32, ptr %call35, i32 %dwords.1130
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx56, align 4
  %dwords.1 = add i32 %dwords.1130, 1
  %exitcond.not = icmp eq i32 %dwords.1, %25
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  %add58 = add i32 %23, %offset.0134
  %sub59 = sub i32 %cmds_size.0136, %23
  %cmp40.not = icmp eq i32 %sub59, 0
  br i1 %cmp40.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end38.while.end_crit_edge
  %dwords.0.lcssa = phi i32 [ 0, %if.end38.while.end_crit_edge ], [ %25, %for.end.while.end_crit_edge ]
  %29 = ptrtoint ptr %gpmu_bo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpmu_bo, align 8
  tail call void @msm_gem_put_vaddr(ptr noundef %30) #3
  %gpmu_dwords = getelementptr inbounds %struct.a5xx_gpu, ptr %gpu, i32 0, i32 7
  %31 = ptrtoint ptr %gpmu_dwords to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dwords.0.lcssa, ptr %gpmu_dwords, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_flush(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a5xx_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_power.c", i32 371, i32 45}
!2 = !{ptr @a5xx_sequence_regs, !3, !"a5xx_sequence_regs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_power.c", i32 41, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_power.c", i32 246, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_power.c", i32 263, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/adreno/a5xx_power.c", i32 270, i32 4}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2157661401}
!20 = !{i64 2157661243}
