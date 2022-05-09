; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-bcm-iproc.c_pt.bc'
source_filename = "../drivers/pwm/pwm-bcm-iproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.iproc_pwmc = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_bcm_iproc__170_275_iproc_pwmc_driver_init6 = internal global ptr @iproc_pwmc_driver_init, section ".initcall6.init", align 4
@iproc_pwmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iproc_pwmc_probe, ptr @iproc_pwmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_iproc_pwmc_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iproc_pwmc_driver_exit = internal global ptr @iproc_pwmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [87 x i8] c"pwm_bcm_iproc.author=Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [52 x i8] c"pwm_bcm_iproc.description=Broadcom iProc PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"pwm_bcm_iproc.file=drivers/pwm/pwm-bcm-iproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"pwm_bcm_iproc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm-iproc-pwm\00", [18 x i8] zeroinitializer }, align 32
@bcm_iproc_pwmc_dt = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iproc_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @iproc_pwmc_apply, ptr @iproc_pwmc_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iproc_pwmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iproc_pwmc_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/pwm/pwm-bcm-iproc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_pwmc_probe._entry_ptr = internal global ptr @iproc_pwmc_probe._entry, section ".printk_index", align 4
@iproc_pwmc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_pwmc_probe._entry_ptr.8 = internal global ptr @iproc_pwmc_probe._entry.6, section ".printk_index", align 4
@iproc_pwmc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iproc_pwmc_probe._entry_ptr.11 = internal global ptr @iproc_pwmc_probe._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"iproc_pwmc_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 267, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 269, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"bcm_iproc_pwmc_dt\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 261, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"iproc_pwm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 191, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 220, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 227, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [31 x i8] c"../drivers/pwm/pwm-bcm-iproc.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 243, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_iproc_pwmc_driver_exit, ptr @__initcall__kmod_pwm_bcm_iproc__170_275_iproc_pwmc_driver_init6, ptr @iproc_pwmc_driver_exit, ptr @iproc_pwmc_probe._entry, ptr @iproc_pwmc_probe._entry.6, ptr @iproc_pwmc_probe._entry.9, ptr @iproc_pwmc_probe._entry_ptr, ptr @iproc_pwmc_probe._entry_ptr.11, ptr @iproc_pwmc_probe._entry_ptr.8, ptr @iproc_pwmc_driver, ptr @.str, ptr @bcm_iproc_pwmc_dt, ptr @iproc_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pwmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_iproc_pwmc_dt to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pwmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pwmc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pwmc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_pwmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iproc_pwmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @iproc_pwmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iproc_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %npwm, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.iproc_pwmc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.iproc_pwmc, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %clk, align 4
  %cmp.i91 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %7) #8
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %call.i92 = tail call i32 @clk_prepare(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.clk_prepare_enable.exit_crit_edge

if.end22.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end30_crit_edge, label %if.then3.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call13) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end22.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i92, %if.end22.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end28, label %clk_prepare_enable.exit.if.end30_crit_edge

clk_prepare_enable.exit.if.end30_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end28:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #8
  br label %cleanup

if.end30:                                         ; preds = %clk_prepare_enable.exit.if.end30_crit_edge, %if.end.i.if.end30_crit_edge
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !43
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %15 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3695.not = icmp eq i32 %16, 0
  br i1 %cmp3695.not, label %if.end30.do.body39_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.do.body39_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.097 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %value.096 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ %14, %if.end30.for.body_crit_edge ]
  %add = add i32 %i.097, 15
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %value.096, %neg
  %add37 = add i32 %i.097, 8
  %shl38 = shl nuw i32 1, %add37
  %or = or i32 %and, %shl38
  %inc = add nuw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.body.do.body39_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.body39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body39:                                        ; preds = %for.body.do.body39_crit_edge, %if.end30.do.body39_crit_edge
  %value.0.lcssa = phi i32 [ %14, %if.end30.do.body39_crit_edge ], [ %or, %for.body.do.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !46
  %call45 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %do.body39.cleanup_crit_edge

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call45) #8
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #5
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.body39.cleanup_crit_edge, %do.end28, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %10, %do.end ], [ %retval.0.i, %do.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %call45, %do.end50 ], [ %call45, %do.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.iproc_pwmc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pwmc_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.iproc_pwmc, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #5
  %conv = zext i32 %call1 to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end17.while.cond_crit_edge, %entry
  %prescale.0 = phi i32 [ 0, %entry ], [ %add, %if.end17.while.cond_crit_edge ]
  %add = add nuw nsw i32 %prescale.0, 1
  %mul = mul i32 %add, 1000000000
  %conv3 = zext i32 %mul to i64
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %mul5 = mul i64 %3, %conv
  %call6 = tail call i64 @div64_u64(i64 noundef %mul5, i64 noundef %conv3) #5
  %conv7 = trunc i64 %call6 to i32
  %4 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %duty_cycle, align 8
  %mul8 = mul i64 %5, %conv
  %call9 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv7)
  %cmp = icmp ult i32 %conv7, 2
  br i1 %cmp, label %while.cond.cleanup77_crit_edge, label %if.end

while.cond.cleanup77_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

if.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %conv7)
  %cmp12 = icmp ult i32 %conv7, 65536
  %6 = and i64 %call9, 4294901760
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp14 = icmp eq i64 %6, 0
  %or.cond = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond, label %while.end, label %if.end17

if.end17:                                         ; preds = %if.end
  %exitcond = icmp eq i32 %add, 64
  br i1 %exitcond, label %if.end17.cleanup77_crit_edge, label %if.end17.while.cond_crit_edge

if.end17.while.cond_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.end17.cleanup77_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

while.end:                                        ; preds = %if.end
  %conv7.le = trunc i64 %call6 to i32
  %conv10.le = trunc i64 %call9 to i32
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %7 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwpwm, align 8
  %base.i = getelementptr inbounds %struct.iproc_pwmc, ptr %chip, i32 0, i32 1
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !43
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %shl.i = shl nuw i32 1, %8
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #5, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %21 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwpwm, align 8
  %sub = sub i32 3, %22
  %mul26 = mul i32 %sub, 6
  %shl = shl i32 63, %mul26
  %neg = xor i32 %shl, -1
  %and = and i32 %20, %neg
  %shl30 = shl i32 %prescale.0, %mul26
  %or = or i32 %and, %shl30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr32 = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %23) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %conv7.le)
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwpwm, align 8
  %shl38 = shl i32 %30, 3
  %add39 = or i32 %shl38, 4
  %add.ptr40 = getelementptr i8, ptr %28, i32 %add39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %26) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv10.le)
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %34 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hwpwm, align 8
  %shl46 = shl i32 %35, 3
  %add47 = add i32 %shl46, 8
  %add.ptr48 = getelementptr i8, ptr %33, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %31) #5, !srcloc !46
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #5, !srcloc !43
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %40 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp56 = icmp eq i32 %41, 0
  %42 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hwpwm, align 8
  %add60 = add i32 %43, 8
  %shl61 = shl nuw i32 1, %add60
  %or62 = or i32 %shl61, %39
  %neg66 = xor i32 %shl61, -1
  %and67 = and i32 %39, %neg66
  %value.0 = select i1 %cmp56, i32 %or62, i32 %and67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #5, !srcloc !46
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %47 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %while.end.cleanup77_crit_edge, label %if.then74

while.end.cleanup77_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup77

if.then74:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hwpwm, align 8
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #5, !srcloc !43
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %shl.i115 = shl nuw i32 1, %50
  %or.i = or i32 %54, %shl.i115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #5, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #5
  br label %cleanup77

cleanup77:                                        ; preds = %if.then74, %while.end.cleanup77_crit_edge, %if.end17.cleanup77_crit_edge, %while.cond.cleanup77_crit_edge
  %retval.2 = phi i32 [ 0, %if.then74 ], [ 0, %while.end.cleanup77_crit_edge ], [ -22, %while.cond.cleanup77_crit_edge ], [ -22, %if.end17.cleanup77_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_pwmc_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.iproc_pwmc, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !43
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool.not to i8
  %6 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select, ptr %6, align 4
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %add = add i32 %9, 8
  %10 = xor i32 %3, -1
  %11 = lshr i32 %10, %add
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %13, align 8
  %clk = getelementptr inbounds %struct.iproc_pwmc, ptr %chip, i32 0, i32 2
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  %call13 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then15, label %if.end16

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %state, align 8
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %call13 to i64
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !43
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %22 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwpwm, align 8
  %sub = sub i32 3, %23
  %mul = mul i32 %sub, 6
  %shr = lshr i32 %21, %mul
  %and25 = and i32 %shr, 63
  %24 = mul i32 %and25, 1000000000
  %mul27 = add i32 %24, 1000000000
  %conv28 = zext i32 %mul27 to i64
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %shl33 = shl i32 %23, 3
  %add34 = or i32 %shl33, 4
  %add.ptr35 = getelementptr i8, ptr %26, i32 %add34
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %28 = and i32 %27, -65536
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %conv40 = zext i32 %29 to i64
  %mul41 = mul nuw nsw i64 %conv28, %conv40
  %call42 = tail call i64 @div64_u64(i64 noundef %mul41, i64 noundef %conv) #5
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %call42, ptr %state, align 8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %33 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hwpwm, align 8
  %shl48 = shl i32 %34, 3
  %add49 = add i32 %shl48, 8
  %add.ptr50 = getelementptr i8, ptr %32, i32 %add49
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %36 = and i32 %35, -65536
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %conv55 = zext i32 %37 to i64
  %mul56 = mul nuw nsw i64 %conv55, %conv28
  %call57 = tail call i64 @div64_u64(i64 noundef %mul56, i64 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then15
  %call57.sink = phi i64 [ 0, %if.then15 ], [ %call57, %if.end16 ]
  %38 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call57.sink, ptr %38, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pwm_bcm_iproc__170_275_iproc_pwmc_driver_init6, !1, !"__initcall__kmod_pwm_bcm_iproc__170_275_iproc_pwmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 275, i32 1}
!2 = !{ptr @__exitcall_iproc_pwmc_driver_exit, !1, !"__exitcall_iproc_pwmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 278, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 269, i32 11}
!12 = !{ptr @iproc_pwmc_driver, !13, !"iproc_pwmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 267, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 220, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @iproc_pwmc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @iproc_pwmc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 227, i32 3}
!24 = !{ptr @iproc_pwmc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iproc_pwmc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 243, i32 3}
!28 = !{ptr @iproc_pwmc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @iproc_pwmc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @iproc_pwm_ops, !31, !"iproc_pwm_ops", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 191, i32 29}
!32 = !{ptr @bcm_iproc_pwmc_dt, !33, !"bcm_iproc_pwmc_dt", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-bcm-iproc.c", i32 261, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 3075466}
!44 = !{i64 2152537855}
!45 = !{i64 2152538101}
!46 = !{i64 3075048}
!47 = !{i64 2152527918}
!48 = !{i64 2152528150}
!49 = !{i64 2152531382}
!50 = !{i64 2152531811}
!51 = !{i64 2152532263}
!52 = !{i64 2152532742}
!53 = !{i64 2152533427}
!54 = !{i64 2152533690}
!55 = !{i8 0, i8 2}
!56 = !{i64 2152527010}
!57 = !{i64 2152527242}
!58 = !{i64 2152528826}
!59 = !{i64 2152529529}
!60 = !{i64 2152530224}
!61 = !{i64 2152530845}
