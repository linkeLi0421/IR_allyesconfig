; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-bcm-kona.c_pt.bc'
source_filename = "../drivers/pwm/pwm-bcm-kona.c"
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
%struct.kona_pwmc = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_bcm_kona__183_319_kona_pwmc_driver_init6 = internal global ptr @kona_pwmc_driver_init, section ".initcall6.init", align 4
@kona_pwmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kona_pwmc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_pwmc_dt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kona_pwmc_driver_exit = internal global ptr @kona_pwmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [81 x i8] c"pwm_bcm_kona.author=Broadcom Corporation <bcm-kernel-feedback-list@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [54 x i8] c"pwm_bcm_kona.author=Tim Kryger <tkryger@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [50 x i8] c"pwm_bcm_kona.description=Broadcom Kona PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [43 x i8] c"pwm_bcm_kona.file=drivers/pwm/pwm-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [28 x i8] c"pwm_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm-kona-pwm\00", [19 x i8] zeroinitializer }, align 32
@bcm_kona_pwmc_dt = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@kona_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kona_pwmc_config, ptr @kona_pwmc_set_polarity, ptr @kona_pwmc_enable, ptr @kona_pwmc_disable }, [56 x i8] zeroinitializer }, align 32
@kona_pwmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get clock: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kona_pwmc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-bcm-kona.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kona_pwmc_probe._entry_ptr = internal global ptr @kona_pwmc_probe._entry, section ".printk_index", align 4
@kona_pwmc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kona_pwmc_probe._entry_ptr.8 = internal global ptr @kona_pwmc_probe._entry.6, section ".printk_index", align 4
@kona_pwmc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@kona_pwmc_probe._entry_ptr.11 = internal global ptr @kona_pwmc_probe._entry.9, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kona_pwmc_set_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kona_pwmc_set_polarity\00", [41 x i8] zeroinitializer }, align 32
@kona_pwmc_set_polarity._entry_ptr = internal global ptr @kona_pwmc_set_polarity._entry, section ".printk_index", align 4
@kona_pwmc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.13, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kona_pwmc_enable\00", [47 x i8] zeroinitializer }, align 32
@kona_pwmc_enable._entry_ptr = internal global ptr @kona_pwmc_enable._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"kona_pwmc_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 312, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 314, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"bcm_kona_pwmc_dt\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 306, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"kona_pwm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 251, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 280, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 287, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 301, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 186, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [30 x i8] c"../drivers/pwm/pwm-bcm-kona.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 215, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_kona_pwmc_driver_exit, ptr @__initcall__kmod_pwm_bcm_kona__183_319_kona_pwmc_driver_init6, ptr @kona_pwmc_driver_exit, ptr @kona_pwmc_enable._entry, ptr @kona_pwmc_enable._entry_ptr, ptr @kona_pwmc_probe._entry, ptr @kona_pwmc_probe._entry.6, ptr @kona_pwmc_probe._entry.9, ptr @kona_pwmc_probe._entry_ptr, ptr @kona_pwmc_probe._entry_ptr.11, ptr @kona_pwmc_probe._entry_ptr.8, ptr @kona_pwmc_set_polarity._entry, ptr @kona_pwmc_set_polarity._entry_ptr, ptr @kona_pwmc_driver, ptr @.str, ptr @bcm_kona_pwmc_dt, ptr @kona_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_pwmc_dt to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_set_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kona_pwmc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_pwmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kona_pwmc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kona_pwmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @kona_pwmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_pwmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @kona_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %npwm, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.kona_pwmc, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.kona_pwmc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %6) #8
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %call.i84 = tail call i32 @clk_prepare(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool.not.i = icmp eq i32 %call.i84, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.clk_prepare_enable.exit_crit_edge

if.end22.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.cond.preheader_crit_edge, label %if.then3.i

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call13) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end22.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i84, %if.end22.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp25 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp25, label %do.end29, label %clk_prepare_enable.exit.for.cond.preheader_crit_edge

clk_prepare_enable.exit.for.cond.preheader_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %clk_prepare_enable.exit.for.cond.preheader_crit_edge, %if.end.i.for.cond.preheader_crit_edge
  %10 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3485.not = icmp eq i32 %11, 0
  br i1 %cmp3485.not, label %for.cond.preheader.do.body35_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body35_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

do.end29:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %value.087 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %chan.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %chan.086, 16
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %value.087
  %inc = add nuw i32 %chan.086, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.body.do.body35_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.body35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body35

do.body35:                                        ; preds = %for.body.do.body35_crit_edge, %for.cond.preheader.do.body35_crit_edge
  %value.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body35_crit_edge ], [ %or, %for.body.do.body35_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !54
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  %call42 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end47, label %do.body35.cleanup_crit_edge

do.body35.cleanup_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end47:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call42) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %do.body35.cleanup_crit_edge, %do.end29, %do.end, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %9, %do.end ], [ %retval.0.i, %do.end29 ], [ -12, %entry.cleanup_crit_edge ], [ %call42, %do.end47 ], [ %call42, %do.body35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_pwmc_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %duty_ns, i32 noundef %period_ns) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %clk = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %conv = zext i32 %call1 to i64
  %conv3 = sext i32 %period_ns to i64
  %mul4 = mul nsw i64 %conv, %conv3
  %conv7 = sext i32 %duty_ns to i64
  %mul8 = mul nsw i64 %conv, %conv7
  %call5 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 1000000000) #5
  %conv6 = trunc i64 %call5 to i32
  %call9 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 1000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6)
  %cmp = icmp ult i32 %conv6, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6)
  %cmp12 = icmp ult i32 %conv6, 16777216
  %4 = and i64 %call9, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp14 = icmp eq i64 %4, 0
  %or.cond = select i1 %cmp12, i1 %cmp14, i1 false
  %extract.t = trunc i64 %call5 to i32
  %extract.t97 = trunc i64 %call9 to i32
  br i1 %or.cond, label %if.end.while.end_crit_edge, label %if.end17

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17:                                         ; preds = %if.end
  %call5.1 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 2000000000) #5
  %conv6.1 = trunc i64 %call5.1 to i32
  %call9.1 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 2000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.1)
  %cmp.1 = icmp ult i32 %conv6.1, 2
  br i1 %cmp.1, label %if.end17.cleanup_crit_edge, label %if.end.1

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.1)
  %cmp12.1 = icmp ult i32 %conv6.1, 16777216
  %5 = and i64 %call9.1, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp14.1 = icmp eq i64 %5, 0
  %or.cond.1 = select i1 %cmp12.1, i1 %cmp14.1, i1 false
  %extract.t90 = trunc i64 %call5.1 to i32
  %extract.t98 = trunc i64 %call9.1 to i32
  br i1 %or.cond.1, label %if.end.1.while.end_crit_edge, label %if.end17.1

if.end.1.while.end_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.1:                                       ; preds = %if.end.1
  %call5.2 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 3000000000) #5
  %conv6.2 = trunc i64 %call5.2 to i32
  %call9.2 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 3000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.2)
  %cmp.2 = icmp ult i32 %conv6.2, 2
  br i1 %cmp.2, label %if.end17.1.cleanup_crit_edge, label %if.end.2

if.end17.1.cleanup_crit_edge:                     ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2:                                         ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.2)
  %cmp12.2 = icmp ult i32 %conv6.2, 16777216
  %6 = and i64 %call9.2, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp14.2 = icmp eq i64 %6, 0
  %or.cond.2 = select i1 %cmp12.2, i1 %cmp14.2, i1 false
  %extract.t91 = trunc i64 %call5.2 to i32
  %extract.t99 = trunc i64 %call9.2 to i32
  br i1 %or.cond.2, label %if.end.2.while.end_crit_edge, label %if.end17.2

if.end.2.while.end_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.2:                                       ; preds = %if.end.2
  %call5.3 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 4000000000) #5
  %conv6.3 = trunc i64 %call5.3 to i32
  %call9.3 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 4000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.3)
  %cmp.3 = icmp ult i32 %conv6.3, 2
  br i1 %cmp.3, label %if.end17.2.cleanup_crit_edge, label %if.end.3

if.end17.2.cleanup_crit_edge:                     ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3:                                         ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.3)
  %cmp12.3 = icmp ult i32 %conv6.3, 16777216
  %7 = and i64 %call9.3, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp14.3 = icmp eq i64 %7, 0
  %or.cond.3 = select i1 %cmp12.3, i1 %cmp14.3, i1 false
  %extract.t92 = trunc i64 %call5.3 to i32
  %extract.t100 = trunc i64 %call9.3 to i32
  br i1 %or.cond.3, label %if.end.3.while.end_crit_edge, label %if.end17.3

if.end.3.while.end_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.3:                                       ; preds = %if.end.3
  %call5.4 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 5000000000) #5
  %conv6.4 = trunc i64 %call5.4 to i32
  %call9.4 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 5000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.4)
  %cmp.4 = icmp ult i32 %conv6.4, 2
  br i1 %cmp.4, label %if.end17.3.cleanup_crit_edge, label %if.end.4

if.end17.3.cleanup_crit_edge:                     ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4:                                         ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.4)
  %cmp12.4 = icmp ult i32 %conv6.4, 16777216
  %8 = and i64 %call9.4, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp14.4 = icmp eq i64 %8, 0
  %or.cond.4 = select i1 %cmp12.4, i1 %cmp14.4, i1 false
  %extract.t93 = trunc i64 %call5.4 to i32
  %extract.t101 = trunc i64 %call9.4 to i32
  br i1 %or.cond.4, label %if.end.4.while.end_crit_edge, label %if.end17.4

if.end.4.while.end_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.4:                                       ; preds = %if.end.4
  %call5.5 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 6000000000) #5
  %conv6.5 = trunc i64 %call5.5 to i32
  %call9.5 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 6000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.5)
  %cmp.5 = icmp ult i32 %conv6.5, 2
  br i1 %cmp.5, label %if.end17.4.cleanup_crit_edge, label %if.end.5

if.end17.4.cleanup_crit_edge:                     ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5:                                         ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.5)
  %cmp12.5 = icmp ult i32 %conv6.5, 16777216
  %9 = and i64 %call9.5, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp14.5 = icmp eq i64 %9, 0
  %or.cond.5 = select i1 %cmp12.5, i1 %cmp14.5, i1 false
  %extract.t94 = trunc i64 %call5.5 to i32
  %extract.t102 = trunc i64 %call9.5 to i32
  br i1 %or.cond.5, label %if.end.5.while.end_crit_edge, label %if.end17.5

if.end.5.while.end_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.5:                                       ; preds = %if.end.5
  %call5.6 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 7000000000) #5
  %conv6.6 = trunc i64 %call5.6 to i32
  %call9.6 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 7000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.6)
  %cmp.6 = icmp ult i32 %conv6.6, 2
  br i1 %cmp.6, label %if.end17.5.cleanup_crit_edge, label %if.end.6

if.end17.5.cleanup_crit_edge:                     ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.6:                                         ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.6)
  %cmp12.6 = icmp ult i32 %conv6.6, 16777216
  %10 = and i64 %call9.6, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp14.6 = icmp eq i64 %10, 0
  %or.cond.6 = select i1 %cmp12.6, i1 %cmp14.6, i1 false
  %extract.t95 = trunc i64 %call5.6 to i32
  %extract.t103 = trunc i64 %call9.6 to i32
  br i1 %or.cond.6, label %if.end.6.while.end_crit_edge, label %if.end17.6

if.end.6.while.end_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end17.6:                                       ; preds = %if.end.6
  %call5.7 = tail call i64 @div64_u64(i64 noundef %mul4, i64 noundef 8000000000) #5
  %conv6.7 = trunc i64 %call5.7 to i32
  %call9.7 = tail call i64 @div64_u64(i64 noundef %mul8, i64 noundef 8000000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.7)
  %cmp.7 = icmp ult i32 %conv6.7, 2
  br i1 %cmp.7, label %if.end17.6.cleanup_crit_edge, label %if.end.7

if.end17.6.cleanup_crit_edge:                     ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %conv6.7)
  %cmp12.7 = icmp ult i32 %conv6.7, 16777216
  %11 = and i64 %call9.7, 4278190080
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp14.7 = icmp eq i64 %11, 0
  %or.cond.7 = select i1 %cmp12.7, i1 %cmp14.7, i1 false
  %extract.t96 = trunc i64 %call5.7 to i32
  %extract.t104 = trunc i64 %call9.7 to i32
  br i1 %or.cond.7, label %if.end.7.while.end_crit_edge, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7.while.end_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.7.while.end_crit_edge, %if.end.6.while.end_crit_edge, %if.end.5.while.end_crit_edge, %if.end.4.while.end_crit_edge, %if.end.3.while.end_crit_edge, %if.end.2.while.end_crit_edge, %if.end.1.while.end_crit_edge, %if.end.while.end_crit_edge
  %prescale.0.lcssa89 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ 1, %if.end.1.while.end_crit_edge ], [ 2, %if.end.2.while.end_crit_edge ], [ 3, %if.end.3.while.end_crit_edge ], [ 4, %if.end.4.while.end_crit_edge ], [ 5, %if.end.5.while.end_crit_edge ], [ 6, %if.end.6.while.end_crit_edge ], [ 7, %if.end.7.while.end_crit_edge ]
  %call5.lcssa88.off0 = phi i32 [ %extract.t, %if.end.while.end_crit_edge ], [ %extract.t90, %if.end.1.while.end_crit_edge ], [ %extract.t91, %if.end.2.while.end_crit_edge ], [ %extract.t92, %if.end.3.while.end_crit_edge ], [ %extract.t93, %if.end.4.while.end_crit_edge ], [ %extract.t94, %if.end.5.while.end_crit_edge ], [ %extract.t95, %if.end.6.while.end_crit_edge ], [ %extract.t96, %if.end.7.while.end_crit_edge ]
  %call9.lcssa87.off0 = phi i32 [ %extract.t97, %if.end.while.end_crit_edge ], [ %extract.t98, %if.end.1.while.end_crit_edge ], [ %extract.t99, %if.end.2.while.end_crit_edge ], [ %extract.t100, %if.end.3.while.end_crit_edge ], [ %extract.t101, %if.end.4.while.end_crit_edge ], [ %extract.t102, %if.end.5.while.end_crit_edge ], [ %extract.t103, %if.end.6.while.end_crit_edge ], [ %extract.t104, %if.end.7.while.end_crit_edge ]
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %while.end.cleanup_crit_edge, label %if.then23

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !55
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %add.i = add i32 %1, 24
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %16, %shl.i
  %shl2.i = shl nuw i32 1, %1
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %or.i, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #5
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !55
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %shl = shl i32 %1, 2
  %shl26 = shl i32 7, %shl
  %neg = xor i32 %shl26, -1
  %and = and i32 %24, %neg
  %shl28 = shl i32 %prescale.0.lcssa89, %shl
  %or = or i32 %and, %shl28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr30 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %25) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %call5.lcssa88.off0)
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %shl35 = shl i32 %1, 3
  %add36 = add i32 %shl35, 8
  %add.ptr37 = getelementptr i8, ptr %30, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %28) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %call9.lcssa87.off0)
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add43 = add i32 %shl35, 12
  %add.ptr44 = getelementptr i8, ptr %33, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %31) #5, !srcloc !54
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !55
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %neg.i80 = xor i32 %shl.i, -1
  %and.i81 = and i32 %37, %neg.i80
  %or.i83 = or i32 %and.i81, %shl2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i83) #5
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %while.end.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end17.6.cleanup_crit_edge, %if.end17.5.cleanup_crit_edge, %if.end17.4.cleanup_crit_edge, %if.end17.3.cleanup_crit_edge, %if.end17.2.cleanup_crit_edge, %if.end17.1.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ 0, %while.end.cleanup_crit_edge ], [ -22, %if.end.7.cleanup_crit_edge ], [ -22, %if.end17.6.cleanup_crit_edge ], [ -22, %if.end17.5.cleanup_crit_edge ], [ -22, %if.end17.4.cleanup_crit_edge ], [ -22, %if.end17.3.cleanup_crit_edge ], [ -22, %if.end17.2.cleanup_crit_edge ], [ -22, %if.end17.1.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_pwmc_set_polarity(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, i32 noundef %polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %clk = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #8
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !55
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %add.i = add i32 %1, 24
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %9, %shl.i
  %shl2.i = shl nuw i32 1, %1
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %or.i, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #5
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !55
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polarity)
  %cmp4 = icmp eq i32 %polarity, 0
  %add = add i32 %1, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %17, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %17, %neg
  %value.0 = select i1 %cmp4, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %value.0)
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !54
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !55
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %neg.i34 = xor i32 %shl.i, -1
  %and.i35 = and i32 %24, %neg.i34
  %or.i37 = or i32 %and.i35, %shl2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i37) #5
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #5
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #5
  tail call void @clk_unprepare(ptr noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kona_pwmc_enable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %1) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #8
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %state.sroa.4.0.copyload2.i = load i64, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 8
  %conv = trunc i64 %state.sroa.4.0.copyload2.i to i32
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %5 = ptrtoint ptr %state1.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %state.sroa.0.0.copyload1.i = load i64, ptr %state1.i.i, align 8
  %conv4 = trunc i64 %state.sroa.0.0.copyload1.i to i32
  %call5 = tail call i32 @kona_pwmc_config(ptr noundef %chip, ptr noundef %pwm, i32 noundef %conv, i32 noundef %conv4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call5, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kona_pwmc_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %base.i = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !55
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %add.i = add i32 %1, 24
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %5, %shl.i
  %shl2.i = shl nuw i32 1, %1
  %neg.i = xor i32 %shl2.i, -1
  %and.i = and i32 %or.i, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %shl = shl i32 %1, 3
  %add = add i32 %shl, 12
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add6 = add i32 %shl, 8
  %add.ptr7 = getelementptr i8, ptr %13, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #5, !srcloc !54
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !55
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %shl12 = shl i32 %1, 2
  %shl13 = shl i32 7, %shl12
  %neg = xor i32 %shl13, -1
  %and = and i32 %17, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %and)
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #5, !srcloc !54
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !55
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %neg.i33 = xor i32 %shl.i, -1
  %and.i34 = and i32 %24, %neg.i33
  %or.i36 = or i32 %and.i34, %shl2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #5
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #5
  %clk = getelementptr inbounds %struct.kona_pwmc, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #5
  tail call void @clk_unprepare(ptr noundef %30) #5
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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_pwm_bcm_kona__183_319_kona_pwmc_driver_init6, !1, !"__initcall__kmod_pwm_bcm_kona__183_319_kona_pwmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 319, i32 1}
!2 = !{ptr @__exitcall_kona_pwmc_driver_exit, !1, !"__exitcall_kona_pwmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 322, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 323, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 324, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 314, i32 11}
!14 = !{ptr @kona_pwmc_driver, !15, !"kona_pwmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 312, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 280, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @kona_pwmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @kona_pwmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 287, i32 3}
!26 = !{ptr @kona_pwmc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @kona_pwmc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 301, i32 3}
!30 = !{ptr @kona_pwmc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @kona_pwmc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @kona_pwm_ops, !33, !"kona_pwm_ops", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 251, i32 29}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 186, i32 3}
!36 = !{ptr @kona_pwmc_set_polarity._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @kona_pwmc_set_polarity._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 215, i32 3}
!40 = !{ptr @kona_pwmc_enable._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @kona_pwmc_enable._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bcm_kona_pwmc_dt, !43, !"bcm_kona_pwmc_dt", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-bcm-kona.c", i32 306, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2152934147}
!54 = !{i64 3076606}
!55 = !{i64 3077024}
!56 = !{i64 2152920806}
!57 = !{i64 2152921068}
!58 = !{i64 2152922815}
!59 = !{i64 2152923119}
!60 = !{i64 2152923575}
!61 = !{i64 2152924042}
!62 = !{i64 2152921780}
!63 = !{i64 2152922042}
!64 = !{i64 2152926387}
!65 = !{i64 2152926654}
!66 = !{i64 2152928745}
!67 = !{i64 2152929208}
!68 = !{i64 2152929914}
!69 = !{i64 2152930199}
