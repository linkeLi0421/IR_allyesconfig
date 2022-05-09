; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-stm32.c_pt.bc'
source_filename = "../drivers/pwm/pwm-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.stm32_pwm = type { %struct.pwm_chip, %struct.mutex, ptr, ptr, i32, i8, [2 x %struct.stm32_breakinput], i32, [84 x i8], [4 x i32], [112 x i8] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.stm32_breakinput = type { i32, i32, i32 }
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_capture = type { i32, i32 }

@__initcall__kmod_pwm_stm32__243_711_stm32_pwm_driver_init6 = internal global ptr @stm32_pwm_driver_init, section ".initcall6.init", align 4
@stm32_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_pwm_probe, ptr @stm32_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_pwm_driver_exit = internal global ptr @stm32_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias244 = internal constant [35 x i8] c"pwm_stm32.alias=platform:stm32-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [58 x i8] c"pwm_stm32.description=STMicroelectronics STM32 PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [37 x i8] c"pwm_stm32.file=drivers/pwm/pwm-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [25 x i8] c"pwm_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-pwm\00", [22 x i8] zeroinitializer }, align 32
@stm32_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr @stm32_pwm_suspend, ptr @stm32_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr @stm32_pwm_capture, ptr @stm32_pwm_apply_locked, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,breakinput\00", [18 x i8] zeroinitializer }, align 32
@stm32_pwm_capture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable counter clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_pwm_capture\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-stm32.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_pwm_capture._entry_ptr = internal global ptr @stm32_pwm_capture._entry, section ".printk_index", align 4
@stm32_pwm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 673, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PWM %u still in use by consumer %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_pwm_suspend\00", [46 x i8] zeroinitializer }, align 32
@stm32_pwm_suspend._entry_ptr = internal global ptr @stm32_pwm_suspend._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"stm32_pwm_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 702, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 706, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"stm32_pwm_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 696, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"stm32_pwm_pm_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 694, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 620, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"stm32pwm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 485, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 533, i32 43 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 188, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [27 x i8] c"../drivers/pwm/pwm-stm32.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 672, i32 4 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_stm32_pwm_driver_exit, ptr @__initcall__kmod_pwm_stm32__243_711_stm32_pwm_driver_init6, ptr @stm32_pwm_capture._entry, ptr @stm32_pwm_capture._entry_ptr, ptr @stm32_pwm_driver_exit, ptr @stm32_pwm_suspend._entry, ptr @stm32_pwm_suspend._entry_ptr, ptr @stm32_pwm_driver, ptr @.str, ptr @stm32_pwm_of_match, ptr @stm32_pwm_pm_ops, ptr @stm32_pwm_probe.__key, ptr @.str.1, ptr @stm32pwm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_capture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ccer.i55 = alloca i32, align 4
  %ccer.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 384, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_pwm_probe.__key) #6
  %regmap = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %regmap4 = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %regmap4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %regmap4, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %clk5 = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %clk5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %clk5, align 128
  %max_arr = getelementptr inbounds %struct.stm32_timers, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_arr, align 4
  %max_arr6 = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %max_arr6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_arr6, align 8
  %tobool8.not = icmp eq ptr %7, null
  %tobool10.not = icmp eq ptr %10, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %call.i52 = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.i = icmp slt i32 %call.i52, 1
  br i1 %cmp.i, label %if.end12.if.end16_crit_edge, label %if.end.i

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i52)
  %cmp1.i = icmp ugt i32 %call.i52, 2
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %num_breakinputs.i = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %num_breakinputs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i52, ptr %num_breakinputs.i, align 8
  %div39.i = mul nuw nsw i32 %call.i52, 3
  %breakinputs.i = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef %breakinputs.i, i32 noundef %div39.i, i32 noundef 0) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end3.i.stm32_pwm_probe_breakinputs.exit_crit_edge

if.end3.i.stm32_pwm_probe_breakinputs.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_probe_breakinputs.exit

for.cond.preheader.i:                             ; preds = %if.end3.i
  %17 = ptrtoint ptr %num_breakinputs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_breakinputs.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp840.not.i = icmp eq i32 %18, 0
  br i1 %cmp840.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i:                                       ; preds = %lor.lhs.false14.i
  %inc.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.stm32_pwm, ptr %call.i, i32 0, i32 6, i32 %i.041.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp10.i = icmp ugt i32 %20, 1
  br i1 %cmp10.i, label %for.body.i.cleanup_crit_edge, label %lor.lhs.false.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.body.i
  %level.i = getelementptr %struct.stm32_pwm, ptr %call.i, i32 0, i32 6, i32 %i.041.i, i32 1
  %21 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp13.i = icmp ugt i32 %22, 1
  br i1 %cmp13.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false14.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %filter.i = getelementptr %struct.stm32_pwm, ptr %call.i, i32 0, i32 6, i32 %i.041.i, i32 2
  %23 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %filter.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %24)
  %cmp17.i = icmp ugt i32 %24, 15
  br i1 %cmp17.i, label %lor.lhs.false14.i.cleanup_crit_edge, label %for.cond.i

lor.lhs.false14.i.cleanup_crit_edge:              ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call20.i = tail call fastcc i32 @stm32_pwm_apply_breakinputs(ptr noundef nonnull %call.i) #6
  br label %stm32_pwm_probe_breakinputs.exit

stm32_pwm_probe_breakinputs.exit:                 ; preds = %for.end.i, %if.end3.i.stm32_pwm_probe_breakinputs.exit_crit_edge
  %retval.0.i = phi i32 [ %call20.i, %for.end.i ], [ %16, %if.end3.i.stm32_pwm_probe_breakinputs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %stm32_pwm_probe_breakinputs.exit.if.end16_crit_edge, label %stm32_pwm_probe_breakinputs.exit.cleanup_crit_edge

stm32_pwm_probe_breakinputs.exit.cleanup_crit_edge: ; preds = %stm32_pwm_probe_breakinputs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

stm32_pwm_probe_breakinputs.exit.if.end16_crit_edge: ; preds = %stm32_pwm_probe_breakinputs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %stm32_pwm_probe_breakinputs.exit.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i) #6
  %25 = ptrtoint ptr %ccer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ccer.i, align 4, !annotation !47
  %26 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap4, align 4
  %call.i.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 32, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap4, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 32, ptr noundef nonnull %ccer.i) #6
  %30 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap4, align 4
  %call.i8.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 32, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %ccer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ccer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i54 = icmp ne i32 %33, 0
  %have_complementary_output.i = getelementptr inbounds %struct.stm32_pwm, ptr %call.i, i32 0, i32 5
  %frombool.i = zext i1 %cmp.i54 to i8
  %34 = ptrtoint ptr %have_complementary_output.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i, ptr %have_complementary_output.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i) #6
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev1, ptr %call.i, align 128
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @stm32pwm_ops, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i55) #6
  %37 = ptrtoint ptr %ccer.i55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %ccer.i55, align 4, !annotation !47
  %38 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap4, align 4
  %call.i.i57 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 32, i32 noundef 4369, i32 noundef 4369, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %40 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap4, align 4
  %call2.i58 = call i32 @regmap_read(ptr noundef %41, i32 noundef 32, ptr noundef nonnull %ccer.i55) #6
  %42 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap4, align 4
  %call.i26.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 32, i32 noundef 4369, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = ptrtoint ptr %ccer.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ccer.i55, align 4
  %and.i = and i32 %45, 1
  %and5.i = lshr i32 %45, 4
  %and5.lobit.i = and i32 %and5.i, 1
  %npwm.1.i = add nuw nsw i32 %and5.lobit.i, %and.i
  %and10.i = lshr i32 %45, 8
  %and10.lobit.i = and i32 %and10.i, 1
  %npwm.2.i = add nuw nsw i32 %npwm.1.i, %and10.lobit.i
  %and15.i = lshr i32 %45, 12
  %and15.lobit.i = and i32 %and15.i, 1
  %npwm.3.i = add nuw nsw i32 %npwm.2.i, %and15.lobit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i55) #6
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %46 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %npwm.3.i, ptr %npwm, align 4
  %call22 = call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end24

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end16.cleanup_crit_edge, %stm32_pwm_probe_breakinputs.exit.cleanup_crit_edge, %lor.lhs.false14.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ %retval.0.i, %stm32_pwm_probe_breakinputs.exit.cleanup_crit_edge ], [ %call22, %if.end16.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %lor.lhs.false14.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %pwm_disable.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %pwm_disable.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 32
  %arrayidx = getelementptr %struct.pwm_device, ptr %5, i32 %i.08
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #6
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.pwm_disable.exit_crit_edge, label %if.end.i

for.body.pwm_disable.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit

if.end.i:                                         ; preds = %for.body
  %state1.i.i = getelementptr %struct.pwm_device, ptr %5, i32 %i.08, i32 7
  %6 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i.pwm_disable.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %arrayidx, ptr noundef nonnull %state.i) #6
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i.pwm_disable.exit_crit_edge, %for.body.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #6
  %inc = add nuw i32 %i.08, 1
  %10 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %pwm_disable.exit.for.body_crit_edge, label %pwm_disable.exit.for.end_crit_edge

pwm_disable.exit.for.end_crit_edge:               ; preds = %pwm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

pwm_disable.exit.for.body_crit_edge:              ; preds = %pwm_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pwm_disable.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @pwmchip_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pwm_apply_breakinputs(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %bdtr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_breakinputs = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %num_breakinputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_breakinputs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %stm32_pwm_set_breakinput.exit
  %inc = add nuw i32 %i.09, 1
  %2 = ptrtoint ptr %num_breakinputs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_breakinputs, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_pwm, ptr %priv, i32 0, i32 6, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul.i = shl i32 %5, 2
  %add.i = add i32 %mul.i, 16
  %mul2.i = mul i32 %5, 12
  %add3.i = add i32 %mul2.i, 12
  %shl.i = shl nuw i32 1, %add3.i
  %add6.i = add i32 %mul2.i, 13
  %shl7.i = shl nuw i32 1, %add6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bdtr.i) #6
  %filter.i = getelementptr %struct.stm32_pwm, ptr %priv, i32 0, i32 6, i32 %i.09, i32 2
  %6 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %filter.i, align 4
  %and.i = and i32 %7, 15
  %shl13.i = shl i32 %and.i, %add.i
  %or14.i = or i32 %shl13.i, %shl.i
  %8 = ptrtoint ptr %bdtr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or14.i, ptr %bdtr.i, align 4
  %level.i = getelementptr %struct.stm32_pwm, ptr %priv, i32 0, i32 6, i32 %i.09, i32 1
  %9 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.stm32_pwm_set_breakinput.exit_crit_edge, label %if.then.i

for.body.stm32_pwm_set_breakinput.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_set_breakinput.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %or15.i = or i32 %or14.i, %shl7.i
  %11 = ptrtoint ptr %bdtr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or15.i, ptr %bdtr.i, align 4
  br label %stm32_pwm_set_breakinput.exit

stm32_pwm_set_breakinput.exit:                    ; preds = %if.then.i, %for.body.stm32_pwm_set_breakinput.exit_crit_edge
  %shl11.i = shl i32 15, %add.i
  %or.i = or i32 %shl11.i, %shl7.i
  %or12.i = or i32 %or.i, %shl.i
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %14 = ptrtoint ptr %bdtr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bdtr.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 68, i32 noundef %or12.i, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 68, ptr noundef nonnull %bdtr.i) #6
  %18 = ptrtoint ptr %bdtr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bdtr.i, align 4
  %and18.i = and i32 %19, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bdtr.i) #6
  br i1 %tobool19.not.i, label %stm32_pwm_set_breakinput.exit.cleanup_crit_edge, label %for.cond

stm32_pwm_set_breakinput.exit.cleanup_crit_edge:  ; preds = %stm32_pwm_set_breakinput.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %stm32_pwm_set_breakinput.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -22, %stm32_pwm_set_breakinput.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_capture(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %result, i32 noundef %tmo_ms) #2 align 64 {
entry:
  %ccer.i = alloca i32, align 4
  %raw_prd = alloca i32, align 4
  %raw_dty = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_prd) #6
  %0 = ptrtoint ptr %raw_prd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %raw_prd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_dty) #6
  %1 = ptrtoint ptr %raw_dty to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %raw_dty, align 4
  %lock = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i) #6
  %2 = ptrtoint ptr %ccer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ccer.i, align 4, !annotation !47
  %regmap.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %ccer.i) #6
  %5 = ptrtoint ptr %ccer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccer.i, align 4
  %and.i = and i32 %6, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 128
  %call2 = call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #9
  br label %unlock

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 128
  %call8 = call i32 @clk_get_rate(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.clk_dis_crit_edge, label %if.end198

if.end6.clk_dis_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis

if.end198:                                        ; preds = %if.end6
  %conv = zext i32 %call8 to i64
  %conv12 = zext i32 %tmo_ms to i64
  %mul = mul nuw i64 %conv, %conv12
  %13 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i32 0) #10, !srcloc !49
  %asmresult.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i = extractvalue { i64, i32 } %13, 1
  %14 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !50
  %asmresult10.i = extractvalue { i64, i32 } %14, 0
  %storemerge = lshr i64 %asmresult10.i, 9
  %max_arr = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_arr, align 8
  %conv200 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge, i64 %conv200)
  %cmp2011842 = icmp ugt i64 %storemerge, %conv200
  br i1 %cmp2011842, label %while.body.lr.ph, label %if.end198.while.end_crit_edge

if.end198.while.end_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_const_cmp8(i64 2199023255552, i64 %asmresult10.i)
  %cmp407 = icmp ult i64 %asmresult10.i, 2199023255552
  %conv416 = trunc i64 %storemerge to i32
  br label %while.body

while.body:                                       ; preds = %if.end425.while.body_crit_edge, %while.body.lr.ph
  %psc.01843 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end425.while.body_crit_edge ]
  %inc = add nuw nsw i32 %psc.01843, 1
  %add206 = add nuw nsw i32 %psc.01843, 2
  br i1 %cmp407, label %if.then415, label %if.else421, !prof !51

if.then415:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %div419 = udiv i32 %conv416, %add206
  %conv420 = zext i32 %div419 to i64
  br label %if.end425

if.else421:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add206, i64 %storemerge) #10, !srcloc !52
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  br label %if.end425

if.end425:                                        ; preds = %if.else421, %if.then415
  %div.1 = phi i64 [ %conv420, %if.then415 ], [ %asmresult1.i, %if.else421 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %div.1, i64 %conv200)
  %cmp201 = icmp ugt i64 %div.1, %conv200
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %psc.01843)
  %cmp203 = icmp ult i32 %psc.01843, 65534
  %or.cond = select i1 %cmp201, i1 %cmp203, i1 false
  br i1 %or.cond, label %if.end425.while.body_crit_edge, label %if.end425.while.end_crit_edge

if.end425.while.end_crit_edge:                    ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end425.while.body_crit_edge:                   ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end425.while.end_crit_edge, %if.end198.while.end_crit_edge
  %psc.0.lcssa = phi i32 [ 0, %if.end198.while.end_crit_edge ], [ %inc, %if.end425.while.end_crit_edge ]
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call428 = call i32 @regmap_write(ptr noundef %19, i32 noundef 44, i32 noundef %16) #6
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call430 = call i32 @regmap_write(ptr noundef %21, i32 noundef 40, i32 noundef %psc.0.lcssa) #6
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %24 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp432 = icmp ult i32 %25, 2
  %cond434 = select i1 %cmp432, i32 24, i32 28
  %and436 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and436)
  %tobool437.not = icmp eq i32 %and436, 0
  %cond438 = select i1 %tobool437.not, i32 513, i32 258
  %call.i1756 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %cond434, i32 noundef 771, i32 noundef %cond438, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %28 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp442 = icmp ult i32 %29, 2
  %cond444 = select i1 %cmp442, i32 34, i32 8704
  %cond448 = select i1 %cmp442, i32 32, i32 8192
  %call.i1757 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 32, i32 noundef %cond444, i32 noundef %cond448, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call450 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %chip, ptr noundef %pwm, i32 noundef %tmo_ms, ptr noundef nonnull %raw_prd, ptr noundef nonnull %raw_dty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call450)
  %tobool451.not = icmp eq i32 %call450, 0
  br i1 %tobool451.not, label %if.end453, label %while.end.stop_crit_edge

while.end.stop_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop

if.end453:                                        ; preds = %while.end
  %30 = ptrtoint ptr %raw_prd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %raw_prd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool454.not = icmp eq i32 %31, 0
  %32 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_arr, align 8
  br i1 %tobool454.not, label %if.end453.if.end469_crit_edge, label %if.then455

if.end453.if.end469_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end469

if.then455:                                       ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #8
  %sub458 = add i32 %33, -4096
  %34 = call i32 @llvm.umin.i32(i32 %sub458, i32 %31)
  %div466 = udiv i32 %sub458, %34
  br label %if.end469

if.end469:                                        ; preds = %if.then455, %if.end453.if.end469_crit_edge
  %scale.0 = phi i32 [ %div466, %if.then455 ], [ %33, %if.end453.if.end469_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %psc.0.lcssa)
  %tobool470.not = icmp eq i32 %psc.0.lcssa, 0
  br i1 %tobool470.not, label %if.end469.if.end482_crit_edge, label %land.lhs.true471

if.end469.if.end482_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end482

land.lhs.true471:                                 ; preds = %if.end469
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %scale.0)
  %cmp472 = icmp ugt i32 %scale.0, 1
  br i1 %cmp472, label %if.then474, label %land.lhs.true471.if.end482_crit_edge

land.lhs.true471.if.end482_crit_edge:             ; preds = %land.lhs.true471
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end482

if.then474:                                       ; preds = %land.lhs.true471
  %div475 = udiv i32 %psc.0.lcssa, %scale.0
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call477 = call i32 @regmap_write(ptr noundef %36, i32 noundef 40, i32 noundef %div475) #6
  %call478 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %chip, ptr noundef %pwm, i32 noundef %tmo_ms, ptr noundef nonnull %raw_prd, ptr noundef nonnull %raw_dty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call478)
  %tobool479.not = icmp eq i32 %call478, 0
  br i1 %tobool479.not, label %if.then474.if.end482_crit_edge, label %if.then474.stop_crit_edge

if.then474.stop_crit_edge:                        ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop

if.then474.if.end482_crit_edge:                   ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end482

if.end482:                                        ; preds = %if.then474.if.end482_crit_edge, %land.lhs.true471.if.end482_crit_edge, %if.end469.if.end482_crit_edge
  %psc.1 = phi i32 [ %div475, %if.then474.if.end482_crit_edge ], [ %psc.0.lcssa, %land.lhs.true471.if.end482_crit_edge ], [ 0, %if.end469.if.end482_crit_edge ]
  %37 = ptrtoint ptr %raw_prd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %raw_prd, align 4
  %conv483 = zext i32 %38 to i64
  %add484 = add i32 %psc.1, 1
  %conv485 = zext i32 %add484 to i64
  %mul486 = mul nuw nsw i64 %conv485, 1000000000
  %mul487 = mul i64 %mul486, %conv483
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul487)
  %cmp689 = icmp ult i64 %mul487, 4294967296
  br i1 %cmp689, label %if.then697, label %if.else703, !prof !51

if.then697:                                       ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #8
  %conv698 = trunc i64 %mul487 to i32
  %div701 = udiv i32 %conv698, %call8
  %conv702 = zext i32 %div701 to i64
  br label %if.end707

if.else703:                                       ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #8
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call8, i64 %mul487) #10, !srcloc !52
  %asmresult1.i1764 = extractvalue { i64, i64 } %39, 1
  br label %if.end707

if.end707:                                        ; preds = %if.else703, %if.then697
  %prd.0 = phi i64 [ %conv702, %if.then697 ], [ %asmresult1.i1764, %if.else703 ]
  %40 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_arr, align 8
  %sub712 = add i32 %41, -4096
  %mul719 = mul i32 %tmo_ms, 1000000
  %shr714 = lshr i32 %sub712, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr714)
  %cmp715.not = icmp ult i32 %38, %shr714
  br i1 %cmp715.not, label %if.end718, label %if.end707.done_crit_edge

if.end707.done_crit_edge:                         ; preds = %if.end707
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end718:                                        ; preds = %if.end707
  %shr721 = lshr exact i32 %mul719, 2
  %conv722 = zext i32 %shr721 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %prd.0, i64 %conv722)
  %cmp723.not = icmp ult i64 %prd.0, %conv722
  br i1 %cmp723.not, label %for.cond.1, label %if.end718.done_crit_edge

if.end718.done_crit_edge:                         ; preds = %if.end718
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.cond.1:                                       ; preds = %if.end718
  %shr714.1 = lshr i32 %sub712, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr714.1)
  %cmp715.not.1 = icmp ult i32 %38, %shr714.1
  br i1 %cmp715.not.1, label %if.end718.1, label %for.cond.1.for.end.thread_crit_edge

for.cond.1.for.end.thread_crit_edge:              ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.end718.1:                                      ; preds = %for.cond.1
  %shr721.1 = lshr exact i32 %mul719, 3
  %conv722.1 = zext i32 %shr721.1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %prd.0, i64 %conv722.1)
  %cmp723.not.1 = icmp ult i64 %prd.0, %conv722.1
  br i1 %cmp723.not.1, label %for.cond.2, label %if.end718.1.for.end.thread_crit_edge

if.end718.1.for.end.thread_crit_edge:             ; preds = %if.end718.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.cond.2:                                       ; preds = %if.end718.1
  %shr714.2 = lshr i32 %sub712, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %shr714.2)
  %cmp715.not.2 = icmp ult i32 %38, %shr714.2
  br i1 %cmp715.not.2, label %if.end718.2, label %for.cond.2.for.end.thread_crit_edge

for.cond.2.for.end.thread_crit_edge:              ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.end718.2:                                      ; preds = %for.cond.2
  %shr721.2 = lshr exact i32 %mul719, 4
  %conv722.2 = zext i32 %shr721.2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %prd.0, i64 %conv722.2)
  %cmp723.not.2 = icmp ult i64 %prd.0, %conv722.2
  br i1 %cmp723.not.2, label %if.end718.2.do.end780_crit_edge, label %if.end718.2.for.end.thread_crit_edge

if.end718.2.for.end.thread_crit_edge:             ; preds = %if.end718.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

if.end718.2.do.end780_crit_edge:                  ; preds = %if.end718.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end780

for.end.thread:                                   ; preds = %if.end718.2.for.end.thread_crit_edge, %for.cond.2.for.end.thread_crit_edge, %if.end718.1.for.end.thread_crit_edge, %for.cond.1.for.end.thread_crit_edge
  %icpsc.0.lcssa1845.ph = phi i32 [ 1, %for.cond.1.for.end.thread_crit_edge ], [ 1, %if.end718.1.for.end.thread_crit_edge ], [ 2, %for.cond.2.for.end.thread_crit_edge ], [ 2, %if.end718.2.for.end.thread_crit_edge ]
  br label %do.end780

do.end780:                                        ; preds = %for.end.thread, %if.end718.2.do.end780_crit_edge
  %icpsc.01846 = phi i32 [ %icpsc.0.lcssa1845.ph, %for.end.thread ], [ 3, %if.end718.2.do.end780_crit_edge ]
  %42 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp733 = icmp ult i32 %43, 2
  %cond735 = select i1 %cmp733, i32 24, i32 28
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %shl758 = shl nuw nsw i32 %icpsc.01846, 2
  %and759 = and i32 %shl758, 12
  %shl782 = shl nuw nsw i32 %icpsc.01846, 10
  %and783 = and i32 %shl782, 3072
  %or784 = or i32 %and759, %and783
  %call.i1765 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %cond735, i32 noundef 3084, i32 noundef %or784, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call786 = call fastcc i32 @stm32_pwm_raw_capture(ptr noundef %chip, ptr noundef %pwm, i32 noundef %tmo_ms, ptr noundef nonnull %raw_prd, ptr noundef nonnull %raw_dty)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call786)
  %tobool787.not = icmp eq i32 %call786, 0
  br i1 %tobool787.not, label %if.end789, label %do.end780.stop_crit_edge

do.end780.stop_crit_edge:                         ; preds = %do.end780
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop

if.end789:                                        ; preds = %do.end780
  %46 = ptrtoint ptr %raw_dty to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %raw_dty, align 4
  %48 = ptrtoint ptr %raw_prd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %raw_prd, align 4
  %shr790 = lshr i32 %49, %icpsc.01846
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %shr790)
  %cmp791.not = icmp ult i32 %47, %shr790
  br i1 %cmp791.not, label %if.end789.done_crit_edge, label %if.then793

if.end789.done_crit_edge:                         ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then793:                                       ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #8
  %sub795.neg = sub i32 %47, %49
  %sub796 = add i32 %sub795.neg, %shr790
  %50 = ptrtoint ptr %raw_dty to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub796, ptr %raw_dty, align 4
  br label %done

done:                                             ; preds = %if.then793, %if.end789.done_crit_edge, %if.end718.done_crit_edge, %if.end707.done_crit_edge
  %icpsc.01847 = phi i32 [ %icpsc.01846, %if.end789.done_crit_edge ], [ %icpsc.01846, %if.then793 ], [ 0, %if.end718.done_crit_edge ], [ 0, %if.end707.done_crit_edge ]
  %51 = ptrtoint ptr %raw_prd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %raw_prd, align 4
  %conv798 = zext i32 %52 to i64
  %mul802 = mul i64 %mul486, %conv798
  %shl803 = shl i32 %call8, %icpsc.01847
  %conv804 = zext i32 %shl803 to i64
  %add805 = add nsw i64 %conv804, -1
  %sub806 = add i64 %add805, %mul802
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub806)
  %cmp1009 = icmp ult i64 %sub806, 4294967296
  br i1 %cmp1009, label %if.then1017, label %if.else1023, !prof !51

if.then1017:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %conv1018 = trunc i64 %sub806 to i32
  %div1021 = udiv i32 %conv1018, %shl803
  br label %if.end1027

if.else1023:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %53 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl803, i64 %sub806) #10, !srcloc !52
  %asmresult1.i1772 = extractvalue { i64, i64 } %53, 1
  %extract.t1833 = trunc i64 %asmresult1.i1772 to i32
  br label %if.end1027

if.end1027:                                       ; preds = %if.else1023, %if.then1017
  %_tmp.0.off0 = phi i32 [ %div1021, %if.then1017 ], [ %extract.t1833, %if.else1023 ]
  %54 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %_tmp.0.off0, ptr %result, align 4
  %55 = ptrtoint ptr %raw_dty to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %raw_dty, align 4
  %conv1031 = zext i32 %56 to i64
  %mul1035 = mul i64 %mul486, %conv1031
  %add1038 = add nsw i64 %conv, -1
  %sub1039 = add i64 %add1038, %mul1035
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub1039)
  %cmp1241 = icmp ult i64 %sub1039, 4294967296
  br i1 %cmp1241, label %if.then1249, label %if.else1255, !prof !51

if.then1249:                                      ; preds = %if.end1027
  call void @__sanitizer_cov_trace_pc() #8
  %conv1250 = trunc i64 %sub1039 to i32
  %div1253 = udiv i32 %conv1250, %call8
  br label %if.end1259

if.else1255:                                      ; preds = %if.end1027
  call void @__sanitizer_cov_trace_pc() #8
  %57 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call8, i64 %sub1039) #10, !srcloc !52
  %asmresult1.i1779 = extractvalue { i64, i64 } %57, 1
  %extract.t1838 = trunc i64 %asmresult1.i1779 to i32
  br label %if.end1259

if.end1259:                                       ; preds = %if.else1255, %if.then1249
  %_tmp1036.0.off0 = phi i32 [ %div1253, %if.then1249 ], [ %extract.t1838, %if.else1255 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_capture, ptr %result, i32 0, i32 1
  %58 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %_tmp1036.0.off0, ptr %duty_cycle, align 4
  br label %stop

stop:                                             ; preds = %if.end1259, %do.end780.stop_crit_edge, %if.then474.stop_crit_edge, %while.end.stop_crit_edge
  %ret.2 = phi i32 [ %call450, %while.end.stop_crit_edge ], [ %call478, %if.then474.stop_crit_edge ], [ %call786, %do.end780.stop_crit_edge ], [ 0, %if.end1259 ]
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %call1264 = call i32 @regmap_write(ptr noundef %60, i32 noundef 32, i32 noundef 0) #6
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %63 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp1267 = icmp ult i32 %64, 2
  %cond1269 = select i1 %cmp1267, i32 24, i32 28
  %call1270 = call i32 @regmap_write(ptr noundef %62, i32 noundef %cond1269, i32 noundef 0) #6
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call1272 = call i32 @regmap_write(ptr noundef %66, i32 noundef 40, i32 noundef 0) #6
  br label %clk_dis

clk_dis:                                          ; preds = %stop, %if.end6.clk_dis_crit_edge
  %ret.3 = phi i32 [ %ret.2, %stop ], [ -22, %if.end6.clk_dis_crit_edge ]
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 128
  call void @clk_disable(ptr noundef %68) #6
  br label %unlock

unlock:                                           ; preds = %clk_dis, %do.end, %entry.unlock_crit_edge
  %ret.4 = phi i32 [ %call2, %do.end ], [ %ret.3, %clk_dis ], [ -16, %entry.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_dty) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_prd) #6
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_apply_locked(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %ccer.i.i53.i = alloca i32, align 4
  %psc.i.i = alloca i32, align 4
  %arr.i.i = alloca i32, align 4
  %ccer.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %enabled2.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %enabled2.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled2.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %enabled4.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %enabled4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled4.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not.i = icmp eq i8 %3, 0
  br i1 %tobool5.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm.i, align 8
  %mul.i.i = shl i32 %5, 2
  %have_complementary_output.i.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %have_complementary_output.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %have_complementary_output.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 5
  %mask.0.i.i = shl i32 %spec.select.i.i, %mul.i.i
  %regmap.i.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 32, i32 noundef %mask.0.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i.i.i) #6
  %10 = ptrtoint ptr %ccer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %ccer.i.i.i, align 4, !annotation !47
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i15.i.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 32, ptr noundef nonnull %ccer.i.i.i) #6
  %13 = ptrtoint ptr %ccer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccer.i.i.i, align 4
  %and.i.i.i = and i32 %14, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.then.i.stm32_pwm_disable.exit.i_crit_edge

if.then.i.stm32_pwm_disable.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_disable.exit.i

if.then5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i16.i.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %stm32_pwm_disable.exit.i

stm32_pwm_disable.exit.i:                         ; preds = %if.then5.i.i, %if.then.i.stm32_pwm_disable.exit.i_crit_edge
  %clk.i.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 2
  %17 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i.i, align 128
  call void @clk_disable(ptr noundef %18) #6
  br label %stm32_pwm_apply.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %polarity.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %19 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %polarity.i, align 8
  %polarity7.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %polarity7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %polarity7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %hwpwm9.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %23 = ptrtoint ptr %hwpwm9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwpwm9.i, align 8
  %mul.i46.i = shl i32 %24, 2
  %have_complementary_output.i47.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 5
  %25 = ptrtoint ptr %have_complementary_output.i47.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %have_complementary_output.i47.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i48.i = icmp eq i8 %26, 0
  %spec.select.i49.i = select i1 %tobool.not.i48.i, i32 2, i32 10
  %mask.0.i50.i = shl i32 %spec.select.i49.i, %mul.i46.i
  %regmap.i51.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 3
  %27 = ptrtoint ptr %regmap.i51.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 0
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 %mask.0.i50.i
  %call.i.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 32, i32 noundef %mask.0.i50.i, i32 noundef %cond.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  %hwpwm13.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %29 = ptrtoint ptr %hwpwm13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwpwm13.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %duty_cycle.i, align 8
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %state, align 8
  %conv14.i = trunc i64 %34 to i32
  %clk.i54.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 2
  %35 = ptrtoint ptr %clk.i54.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i54.i, align 128
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %36) #6
  %conv.i.i = zext i32 %call.i.i to i64
  %conv1.i.i = sext i32 %conv14.i to i64
  %mul.i55.i = mul nsw i64 %conv.i.i, %conv1.i.i
  %37 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i55.i, i32 0) #10, !srcloc !49
  %asmresult.i.i.i = extractvalue { i64, i32 } %37, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %37, 1
  %38 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i55.i, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !50
  %asmresult10.i.i.i = extractvalue { i64, i32 } %38, 0
  %storemerge.i.i = lshr i64 %asmresult10.i.i.i, 29
  %max_arr.i.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 4
  %39 = ptrtoint ptr %max_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_arr.i.i, align 8
  %conv186.i.i = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge.i.i, i64 %conv186.i.i)
  %cmp1871041.i.i = icmp ugt i64 %storemerge.i.i, %conv186.i.i
  br i1 %cmp1871041.i.i, label %while.body.lr.ph.i.i, label %if.end12.i.if.end414.i.i_crit_edge

if.end12.i.if.end414.i.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414.i.i

while.body.lr.ph.i.i:                             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2305843009213693952, i64 %asmresult10.i.i.i)
  %cmp391.i.i = icmp ult i64 %asmresult10.i.i.i, 2305843009213693952
  %conv400.i.i = trunc i64 %storemerge.i.i to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end409.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %prescaler.01042.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %if.end409.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %prescaler.01042.i.i, 1
  %add190.i.i = add i32 %prescaler.01042.i.i, 2
  br i1 %cmp391.i.i, label %if.then399.i.i, label %if.else405.i.i, !prof !51

if.then399.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div403.i.i = udiv i32 %conv400.i.i, %add190.i.i
  %conv404.i.i = zext i32 %div403.i.i to i64
  br label %if.end409.i.i

if.else405.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add190.i.i, i64 %storemerge.i.i) #10, !srcloc !52
  %asmresult1.i.i.i = extractvalue { i64, i64 } %41, 1
  br label %if.end409.i.i

if.end409.i.i:                                    ; preds = %if.else405.i.i, %if.then399.i.i
  %div.1.i.i = phi i64 [ %conv404.i.i, %if.then399.i.i ], [ %asmresult1.i.i.i, %if.else405.i.i ]
  %cmp187.i.i = icmp ugt i64 %div.1.i.i, %conv186.i.i
  br i1 %cmp187.i.i, label %if.end409.i.i.while.body.i.i_crit_edge, label %while.end.i.i

if.end409.i.i.while.body.i.i_crit_edge:           ; preds = %if.end409.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end409.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i.i)
  %cmp411.i.i = icmp ugt i32 %inc.i.i, 65535
  br i1 %cmp411.i.i, label %while.end.i.i.stm32_pwm_apply.exit_crit_edge, label %while.end.i.i.if.end414.i.i_crit_edge

while.end.i.i.if.end414.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414.i.i

while.end.i.i.stm32_pwm_apply.exit_crit_edge:     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_apply.exit

if.end414.i.i:                                    ; preds = %while.end.i.i.if.end414.i.i_crit_edge, %if.end12.i.if.end414.i.i_crit_edge
  %prescaler.0.lcssa1049.i.i = phi i32 [ %inc.i.i, %while.end.i.i.if.end414.i.i_crit_edge ], [ 0, %if.end12.i.if.end414.i.i_crit_edge ]
  %div.0.lcssa1047.i.i = phi i64 [ %div.1.i.i, %while.end.i.i.if.end414.i.i_crit_edge ], [ %storemerge.i.i, %if.end12.i.if.end414.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i.i53.i) #6
  %42 = ptrtoint ptr %ccer.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %ccer.i.i53.i, align 4, !annotation !47
  %regmap.i.i.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 3
  %43 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i57.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 32, ptr noundef nonnull %ccer.i.i53.i) #6
  %45 = ptrtoint ptr %ccer.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ccer.i.i53.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i.i53.i) #6
  %mul416.i.i = shl i32 %30, 2
  %shl417.i.i = shl nuw i32 1, %mul416.i.i
  %neg418.i.i = and i32 %shl417.i.i, 4369
  %and.i960.i.i = xor i32 %neg418.i.i, 4369
  %and419.i.i = and i32 %46, %and.i960.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and419.i.i)
  %tobool420.not.i.i = icmp eq i32 %and419.i.i, 0
  br i1 %tobool420.not.i.i, label %if.end414.i.i.if.end434.i.i_crit_edge, label %if.then421.i.i

if.end414.i.i.if.end434.i.i_crit_edge:            ; preds = %if.end414.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end434.i.i

if.then421.i.i:                                   ; preds = %if.end414.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psc.i.i) #6
  %47 = ptrtoint ptr %psc.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %psc.i.i, align 4, !annotation !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr.i.i) #6
  %48 = ptrtoint ptr %arr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %arr.i.i, align 4, !annotation !47
  %49 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i.i.i, align 4
  %call422.i.i = call i32 @regmap_read(ptr noundef %50, i32 noundef 40, ptr noundef nonnull %psc.i.i) #6
  %51 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i.i, align 4
  %call424.i.i = call i32 @regmap_read(ptr noundef %52, i32 noundef 44, ptr noundef nonnull %arr.i.i) #6
  %53 = ptrtoint ptr %psc.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %psc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %prescaler.0.lcssa1049.i.i)
  %cmp425.not.i.i = icmp eq i32 %54, %prescaler.0.lcssa1049.i.i
  br i1 %cmp425.not.i.i, label %lor.lhs.false.i.i, label %if.then421.i.i.cleanup.i.i_crit_edge

if.then421.i.i.cleanup.i.i_crit_edge:             ; preds = %if.then421.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

lor.lhs.false.i.i:                                ; preds = %if.then421.i.i
  %55 = ptrtoint ptr %arr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arr.i.i, align 4
  %conv427.i.i = zext i32 %56 to i64
  %sub428.i.i = add i64 %div.0.lcssa1047.i.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %sub428.i.i, i64 %conv427.i.i)
  %cmp429.not.i.i = icmp eq i64 %sub428.i.i, %conv427.i.i
  br i1 %cmp429.not.i.i, label %if.end434.critedge.i.i, label %lor.lhs.false.i.i.cleanup.i.i_crit_edge

lor.lhs.false.i.i.cleanup.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %lor.lhs.false.i.i.cleanup.i.i_crit_edge, %if.then421.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psc.i.i) #6
  br label %stm32_pwm_apply.exit

if.end434.critedge.i.i:                           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psc.i.i) #6
  br label %if.end434.i.i

if.end434.i.i:                                    ; preds = %if.end434.critedge.i.i, %if.end414.i.i.if.end434.i.i_crit_edge
  %57 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i.i.i, align 4
  %call436.i.i = call i32 @regmap_write(ptr noundef %58, i32 noundef 40, i32 noundef %prescaler.0.lcssa1049.i.i) #6
  %59 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i.i, align 4
  %61 = trunc i64 %div.0.lcssa1047.i.i to i32
  %conv439.i.i = add i32 %61, -1
  %call440.i.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 44, i32 noundef %conv439.i.i) #6
  %62 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i961.i.i = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = shl i64 %32, 32
  %conv443.i.i = ashr exact i64 %64, 32
  %mul444.i.i = mul i64 %div.0.lcssa1047.i.i, %conv443.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul444.i.i)
  %cmp646.i.i = icmp ult i64 %mul444.i.i, 4294967296
  br i1 %cmp646.i.i, label %if.then654.i.i, label %if.else660.i.i, !prof !51

if.then654.i.i:                                   ; preds = %if.end434.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv655.i.i = trunc i64 %mul444.i.i to i32
  %div658.i.i = udiv i32 %conv655.i.i, %conv14.i
  br label %if.end664.i.i

if.else660.i.i:                                   ; preds = %if.end434.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv14.i, i64 %mul444.i.i) #10, !srcloc !52
  %asmresult1.i986.i.i = extractvalue { i64, i64 } %65, 1
  %extract.t1039.i.i = trunc i64 %asmresult1.i986.i.i to i32
  br label %if.end664.i.i

if.end664.i.i:                                    ; preds = %if.else660.i.i, %if.then654.i.i
  %dty.0.off0.i.i = phi i32 [ %div658.i.i, %if.then654.i.i ], [ %extract.t1039.i.i, %if.else660.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %66 = icmp ult i32 %30, 4
  br i1 %66, label %switch.lookup, label %if.end664.i.i.stm32_pwm_config.exit.i_crit_edge

if.end664.i.i.stm32_pwm_config.exit.i_crit_edge:  ; preds = %if.end664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_config.exit.i

switch.lookup:                                    ; preds = %if.end664.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.idx.mult = shl i32 %30, 2
  %switch.offset = add i32 %switch.idx.mult, 52
  %67 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i.i.i, align 4
  %call9.i.i.i = call i32 @regmap_write(ptr noundef %68, i32 noundef %switch.offset, i32 noundef %dty.0.off0.i.i) #6
  br label %stm32_pwm_config.exit.i

stm32_pwm_config.exit.i:                          ; preds = %switch.lookup, %if.end664.i.i.stm32_pwm_config.exit.i_crit_edge
  %and668.i.i = shl i32 %30, 3
  %mul669.i.i = and i32 %and668.i.i, 8
  %shl670.i.i = shl nuw nsw i32 104, %mul669.i.i
  %shl671.i.i = shl nuw nsw i32 255, %mul669.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp672.i.i = icmp slt i32 %30, 2
  %69 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i.i.i, align 4
  %..i.i = select i1 %cmp672.i.i, i32 24, i32 28
  %call.i988.i.i = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef %..i.i, i32 noundef %shl671.i.i, i32 noundef %shl670.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %71 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i989.i.i = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 68, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %tobool.not.i, label %land.lhs.true20.i, label %stm32_pwm_config.exit.i.stm32_pwm_apply.exit_crit_edge

stm32_pwm_config.exit.i.stm32_pwm_apply.exit_crit_edge: ; preds = %stm32_pwm_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_apply.exit

land.lhs.true20.i:                                ; preds = %stm32_pwm_config.exit.i
  %enabled21.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %73 = ptrtoint ptr %enabled21.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %enabled21.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool22.not.i = icmp eq i8 %74, 0
  br i1 %tobool22.not.i, label %land.lhs.true20.i.stm32_pwm_apply.exit_crit_edge, label %if.then24.i

land.lhs.true20.i.stm32_pwm_apply.exit_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_apply.exit

if.then24.i:                                      ; preds = %land.lhs.true20.i
  %75 = ptrtoint ptr %hwpwm13.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hwpwm13.i, align 8
  %77 = ptrtoint ptr %clk.i54.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clk.i54.i, align 128
  %call.i59.i = call i32 @clk_enable(ptr noundef %78) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool.not.i60.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool.not.i60.i, label %if.end.i.i, label %if.then24.i.stm32_pwm_apply.exit_crit_edge

if.then24.i.stm32_pwm_apply.exit_crit_edge:       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_pwm_apply.exit

if.end.i.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i61.i = shl i32 %76, 2
  %have_complementary_output.i62.i = getelementptr inbounds %struct.stm32_pwm, ptr %chip, i32 0, i32 5
  %79 = ptrtoint ptr %have_complementary_output.i62.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %have_complementary_output.i62.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool1.not.i.i = icmp eq i8 %80, 0
  %spec.select.i63.i = select i1 %tobool1.not.i.i, i32 1, i32 5
  %mask.0.i64.i = shl i32 %spec.select.i63.i, %mul.i61.i
  %81 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i66.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 32, i32 noundef %mask.0.i64.i, i32 noundef %mask.0.i64.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %83 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i20.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %85 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i21.i.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %stm32_pwm_apply.exit

stm32_pwm_apply.exit:                             ; preds = %if.end.i.i, %if.then24.i.stm32_pwm_apply.exit_crit_edge, %land.lhs.true20.i.stm32_pwm_apply.exit_crit_edge, %stm32_pwm_config.exit.i.stm32_pwm_apply.exit_crit_edge, %cleanup.i.i, %while.end.i.i.stm32_pwm_apply.exit_crit_edge, %stm32_pwm_disable.exit.i
  %retval.0.i = phi i32 [ 0, %stm32_pwm_disable.exit.i ], [ 0, %stm32_pwm_config.exit.i.stm32_pwm_apply.exit_crit_edge ], [ 0, %land.lhs.true20.i.stm32_pwm_apply.exit_crit_edge ], [ %call.i59.i, %if.then24.i.stm32_pwm_apply.exit_crit_edge ], [ 0, %if.end.i.i ], [ -22, %while.end.i.i.stm32_pwm_apply.exit_crit_edge ], [ -16, %cleanup.i.i ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pwm_raw_capture(ptr noundef %priv, ptr nocapture noundef readonly %pwm, i32 noundef %tmo_ms, ptr nocapture noundef %raw_prd, ptr nocapture noundef %raw_dty) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 128
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %regmap = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i102 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ult i32 %9, 2
  %cond = select i1 %cmp, i32 0, i32 2
  %cond6 = select i1 %cmp, i32 17, i32 4352
  %cond9 = select i1 %cmp, i32 52, i32 60
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i103 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 32, i32 noundef %cond6, i32 noundef %cond6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %capture = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 9
  %call12 = tail call i32 @stm32_timers_dma_burst_read(ptr noundef %3, ptr noundef %capture, i32 noundef %cond, i32 noundef %cond9, i32 noundef 2, i32 noundef 2, i32 noundef %tmo_ms) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end, label %entry.stop_crit_edge

entry.stop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capture, align 128
  %arrayidx15 = getelementptr %struct.stm32_pwm, ptr %priv, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp16.not = icmp ult i32 %15, %13
  br i1 %cmp16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %15, %13
  br label %if.end27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_arr = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_arr, align 8
  %sub24 = sub i32 %15, %13
  %add = add i32 %sub24, %17
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then17
  %storemerge = phi i32 [ %add, %if.else ], [ %sub, %if.then17 ]
  %18 = ptrtoint ptr %raw_prd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %raw_prd, align 4
  %chip28 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %19 = ptrtoint ptr %chip28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip28, align 8
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp29 = icmp ult i32 %22, 2
  br i1 %cmp29, label %if.end27.if.end52_crit_edge, label %if.else31

if.end27.if.end52_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.else31:                                        ; preds = %if.end27
  %23 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capture, align 128
  %arrayidx35 = getelementptr %struct.stm32_pwm, ptr %priv, i32 0, i32 9, i32 3
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp36.not = icmp ult i32 %26, %24
  br i1 %cmp36.not, label %if.else43, label %if.then37

if.then37:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %sub42 = sub i32 %26, %24
  br label %if.end52

if.else43:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %max_arr44 = getelementptr inbounds %struct.stm32_pwm, ptr %priv, i32 0, i32 4
  %27 = ptrtoint ptr %max_arr44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_arr44, align 8
  %sub47 = sub i32 %26, %24
  %add50 = add i32 %sub47, %28
  br label %if.end52

if.end52:                                         ; preds = %if.else43, %if.then37, %if.end27.if.end52_crit_edge
  %sub42.sink = phi i32 [ %sub42, %if.then37 ], [ %add50, %if.else43 ], [ 0, %if.end27.if.end52_crit_edge ]
  %29 = ptrtoint ptr %raw_dty to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub42.sink, ptr %raw_dty, align 4
  %30 = ptrtoint ptr %raw_prd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %raw_prd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub42.sink, i32 %31)
  %cmp53 = icmp ugt i32 %sub42.sink, %31
  br i1 %cmp53, label %if.then54, label %if.end52.stop_crit_edge

if.end52.stop_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %sub55 = sub i32 %sub42.sink, %31
  %32 = ptrtoint ptr %raw_dty to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub55, ptr %raw_dty, align 4
  br label %stop

stop:                                             ; preds = %if.then54, %if.end52.stop_crit_edge, %entry.stop_crit_edge
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i104 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 32, i32 noundef %cond6, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stm32_timers_dma_burst_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %ccer.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i) #6
  %2 = ptrtoint ptr %ccer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ccer.i, align 4, !annotation !47
  %regmap.i = getelementptr inbounds %struct.stm32_pwm, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %ccer.i) #6
  %5 = ptrtoint ptr %ccer.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccer.i, align 4
  %and.i = and i32 %6, 4369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i) #6
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp16.not = icmp eq i32 %8, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.017, 2
  %shl = shl nuw i32 1, %mul
  %and = and i32 %and.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwms, align 32
  %arrayidx = getelementptr %struct.pwm_device, ptr %10, i32 %i.017
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %i.017, ptr noundef %12) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call3 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call3, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @stm32_pwm_apply_breakinputs(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_pwm_stm32__243_711_stm32_pwm_driver_init6, !1, !"__initcall__kmod_pwm_stm32__243_711_stm32_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-stm32.c", i32 711, i32 1}
!2 = !{ptr @__exitcall_stm32_pwm_driver_exit, !1, !"__exitcall_stm32_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias244, !4, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-stm32.c", i32 713, i32 1}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-stm32.c", i32 714, i32 1}
!7 = !{ptr @__UNIQUE_ID_file246, !8, !"__UNIQUE_ID_file246", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-stm32.c", i32 715, i32 1}
!9 = !{ptr @__UNIQUE_ID_license247, !8, !"__UNIQUE_ID_license247", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-stm32.c", i32 706, i32 11}
!12 = !{ptr @stm32_pwm_driver, !13, !"stm32_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-stm32.c", i32 702, i32 31}
!14 = !{ptr @stm32_pwm_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-stm32.c", i32 620, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-stm32.c", i32 533, i32 43}
!19 = !{ptr @stm32pwm_ops, !20, !"stm32pwm_ops", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-stm32.c", i32 485, i32 29}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pwm/pwm-stm32.c", i32 188, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_pwm_capture._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_pwm_capture._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @stm32_pwm_of_match, !30, !"stm32_pwm_of_match", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-stm32.c", i32 696, i32 34}
!31 = !{ptr @stm32_pwm_pm_ops, !32, !"stm32_pwm_pm_ops", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-stm32.c", i32 694, i32 8}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-stm32.c", i32 672, i32 4}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stm32_pwm_suspend._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_pwm_suspend._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i8 0, i8 2}
!49 = !{i64 1199486, i64 1199513, i64 1199535, i64 1199563}
!50 = !{i64 1199894, i64 1199921, i64 1199954, i64 1199975, i64 1200002, i64 1200028}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2148685030, i64 2148685310, i64 2148685644, i64 2148685978}
