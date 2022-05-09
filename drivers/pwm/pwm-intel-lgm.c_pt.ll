; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-intel-lgm.c_pt.bc'
source_filename = "../drivers/pwm/pwm-intel-lgm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.lgm_pwm_chip = type { %struct.pwm_chip, ptr, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_intel_lgm__187_231_lgm_pwm_driver_init6 = internal global ptr @lgm_pwm_driver_init, section ".initcall6.init", align 4
@lgm_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lgm_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lgm_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lgm_pwm_driver_exit = internal global ptr @lgm_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [45 x i8] c"pwm_intel_lgm.file=drivers/pwm/pwm-intel-lgm\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [29 x i8] c"pwm_intel_lgm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel-pwm\00", [22 x i8] zeroinitializer }, align 32
@lgm_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lgm_pwm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lgm_pwm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pwm_intel_lgm:183:(&lgm_pwm_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init register map\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot deassert reset control\0A\00", [33 x i8] zeroinitializer }, align 32
@lgm_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @lgm_pwm_apply, ptr @lgm_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add PWM chip\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"lgm_pwm_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 224, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 226, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"lgm_pwm_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 218, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"lgm_pwm_regmap_config\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 124, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 183, i32 15 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 186, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 190, i32 43 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 194, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 199, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 203, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"lgm_pwm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 105, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [31 x i8] c"../drivers/pwm/pwm-intel-lgm.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 213, i32 34 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_lgm_pwm_driver_exit, ptr @__initcall__kmod_pwm_intel_lgm__187_231_lgm_pwm_driver_init6, ptr @lgm_pwm_driver_exit, ptr @lgm_pwm_driver, ptr @.str, ptr @lgm_pwm_of_match, ptr @lgm_pwm_probe._key, ptr @lgm_pwm_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lgm_pwm_ops, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_pwm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_pwm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lgm_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lgm_pwm_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lgm_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @lgm_pwm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgm_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @lgm_pwm_regmap_config, ptr noundef nonnull @lgm_pwm_probe._key, ptr noundef nonnull @.str.1) #4
  %regmap = getelementptr inbounds %struct.lgm_pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i83 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %cmp.i84 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call15 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.3) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end20.if.then23_crit_edge

if.end20.if.then23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

if.end.i.i:                                       ; preds = %if.end20
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %call.i4.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @lgm_clk_release, ptr noundef %call15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %if.end25, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef %call15) #4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call.i4.i, %if.then.i.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %call15) #4
  br label %if.then23

if.then23:                                        ; preds = %cleanup.sink.split.i, %if.end20.if.then23_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %if.end20.if.then23_crit_edge ]
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %retval.0.i.ph, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  %call.i85 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #4
  %cmp.i86 = icmp ugt ptr %call.i85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i85 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %call32 = tail call fastcc i32 @lgm_reset_control_deassert(ptr noundef %dev1, ptr noundef %call.i85)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call32, ptr noundef nonnull @.str.6) #4
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @lgm_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %npwm, align 4
  tail call fastcc void @lgm_pwm_init(ptr noundef nonnull %call.i)
  %call41 = tail call i32 @devm_pwmchip_add(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then42, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call41, ptr noundef nonnull @.str.7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end36.cleanup_crit_edge, %if.then34, %if.then28, %if.then23, %if.then17, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %call13, %if.then10 ], [ %call19, %if.then17 ], [ %call24, %if.then23 ], [ %call30, %if.then28 ], [ %call35, %if.then34 ], [ %call43, %if.then42 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lgm_reset_control_deassert(ptr noundef %dev, ptr noundef %rst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_deassert(ptr noundef %rst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @lgm_reset_control_release, ptr noundef %rst) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i4 = tail call i32 @reset_control_assert(ptr noundef %rst) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lgm_pwm_init(ptr nocapture noundef %pc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.lgm_pwm_chip, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %period = getelementptr inbounds %struct.lgm_pwm_chip, ptr %pc, i32 0, i32 2
  %2 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 40000000, ptr %period, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 65535, i32 noundef 4000, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgm_clk_release(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %data) #4
  tail call void @clk_unprepare(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgm_reset_control_release(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgm_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %period1 = getelementptr inbounds %struct.lgm_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %period1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period1, align 4
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp2 = icmp ult i64 %3, %conv
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then4, label %do.end30

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %regmap1.i = getelementptr inbounds %struct.lgm_pwm_chip, ptr %chip, i32 0, i32 1
  br label %cleanup.sink.split

do.end30:                                         ; preds = %if.end
  %duty_cycle7 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %duty_cycle7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %duty_cycle7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp10 = icmp ult i64 %9, %conv
  %extract.t = trunc i64 %9 to i32
  %cond.off0 = select i1 %cmp10, i32 %extract.t, i32 %5
  %mul = mul i32 %cond.off0, 255
  %div = udiv i32 %mul, %5
  %regmap = getelementptr inbounds %struct.lgm_pwm_chip, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %div, 16
  %and32 = and i32 %shl, 16711680
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 16711680, i32 noundef %and32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %do.end30.cleanup.sink.split_crit_edge, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end30.cleanup.sink.split_crit_edge:            ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end30.cleanup.sink.split_crit_edge, %if.then4
  %regmap.sink = phi ptr [ %regmap1.i, %if.then4 ], [ %regmap, %do.end30.cleanup.sink.split_crit_edge ]
  %.sink57 = phi i32 [ 0, %if.then4 ], [ 1, %do.end30.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %regmap.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.sink, align 4
  %call.i.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef %.sink57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %do.end30.cleanup_crit_edge ], [ %call.i.i56, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lgm_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !41
  %regmap = getelementptr inbounds %struct.lgm_pwm_chip, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_test_bits(ptr noundef %2, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool = icmp ne i32 %call1, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %enabled, align 4
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %polarity, align 8
  %period = getelementptr inbounds %struct.lgm_pwm_chip, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %period, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %state, align 8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %val) #4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and = lshr i32 %11, 16
  %shr = and i32 %and, 255
  %12 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period, align 4
  %mul = mul i32 %shr, %13
  %sub = add i32 %mul, 254
  %div = udiv i32 %sub, 255
  %conv18 = zext i32 %div to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv18, ptr %duty_cycle, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_test_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_pwm_intel_lgm__187_231_lgm_pwm_driver_init6, !1, !"__initcall__kmod_pwm_intel_lgm__187_231_lgm_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 231, i32 1}
!2 = !{ptr @__exitcall_lgm_pwm_driver_exit, !1, !"__exitcall_lgm_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 233, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 226, i32 11}
!8 = !{ptr @lgm_pwm_driver, !9, !"lgm_pwm_driver", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 224, i32 31}
!10 = !{ptr @lgm_pwm_probe._key, !11, !"_key", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 183, i32 15}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 186, i32 10}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 190, i32 43}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 194, i32 34}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 199, i32 10}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 203, i32 34}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 213, i32 34}
!25 = !{ptr @lgm_pwm_regmap_config, !26, !"lgm_pwm_regmap_config", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 124, i32 35}
!27 = !{ptr @lgm_pwm_ops, !28, !"lgm_pwm_ops", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 105, i32 29}
!29 = !{ptr @lgm_pwm_of_match, !30, !"lgm_pwm_of_match", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-intel-lgm.c", i32 218, i32 34}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i8 0, i8 2}
!41 = !{!"auto-init"}
