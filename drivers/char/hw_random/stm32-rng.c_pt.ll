; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/stm32-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/stm32-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.stm32_rng_private = type { %struct.hwrng, ptr, ptr, ptr, i8 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_stm32_rng__184_215_stm32_rng_driver_init6 = internal global ptr @stm32_rng_driver_init, section ".initcall6.init", align 4
@stm32_rng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_rng_probe, ptr @stm32_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_rng_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rng_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_rng_driver_exit = internal global ptr @stm32_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file185 = internal constant [48 x i8] c"stm32_rng.file=drivers/char/hw_random/stm32-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [22 x i8] c"stm32_rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [62 x i8] c"stm32_rng.author=Daniel Thompson <daniel.thompson@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [65 x i8] c"stm32_rng.description=STMicroelectronics STM32 RNG device driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-rng\00", [22 x i8] zeroinitializer }, align 32
@stm32_rng_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_rng_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_rng_runtime_suspend, ptr @stm32_rng_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-error-detect\00", [45 x i8] zeroinitializer }, align 32
@stm32_rng_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 58, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: timeout %x!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_rng_read\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/hw_random/stm32-rng.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_rng_read._entry_ptr = internal global ptr @stm32_rng_read._entry, section ".printk_index", align 4
@stm32_rng_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad RNG status - %x\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"stm32_rng_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 205, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 207, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"stm32_rng_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 197, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"stm32_rng_pm_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 189, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 144, i32 40 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 57, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [38 x i8] c"../drivers/char/hw_random/stm32-rng.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 63, i32 8 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_stm32_rng_driver_exit, ptr @__initcall__kmod_stm32_rng__184_215_stm32_rng_driver_init6, ptr @stm32_rng_driver_exit, ptr @stm32_rng_read._entry, ptr @stm32_rng_read._entry_ptr, ptr @stm32_rng_driver, ptr @.str, ptr @stm32_rng_match, ptr @stm32_rng_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rng_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rng_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rng_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_rng_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_rng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %2 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #6
  %base = getelementptr inbounds %struct.stm32_rng_private, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.stm32_rng_private, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %clk, align 4
  %cmp.i74 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.stm32_rng_private, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i75 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.end21.if.end31_crit_edge, label %if.then26

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 @reset_control_assert(ptr noundef %call.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 429496) #6
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  %call30 = call i32 @reset_control_deassert(ptr noundef %10) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end21.if.end31_crit_edge
  %call.i76 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i76, null
  %ced = getelementptr inbounds %struct.stm32_rng_private, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool.i to i8
  %11 = ptrtoint ptr %ced to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %ced, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call33 = call ptr @dev_driver_string(ptr noundef %dev1) #6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %call.i, align 4
  %read = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @stm32_rng_read, ptr %read, align 4
  %15 = ptrtoint ptr %dev1 to i32
  %priv36 = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %priv36 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %priv36, align 4
  %quality = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 900, ptr %quality, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 100) #6
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call39 = call i32 @devm_hwrng_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then10 ], [ %6, %if.then18 ], [ %call39, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_remove(ptr noundef %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv3 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv3, align 4
  %2 = inttoptr i32 %1 to ptr
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %max)
  %cmp162 = icmp ugt i32 %max, 4
  br i1 %cmp162, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.stm32_rng_private, ptr %rng, i32 0, i32 1
  %wait.not = xor i1 %wait, true
  br label %while.body

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %while.body.lr.ph
  %data.addr.0165 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr100, %if.end94.while.body_crit_edge ]
  %max.addr.0164 = phi i32 [ %max, %while.body.lr.ph ], [ %sub, %if.end94.while.body_crit_edge ]
  %retval1.0163 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end94.while.body_crit_edge ]
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !40
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  %brmerge = or i1 %tobool.not, %wait.not
  %.mux = select i1 %tobool.not, i32 %6, i32 0
  br i1 %brmerge, label %while.body.if.end43_crit_edge, label %if.then

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then:                                          ; preds = %while.body
  %call8 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call8, 50000000
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr12160 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12160) #6, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool15.not161 = icmp eq i32 %9, 0
  br i1 %tobool15.not161, label %if.then.land.lhs.true18_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.land.lhs.true18_crit_edge:                ; preds = %if.then
  br label %land.lhs.true18

land.lhs.true18:                                  ; preds = %cond.false.land.lhs.true18_crit_edge, %if.then.land.lhs.true18_crit_edge
  %call19 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then22, label %cond.false

if.then22:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !40
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !40
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %cond.false.land.lhs.true18_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true18_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true18

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then22, %if.then.for.end_crit_edge
  %.lcssa159.sink = phi i32 [ %12, %if.then22 ], [ %9, %if.then.for.end_crit_edge ], [ %16, %cond.false.for.end_crit_edge ]
  %17 = tail call i32 @llvm.bswap.i32(i32 %.lcssa159.sink)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa159.sink)
  %tobool37.not = icmp eq i32 %.lcssa159.sink, 0
  br i1 %tobool37.not, label %if.then45.thread, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then45.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priv3, align 4
  %20 = inttoptr i32 %19 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 0) #9
  br label %while.end

if.end43:                                         ; preds = %for.end.if.end43_crit_edge, %while.body.if.end43_crit_edge
  %retval1.1 = phi i32 [ %retval1.0163, %while.body.if.end43_crit_edge ], [ 0, %for.end.if.end43_crit_edge ]
  %sr.1 = phi i32 [ %.mux, %while.body.if.end43_crit_edge ], [ %17, %for.end.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sr.1)
  %cmp44.not = icmp eq i32 %sr.1, 1
  br i1 %cmp44.not, label %if.end94, label %if.then45

if.then45:                                        ; preds = %if.end43
  %and = and i32 %sr.1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.then45.while.end_crit_edge, label %land.rhs

if.then45.while.end_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.rhs:                                         ; preds = %if.then45
  %.b140 = load i1, ptr @stm32_rng_read.__already_done, align 1
  br i1 %.b140, label %land.rhs.if.then90_crit_edge, label %if.then55, !prof !41

land.rhs.if.then90_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then90

if.then55:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @stm32_rng_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %sr.1) #6
  br label %if.then90

if.then90:                                        ; preds = %if.then55, %land.rhs.if.then90_crit_edge
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr92 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 0) #6, !srcloc !42
  br label %while.end

if.end94:                                         ; preds = %if.end43
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr97 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #6, !srcloc !40
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %data.addr.0165 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %data.addr.0165, align 4
  %add = add i32 %retval1.1, 4
  %add.ptr100 = getelementptr i8, ptr %data.addr.0165, i32 4
  %sub = add i32 %max.addr.0164, -4
  %cmp = icmp ugt i32 %sub, 4
  br i1 %cmp, label %if.end94.while.body_crit_edge, label %if.end94.while.end_crit_edge

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end94.while.end_crit_edge, %if.then90, %if.then45.while.end_crit_edge, %if.then45.thread, %entry.while.end_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %if.then90 ], [ %retval1.1, %if.then45.while.end_crit_edge ], [ -110, %if.then45.thread ], [ 0, %entry.while.end_crit_edge ], [ %add, %if.end94.while.end_crit_edge ]
  %28 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %priv3, align 4
  %30 = inttoptr i32 %29 to ptr
  %call.i144 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 12, i32 22
  %31 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store volatile i64 %call.i144, ptr %last_busy.i, align 8
  %32 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priv3, align 4
  %34 = inttoptr i32 %33 to ptr
  %call.i145 = tail call i32 @__pm_runtime_suspend(ptr noundef %34, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2)
  %tobool106.not = icmp eq i32 %retval1.2, 0
  %35 = and i1 %tobool106.not, %wait
  %cond111 = select i1 %35, i32 -5, i32 %retval1.2
  ret i32 %cond111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.stm32_rng_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #6, !srcloc !42
  %clk.i = getelementptr inbounds %struct.stm32_rng_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_rng_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.stm32_rng_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.stm32_rng_init.exit_crit_edge

entry.stm32_rng_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_rng_init.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %stm32_rng_init.exit

if.end.i:                                         ; preds = %if.end.i.i
  %ced.i = getelementptr inbounds %struct.stm32_rng_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ced.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ced.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  %base4.i = getelementptr inbounds %struct.stm32_rng_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base4.i, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 67108864) #6, !srcloc !42
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 603979776) #6, !srcloc !42
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %8 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base4.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !42
  br label %stm32_rng_init.exit

stm32_rng_init.exit:                              ; preds = %if.end6.i, %if.then3.i.i, %entry.stm32_rng_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.stm32_rng_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_stm32_rng__184_215_stm32_rng_driver_init6, !1, !"__initcall__kmod_stm32_rng__184_215_stm32_rng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 215, i32 1}
!2 = !{ptr @__exitcall_stm32_rng_driver_exit, !1, !"__exitcall_stm32_rng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file185, !4, !"__UNIQUE_ID_file185", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 217, i32 1}
!5 = !{ptr @__UNIQUE_ID_license186, !4, !"__UNIQUE_ID_license186", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author187, !7, !"__UNIQUE_ID_author187", i1 false, i1 false}
!7 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 218, i32 1}
!8 = !{ptr @__UNIQUE_ID_description188, !9, !"__UNIQUE_ID_description188", i1 false, i1 false}
!9 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 219, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 207, i32 11}
!12 = !{ptr @stm32_rng_driver, !13, !"stm32_rng_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 205, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 144, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 57, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_rng_read._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_rng_read._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 63, i32 8}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_rng_match, !28, !"stm32_rng_match", i1 false, i1 false}
!28 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 197, i32 34}
!29 = !{ptr @stm32_rng_pm_ops, !30, !"stm32_rng_pm_ops", i1 false, i1 false}
!30 = !{!"../drivers/char/hw_random/stm32-rng.c", i32 189, i32 32}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 3079667}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 3079249}
!43 = !{i8 0, i8 2}
