; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-stm32-lp.c_pt.bc'
source_filename = "../drivers/pwm/pwm-stm32-lp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.stm32_lptimer = type { ptr, ptr, i8 }
%struct.stm32_pwm_lp = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_stm32_lp__246_258_stm32_pwm_lp_driver_init6 = internal global ptr @stm32_pwm_lp_driver_init, section ".initcall6.init", align 4
@stm32_pwm_lp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_pwm_lp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_pwm_lp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_pwm_lp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_pwm_lp_driver_exit = internal global ptr @stm32_pwm_lp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"pwm_stm32_lp.alias=platform:stm32-pwm-lp\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [64 x i8] c"pwm_stm32_lp.description=STMicroelectronics STM32 PWM LP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [43 x i8] c"pwm_stm32_lp.file=drivers/pwm/pwm-stm32-lp\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [28 x i8] c"pwm_stm32_lp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32-pwm-lp\00", [19 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-pwm-lp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr @stm32_pwm_lp_suspend, ptr @stm32_pwm_lp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @stm32_pwm_lp_apply, ptr @stm32_pwm_lp_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_apply.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwm_stm32_lp\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_pwm_lp_apply\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-stm32-lp.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't reach %llu ns\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 72, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max prescaler exceeded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_apply._entry_ptr = internal global ptr @stm32_pwm_lp_apply._entry, section ".printk_index", align 4
@stm32_pwm_lp_apply._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ARR/CMP registers write issue\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_apply._entry_ptr.10 = internal global ptr @stm32_pwm_lp_apply._entry.8, section ".printk_index", align 4
@stm32_pwm_lp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"The consumer didn't stop us (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_pwm_lp_suspend\00", [43 x i8] zeroinitializer }, align 32
@stm32_pwm_lp_suspend._entry_ptr = internal global ptr @stm32_pwm_lp_suspend._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"stm32_pwm_lp_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 250, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 253, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"stm32_pwm_lp_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 244, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"stm32_pwm_lp_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 241, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"stm32_pwm_lp_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 190, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 64, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 72, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [30 x i8] c"../drivers/pwm/pwm-stm32-lp.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 228, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_stm32_pwm_lp_driver_exit, ptr @__initcall__kmod_pwm_stm32_lp__246_258_stm32_pwm_lp_driver_init6, ptr @stm32_pwm_lp_apply._entry, ptr @stm32_pwm_lp_apply._entry.8, ptr @stm32_pwm_lp_apply._entry_ptr, ptr @stm32_pwm_lp_apply._entry_ptr.10, ptr @stm32_pwm_lp_driver_exit, ptr @stm32_pwm_lp_suspend._entry, ptr @stm32_pwm_lp_suspend._entry_ptr, ptr @stm32_pwm_lp_driver, ptr @.str, ptr @stm32_pwm_lp_of_match, ptr @stm32_pwm_lp_pm_ops, ptr @stm32_pwm_lp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_apply._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pwm_lp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_pwm_lp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_pwm_lp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_pwm_lp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.stm32_lptimer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %regmap3 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %regmap3, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %clk4 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %clk4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %clk4, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @stm32_pwm_lp_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %npwm, align 4
  %call11 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %cfgr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfgr) #5
  %1 = ptrtoint ptr %cfgr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cfgr, align 4, !annotation !50
  %cstate.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %cstate.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %cstate.sroa.4.0.copyload908 = load i8, ptr %cstate.sroa.4.0.state1.i.sroa_idx, align 4
  %enabled1 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled1, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.then, label %if.end199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.4.0.copyload908)
  %tobool.not = icmp eq i8 %cstate.sroa.4.0.copyload908, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %regmap = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  br label %cleanup

if.end199:                                        ; preds = %entry
  %clk11 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 1
  %9 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk11, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %10) #5
  %conv = zext i32 %call12 to i64
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %state, align 8
  %mul = mul i64 %12, %conv
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #8, !srcloc !52
  %asmresult.i = extractvalue { i64, i32 } %13, 0
  %asmresult4.i = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !53
  %asmresult10.i = extractvalue { i64, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %asmresult10.i)
  %tobool201.not = icmp ult i64 %asmresult10.i, 536870912
  br i1 %tobool201.not, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end199
  %div.0 = lshr i64 %asmresult10.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184372088831, i64 %asmresult10.i)
  %cmp218952 = icmp ugt i64 %asmresult10.i, 35184372088831
  br i1 %cmp218952, label %while.body.preheader, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %shr231 = lshr i64 %asmresult10.i, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 70368744177663, i64 %asmresult10.i)
  %cmp218 = icmp ugt i64 %asmresult10.i, 70368744177663
  br i1 %cmp218, label %while.body.1, label %while.body.preheader.while.end_crit_edge

while.body.preheader.while.end_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body:                                          ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_pwm_lp_apply.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_pwm_lp_apply, %if.then213)) #5
          to label %cleanup [label %if.then213], !srcloc !54

if.then213:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %state, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_pwm_lp_apply.__UNIQUE_ID_ddebug210, ptr noundef %16, ptr noundef nonnull @.str.4, i64 noundef %18) #5
  br label %cleanup

while.body.1:                                     ; preds = %while.body.preheader
  %shr231.1 = lshr i64 %asmresult10.i, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355327, i64 %asmresult10.i)
  %cmp218.1 = icmp ugt i64 %asmresult10.i, 140737488355327
  br i1 %cmp218.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %shr231.2 = lshr i64 %asmresult10.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474976710655, i64 %asmresult10.i)
  %cmp218.2 = icmp ugt i64 %asmresult10.i, 281474976710655
  br i1 %cmp218.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %shr231.3 = lshr i64 %asmresult10.i, 33
  call void @__sanitizer_cov_trace_const_cmp8(i64 562949953421311, i64 %asmresult10.i)
  %cmp218.3 = icmp ugt i64 %asmresult10.i, 562949953421311
  br i1 %cmp218.3, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %shr231.4 = lshr i64 %asmresult10.i, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842623, i64 %asmresult10.i)
  %cmp218.4 = icmp ugt i64 %asmresult10.i, 1125899906842623
  br i1 %cmp218.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %shr231.5 = lshr i64 %asmresult10.i, 35
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251799813685247, i64 %asmresult10.i)
  %cmp218.5 = icmp ugt i64 %asmresult10.i, 2251799813685247
  br i1 %cmp218.5, label %while.body.6, label %while.body.5.while.end_crit_edge

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %shr231.6 = lshr i64 %asmresult10.i, 36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370495, i64 %asmresult10.i)
  %cmp218.6 = icmp ugt i64 %asmresult10.i, 4503599627370495
  br i1 %cmp218.6, label %do.end226, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end226:                                        ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5) #9
  br label %cleanup

while.end:                                        ; preds = %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.preheader.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %div.1.lcssa = phi i64 [ %div.0, %while.cond.preheader.while.end_crit_edge ], [ %shr231, %while.body.preheader.while.end_crit_edge ], [ %shr231.1, %while.body.1.while.end_crit_edge ], [ %shr231.2, %while.body.2.while.end_crit_edge ], [ %shr231.3, %while.body.3.while.end_crit_edge ], [ %shr231.4, %while.body.4.while.end_crit_edge ], [ %shr231.5, %while.body.5.while.end_crit_edge ], [ %shr231.6, %while.body.6.while.end_crit_edge ]
  %presc.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 1, %while.body.preheader.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ 6, %while.body.5.while.end_crit_edge ], [ 7, %while.body.6.while.end_crit_edge ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %21 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %duty_cycle, align 8
  %mul232 = mul i64 %22, %div.1.lcssa
  %conv235 = trunc i64 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul232)
  %cmp436 = icmp ult i64 %mul232, 4294967296
  br i1 %cmp436, label %if.then444, label %if.else450, !prof !55

if.then444:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv445 = trunc i64 %mul232 to i32
  %div448 = udiv i32 %conv445, %conv235
  %conv449 = zext i32 %div448 to i64
  br label %if.end454

if.else450:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv235, i64 %mul232) #8, !srcloc !56
  %asmresult1.i = extractvalue { i64, i64 } %23, 1
  br label %if.end454

if.end454:                                        ; preds = %if.else450, %if.then444
  %dty.0 = phi i64 [ %conv449, %if.then444 ], [ %asmresult1.i, %if.else450 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.4.0.copyload908)
  %tobool457.not = icmp eq i8 %cstate.sroa.4.0.copyload908, 0
  br i1 %tobool457.not, label %if.then458, label %if.end454.if.end464_crit_edge

if.end454.if.end464_crit_edge:                    ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end464

if.then458:                                       ; preds = %if.end454
  %24 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk11, align 4
  %call460 = tail call i32 @clk_enable(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call460)
  %tobool461.not = icmp eq i32 %call460, 0
  br i1 %tobool461.not, label %if.then458.if.end464_crit_edge, label %if.then458.cleanup_crit_edge

if.then458.cleanup_crit_edge:                     ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then458.if.end464_crit_edge:                   ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end464

if.end464:                                        ; preds = %if.then458.if.end464_crit_edge, %if.end454.if.end464_crit_edge
  %regmap465 = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 2
  %26 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap465, align 4
  %call466 = call i32 @regmap_read(ptr noundef %27, i32 noundef 12, ptr noundef nonnull %cfgr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call466)
  %tobool467.not = icmp eq i32 %call466, 0
  br i1 %tobool467.not, label %do.end484, label %if.end464.err_crit_edge

if.end464.err_crit_edge:                          ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end484:                                        ; preds = %if.end464
  %28 = ptrtoint ptr %cfgr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfgr, align 4
  %and486 = lshr i32 %29, 9
  %shr487 = and i32 %and486, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %shr487, i32 %presc.0.lcssa)
  %cmp488.not = icmp eq i32 %shr487, %presc.0.lcssa
  br i1 %cmp488.not, label %do.end504, label %do.end484.do.end557_crit_edge

do.end484.do.end557_crit_edge:                    ; preds = %do.end484
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end557

do.end504:                                        ; preds = %do.end484
  %and506 = lshr i32 %29, 21
  %shr507 = and i32 %and506, 1
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %30 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr507, i32 %31)
  %cmp508.not = icmp eq i32 %shr507, %31
  br i1 %cmp508.not, label %if.end573, label %do.end504.do.end557_crit_edge

do.end504.do.end557_crit_edge:                    ; preds = %do.end504
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end557

do.end557:                                        ; preds = %do.end504.do.end557_crit_edge, %do.end484.do.end557_crit_edge
  %polarity542 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %32 = ptrtoint ptr %polarity542 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %polarity542, align 8
  %shl533 = shl nuw nsw i32 %presc.0.lcssa, 9
  %shl560 = shl i32 %33, 21
  %and561 = and i32 %shl560, 2097152
  %or562 = or i32 %and561, %shl533
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or562, ptr %val, align 4
  %35 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap465, align 4
  %call564 = call i32 @regmap_write(ptr noundef %36, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call564)
  %tobool565.not = icmp eq i32 %call564, 0
  br i1 %tobool565.not, label %if.end567, label %do.end557.err_crit_edge

do.end557.err_crit_edge:                          ; preds = %do.end557
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end567:                                        ; preds = %do.end557
  %37 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap465, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 12, i32 noundef 2100736, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool570.not = icmp eq i32 %call.i, 0
  br i1 %tobool570.not, label %if.end567.if.then575_crit_edge, label %if.end567.err_crit_edge

if.end567.err_crit_edge:                          ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end567.if.then575_crit_edge:                   ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then575

if.end573:                                        ; preds = %do.end504
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cstate.sroa.4.0.copyload908)
  %extract.t.not = icmp eq i8 %cstate.sroa.4.0.copyload908, 1
  br i1 %extract.t.not, label %if.end573.if.end581_crit_edge, label %if.end573.if.then575_crit_edge

if.end573.if.then575_crit_edge:                   ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then575

if.end573.if.end581_crit_edge:                    ; preds = %if.end573
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end581

if.then575:                                       ; preds = %if.end573.if.then575_crit_edge, %if.end567.if.then575_crit_edge
  %41 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap465, align 4
  %call577 = call i32 @regmap_write(ptr noundef %42, i32 noundef 16, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call577)
  %tobool578.not = icmp eq i32 %call577, 0
  br i1 %tobool578.not, label %if.then575.if.end581_crit_edge, label %if.then575.err_crit_edge

if.then575.err_crit_edge:                         ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.then575.if.end581_crit_edge:                   ; preds = %if.then575
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end581

if.end581:                                        ; preds = %if.then575.if.end581_crit_edge, %if.end573.if.end581_crit_edge
  %reenable.0.off0935 = phi i1 [ true, %if.then575.if.end581_crit_edge ], [ false, %if.end573.if.end581_crit_edge ]
  %43 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap465, align 4
  %45 = trunc i64 %div.1.lcssa to i32
  %conv584 = add nsw i32 %45, -1
  %call585 = call i32 @regmap_write(ptr noundef %44, i32 noundef 24, i32 noundef %conv584) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call585)
  %tobool586.not = icmp eq i32 %call585, 0
  br i1 %tobool586.not, label %if.end588, label %if.end581.err_crit_edge

if.end581.err_crit_edge:                          ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end588:                                        ; preds = %if.end581
  %46 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap465, align 4
  %add590.neg = xor i64 %dty.0, -1
  %sub591 = add i64 %div.1.lcssa, %add590.neg
  %conv592 = trunc i64 %sub591 to i32
  %call593 = call i32 @regmap_write(ptr noundef %47, i32 noundef 20, i32 noundef %conv592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call593)
  %tobool594.not = icmp eq i32 %call593, 0
  br i1 %tobool594.not, label %if.end596, label %if.end588.err_crit_edge

if.end588.err_crit_edge:                          ; preds = %if.end588
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end596:                                        ; preds = %if.end588
  %call597 = call i64 @ktime_get() #5
  %add.i = add i64 %call597, 1000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 131) #5
  %48 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap465, align 4
  %call613955 = call i32 @regmap_read(ptr noundef %49, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call613955)
  %tobool614.not956 = icmp eq i32 %call613955, 0
  br i1 %tobool614.not956, label %if.end596.lor.lhs.false615_crit_edge, label %if.end596.do.end650_crit_edge

if.end596.do.end650_crit_edge:                    ; preds = %if.end596
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end650

if.end596.lor.lhs.false615_crit_edge:             ; preds = %if.end596
  br label %lor.lhs.false615

lor.lhs.false615:                                 ; preds = %if.then631.lor.lhs.false615_crit_edge, %if.end596.lor.lhs.false615_crit_edge
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %and616 = and i32 %51, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and616)
  %tobool617.not = icmp eq i32 %and616, 0
  br i1 %tobool617.not, label %land.lhs.true621, label %lor.lhs.false615.lor.rhs_crit_edge

lor.lhs.false615.lor.rhs_crit_edge:               ; preds = %lor.lhs.false615
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true621:                                 ; preds = %lor.lhs.false615
  %call622 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call622, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call622, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then631

if.then631:                                       ; preds = %land.lhs.true621
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %52 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap465, align 4
  %call613 = call i32 @regmap_read(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %val) #5
  %tobool614.not = icmp eq i32 %call613, 0
  br i1 %tobool614.not, label %if.then631.lor.lhs.false615_crit_edge, label %if.then631.do.end650_crit_edge

if.then631.do.end650_crit_edge:                   ; preds = %if.then631
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end650

if.then631.lor.lhs.false615_crit_edge:            ; preds = %if.then631
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false615

for.end:                                          ; preds = %land.lhs.true621
  %54 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap465, align 4
  %call628 = call i32 @regmap_read(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call628)
  %tobool636.not = icmp eq i32 %call628, 0
  br i1 %tobool636.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end650_crit_edge

for.end.do.end650_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end650

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false615.lor.rhs_crit_edge
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %and637 = and i32 %57, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and637)
  %tobool638.not = icmp eq i32 %and637, 0
  br i1 %tobool638.not, label %lor.rhs.do.end650_crit_edge, label %if.end653

lor.rhs.do.end650_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end650

do.end650:                                        ; preds = %lor.rhs.do.end650_crit_edge, %for.end.do.end650_crit_edge, %if.then631.do.end650_crit_edge, %if.end596.do.end650_crit_edge
  %tobool636.not941.ph = phi i32 [ %call613955, %if.end596.do.end650_crit_edge ], [ %call628, %for.end.do.end650_crit_edge ], [ -110, %lor.rhs.do.end650_crit_edge ], [ %call613, %if.then631.do.end650_crit_edge ]
  %58 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.9) #9
  br label %err

if.end653:                                        ; preds = %lor.rhs
  %60 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap465, align 4
  %call655 = call i32 @regmap_write(ptr noundef %61, i32 noundef 4, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call655)
  %tobool656.not = icmp eq i32 %call655, 0
  br i1 %tobool656.not, label %if.end658, label %if.end653.err_crit_edge

if.end653.err_crit_edge:                          ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end658:                                        ; preds = %if.end653
  br i1 %reenable.0.off0935, label %if.then660, label %if.end658.cleanup_crit_edge

if.end658.cleanup_crit_edge:                      ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then660:                                       ; preds = %if.end658
  %62 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap465, align 4
  %call.i907 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i907)
  %tobool663.not = icmp eq i32 %call.i907, 0
  br i1 %tobool663.not, label %if.then660.cleanup_crit_edge, label %if.then664

if.then660.cleanup_crit_edge:                     ; preds = %if.then660
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then664:                                       ; preds = %if.then660
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %regmap465 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap465, align 4
  %call666 = call i32 @regmap_write(ptr noundef %65, i32 noundef 16, i32 noundef 0) #5
  br label %err

err:                                              ; preds = %if.then664, %if.end653.err_crit_edge, %do.end650, %if.end588.err_crit_edge, %if.end581.err_crit_edge, %if.then575.err_crit_edge, %if.end567.err_crit_edge, %do.end557.err_crit_edge, %if.end464.err_crit_edge
  %ret.0 = phi i32 [ %call466, %if.end464.err_crit_edge ], [ %call564, %do.end557.err_crit_edge ], [ %call.i, %if.end567.err_crit_edge ], [ %call577, %if.then575.err_crit_edge ], [ %call585, %if.end581.err_crit_edge ], [ %call593, %if.end588.err_crit_edge ], [ %tobool636.not941.ph, %do.end650 ], [ %call655, %if.end653.err_crit_edge ], [ %call.i907, %if.then664 ]
  br i1 %tobool457.not, label %if.then671, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then671:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %clk11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk11, align 4
  call void @clk_disable(ptr noundef %67) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then671, %err.cleanup_crit_edge, %if.then660.cleanup_crit_edge, %if.end658.cleanup_crit_edge, %if.then458.cleanup_crit_edge, %do.end226, %if.then213, %do.body, %if.end, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end226 ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.then.cleanup_crit_edge ], [ -22, %if.then213 ], [ %call460, %if.then458.cleanup_crit_edge ], [ 0, %if.then660.cleanup_crit_edge ], [ 0, %if.end658.cleanup_crit_edge ], [ %ret.0, %if.then671 ], [ %ret.0, %err.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfgr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_pwm_lp_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %prd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prd) #5
  %3 = ptrtoint ptr %prd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %prd, align 4, !annotation !50
  %regmap = getelementptr inbounds %struct.stm32_pwm_lp, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %val) #5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %8 = trunc i32 %and to i8
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %enabled, align 4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call20 = call i32 @clk_enable(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %13, i32 noundef 12, ptr noundef nonnull %val) #5
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and39 = lshr i32 %15, 9
  %shr40 = and i32 %and39, 7
  %and57 = lshr i32 %15, 21
  %shr58 = and i32 %and57, 1
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr58, ptr %polarity, align 8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_read(ptr noundef %18, i32 noundef 24, ptr noundef nonnull %prd) #5
  %19 = ptrtoint ptr %prd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prd, align 4
  %add = add i32 %20, 1
  %conv = zext i32 %add to i64
  %sh_prom = zext i32 %shr40 to i64
  %shl = shl nuw nsw i64 %conv, %sh_prom
  %mul = mul i64 %shl, 1000000000
  %div666 = lshr i32 %call1, 1
  %conv61 = zext i32 %div666 to i64
  %add62 = add i64 %mul, %conv61
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add62)
  %cmp240 = icmp ult i64 %add62, 4294967296
  br i1 %cmp240, label %if.then245, label %if.else251, !prof !55

if.then245:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv246 = trunc i64 %add62 to i32
  %div249 = udiv i32 %conv246, %call1
  %conv250 = zext i32 %div249 to i64
  br label %if.end255

if.else251:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %add62) #8, !srcloc !56
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  br label %if.end255

if.end255:                                        ; preds = %if.else251, %if.then245
  %_tmp.0 = phi i64 [ %conv250, %if.then245 ], [ %asmresult1.i, %if.else251 ]
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %_tmp.0, ptr %state, align 8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call259 = call i32 @regmap_read(ptr noundef %24, i32 noundef 20, ptr noundef nonnull %val) #5
  %25 = ptrtoint ptr %prd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %prd, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %sub260 = sub i32 %26, %28
  %conv261 = zext i32 %sub260 to i64
  %shl263 = shl nuw nsw i64 %conv261, %sh_prom
  %mul264 = mul i64 %shl263, 1000000000
  %add269 = add i64 %mul264, %conv61
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add269)
  %cmp471 = icmp ult i64 %add269, 4294967296
  br i1 %cmp471, label %if.then479, label %if.else485, !prof !55

if.then479:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  %conv480 = trunc i64 %add269 to i32
  %div483 = udiv i32 %conv480, %call1
  %conv484 = zext i32 %div483 to i64
  br label %if.end489

if.else485:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %add269) #8, !srcloc !56
  %asmresult1.i694 = extractvalue { i64, i64 } %29, 1
  br label %if.end489

if.end489:                                        ; preds = %if.else485, %if.then479
  %_tmp266.0 = phi i64 [ %conv484, %if.then479 ], [ %asmresult1.i694, %if.else485 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %30 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %_tmp266.0, ptr %duty_cycle, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %state.sroa.4.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %state.sroa.4.0.copyload9 = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload9)
  %tobool.not = icmp eq i8 %state.sroa.4.0.copyload9, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pwm_lp_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_pwm_stm32_lp__246_258_stm32_pwm_lp_driver_init6, !1, !"__initcall__kmod_pwm_stm32_lp__246_258_stm32_pwm_lp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 258, i32 1}
!2 = !{ptr @__exitcall_stm32_pwm_lp_driver_exit, !1, !"__exitcall_stm32_pwm_lp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias247, !4, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 260, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 261, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 262, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 253, i32 11}
!12 = !{ptr @stm32_pwm_lp_driver, !13, !"stm32_pwm_lp_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 250, i32 31}
!14 = !{ptr @stm32_pwm_lp_ops, !15, !"stm32_pwm_lp_ops", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 190, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 64, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @stm32_pwm_lp_apply.__UNIQUE_ID_ddebug210, !17, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 72, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @stm32_pwm_lp_apply._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @stm32_pwm_lp_apply._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 133, i32 3}
!30 = !{ptr @stm32_pwm_lp_apply._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @stm32_pwm_lp_apply._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @stm32_pwm_lp_of_match, !33, !"stm32_pwm_lp_of_match", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 244, i32 34}
!34 = !{ptr @stm32_pwm_lp_pm_ops, !35, !"stm32_pwm_lp_pm_ops", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 241, i32 8}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-stm32-lp.c", i32 228, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @stm32_pwm_lp_suspend._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @stm32_pwm_lp_suspend._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
!52 = !{i64 1183088, i64 1183115, i64 1183137, i64 1183165}
!53 = !{i64 1183496, i64 1183523, i64 1183556, i64 1183577, i64 1183604, i64 1183630}
!54 = !{i64 2148759913, i64 2148759918, i64 2148759931, i64 2148759975, i64 2148760009, i64 2148760030}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148668632, i64 2148668912, i64 2148669246, i64 2148669580}
