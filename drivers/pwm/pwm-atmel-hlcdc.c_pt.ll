; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-atmel-hlcdc.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel-hlcdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_hlcdc_pwm_errata = type { i8, i8 }
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
%struct.atmel_hlcdc = type { ptr, ptr, ptr, ptr, i32 }
%struct.atmel_hlcdc_pwm = type { %struct.pwm_chip, ptr, ptr, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_atmel_hlcdc__170_306_atmel_hlcdc_pwm_driver_init6 = internal global ptr @atmel_hlcdc_pwm_driver_init, section ".initcall6.init", align 4
@atmel_hlcdc_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_hlcdc_pwm_probe, ptr @atmel_hlcdc_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_hlcdc_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_hlcdc_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_hlcdc_pwm_driver_exit = internal global ptr @atmel_hlcdc_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias171 = internal constant [47 x i8] c"pwm_atmel_hlcdc.alias=platform:atmel-hlcdc-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [76 x i8] c"pwm_atmel_hlcdc.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [51 x i8] c"pwm_atmel_hlcdc.description=Atmel HLCDC PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [49 x i8] c"pwm_atmel_hlcdc.file=drivers/pwm/pwm-atmel-hlcdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [31 x i8] c"pwm_atmel_hlcdc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel-hlcdc-pwm\00", [16 x i8] zeroinitializer }, align 32
@atmel_hlcdc_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,hlcdc-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_hlcdc_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr @atmel_hlcdc_pwm_suspend, ptr @atmel_hlcdc_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_hlcdc_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_at91sam9x5_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_at91sam9x5_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_sama5d3_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_hlcdc_pwm_sama5d3_errata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-hlcdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@atmel_hlcdc_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @atmel_hlcdc_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@atmel_hlcdc_pwm_at91sam9x5_errata = internal constant { %struct.atmel_hlcdc_pwm_errata, [30 x i8] } { %struct.atmel_hlcdc_pwm_errata { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@atmel_hlcdc_pwm_sama5d3_errata = internal constant { %struct.atmel_hlcdc_pwm_errata, [30 x i8] } { %struct.atmel_hlcdc_pwm_errata { i8 0, i8 1 }, [30 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/pwm/pwm-atmel-hlcdc.c\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_pwm_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 297, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 299, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_pwm_dt_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 292, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"atmel_hlcdc_pwm_pm_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 214, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"atmel_hlcdc_dt_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 217, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"atmel_hlcdc_pwm_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 170, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [34 x i8] c"atmel_hlcdc_pwm_at91sam9x5_errata\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 175, i32 44 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"atmel_hlcdc_pwm_sama5d3_errata\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 179, i32 44 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [33 x i8] c"../drivers/pwm/pwm-atmel-hlcdc.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 144, i32 9 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_atmel_hlcdc_pwm_driver_exit, ptr @__initcall__kmod_pwm_atmel_hlcdc__170_306_atmel_hlcdc_pwm_driver_init6, ptr @atmel_hlcdc_pwm_driver_exit, ptr @atmel_hlcdc_pwm_driver, ptr @.str, ptr @atmel_hlcdc_pwm_dt_ids, ptr @atmel_hlcdc_pwm_pm_ops, ptr @atmel_hlcdc_dt_ids, ptr @atmel_hlcdc_pwm_ops, ptr @atmel_hlcdc_pwm_at91sam9x5_errata, ptr @atmel_hlcdc_pwm_sama5d3_errata, ptr @.str.1], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_at91sam9x5_errata to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_hlcdc_pwm_sama5d3_errata to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_hlcdc_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_hlcdc_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_hlcdc_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %periph_clk, align 4
  %call.i44 = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_hlcdc_dt_ids, ptr noundef %9) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.if.end11_crit_edge, label %if.then10

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %errata = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %errata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %errata, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %hlcdc12 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %hlcdc12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %hlcdc12, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @atmel_hlcdc_pwm_ops, ptr %ops, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %call.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %npwm, align 4
  %call18 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %periph_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then3.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then20 ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i44, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %periph_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_apply(ptr nocapture noundef %c, ptr nocapture noundef readnone %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hlcdc1 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %hlcdc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hlcdc1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !39
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else782, label %if.then

if.then:                                          ; preds = %entry
  %slow_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %slow_clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slow_clk, align 4
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %duty_cycle, align 8
  %mul = shl i64 %8, 8
  %errata = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %c, i32 0, i32 3
  %9 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %errata, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.then.if.then5_crit_edge, label %lor.lhs.false

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.then
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.if.then204_crit_edge

lor.lhs.false.if.then204_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then204

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %call6 = tail call i32 @clk_get_rate(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.cleanup854_crit_edge, label %if.else187

if.then5.cleanup854_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.else187:                                       ; preds = %if.then5
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call6, i64 256000000000) #8, !srcloc !41
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  %14 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %errata, align 4
  %tobool195.not = icmp eq ptr %.pr, null
  br i1 %tobool195.not, label %if.else187.lor.lhs.false201_crit_edge, label %land.lhs.true196

if.else187.lor.lhs.false201_crit_edge:            ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false201

land.lhs.true196:                                 ; preds = %if.else187
  %15 = ptrtoint ptr %.pr to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr1247 = load i8, ptr %.pr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr1247)
  %tobool199.not = icmp eq i8 %.pr1247, 0
  br i1 %tobool199.not, label %land.lhs.true196.lor.lhs.false201_crit_edge, label %land.lhs.true196.if.then204_crit_edge

land.lhs.true196.if.then204_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then204

land.lhs.true196.lor.lhs.false201_crit_edge:      ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %land.lhs.true196.lor.lhs.false201_crit_edge, %if.else187.lor.lhs.false201_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %asmresult1.i, i64 %17)
  %cmp202 = icmp ugt i64 %asmresult1.i, %17
  br i1 %cmp202, label %lor.lhs.false201.if.then204_crit_edge, label %lor.lhs.false201.land.lhs.true434_crit_edge

lor.lhs.false201.land.lhs.true434_crit_edge:      ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true434

lor.lhs.false201.if.then204_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then204

if.then204:                                       ; preds = %lor.lhs.false201.if.then204_crit_edge, %land.lhs.true196.if.then204_crit_edge, %lor.lhs.false.if.then204_crit_edge
  %sys_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sys_clk, align 4
  %call205 = tail call i32 @clk_get_rate(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then204.cleanup854_crit_edge, label %if.else424

if.then204.cleanup854_crit_edge:                  ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.else424:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call205, i64 256000000000) #8, !srcloc !41
  %asmresult1.i1201 = extractvalue { i64, i64 } %20, 1
  br label %land.lhs.true434

land.lhs.true434:                                 ; preds = %if.else424, %lor.lhs.false201.land.lhs.true434_crit_edge
  %clk_period_ns.1 = phi i64 [ %asmresult1.i1201, %if.else424 ], [ %asmresult1.i, %lor.lhs.false201.land.lhs.true434_crit_edge ]
  %new_clk.0 = phi ptr [ %19, %if.else424 ], [ %6, %lor.lhs.false201.land.lhs.true434_crit_edge ]
  %21 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %errata, align 4
  %tobool436.not = icmp eq ptr %22, null
  br i1 %tobool436.not, label %land.lhs.true434.if.end442_crit_edge, label %land.lhs.true437

land.lhs.true434.if.end442_crit_edge:             ; preds = %land.lhs.true434
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442

land.lhs.true437:                                 ; preds = %land.lhs.true434
  %div1_clk_erratum = getelementptr inbounds %struct.atmel_hlcdc_pwm_errata, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %div1_clk_erratum to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %div1_clk_erratum, align 1, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool439.not = icmp eq i8 %24, 0
  br i1 %tobool439.not, label %land.lhs.true437.if.end442_crit_edge, label %land.lhs.true437.if.end442.1_crit_edge

land.lhs.true437.if.end442.1_crit_edge:           ; preds = %land.lhs.true437
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442.1

land.lhs.true437.if.end442_crit_edge:             ; preds = %land.lhs.true437
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442

if.end442:                                        ; preds = %land.lhs.true437.if.end442_crit_edge, %land.lhs.true434.if.end442_crit_edge
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %clk_period_ns.1, i64 %26)
  %cmp446.not = icmp ult i64 %clk_period_ns.1, %26
  br i1 %cmp446.not, label %if.end442.if.end442.1_crit_edge, label %if.end442.if.end453_crit_edge

if.end442.if.end453_crit_edge:                    ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.if.end442.1_crit_edge:                  ; preds = %if.end442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end442.1

if.end442.1:                                      ; preds = %if.end442.if.end442.1_crit_edge, %land.lhs.true437.if.end442.1_crit_edge
  %shl444.1 = shl i64 %clk_period_ns.1, 1
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.1, i64 %28)
  %cmp446.not.1 = icmp ult i64 %shl444.1, %28
  br i1 %cmp446.not.1, label %if.end442.2, label %if.end442.1.if.end453_crit_edge

if.end442.1.if.end453_crit_edge:                  ; preds = %if.end442.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.2:                                      ; preds = %if.end442.1
  %shl444.2 = shl i64 %clk_period_ns.1, 2
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.2, i64 %30)
  %cmp446.not.2 = icmp ult i64 %shl444.2, %30
  br i1 %cmp446.not.2, label %if.end442.3, label %if.end442.2.if.end453_crit_edge

if.end442.2.if.end453_crit_edge:                  ; preds = %if.end442.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.3:                                      ; preds = %if.end442.2
  %shl444.3 = shl i64 %clk_period_ns.1, 3
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.3, i64 %32)
  %cmp446.not.3 = icmp ult i64 %shl444.3, %32
  br i1 %cmp446.not.3, label %if.end442.4, label %if.end442.3.if.end453_crit_edge

if.end442.3.if.end453_crit_edge:                  ; preds = %if.end442.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.4:                                      ; preds = %if.end442.3
  %shl444.4 = shl i64 %clk_period_ns.1, 4
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.4, i64 %34)
  %cmp446.not.4 = icmp ult i64 %shl444.4, %34
  br i1 %cmp446.not.4, label %if.end442.5, label %if.end442.4.if.end453_crit_edge

if.end442.4.if.end453_crit_edge:                  ; preds = %if.end442.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.5:                                      ; preds = %if.end442.4
  %shl444.5 = shl i64 %clk_period_ns.1, 5
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.5, i64 %36)
  %cmp446.not.5 = icmp ult i64 %shl444.5, %36
  br i1 %cmp446.not.5, label %if.end442.6, label %if.end442.5.if.end453_crit_edge

if.end442.5.if.end453_crit_edge:                  ; preds = %if.end442.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.6:                                      ; preds = %if.end442.5
  %shl444.6 = shl i64 %clk_period_ns.1, 6
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl444.6, i64 %38)
  %cmp446.not.6 = icmp ult i64 %shl444.6, %38
  br i1 %cmp446.not.6, label %if.end442.6.cleanup854_crit_edge, label %if.end442.6.if.end453_crit_edge

if.end442.6.if.end453_crit_edge:                  ; preds = %if.end442.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end453

if.end442.6.cleanup854_crit_edge:                 ; preds = %if.end442.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end453:                                        ; preds = %if.end442.6.if.end453_crit_edge, %if.end442.5.if.end453_crit_edge, %if.end442.4.if.end453_crit_edge, %if.end442.3.if.end453_crit_edge, %if.end442.2.if.end453_crit_edge, %if.end442.1.if.end453_crit_edge, %if.end442.if.end453_crit_edge
  %pres.01310.lcssa = phi i32 [ 0, %if.end442.if.end453_crit_edge ], [ 1, %if.end442.1.if.end453_crit_edge ], [ 2, %if.end442.2.if.end453_crit_edge ], [ 3, %if.end442.3.if.end453_crit_edge ], [ 4, %if.end442.4.if.end453_crit_edge ], [ 5, %if.end442.5.if.end453_crit_edge ], [ 6, %if.end442.6.if.end453_crit_edge ]
  %cur_clk = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %c, i32 0, i32 2
  %39 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_clk, align 4
  %cmp455.not = icmp eq ptr %new_clk.0, %40
  br i1 %cmp455.not, label %if.end453.if.end475_crit_edge, label %if.then457

if.end453.if.end475_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end475

if.then457:                                       ; preds = %if.end453
  %call.i = tail call i32 @clk_prepare(ptr noundef %new_clk.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then457.cleanup854_crit_edge

if.then457.cleanup854_crit_edge:                  ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end.i:                                         ; preds = %if.then457
  %call1.i = tail call i32 @clk_enable(ptr noundef %new_clk.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %cleanup, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %new_clk.0) #5
  br label %cleanup854

cleanup:                                          ; preds = %if.end.i
  %41 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur_clk, align 4
  tail call void @clk_disable(ptr noundef %42) #5
  tail call void @clk_unprepare(ptr noundef %42) #5
  %43 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %new_clk.0, ptr %cur_clk, align 4
  %sys_clk465 = getelementptr inbounds %struct.atmel_hlcdc, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %sys_clk465 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sys_clk465, align 4
  %cmp466 = icmp eq ptr %new_clk.0, %45
  %spec.select = select i1 %cmp466, i32 8, i32 0
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i1202 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 0, i32 noundef 8, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1202)
  %tobool471.not = icmp eq i32 %call.i1202, 0
  br i1 %tobool471.not, label %cleanup.if.end475_crit_edge, label %cleanup.cleanup854_crit_edge

cleanup.cleanup854_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

cleanup.if.end475_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end475

if.end475:                                        ; preds = %cleanup.if.end475_crit_edge, %if.end453.if.end475_crit_edge
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %state, align 8
  %conv478 = trunc i64 %49 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp679 = icmp ult i64 %mul, 4294967296
  br i1 %cmp679, label %if.then687, label %if.else693, !prof !42

if.then687:                                       ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #7
  %conv688 = trunc i64 %mul to i32
  %div691 = udiv i32 %conv688, %conv478
  %conv692 = zext i32 %div691 to i64
  br label %if.end697

if.else693:                                       ; preds = %if.end475
  call void @__sanitizer_cov_trace_pc() #7
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv478, i64 %mul) #8, !srcloc !41
  %asmresult1.i1209 = extractvalue { i64, i64 } %50, 1
  br label %if.end697

if.end697:                                        ; preds = %if.else693, %if.then687
  %pwmcval.0 = phi i64 [ %conv692, %if.then687 ], [ %asmresult1.i1209, %if.else693 ]
  %51 = tail call i64 @llvm.umin.i64(i64 %pwmcval.0, i64 255)
  %.tr = trunc i64 %51 to i32
  %52 = shl nuw nsw i32 %.tr, 8
  %conv707 = or i32 %52, %pres.01310.lcssa
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %53 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp708 = icmp eq i32 %54, 0
  %or711 = or i32 %conv707, 16
  %spec.select1169 = select i1 %cmp708, i32 %or711, i32 %conv707
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i1210 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 24, i32 noundef 65303, i32 noundef %spec.select1169, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1210)
  %tobool715.not = icmp eq i32 %call.i1210, 0
  br i1 %tobool715.not, label %if.end717, label %if.end697.cleanup854_crit_edge

if.end697.cleanup854_crit_edge:                   ; preds = %if.end697
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end717:                                        ; preds = %if.end697
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call719 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 32, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call719)
  %tobool720.not = icmp eq i32 %call719, 0
  br i1 %tobool720.not, label %if.end722, label %if.end717.cleanup854_crit_edge

if.end717.cleanup854_crit_edge:                   ; preds = %if.end717
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end722:                                        ; preds = %if.end717
  %call723 = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 147) #5
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call7371312 = call i32 @regmap_read(ptr noundef %60, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7371312)
  %tobool738.not1313 = icmp eq i32 %call7371312, 0
  br i1 %tobool738.not1313, label %if.end722.lor.lhs.false739_crit_edge, label %if.end722.cleanup854_crit_edge

if.end722.cleanup854_crit_edge:                   ; preds = %if.end722
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end722.lor.lhs.false739_crit_edge:             ; preds = %if.end722
  br label %lor.lhs.false739

lor.lhs.false739:                                 ; preds = %if.then755.lor.lhs.false739_crit_edge, %if.end722.lor.lhs.false739_crit_edge
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 4
  %and740 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and740)
  %tobool741.not = icmp eq i32 %and740, 0
  br i1 %tobool741.not, label %if.then755, label %65

if.then755:                                       ; preds = %lor.lhs.false739
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call737 = call i32 @regmap_read(ptr noundef %64, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool738.not = icmp eq i32 %call737, 0
  br i1 %tobool738.not, label %if.then755.lor.lhs.false739_crit_edge, label %if.then755.cleanup854_crit_edge

if.then755.cleanup854_crit_edge:                  ; preds = %if.then755
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.then755.lor.lhs.false739_crit_edge:            ; preds = %if.then755
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false739

65:                                               ; preds = %lor.lhs.false739
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 4
  %and762 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and762)
  %tobool763.not = icmp eq i32 %and762, 0
  %spec.select1304 = select i1 %tobool763.not, i32 -110, i32 0
  br label %cleanup854

if.else782:                                       ; preds = %entry
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call784 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 36, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call784)
  %tobool785.not = icmp eq i32 %call784, 0
  br i1 %tobool785.not, label %if.end787, label %if.else782.cleanup854_crit_edge

if.else782.cleanup854_crit_edge:                  ; preds = %if.else782
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end787:                                        ; preds = %if.else782
  %call793 = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 159) #5
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call8101314 = call i32 @regmap_read(ptr noundef %71, i32 noundef 40, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8101314)
  %tobool811.not1315 = icmp eq i32 %call8101314, 0
  br i1 %tobool811.not1315, label %if.end787.lor.lhs.false812_crit_edge, label %if.end787.cleanup854_crit_edge

if.end787.cleanup854_crit_edge:                   ; preds = %if.end787
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end787.lor.lhs.false812_crit_edge:             ; preds = %if.end787
  br label %lor.lhs.false812

lor.lhs.false812:                                 ; preds = %if.then828.lor.lhs.false812_crit_edge, %if.end787.lor.lhs.false812_crit_edge
  %72 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status, align 4
  %and813 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and813)
  %tobool814.not = icmp eq i32 %and813, 0
  br i1 %tobool814.not, label %76, label %if.then828

if.then828:                                       ; preds = %lor.lhs.false812
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call810 = call i32 @regmap_read(ptr noundef %75, i32 noundef 40, ptr noundef nonnull %status) #5
  %tobool811.not = icmp eq i32 %call810, 0
  br i1 %tobool811.not, label %if.then828.lor.lhs.false812_crit_edge, label %if.then828.cleanup854_crit_edge

if.then828.cleanup854_crit_edge:                  ; preds = %if.then828
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.then828.lor.lhs.false812_crit_edge:            ; preds = %if.then828
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false812

76:                                               ; preds = %lor.lhs.false812
  %77 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %status, align 4
  %and836 = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and836)
  %tobool837.not = icmp eq i32 %and836, 0
  br i1 %tobool837.not, label %if.end850, label %.cleanup854_crit_edge

.cleanup854_crit_edge:                            ; preds = %76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup854

if.end850:                                        ; preds = %76
  call void @__sanitizer_cov_trace_pc() #7
  %cur_clk851 = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %c, i32 0, i32 2
  %79 = ptrtoint ptr %cur_clk851 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur_clk851, align 4
  call void @clk_disable(ptr noundef %80) #5
  call void @clk_unprepare(ptr noundef %80) #5
  %81 = ptrtoint ptr %cur_clk851 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %cur_clk851, align 4
  br label %cleanup854

cleanup854:                                       ; preds = %if.end850, %.cleanup854_crit_edge, %if.then828.cleanup854_crit_edge, %if.end787.cleanup854_crit_edge, %if.else782.cleanup854_crit_edge, %65, %if.then755.cleanup854_crit_edge, %if.end722.cleanup854_crit_edge, %if.end717.cleanup854_crit_edge, %if.end697.cleanup854_crit_edge, %cleanup.cleanup854_crit_edge, %if.then3.i, %if.then457.cleanup854_crit_edge, %if.end442.6.cleanup854_crit_edge, %if.then204.cleanup854_crit_edge, %if.then5.cleanup854_crit_edge
  %retval.3 = phi i32 [ %call784, %if.else782.cleanup854_crit_edge ], [ 0, %if.end850 ], [ %call719, %if.end717.cleanup854_crit_edge ], [ %call.i1210, %if.end697.cleanup854_crit_edge ], [ -22, %if.then204.cleanup854_crit_edge ], [ -22, %if.then5.cleanup854_crit_edge ], [ %call.i1202, %cleanup.cleanup854_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then457.cleanup854_crit_edge ], [ -110, %.cleanup854_crit_edge ], [ %spec.select1304, %65 ], [ %call8101314, %if.end787.cleanup854_crit_edge ], [ %call7371312, %if.end722.cleanup854_crit_edge ], [ -22, %if.end442.6.cleanup854_crit_edge ], [ %call810, %if.then828.cleanup854_crit_edge ], [ %call737, %if.then755.cleanup854_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %periph_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_hlcdc_pwm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %state = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #5
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwms, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %3, i32 0, i32 7
  %4 = call ptr @memcpy(ptr %state, ptr %state1.i, i32 24)
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %hlcdc = getelementptr inbounds %struct.atmel_hlcdc_pwm, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %hlcdc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hlcdc, align 4
  %periph_clk = getelementptr inbounds %struct.atmel_hlcdc, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %periph_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %periph_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %11 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwms, align 4
  %call10 = call i32 @atmel_hlcdc_pwm_apply(ptr noundef %1, ptr noundef %12, ptr noundef nonnull %state)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end5 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_pwm_atmel_hlcdc__170_306_atmel_hlcdc_pwm_driver_init6, !1, !"__initcall__kmod_pwm_atmel_hlcdc__170_306_atmel_hlcdc_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_atmel_hlcdc_pwm_driver_exit, !1, !"__exitcall_atmel_hlcdc_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias171, !4, !"__UNIQUE_ID_alias171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 308, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 309, i32 1}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 310, i32 1}
!9 = !{ptr @__UNIQUE_ID_file174, !10, !"__UNIQUE_ID_file174", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 311, i32 1}
!11 = !{ptr @__UNIQUE_ID_license175, !10, !"__UNIQUE_ID_license175", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 299, i32 11}
!14 = !{ptr @atmel_hlcdc_pwm_driver, !15, !"atmel_hlcdc_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 297, i32 31}
!16 = !{ptr @atmel_hlcdc_dt_ids, !17, !"atmel_hlcdc_dt_ids", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 217, i32 34}
!18 = !{ptr @atmel_hlcdc_pwm_at91sam9x5_errata, !19, !"atmel_hlcdc_pwm_at91sam9x5_errata", i1 false, i1 false}
!19 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 175, i32 44}
!20 = !{ptr @atmel_hlcdc_pwm_sama5d3_errata, !21, !"atmel_hlcdc_pwm_sama5d3_errata", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 179, i32 44}
!22 = !{ptr @atmel_hlcdc_pwm_ops, !23, !"atmel_hlcdc_pwm_ops", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 170, i32 29}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 144, i32 9}
!26 = !{ptr @atmel_hlcdc_pwm_dt_ids, !27, !"atmel_hlcdc_pwm_dt_ids", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 292, i32 34}
!28 = !{ptr @atmel_hlcdc_pwm_pm_ops, !29, !"atmel_hlcdc_pwm_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-atmel-hlcdc.c", i32 214, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
!40 = !{i8 0, i8 2}
!41 = !{i64 2148636154, i64 2148636434, i64 2148636768, i64 2148637102}
!42 = !{!"branch_weights", i32 2000, i32 1}
