; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panfrost/panfrost_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_devfreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.88, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.88 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"More than 1 supply is not supported yet\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Couldn't set OPP regulators\0A\00", [59 x i8] zeroinitializer }, align 32
@panfrost_devfreq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pfdevfreq->lock\00", [47 x i8] zeroinitializer }, align 32
@panfrost_devfreq_profile = internal global { %struct.devfreq_dev_profile, [56 x i8] } { %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @panfrost_devfreq_target, ptr @panfrost_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"simple_ondemand\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Couldn't initialize GPU devfreq\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register cooling device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/panfrost/panfrost_devfreq.c\00", [52 x i8] zeroinitializer }, align 32
@panfrost_devfreq_get_dev_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.8, ptr @.str.11, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"panfrost\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"panfrost_devfreq_get_dev_status\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"busy %lu total %lu %lu %% freq %lu MHz\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967277]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 100, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 110, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 124, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"panfrost_devfreq_profile\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 78, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 145, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 148, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 155, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 221, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [47 x i8] c"../drivers/gpu/drm/panfrost/panfrost_devfreq.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 70, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @panfrost_devfreq_init.__key, ptr @.str.4, ptr @panfrost_devfreq_profile, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_devfreq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panfrost_devfreq_profile to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @panfrost_devfreq_init(ptr noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  %cur_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_freq) #3
  %pdev = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %pfdevfreq2 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  %comp = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 12
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply_names = getelementptr inbounds %struct.panfrost_compatible, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %supply_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supply_names, align 4
  %call = tail call i32 @devm_pm_opp_set_regulators(ptr noundef %dev1, ptr noundef %7, i32 noundef %5) #3
  %8 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then10 [
    i32 0, label %if.end.if.end13_crit_edge
    i32 -19, label %if.end.if.end13_crit_edge80
    i32 -517, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.if.end13_crit_edge80:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge80
  %call14 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call14)
  %cmp17 = icmp eq i32 %call14, -19
  %spec.store.select = select i1 %cmp17, i32 0, i32 %call14
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %opp_of_table_added = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 3
  %9 = ptrtoint ptr %opp_of_table_added to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %opp_of_table_added, align 8
  %lock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @panfrost_devfreq_init.__key, i16 noundef signext 3) #3
  %busy_time.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 4
  %10 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #3
  %time_last_update.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 6
  %11 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %clock = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 4
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clock, align 8
  %call22 = tail call i32 @clk_get_rate(ptr noundef %13) #3
  %14 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call22, ptr %cur_freq, align 4
  %call23 = call ptr @devfreq_recommended_opp(ptr noundef %dev1, ptr noundef nonnull %cur_freq, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_freq, align 4
  store i32 %17, ptr @panfrost_devfreq_profile, align 4
  call void @dev_pm_opp_put(ptr noundef %call23) #3
  %gov_data = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 2
  %18 = ptrtoint ptr %gov_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 45, ptr %gov_data, align 8
  %downdifferential = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 2, i32 1
  %19 = ptrtoint ptr %downdifferential to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %downdifferential, align 4
  %call30 = call ptr @devm_devfreq_add_device(ptr noundef %dev1, ptr noundef nonnull @panfrost_devfreq_profile, ptr noundef nonnull @.str.5, ptr noundef %gov_data) #3
  %cmp.i78 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #3
  %20 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %pfdevfreq2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call30, ptr %pfdevfreq2, align 8
  %call36 = call ptr @devfreq_cooling_em_register(ptr noundef %call30, ptr noundef null) #3
  %cmp.i79 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #3
  br label %cleanup

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %cooling39 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 1
  %22 = ptrtoint ptr %cooling39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call36, ptr %cooling39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then38, %if.then32, %if.then25, %if.then16, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %spec.store.select, %if.then16 ], [ %15, %if.then25 ], [ %20, %if.then32 ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then10 ], [ 0, %if.else ], [ 0, %if.then38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_freq) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_cooling_em_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_fini(ptr nocapture noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cooling = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %cooling to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cooling, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @devfreq_cooling_unregister(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %cooling to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cooling, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_resume(ptr nocapture noundef %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdevfreq1 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  %0 = ptrtoint ptr %pfdevfreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdevfreq1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %busy_time.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 4
  %2 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i = tail call i64 @ktime_get() #3
  %time_last_update.i = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27, i32 6
  %3 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %4 = ptrtoint ptr %pfdevfreq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfdevfreq1, align 8
  %call = tail call i32 @devfreq_resume_device(ptr noundef %5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_suspend(ptr nocapture noundef readonly %pfdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pfdevfreq1 = getelementptr inbounds %struct.panfrost_device, ptr %pfdev, i32 0, i32 27
  %0 = ptrtoint ptr %pfdevfreq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdevfreq1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @devfreq_suspend_device(ptr noundef nonnull %1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_record_busy(ptr noundef %pfdevfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfdevfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdevfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %lock = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %call.i = tail call i64 @ktime_get() #3
  %time_last_update.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 6
  %2 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 7
  %4 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  %sub.i = sub i64 %call.i, %3
  %idle_time.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 5
  %busy_time.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 4
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %6 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %7
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %8 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %inc = add i32 %5, 1
  %9 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %busy_count.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_record_idle(ptr noundef %pfdevfreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfdevfreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfdevfreq, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %call.i = tail call i64 @ktime_get() #3
  %time_last_update.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 6
  %2 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 7
  %4 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  %sub.i = sub i64 %call.i, %3
  %idle_time.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 5
  %busy_time.i = getelementptr inbounds %struct.panfrost_devfreq, ptr %pfdevfreq, i32 0, i32 4
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %6 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %7
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %8 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %dec = add i32 %5, -1
  %9 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp slt i32 %dec, 0
  br i1 %cmp5, label %do.end18, label %do.body1.if.end24_crit_edge, !prof !33

do.body1.if.end24_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

do.end18:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 221, i32 noundef 9, ptr noundef null) #3
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %do.body1.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_devfreq_target(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devfreq_recommended_opp(ptr noundef %dev, ptr noundef %freq, i32 noundef %flags) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dev_pm_opp_put(ptr noundef %call) #3
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %freq, align 4
  %call3 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panfrost_devfreq_get_dev_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 8
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #3
  %current_frequency = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 2
  %4 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %current_frequency, align 4
  %lock = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %call.i = tail call i64 @ktime_get() #3
  %time_last_update.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27, i32 6
  %5 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time_last_update.i, align 8
  %busy_count.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27, i32 7
  %7 = ptrtoint ptr %busy_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %busy_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  %sub.i = sub i64 %call.i, %6
  %idle_time.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27, i32 5
  %busy_time.i = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 27, i32 4
  %idle_time.sink11.i = select i1 %cmp.i, ptr %busy_time.i, ptr %idle_time.i
  %9 = ptrtoint ptr %idle_time.sink11.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %idle_time.sink11.i, align 8
  %add2.i = add i64 %sub.i, %10
  store i64 %add2.i, ptr %idle_time.sink11.i, align 8
  %11 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %time_last_update.i, align 8
  %12 = ptrtoint ptr %busy_time.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %busy_time.i, align 8
  %14 = ptrtoint ptr %idle_time.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %idle_time.i, align 8
  %add = add i64 %15, %13
  %conv9 = trunc i64 %add to i32
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv9, ptr %status, align 4
  %17 = load i64, ptr %busy_time.i, align 8
  %conv12 = trunc i64 %17 to i32
  %busy_time13 = getelementptr inbounds %struct.devfreq_dev_status, ptr %status, i32 0, i32 1
  %18 = ptrtoint ptr %busy_time13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv12, ptr %busy_time13, align 4
  %19 = call ptr @memset(ptr %busy_time.i, i32 0, i32 16)
  %call.i47 = tail call i64 @ktime_get() #3
  %20 = ptrtoint ptr %time_last_update.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i47, ptr %time_last_update.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @panfrost_devfreq_get_dev_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@panfrost_devfreq_get_dev_status, %if.then)) #3
          to label %do.end30 [label %if.then], !srcloc !34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %23 = ptrtoint ptr %busy_time13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busy_time13, align 4
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %div = udiv i32 %26, 100
  %div25 = udiv i32 %24, %div
  %27 = ptrtoint ptr %current_frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %current_frequency, align 4
  %div28 = udiv i32 %28, 1000000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @panfrost_devfreq_get_dev_status.__UNIQUE_ID_ddebug298, ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef %26, i32 noundef %div25, i32 noundef %div28) #3
  br label %do.end30

do.end30:                                         ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 110, i32 5}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @panfrost_devfreq_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 124, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 145, i32 8}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 148, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 155, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 221, i32 2}
!17 = !{ptr @panfrost_devfreq_profile, !18, !"panfrost_devfreq_profile", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 78, i32 35}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/panfrost/panfrost_devfreq.c", i32 70, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @panfrost_devfreq_get_dev_status.__UNIQUE_ID_ddebug298, !20, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2148725343, i64 2148725348, i64 2148725361, i64 2148725405, i64 2148725439, i64 2148725460}
