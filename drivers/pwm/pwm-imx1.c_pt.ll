; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-imx1.c_pt.bc'
source_filename = "../drivers/pwm/pwm-imx1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pwm_imx1_chip = type { ptr, ptr, ptr, %struct.pwm_chip }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }

@__initcall__kmod_pwm_imx1__183_172_pwm_imx1_driver_init6 = internal global ptr @pwm_imx1_driver_init, section ".initcall6.init", align 4
@pwm_imx1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_imx1_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_imx1_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_imx1_driver_exit = internal global ptr @pwm_imx1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [35 x i8] c"pwm_imx1.file=drivers/pwm/pwm-imx1\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [24 x i8] c"pwm_imx1.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author186 = internal constant [54 x i8] c"pwm_imx1.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwm-imx1\00", [23 x i8] zeroinitializer }, align 32
@pwm_imx1_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"getting ipg clock failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get peripheral clock\0A\00", [32 x i8] zeroinitializer }, align 32
@pwm_imx1_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pwm_imx1_config, ptr null, ptr @pwm_imx1_enable, ptr @pwm_imx1_disable }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"pwm_imx1_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 165, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 167, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"pwm_imx1_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 130, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 144, i32 42 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 147, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 149, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 152, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"pwm_imx1_ops\00", align 1
@___asan_gen_.27 = private constant [26 x i8] c"../drivers/pwm/pwm-imx1.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 123, i32 29 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_pwm_imx1_driver_exit, ptr @__initcall__kmod_pwm_imx1__183_172_pwm_imx1_driver_init6, ptr @pwm_imx1_driver_exit, ptr @pwm_imx1_driver, ptr @.str, ptr @pwm_imx1_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pwm_imx1_ops], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx1_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx1_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_imx1_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_imx1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_imx1_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx1_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  %clk_per = getelementptr inbounds %struct.pwm_imx1_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %clk_per, align 4
  %cmp.i55 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call12 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %chip = getelementptr inbounds %struct.pwm_imx1_chip, ptr %call.i, i32 0, i32 3
  %ops = getelementptr inbounds %struct.pwm_imx1_chip, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pwm_imx1_ops, ptr %ops, align 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %chip, align 4
  %npwm = getelementptr inbounds %struct.pwm_imx1_chip, ptr %call.i, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %npwm, align 4
  %call25 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %mmio_base = getelementptr inbounds %struct.pwm_imx1_chip, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %mmio_base, align 4
  %cmp.i56 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef %chip) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.then15, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then5 ], [ %call19, %if.then15 ], [ %8, %if.then28 ], [ %call34, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx1_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %mul = mul i32 %3, %duty_ns
  %div = udiv i32 %mul, %period_ns
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %sub = sub i32 %3, %div
  %4 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %5 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio_base, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #4, !srcloc !36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx1_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -12
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pwm_imx1_clk_prepare_enable.exit_crit_edge

entry.pwm_imx1_clk_prepare_enable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %pwm_imx1_clk_prepare_enable.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %clk_per.i = getelementptr i8, ptr %chip, i32 -8
  %2 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per.i, align 4
  %call.i12.i = tail call i32 @clk_prepare(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.end.i16.i:                                     ; preds = %if.end.i
  %call1.i14.i = tail call i32 @clk_enable(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool2.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool2.not.i15.i, label %if.end.i16.i.if.end_crit_edge, label %if.then3.i17.i

if.end.i16.i.if.end_crit_edge:                    ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3.i17.i:                                   ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %3) #4
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then3.i17.i, %if.end.i.if.then3.i_crit_edge
  %retval.0.i18.ph.i = phi i32 [ %call1.i14.i, %if.then3.i17.i ], [ %call.i12.i, %if.end.i.if.then3.i_crit_edge ]
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then3.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %5, %if.then3.i ], [ %1, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %retval.0.i18.ph.i, %if.then3.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #4
  br label %pwm_imx1_clk_prepare_enable.exit

pwm_imx1_clk_prepare_enable.exit:                 ; preds = %cleanup.sink.split.i, %entry.pwm_imx1_clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.pwm_imx1_clk_prepare_enable.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %pwm_imx1_clk_prepare_enable.exit.cleanup_crit_edge, label %pwm_imx1_clk_prepare_enable.exit.if.end_crit_edge

pwm_imx1_clk_prepare_enable.exit.if.end_crit_edge: ; preds = %pwm_imx1_clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pwm_imx1_clk_prepare_enable.exit.cleanup_crit_edge: ; preds = %pwm_imx1_clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %pwm_imx1_clk_prepare_enable.exit.if.end_crit_edge, %if.end.i16.i.if.end_crit_edge
  %mmio_base = getelementptr i8, ptr %chip, i32 -4
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %9 = or i32 %8, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #4, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pwm_imx1_clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i, %pwm_imx1_clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_imx1_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_base = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %3 = and i32 %2, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #4, !srcloc !36
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -12
  %clk_per.i = getelementptr i8, ptr %chip, i32 -8
  %6 = ptrtoint ptr %clk_per.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_per.i, align 4
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_pwm_imx1__183_172_pwm_imx1_driver_init6, !1, !"__initcall__kmod_pwm_imx1__183_172_pwm_imx1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-imx1.c", i32 172, i32 1}
!2 = !{ptr @__exitcall_pwm_imx1_driver_exit, !1, !"__exitcall_pwm_imx1_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file184, !4, !"__UNIQUE_ID_file184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-imx1.c", i32 174, i32 1}
!5 = !{ptr @__UNIQUE_ID_license185, !4, !"__UNIQUE_ID_license185", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author186, !7, !"__UNIQUE_ID_author186", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-imx1.c", i32 175, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-imx1.c", i32 167, i32 11}
!10 = !{ptr @pwm_imx1_driver, !11, !"pwm_imx1_driver", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-imx1.c", i32 165, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-imx1.c", i32 144, i32 42}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-imx1.c", i32 147, i32 10}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-imx1.c", i32 149, i32 42}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-imx1.c", i32 152, i32 10}
!20 = !{ptr @pwm_imx1_ops, !21, !"pwm_imx1_ops", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-imx1.c", i32 123, i32 29}
!22 = !{ptr @pwm_imx1_dt_ids, !23, !"pwm_imx1_dt_ids", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-imx1.c", i32 130, i32 34}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 3103666}
!34 = !{i64 2152995960}
!35 = !{i64 2152996187}
!36 = !{i64 3103248}
!37 = !{i64 2152998126}
!38 = !{i64 2152998433}
!39 = !{i64 2153000366}
!40 = !{i64 2153000673}
