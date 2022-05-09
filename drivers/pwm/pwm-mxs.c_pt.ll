; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-mxs.c_pt.bc'
source_filename = "../drivers/pwm/pwm-mxs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mxs_pwm_chip = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_mxs__183_175_mxs_pwm_driver_init6 = internal global ptr @mxs_pwm_driver_init, section ".initcall6.init", align 4
@mxs_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_pwm_driver_exit = internal global ptr @mxs_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [31 x i8] c"pwm_mxs.alias=platform:mxs-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [48 x i8] c"pwm_mxs.author=Shawn Guo <shawn.guo@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [45 x i8] c"pwm_mxs.description=Freescale MXS PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [33 x i8] c"pwm_mxs.file=drivers/pwm/pwm-mxs\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [23 x i8] c"pwm_mxs.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs-pwm\00", [24 x i8] zeroinitializer }, align 32
@mxs_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mxs_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @mxs_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,pwm-number\00", [17 x i8] zeroinitializer }, align 32
@mxs_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get pwm number: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_pwm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/pwm/pwm-mxs.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_pwm_probe._entry_ptr = internal global ptr @mxs_pwm_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to reset PWM\0A\00", [43 x i8] zeroinitializer }, align 32
@mxs_pwm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add pwm chip %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxs_pwm_probe._entry_ptr.10 = internal global ptr @mxs_pwm_probe._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"mxs_pwm_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 168, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 170, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"mxs_pwm_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 162, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"mxs_pwm_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 116, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 142, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 144, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 151, i32 41 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [25 x i8] c"../drivers/pwm/pwm-mxs.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 155, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_mxs_pwm_driver_exit, ptr @__initcall__kmod_pwm_mxs__183_175_mxs_pwm_driver_init6, ptr @mxs_pwm_driver_exit, ptr @mxs_pwm_probe._entry, ptr @mxs_pwm_probe._entry.8, ptr @mxs_pwm_probe._entry_ptr, ptr @mxs_pwm_probe._entry_ptr.10, ptr @mxs_pwm_driver, ptr @.str, ptr @mxs_pwm_dt_ids, ptr @mxs_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_pwm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.mxs_pwm_chip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.mxs_pwm_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %clk, align 4
  %cmp.i70 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mxs_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %npwm, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call.i.i) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %call26 = tail call i32 @stmp_reset_block(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call26, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call34 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end31.cleanup_crit_edge, %if.then28, %do.end, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ %5, %if.then13 ], [ %call.i.i, %do.end ], [ %call30, %if.then28 ], [ %call34, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.mxs_pwm_chip, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end3_crit_edge, label %if.then3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %5 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %state.sroa.4.0.copyload1.i669 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i669)
  %tobool.i670.not = icmp eq i8 %state.sroa.4.0.copyload1.i669, 0
  br i1 %tobool.i670.not, label %land.lhs.true.if.end9_crit_edge, label %do.body

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.mxs_pwm_chip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #5, !srcloc !49
  br label %if.end9

if.end9:                                          ; preds = %do.body, %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %clk10 = getelementptr inbounds %struct.mxs_pwm_chip, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %clk10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk10, align 4
  %call11 = tail call i32 @clk_get_rate(ptr noundef %12) #5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %state, align 8
  %conv12 = zext i32 %call11 to i64
  %mul = mul i64 %14, %conv12
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #9, !srcloc !50
  %asmresult.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #9, !srcloc !51
  %asmresult10.i = extractvalue { i64, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i)
  %cmp204 = icmp ult i64 %asmresult10.i, 35184372088832
  br i1 %cmp204, label %if.end9.while.end_crit_edge, label %if.end207

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207:                                        ; preds = %if.end9
  %shr.1 = lshr i32 %call11, 1
  %conv12.1 = zext i32 %shr.1 to i64
  %mul.1 = mul i64 %14, %conv12.1
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.1, i32 0) #9, !srcloc !50
  %asmresult.i.1 = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.1 = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.1, i64 %asmresult.i.1, i32 %asmresult4.i.1) #9, !srcloc !51
  %asmresult10.i.1 = extractvalue { i64, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.1)
  %cmp204.1 = icmp ult i64 %asmresult10.i.1, 35184372088832
  br i1 %cmp204.1, label %if.end207.while.end_crit_edge, label %if.end207.1

if.end207.while.end_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.1:                                      ; preds = %if.end207
  %shr.2 = lshr i32 %call11, 2
  %conv12.2 = zext i32 %shr.2 to i64
  %mul.2 = mul i64 %14, %conv12.2
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.2, i32 0) #9, !srcloc !50
  %asmresult.i.2 = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.2 = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.2, i64 %asmresult.i.2, i32 %asmresult4.i.2) #9, !srcloc !51
  %asmresult10.i.2 = extractvalue { i64, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.2)
  %cmp204.2 = icmp ult i64 %asmresult10.i.2, 35184372088832
  br i1 %cmp204.2, label %if.end207.1.while.end_crit_edge, label %if.end207.2

if.end207.1.while.end_crit_edge:                  ; preds = %if.end207.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.2:                                      ; preds = %if.end207.1
  %shr.3 = lshr i32 %call11, 3
  %conv12.3 = zext i32 %shr.3 to i64
  %mul.3 = mul i64 %14, %conv12.3
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.3, i32 0) #9, !srcloc !50
  %asmresult.i.3 = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.3 = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.3, i64 %asmresult.i.3, i32 %asmresult4.i.3) #9, !srcloc !51
  %asmresult10.i.3 = extractvalue { i64, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.3)
  %cmp204.3 = icmp ult i64 %asmresult10.i.3, 35184372088832
  br i1 %cmp204.3, label %if.end207.2.while.end_crit_edge, label %if.end207.3

if.end207.2.while.end_crit_edge:                  ; preds = %if.end207.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.3:                                      ; preds = %if.end207.2
  %shr.4 = lshr i32 %call11, 4
  %conv12.4 = zext i32 %shr.4 to i64
  %mul.4 = mul i64 %14, %conv12.4
  %23 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.4, i32 0) #9, !srcloc !50
  %asmresult.i.4 = extractvalue { i64, i32 } %23, 0
  %asmresult4.i.4 = extractvalue { i64, i32 } %23, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.4, i64 %asmresult.i.4, i32 %asmresult4.i.4) #9, !srcloc !51
  %asmresult10.i.4 = extractvalue { i64, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.4)
  %cmp204.4 = icmp ult i64 %asmresult10.i.4, 35184372088832
  br i1 %cmp204.4, label %if.end207.3.while.end_crit_edge, label %if.end207.4

if.end207.3.while.end_crit_edge:                  ; preds = %if.end207.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.4:                                      ; preds = %if.end207.3
  %shr.5 = lshr i32 %call11, 6
  %conv12.5 = zext i32 %shr.5 to i64
  %mul.5 = mul i64 %14, %conv12.5
  %25 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.5, i32 0) #9, !srcloc !50
  %asmresult.i.5 = extractvalue { i64, i32 } %25, 0
  %asmresult4.i.5 = extractvalue { i64, i32 } %25, 1
  %26 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.5, i64 %asmresult.i.5, i32 %asmresult4.i.5) #9, !srcloc !51
  %asmresult10.i.5 = extractvalue { i64, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.5)
  %cmp204.5 = icmp ult i64 %asmresult10.i.5, 35184372088832
  br i1 %cmp204.5, label %if.end207.4.while.end_crit_edge, label %if.end207.5

if.end207.4.while.end_crit_edge:                  ; preds = %if.end207.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.5:                                      ; preds = %if.end207.4
  %shr.6 = lshr i32 %call11, 8
  %conv12.6 = zext i32 %shr.6 to i64
  %mul.6 = mul i64 %14, %conv12.6
  %27 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.6, i32 0) #9, !srcloc !50
  %asmresult.i.6 = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.6 = extractvalue { i64, i32 } %27, 1
  %28 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.6, i64 %asmresult.i.6, i32 %asmresult4.i.6) #9, !srcloc !51
  %asmresult10.i.6 = extractvalue { i64, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.6)
  %cmp204.6 = icmp ult i64 %asmresult10.i.6, 35184372088832
  br i1 %cmp204.6, label %if.end207.5.while.end_crit_edge, label %if.end207.6

if.end207.5.while.end_crit_edge:                  ; preds = %if.end207.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end207.6:                                      ; preds = %if.end207.5
  %shr.7 = lshr i32 %call11, 10
  %conv12.7 = zext i32 %shr.7 to i64
  %mul.7 = mul i64 %14, %conv12.7
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.7, i32 0) #9, !srcloc !50
  %asmresult.i.7 = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.7 = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.7, i64 %asmresult.i.7, i32 %asmresult4.i.7) #9, !srcloc !51
  %asmresult10.i.7 = extractvalue { i64, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088832, i64 %asmresult10.i.7)
  %cmp204.7 = icmp ult i64 %asmresult10.i.7, 35184372088832
  br i1 %cmp204.7, label %if.end207.6.while.end_crit_edge, label %if.end207.6.cleanup_crit_edge

if.end207.6.cleanup_crit_edge:                    ; preds = %if.end207.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end207.6.while.end_crit_edge:                  ; preds = %if.end207.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end207.6.while.end_crit_edge, %if.end207.5.while.end_crit_edge, %if.end207.4.while.end_crit_edge, %if.end207.3.while.end_crit_edge, %if.end207.2.while.end_crit_edge, %if.end207.1.while.end_crit_edge, %if.end207.while.end_crit_edge, %if.end9.while.end_crit_edge
  %asmresult10.i.le.pre-phi = phi i64 [ %asmresult10.i.7, %if.end207.6.while.end_crit_edge ], [ %asmresult10.i.6, %if.end207.5.while.end_crit_edge ], [ %asmresult10.i.5, %if.end207.4.while.end_crit_edge ], [ %asmresult10.i.4, %if.end207.3.while.end_crit_edge ], [ %asmresult10.i.3, %if.end207.2.while.end_crit_edge ], [ %asmresult10.i.2, %if.end207.1.while.end_crit_edge ], [ %asmresult10.i.1, %if.end207.while.end_crit_edge ], [ %asmresult10.i, %if.end9.while.end_crit_edge ]
  %div.0.lcssa = phi i32 [ 7340032, %if.end207.6.while.end_crit_edge ], [ 6291456, %if.end207.5.while.end_crit_edge ], [ 5242880, %if.end207.4.while.end_crit_edge ], [ 4194304, %if.end207.3.while.end_crit_edge ], [ 3145728, %if.end207.2.while.end_crit_edge ], [ 2097152, %if.end207.1.while.end_crit_edge ], [ 1048576, %if.end207.while.end_crit_edge ], [ 0, %if.end9.while.end_crit_edge ]
  %storemerge = lshr i64 %asmresult10.i.le.pre-phi, 29
  %conv212 = trunc i64 %storemerge to i32
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %duty_cycle, align 8
  %mul213 = mul i64 %32, %storemerge
  %conv216 = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul213)
  %cmp417 = icmp ult i64 %mul213, 4294967296
  br i1 %cmp417, label %if.then425, label %if.else431, !prof !52

if.then425:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv426 = trunc i64 %mul213 to i32
  %div429 = udiv i32 %conv426, %conv216
  br label %if.end435

if.else431:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv216, i64 %mul213) #9, !srcloc !53
  %asmresult1.i = extractvalue { i64, i64 } %33, 1
  %extract.t705 = trunc i64 %asmresult1.i to i32
  br label %if.end435

if.end435:                                        ; preds = %if.else431, %if.then425
  %c.0.off0 = phi i32 [ %div429, %if.then425 ], [ %extract.t705, %if.else431 ]
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %34 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp438 = icmp eq i32 %35, 0
  %cond440 = select i1 %cmp438, i32 720896, i32 917504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %c.0.off0)
  %37 = lshr i32 %36, 16
  %base445 = getelementptr inbounds %struct.mxs_pwm_chip, ptr %chip, i32 0, i32 2
  %38 = ptrtoint ptr %base445 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base445, align 4
  %add.ptr446 = getelementptr i8, ptr %39, i32 16
  %hwpwm447 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %40 = ptrtoint ptr %hwpwm447 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hwpwm447, align 8
  %mul448 = shl i32 %41, 5
  %add.ptr449 = getelementptr i8, ptr %add.ptr446, i32 %mul448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr449, i32 %37) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %or454 = or i32 %div.0.lcssa, %conv212
  %or457 = or i32 %or454, %cond440
  %42 = tail call i32 @llvm.bswap.i32(i32 %or457)
  %43 = ptrtoint ptr %base445 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base445, align 4
  %add.ptr459 = getelementptr i8, ptr %44, i32 32
  %45 = ptrtoint ptr %hwpwm447 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwpwm447, align 8
  %mul461 = shl i32 %46, 5
  %add.ptr462 = getelementptr i8, ptr %add.ptr459, i32 %mul461
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr462, i32 %42) #5, !srcloc !49
  %47 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool464.not = icmp eq i8 %48, 0
  br i1 %tobool464.not, label %if.else477, label %if.then465

if.then465:                                       ; preds = %if.end435
  %49 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %state.sroa.4.0.copyload1.i676 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i676)
  %tobool.i677.not = icmp eq i8 %state.sroa.4.0.copyload1.i676, 0
  br i1 %tobool.i677.not, label %do.body468, label %if.then465.cleanup_crit_edge

if.then465.cleanup_crit_edge:                     ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body468:                                       ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %hwpwm447 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hwpwm447, align 8
  %shl472 = shl nuw i32 1, %51
  %52 = tail call i32 @llvm.bswap.i32(i32 %shl472)
  %53 = ptrtoint ptr %base445 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base445, align 4
  %add.ptr475 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr475, i32 %52) #5, !srcloc !49
  br label %cleanup

if.else477:                                       ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %clk10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk10, align 4
  tail call void @clk_disable(ptr noundef %56) #5
  tail call void @clk_unprepare(ptr noundef %56) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else477, %do.body468, %if.then465.cleanup_crit_edge, %if.end207.6.cleanup_crit_edge, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then465.cleanup_crit_edge ], [ 0, %do.body468 ], [ 0, %if.else477 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ], [ -22, %if.end207.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_pwm_mxs__183_175_mxs_pwm_driver_init6, !1, !"__initcall__kmod_pwm_mxs__183_175_mxs_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-mxs.c", i32 175, i32 1}
!2 = !{ptr @__exitcall_mxs_pwm_driver_exit, !1, !"__exitcall_mxs_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias184, !4, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-mxs.c", i32 177, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-mxs.c", i32 178, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-mxs.c", i32 179, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-mxs.c", i32 180, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-mxs.c", i32 170, i32 11}
!14 = !{ptr @mxs_pwm_driver, !15, !"mxs_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-mxs.c", i32 168, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-mxs.c", i32 142, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-mxs.c", i32 144, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mxs_pwm_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mxs_pwm_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-mxs.c", i32 151, i32 41}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-mxs.c", i32 155, i32 3}
!30 = !{ptr @mxs_pwm_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mxs_pwm_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mxs_pwm_ops, !33, !"mxs_pwm_ops", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-mxs.c", i32 116, i32 29}
!34 = distinct !{null, !35, !"cdiv_shift", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-mxs.c", i32 35, i32 17}
!36 = !{ptr @mxs_pwm_dt_ids, !37, !"mxs_pwm_dt_ids", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-mxs.c", i32 162, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
!48 = !{i64 2152908457}
!49 = !{i64 2031516}
!50 = !{i64 1147601, i64 1147628, i64 1147650, i64 1147678}
!51 = !{i64 1148009, i64 1148036, i64 1148069, i64 1148090, i64 1148117, i64 1148143}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148633145, i64 2148633425, i64 2148633759, i64 2148634093}
!54 = !{i64 2152919138}
!55 = !{i64 2152919729}
!56 = !{i64 2152920347}
