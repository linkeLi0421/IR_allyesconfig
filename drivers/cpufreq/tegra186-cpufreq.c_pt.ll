; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/tegra186-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/tegra186-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra186_cpufreq_cpu = type { i32, i32 }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.mrq_cpu_vhint_request = type { i32, i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.78, %struct.anon.79 }
%struct.anon.78 = type { ptr, i32 }
%struct.anon.79 = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra186_cpufreq_data = type { ptr, ptr, ptr }
%struct.tegra_bpmp = type { ptr, ptr, ptr, %struct.anon.74, %struct.spinlock, ptr, ptr, ptr, %struct.anon.75, %struct.list_head, %struct.spinlock, ptr, i32, %struct.reset_controller_dev, %struct.genpd_onecell_data, ptr }
%struct.anon.74 = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.anon.75 = type { ptr, ptr, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.tegra186_cpufreq_cluster = type { ptr, i32, i32 }
%struct.cpu_vhint_data = type { i32, i16, i16, i16, [80 x i16], i16, i16, i16, i16, i16, [328 x i16] }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_tegra186_cpufreq__241_286_tegra186_cpufreq_platform_driver_init6 = internal global ptr @tegra186_cpufreq_platform_driver_init, section ".initcall6.init", align 4
@tegra186_cpufreq_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra186_cpufreq_probe, ptr @tegra186_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra186_cpufreq_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra186_cpufreq_platform_driver_exit = internal global ptr @tegra186_cpufreq_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [64 x i8] c"tegra186_cpufreq.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [60 x i8] c"tegra186_cpufreq.description=NVIDIA Tegra186 cpufreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [55 x i8] c"tegra186_cpufreq.file=drivers/cpufreq/tegra186-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [32 x i8] c"tegra186_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra186-cpufreq\00", [47 x i8] zeroinitializer }, align 32
@tegra186_cpufreq_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-ccplex-cluster\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra186_cpus = internal constant { [6 x %struct.tegra186_cpufreq_cpu], [48 x i8] } { [6 x %struct.tegra186_cpufreq_cpu] [%struct.tegra186_cpufreq_cpu { i32 1, i32 393248 }, %struct.tegra186_cpufreq_cpu { i32 0, i32 458784 }, %struct.tegra186_cpufreq_cpu { i32 0, i32 458788 }, %struct.tegra186_cpufreq_cpu { i32 1, i32 393252 }, %struct.tegra186_cpufreq_cpu { i32 1, i32 393256 }, %struct.tegra186_cpufreq_cpu { i32 1, i32 393260 }], [48 x i8] zeroinitializer }, align 32
@tegra186_cpufreq_driver = internal global { %struct.cpufreq_driver, [48 x i8] } { %struct.cpufreq_driver { [16 x i8] c"tegra186\00\00\00\00\00\00\00\00", i16 40, ptr null, ptr @tegra186_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @tegra186_cpufreq_set_target, ptr null, ptr null, ptr null, ptr null, ptr @tegra186_cpufreq_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_generic_attr, i8 0, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@cpufreq_generic_attr = external dso_local global [0 x ptr], align 4
@___asan_gen_.1 = private unnamed_addr constant [33 x i8] c"tegra186_cpufreq_platform_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 278, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 280, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"tegra186_cpufreq_of_match\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 272, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"tegra186_cpus\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 27, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"tegra186_cpufreq_driver\00", align 1
@___asan_gen_.14 = private constant [38 x i8] c"../drivers/cpufreq/tegra186-cpufreq.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 118, i32 30 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_tegra186_cpufreq_platform_driver_exit, ptr @__initcall__kmod_tegra186_cpufreq__241_286_tegra186_cpufreq_platform_driver_init6, ptr @tegra186_cpufreq_platform_driver_exit, ptr @tegra186_cpufreq_platform_driver, ptr @.str, ptr @tegra186_cpufreq_of_match, ptr @tegra186_cpus, ptr @tegra186_cpufreq_driver], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_cpufreq_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_cpufreq_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_cpus to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_cpufreq_driver to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra186_cpufreq_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra186_cpufreq_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra186_cpufreq_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %req.i = alloca %struct.mrq_cpu_vhint_request, align 8
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %if.end

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %clusters = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clusters to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5.i.i, ptr %clusters, align 4
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup29_crit_edge, label %if.end6

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup29

if.end6:                                          ; preds = %if.end
  %cpus = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra186_cpus, ptr %cpus, align 4
  %call8 = tail call ptr @tegra_bpmp_get(ptr noundef %dev) #5
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup29

if.end12:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i55 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %dev.i = getelementptr inbounds %struct.tegra_bpmp, ptr %call8, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mrq_cpu_vhint_request, ptr %req.i, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 12
  br label %for.body

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call13 to i32
  br label %put_bpmp

for.cond:                                         ; preds = %init_vhint_table.exit
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.065 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clusters, align 4
  %arrayidx = getelementptr %struct.tegra186_cpufreq_cluster, ptr %11, i32 %i.065
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #5
  %12 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %phys.i, align 4, !annotation !29
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 836, ptr noundef nonnull %phys.i, i32 noundef 3264, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %init_vhint_table.exit.thread, label %if.end.i

init_vhint_table.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #5
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx, align 4
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %16 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys.i, align 4
  %18 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %req.i, align 8
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.065, ptr %7, align 4
  %20 = call ptr @memset(ptr %8, i32 0, i32 12)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 28, ptr %msg.i, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %req.i, ptr %6, align 4
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %5, align 4
  %call5.i = call i32 @tegra_bpmp_transfer(ptr noundef %call8, ptr noundef nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = inttoptr i32 %call5.i to ptr
  br label %init_vhint_table.exit

if.end9.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not.i = icmp eq i32 %26, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.end9.i.init_vhint_table.exit_crit_edge

if.end9.i.init_vhint_table.exit_crit_edge:        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_vhint_table.exit

if.end13.i:                                       ; preds = %if.end9.i
  %vfloor.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %vfloor.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %vfloor.i, align 1
  %vceil.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %vceil.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %vceil.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp.not162.i = icmp ugt i16 %28, %30
  br i1 %cmp.not162.i, label %if.end13.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %conv14.i = zext i16 %30 to i32
  %conv.i = zext i16 %28 to i32
  %ndiv_min.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %ndiv_min.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %ndiv_min.i, align 1
  %ndiv_max.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_rates.0166.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_rates.1.i, %cleanup.i.for.body.i_crit_edge ]
  %i.0163.i = phi i32 [ %conv.i, %for.body.lr.ph.i ], [ %inc37.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 4, i32 %i.0163.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %32)
  %cmp19.i = icmp ult i16 %34, %32
  br i1 %cmp19.i, label %for.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %35 = ptrtoint ptr %ndiv_max.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %ndiv_max.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp23.i = icmp ugt i16 %34, %36
  br i1 %cmp23.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end26.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end26.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0163.i)
  %cmp27.not.i = icmp eq i32 %i.0163.i, 0
  br i1 %cmp27.not.i, label %if.end26.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %sub.i = add nsw i32 %i.0163.i, -1
  %arrayidx31.i = getelementptr %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 4, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx31.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %38)
  %cmp33.i = icmp eq i16 %34, %38
  br i1 %cmp33.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end36.i:                                       ; preds = %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %inc.i = add i32 %num_rates.0166.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end36.i, %land.lhs.true.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %num_rates.1.i = phi i32 [ %inc.i, %if.end36.i ], [ %num_rates.0166.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %num_rates.0166.i, %for.body.i.cleanup.i_crit_edge ], [ %num_rates.0166.i, %land.lhs.true.i.cleanup.i_crit_edge ]
  %inc37.i = add nuw nsw i32 %i.0163.i, 1
  %exitcond.i = icmp eq i32 %i.0163.i, %conv14.i
  br i1 %exitcond.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end13.i.for.end.i_crit_edge
  %num_rates.0.lcssa.i = phi i32 [ 0, %if.end13.i.for.end.i_crit_edge ], [ %num_rates.1.i, %cleanup.i.for.end.i_crit_edge ]
  %add.i = add i32 %num_rates.0.lcssa.i, 1
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 12) #5
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %for.end.i.init_vhint_table.exit_crit_edge, label %devm_kcalloc.exit.i, !prof !30

for.end.i.init_vhint_table.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_vhint_table.exit

devm_kcalloc.exit.i:                              ; preds = %for.end.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %41, i32 noundef 3520) #5
  %tobool40.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool40.not.i, label %devm_kcalloc.exit.i.init_vhint_table.exit_crit_edge, label %if.end43.i

devm_kcalloc.exit.i.init_vhint_table.exit_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_vhint_table.exit

if.end43.i:                                       ; preds = %devm_kcalloc.exit.i
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %call.i.i, align 1
  %div.i = udiv i32 %43, 1000
  %ref_clk_khz.i = getelementptr %struct.tegra186_cpufreq_cluster, ptr %11, i32 %i.065, i32 1
  %44 = ptrtoint ptr %ref_clk_khz.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div.i, ptr %ref_clk_khz.i, align 4
  %pdiv.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %pdiv.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %pdiv.i, align 1
  %conv44.i = zext i16 %46 to i32
  %mdiv.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %mdiv.i, align 1
  %conv45.i = zext i16 %48 to i32
  %mul.i = mul nuw i32 %conv45.i, %conv44.i
  %div46.i = getelementptr %struct.tegra186_cpufreq_cluster, ptr %11, i32 %i.065, i32 2
  %49 = ptrtoint ptr %div46.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul.i, ptr %div46.i, align 4
  %50 = ptrtoint ptr %vfloor.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %vfloor.i, align 1
  %52 = ptrtoint ptr %vceil.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %vceil.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp52.not168.i = icmp ugt i16 %51, %53
  br i1 %cmp52.not168.i, label %if.end43.i.for.end100.i_crit_edge, label %for.body54.lr.ph.i

if.end43.i.for.end100.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end100.i

for.body54.lr.ph.i:                               ; preds = %if.end43.i
  %conv51.i = zext i16 %53 to i32
  %conv48.i = zext i16 %51 to i32
  %ndiv_min59.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %ndiv_min59.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %ndiv_min59.i, align 1
  %ndiv_max65.i = getelementptr inbounds %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 3
  br label %for.body54.i

for.body54.i:                                     ; preds = %cleanup93.i.for.body54.i_crit_edge, %for.body54.lr.ph.i
  %j.0172.i = phi i32 [ 0, %for.body54.lr.ph.i ], [ %j.1.i, %cleanup93.i.for.body54.i_crit_edge ]
  %i.1169.i = phi i32 [ %conv48.i, %for.body54.lr.ph.i ], [ %inc99.i, %cleanup93.i.for.body54.i_crit_edge ]
  %arrayidx57.i = getelementptr %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 4, i32 %i.1169.i
  %56 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %arrayidx57.i, align 1
  %conv58.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %55)
  %cmp61.i = icmp ult i16 %57, %55
  br i1 %cmp61.i, label %for.body54.i.cleanup93.i_crit_edge, label %lor.lhs.false63.i

for.body54.i.cleanup93.i_crit_edge:               ; preds = %for.body54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup93.i

lor.lhs.false63.i:                                ; preds = %for.body54.i
  %58 = ptrtoint ptr %ndiv_max65.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %ndiv_max65.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp67.i = icmp ugt i16 %57, %59
  br i1 %cmp67.i, label %lor.lhs.false63.i.cleanup93.i_crit_edge, label %if.end70.i

lor.lhs.false63.i.cleanup93.i_crit_edge:          ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup93.i

if.end70.i:                                       ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1169.i)
  %cmp71.not.i = icmp eq i32 %i.1169.i, 0
  br i1 %cmp71.not.i, label %if.end70.i.if.end82.i_crit_edge, label %land.lhs.true73.i

if.end70.i.if.end82.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

land.lhs.true73.i:                                ; preds = %if.end70.i
  %sub76.i = add nsw i32 %i.1169.i, -1
  %arrayidx77.i = getelementptr %struct.cpu_vhint_data, ptr %call.i.i, i32 0, i32 4, i32 %sub76.i
  %60 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %arrayidx77.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %61)
  %cmp79.i = icmp eq i16 %57, %61
  br i1 %cmp79.i, label %land.lhs.true73.i.cleanup93.i_crit_edge, label %land.lhs.true73.i.if.end82.i_crit_edge

land.lhs.true73.i.if.end82.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

land.lhs.true73.i.cleanup93.i_crit_edge:          ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup93.i

if.end82.i:                                       ; preds = %land.lhs.true73.i.if.end82.i_crit_edge, %if.end70.i.if.end82.i_crit_edge
  %shl.i = shl i32 %i.1169.i, 16
  %or85.i = or i32 %shl.i, %conv58.i
  %inc86.i = add i32 %j.0172.i, 1
  %driver_data.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 %j.0172.i, i32 1
  %62 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or85.i, ptr %driver_data.i, align 4
  %63 = ptrtoint ptr %ref_clk_khz.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ref_clk_khz.i, align 4
  %mul90.i = mul i32 %64, %conv58.i
  %65 = ptrtoint ptr %div46.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %div46.i, align 4
  %div92.i = udiv i32 %mul90.i, %66
  %frequency.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 %j.0172.i, i32 2
  %67 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %div92.i, ptr %frequency.i, align 4
  br label %cleanup93.i

cleanup93.i:                                      ; preds = %if.end82.i, %land.lhs.true73.i.cleanup93.i_crit_edge, %lor.lhs.false63.i.cleanup93.i_crit_edge, %for.body54.i.cleanup93.i_crit_edge
  %j.1.i = phi i32 [ %inc86.i, %if.end82.i ], [ %j.0172.i, %lor.lhs.false63.i.cleanup93.i_crit_edge ], [ %j.0172.i, %for.body54.i.cleanup93.i_crit_edge ], [ %j.0172.i, %land.lhs.true73.i.cleanup93.i_crit_edge ]
  %inc99.i = add nuw nsw i32 %i.1169.i, 1
  %exitcond175.i = icmp eq i32 %i.1169.i, %conv51.i
  br i1 %exitcond175.i, label %cleanup93.i.for.end100.i_crit_edge, label %cleanup93.i.for.body54.i_crit_edge

cleanup93.i.for.body54.i_crit_edge:               ; preds = %cleanup93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body54.i

cleanup93.i.for.end100.i_crit_edge:               ; preds = %cleanup93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end100.i

for.end100.i:                                     ; preds = %cleanup93.i.for.end100.i_crit_edge, %if.end43.i.for.end100.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end43.i.for.end100.i_crit_edge ], [ %j.1.i, %cleanup93.i.for.end100.i_crit_edge ]
  %frequency102.i = getelementptr %struct.cpufreq_frequency_table, ptr %call5.i.i.i, i32 %j.0.lcssa.i, i32 2
  %68 = ptrtoint ptr %frequency102.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -2, ptr %frequency102.i, align 4
  br label %init_vhint_table.exit

init_vhint_table.exit:                            ; preds = %for.end100.i, %devm_kcalloc.exit.i.init_vhint_table.exit_crit_edge, %for.end.i.init_vhint_table.exit_crit_edge, %if.end9.i.init_vhint_table.exit_crit_edge, %if.then7.i
  %table.0.i = phi ptr [ %24, %if.then7.i ], [ %call5.i.i.i, %for.end100.i ], [ inttoptr (i32 -22 to ptr), %if.end9.i.init_vhint_table.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.init_vhint_table.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end.i.init_vhint_table.exit_crit_edge ]
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %71 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phys.i, align 4
  call void @dma_free_attrs(ptr noundef %70, i32 noundef 836, ptr noundef nonnull %call.i.i, i32 noundef %72, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i) #5
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %table.0.i, ptr %arrayidx, align 4
  %cmp.i56 = icmp ugt ptr %table.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %init_vhint_table.exit.cleanup_crit_edge, label %for.cond

init_vhint_table.exit.cleanup_crit_edge:          ; preds = %init_vhint_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %init_vhint_table.exit.cleanup_crit_edge, %init_vhint_table.exit.thread
  %retval.0.i59 = phi ptr [ inttoptr (i32 -12 to ptr), %init_vhint_table.exit.thread ], [ %table.0.i, %init_vhint_table.exit.cleanup_crit_edge ]
  %74 = ptrtoint ptr %retval.0.i59 to i32
  br label %put_bpmp

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call.i, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @tegra186_cpufreq_driver, i32 0, i32 2), align 4
  %call28 = call i32 @cpufreq_register_driver(ptr noundef nonnull @tegra186_cpufreq_driver) #5
  br label %put_bpmp

put_bpmp:                                         ; preds = %for.end, %cleanup, %if.then16
  %err.2 = phi i32 [ %9, %if.then16 ], [ %74, %cleanup ], [ %call28, %for.end ]
  call void @tegra_bpmp_put(ptr noundef %call8) #5
  br label %cleanup29

cleanup29:                                        ; preds = %put_bpmp, %if.then10, %if.end.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ %2, %if.then10 ], [ %err.2, %put_bpmp ], [ -12, %entry.cleanup29_crit_edge ], [ -12, %if.end.cleanup29_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @tegra186_cpufreq_driver) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_bpmp_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_bpmp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_init(ptr nocapture noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #5
  %cpus = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpus, align 4
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr %struct.tegra186_cpufreq_cpu, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %clusters = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clusters, align 4
  %arrayidx1 = getelementptr %struct.tegra186_cpufreq_cluster, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %10 = ptrtoint ptr %freq_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %freq_table, align 4
  %transition_latency = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %transition_latency to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 300000, ptr %transition_latency, align 4
  %driver_data = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 39
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_set_target(ptr nocapture noundef readonly %policy, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #5
  %freq_table = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 20
  %0 = ptrtoint ptr %freq_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %freq_table, align 4
  %cpus = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpus, align 4
  %cpu = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 4
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %edvd_offset1 = getelementptr %struct.tegra186_cpufreq_cpu, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %edvd_offset1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %edvd_offset1, align 4
  %driver_data = getelementptr %struct.cpufreq_frequency_table, ptr %1, i32 %index, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %add.ptr2 = getelementptr i8, ptr %12, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %10) #5, !srcloc !32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra186_cpufreq_get(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cpufreq_get_driver_data() #5
  %call1 = tail call ptr @cpufreq_cpu_get(i32 noundef %cpu) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cpus = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpus, align 4
  %cpu2 = getelementptr inbounds %struct.cpufreq_policy, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu2, align 4
  %edvd_offset3 = getelementptr %struct.tegra186_cpufreq_cpu, ptr %1, i32 %3, i32 1
  %4 = ptrtoint ptr %edvd_offset3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edvd_offset3, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %9 = and i32 %8, -65536
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpus, align 4
  %13 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu2, align 4
  %arrayidx8 = getelementptr %struct.tegra186_cpufreq_cpu, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8, align 4
  %clusters = getelementptr inbounds %struct.tegra186_cpufreq_data, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %clusters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clusters, align 4
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %call1) #5
  %ref_clk_khz = getelementptr %struct.tegra186_cpufreq_cluster, ptr %18, i32 %16, i32 1
  %19 = ptrtoint ptr %ref_clk_khz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_clk_khz, align 4
  %mul = mul i32 %20, %10
  %div = getelementptr %struct.tegra186_cpufreq_cluster, ptr %18, i32 %16, i32 2
  %21 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %div, align 4
  %div10 = udiv i32 %mul, %22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div10, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_tegra186_cpufreq__241_286_tegra186_cpufreq_platform_driver_init6, !1, !"__initcall__kmod_tegra186_cpufreq__241_286_tegra186_cpufreq_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 286, i32 1}
!2 = !{ptr @__exitcall_tegra186_cpufreq_platform_driver_exit, !1, !"__exitcall_tegra186_cpufreq_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 288, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 289, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 290, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 280, i32 11}
!12 = !{ptr @tegra186_cpufreq_platform_driver, !13, !"tegra186_cpufreq_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 278, i32 31}
!14 = !{ptr @tegra186_cpus, !15, !"tegra186_cpus", i1 false, i1 false}
!15 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 27, i32 42}
!16 = !{ptr @tegra186_cpufreq_driver, !17, !"tegra186_cpufreq_driver", i1 false, i1 false}
!17 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 118, i32 30}
!18 = !{ptr @tegra186_cpufreq_of_match, !19, !"tegra186_cpufreq_of_match", i1 false, i1 false}
!19 = !{!"../drivers/cpufreq/tegra186-cpufreq.c", i32 272, i32 34}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2154242921}
!32 = !{i64 6550631}
!33 = !{i64 6551049}
!34 = !{i64 2154243632}
