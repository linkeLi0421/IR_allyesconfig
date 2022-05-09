; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/pwrseq_simple.c_pt.bc'
source_filename = "../drivers/mmc/core/pwrseq_simple.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmc_pwrseq_ops = type { ptr, ptr, ptr, ptr }
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
%struct.mmc_pwrseq_simple = type { %struct.mmc_pwrseq, i8, i32, i32, ptr, ptr }
%struct.mmc_pwrseq = type { ptr, ptr, %struct.list_head, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@__initcall__kmod_pwrseq_simple__267_163_mmc_pwrseq_simple_driver_init6 = internal global ptr @mmc_pwrseq_simple_driver_init, section ".initcall6.init", align 4
@mmc_pwrseq_simple_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmc_pwrseq_simple_probe, ptr @mmc_pwrseq_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmc_pwrseq_simple_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmc_pwrseq_simple_driver_exit = internal global ptr @mmc_pwrseq_simple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file268 = internal constant [50 x i8] c"pwrseq_simple.file=drivers/mmc/core/pwrseq_simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license269 = internal constant [29 x i8] c"pwrseq_simple.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwrseq_simple\00", [18 x i8] zeroinitializer }, align 32
@mmc_pwrseq_simple_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmc-pwrseq-simple\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ext_clock\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"post-power-on-delay-ms\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power-off-delay-us\00", [45 x i8] zeroinitializer }, align 32
@mmc_pwrseq_simple_ops = internal constant { %struct.mmc_pwrseq_ops, [16 x i8] } { %struct.mmc_pwrseq_ops { ptr @mmc_pwrseq_simple_pre_power_on, ptr @mmc_pwrseq_simple_post_power_on, ptr @mmc_pwrseq_simple_power_off, ptr null }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967258, i64 4294967294]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"mmc_pwrseq_simple_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 154, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 158, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"mmc_pwrseq_simple_of_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 105, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 120, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 124, i32 50 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 132, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 134, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"mmc_pwrseq_simple_ops\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../drivers/mmc/core/pwrseq_simple.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 99, i32 36 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file268, ptr @__UNIQUE_ID_license269, ptr @__exitcall_mmc_pwrseq_simple_driver_exit, ptr @__initcall__kmod_pwrseq_simple__267_163_mmc_pwrseq_simple_driver_init6, ptr @mmc_pwrseq_simple_driver_exit, ptr @mmc_pwrseq_simple_driver, ptr @.str, ptr @mmc_pwrseq_simple_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mmc_pwrseq_simple_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_pwrseq_simple_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_pwrseq_simple_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_pwrseq_simple_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmc_pwrseq_simple_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmc_pwrseq_simple_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #3
  %ext_clk = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %ext_clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %ext_clk, align 4
  %cmp.i = icmp ule ptr %call2, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call2 to i32
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -2 to ptr)
  %or.cond = or i1 %cmp.i, %cmp.not
  br i1 %or.cond, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 7) #3
  %reset_gpios = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %reset_gpios to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %reset_gpios, align 4
  %cmp.i57 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %land.lhs.true14, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

land.lhs.true14:                                  ; preds = %if.end10
  %3 = ptrtoint ptr %call11 to i32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %land.lhs.true14.cleanup_crit_edge [
    i32 -2, label %land.lhs.true14.if.end25_crit_edge
    i32 -38, label %land.lhs.true14.if.end25_crit_edge60
  ]

land.lhs.true14.if.end25_crit_edge60:             ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true14.if.end25_crit_edge, %land.lhs.true14.if.end25_crit_edge60, %if.end10.if.end25_crit_edge
  %post_power_on_delay_ms = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %call.i, i32 0, i32 2
  %call.i58 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %post_power_on_delay_ms, i32 noundef 1) #3
  %power_off_delay_us = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %call.i, i32 0, i32 3
  %call.i59 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %power_off_delay_us, i32 noundef 1) #3
  %dev29 = getelementptr inbounds %struct.mmc_pwrseq, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev29, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mmc_pwrseq_simple_ops, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.mmc_pwrseq, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call i32 @mmc_pwrseq_register(ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %land.lhs.true14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end25 ], [ -12, %entry.cleanup_crit_edge ], [ %1, %if.end.cleanup_crit_edge ], [ %3, %land.lhs.true14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mmc_pwrseq_unregister(ptr noundef %1) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_pwrseq_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_pre_power_on(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrseq1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pwrseq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrseq1, align 16
  %ext_clk = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext_clk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %clk_enabled = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %3) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %clk_enabled, align 4
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reset_gpios1.i = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %reset_gpios1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpios1.i, align 4
  %cmp.i.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.then.i

if.end.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.then.i:                                        ; preds = %if.end
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndescs.i, align 4
  %call2.i = tail call ptr @bitmap_alloc(i32 noundef %10, i32 noundef 3264) #3
  %tobool.not.i9 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i9, label %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.end.i10

if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.end.i10:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i23.i = add i32 %10, 31
  %11 = lshr i32 %sub.i23.i, 3
  %mul.i24.i = and i32 %11, 536870908
  %12 = call ptr @memset(ptr %call2.i, i32 255, i32 %mul.i24.i)
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %call7.i = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %10, ptr noundef %desc.i, ptr noundef %14, ptr noundef nonnull %call2.i) #3
  tail call void @bitmap_free(ptr noundef nonnull %call2.i) #3
  br label %mmc_pwrseq_simple_set_gpios_value.exit

mmc_pwrseq_simple_set_gpios_value.exit:           ; preds = %if.end.i10, %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, %if.end.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_post_power_on(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrseq1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pwrseq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrseq1, align 16
  %reset_gpios1.i = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset_gpios1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpios1.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.then.i

entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.then.i:                                        ; preds = %entry
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndescs.i, align 4
  %call2.i = tail call ptr @bitmap_alloc(i32 noundef %5, i32 noundef 3264) #3
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.end.i

if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i23.i = add i32 %5, 31
  %6 = lshr i32 %sub.i23.i, 3
  %mul.i24.i = and i32 %6, 536870908
  %7 = call ptr @memset(ptr %call2.i, i32 0, i32 %mul.i24.i)
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call7.i = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %5, ptr noundef %desc.i, ptr noundef %9, ptr noundef nonnull %call2.i) #3
  tail call void @bitmap_free(ptr noundef nonnull %call2.i) #3
  br label %mmc_pwrseq_simple_set_gpios_value.exit

mmc_pwrseq_simple_set_gpios_value.exit:           ; preds = %if.end.i, %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, %entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge
  %post_power_on_delay_ms = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %post_power_on_delay_ms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %post_power_on_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge, label %if.then

mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge: ; preds = %mmc_pwrseq_simple_set_gpios_value.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %mmc_pwrseq_simple_set_gpios_value.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef %11) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_power_off(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrseq1 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %pwrseq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrseq1, align 16
  %reset_gpios1.i = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reset_gpios1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpios1.i, align 4
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.then.i

entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.then.i:                                        ; preds = %entry
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndescs.i, align 4
  %call2.i = tail call ptr @bitmap_alloc(i32 noundef %5, i32 noundef 3264) #3
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, label %if.end.i

if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmc_pwrseq_simple_set_gpios_value.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i23.i = add i32 %5, 31
  %6 = lshr i32 %sub.i23.i, 3
  %mul.i24.i = and i32 %6, 536870908
  %7 = call ptr @memset(ptr %call2.i, i32 255, i32 %mul.i24.i)
  %desc.i = getelementptr inbounds %struct.gpio_descs, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call7.i = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %5, ptr noundef %desc.i, ptr noundef %9, ptr noundef nonnull %call2.i) #3
  tail call void @bitmap_free(ptr noundef nonnull %call2.i) #3
  br label %mmc_pwrseq_simple_set_gpios_value.exit

mmc_pwrseq_simple_set_gpios_value.exit:           ; preds = %if.end.i, %if.then.i.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge, %entry.mmc_pwrseq_simple_set_gpios_value.exit_crit_edge
  %power_off_delay_us = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %power_off_delay_us to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_off_delay_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge, label %if.then

mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge: ; preds = %mmc_pwrseq_simple_set_gpios_value.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %mmc_pwrseq_simple_set_gpios_value.exit
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl i32 %11, 1
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %mul, i32 noundef 2) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %mmc_pwrseq_simple_set_gpios_value.exit.if.end_crit_edge
  %ext_clk = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ext_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_clk, align 4
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %clk_enabled = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %clk_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end8_crit_edge, label %if.then5

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_disable(ptr noundef %13) #3
  tail call void @clk_unprepare(ptr noundef %13) #3
  %16 = ptrtoint ptr %clk_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %clk_enabled, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pwrseq_simple__267_163_mmc_pwrseq_simple_driver_init6, !1, !"__initcall__kmod_pwrseq_simple__267_163_mmc_pwrseq_simple_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 163, i32 1}
!2 = !{ptr @__exitcall_mmc_pwrseq_simple_driver_exit, !1, !"__exitcall_mmc_pwrseq_simple_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file268, !4, !"__UNIQUE_ID_file268", i1 false, i1 false}
!4 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 164, i32 1}
!5 = !{ptr @__UNIQUE_ID_license269, !4, !"__UNIQUE_ID_license269", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 158, i32 11}
!8 = !{ptr @mmc_pwrseq_simple_driver, !9, !"mmc_pwrseq_simple_driver", i1 false, i1 false}
!9 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 154, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 120, i32 38}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 124, i32 50}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 132, i32 32}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 134, i32 32}
!18 = !{ptr @mmc_pwrseq_simple_ops, !19, !"mmc_pwrseq_simple_ops", i1 false, i1 false}
!19 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 99, i32 36}
!20 = !{ptr @mmc_pwrseq_simple_of_match, !21, !"mmc_pwrseq_simple_of_match", i1 false, i1 false}
!21 = !{!"../drivers/mmc/core/pwrseq_simple.c", i32 105, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
