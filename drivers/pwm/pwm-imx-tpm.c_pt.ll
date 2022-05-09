; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-imx-tpm.c_pt.bc'
source_filename = "../drivers/pwm/pwm-imx-tpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.imx_tpm_pwm_chip = type { %struct.pwm_chip, ptr, ptr, %struct.mutex, i32, i32, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_imx_tpm__238_435_imx_tpm_pwm_driver_init6 = internal global ptr @imx_tpm_pwm_driver_init, section ".initcall6.init", align 4
@imx_tpm_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_imx_tpm_probe, ptr @pwm_imx_tpm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_tpm_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_tpm_pwm_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_tpm_pwm_driver_exit = internal global ptr @imx_tpm_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [53 x i8] c"pwm_imx_tpm.author=Anson Huang <Anson.Huang@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [44 x i8] c"pwm_imx_tpm.description=i.MX TPM PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [41 x i8] c"pwm_imx_tpm.file=drivers/pwm/pwm-imx-tpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"pwm_imx_tpm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx7ulp-tpm-pwm\00", [16 x i8] zeroinitializer }, align 32
@imx_tpm_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx_tpm_pwm_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pwm_imx_tpm_suspend, ptr @pwm_imx_tpm_resume, ptr @pwm_imx_tpm_suspend, ptr @pwm_imx_tpm_resume, ptr @pwm_imx_tpm_suspend, ptr @pwm_imx_tpm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get PWM clock\0A\00", [39 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to prepare or enable clock: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm_imx_tpm_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-imx-tpm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_probe._entry_ptr = internal global ptr @pwm_imx_tpm_probe._entry, section ".printk_index", align 4
@imx_tpm_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @pwm_imx_tpm_request, ptr @pwm_imx_tpm_free, ptr null, ptr @pwm_imx_tpm_apply, ptr @pwm_imx_tpm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tpm->lock\00", [21 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_probe._entry_ptr.10 = internal global ptr @pwm_imx_tpm_probe._entry.8, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pwm_imx_tpm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.11, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm_imx_tpm_resume\00", [45 x i8] zeroinitializer }, align 32
@pwm_imx_tpm_resume._entry_ptr = internal global ptr @pwm_imx_tpm_resume._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"imx_tpm_pwm_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 426, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 428, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"imx_tpm_pwm_dt_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 420, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"imx_tpm_pwm_pm\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 417, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 355, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 359, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"imx_tpm_pwm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 328, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 371, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 375, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [29 x i8] c"../drivers/pwm/pwm-imx-tpm.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 412, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_imx_tpm_pwm_driver_exit, ptr @__initcall__kmod_pwm_imx_tpm__238_435_imx_tpm_pwm_driver_init6, ptr @imx_tpm_pwm_driver_exit, ptr @pwm_imx_tpm_probe._entry, ptr @pwm_imx_tpm_probe._entry.8, ptr @pwm_imx_tpm_probe._entry_ptr, ptr @pwm_imx_tpm_probe._entry_ptr.10, ptr @pwm_imx_tpm_resume._entry, ptr @pwm_imx_tpm_resume._entry_ptr, ptr @imx_tpm_pwm_driver, ptr @.str, ptr @imx_tpm_pwm_dt_ids, ptr @imx_tpm_pwm_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx_tpm_pwm_ops, ptr @pwm_imx_tpm_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tpm_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tpm_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tpm_pwm_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx_tpm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_tpm_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx_tpm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx_tpm_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_imx_tpm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_tpm_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_tpm_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_tpm_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_tpm_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %clk, align 4
  %cmp.i89 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %call.i90 = tail call i32 @clk_prepare(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.not.i = icmp eq i32 %call.i90, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.do.end_crit_edge

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end17
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call9) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end17.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i90, %if.end17.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @imx_tpm_pwm_ops, ptr %ops, align 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !50
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %npwm, align 4
  %lock = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @pwm_imx_tpm_probe.__key) #6
  %call51 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end23.cleanup_crit_edge, label %do.end56

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end56:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call51) #9
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end23.cleanup_crit_edge, %do.end, %if.then12, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call16, %if.then12 ], [ %retval.0.i.ph, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call51, %do.end56 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_request(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %user_count = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %user_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_imx_tpm_free(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %user_count = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %user_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %c.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %1) #6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %conv.i = zext i32 %call1.i to i64
  %mul.i = mul i64 %3, %conv.i
  %add.i = add i64 %mul.i, 500000000
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i32 0) #10, !srcloc !52
  %asmresult.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %add.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #10, !srcloc !53
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %extract686.i = lshr i64 %asmresult10.i.i, 29
  %extract.t687.i = trunc i64 %extract686.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %extract.t687.i)
  %cmp191.i = icmp ult i32 %extract.t687.i, 65536
  br i1 %cmp191.i, label %entry.if.end232.i_crit_edge, label %if.else194.i

entry.if.end232.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232.i

if.else194.i:                                     ; preds = %entry
  %6 = tail call i32 @llvm.ctlz.i32(i32 %extract.t687.i, i1 true) #6, !range !54
  %sub210.i = sub nsw i32 16, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub210.i)
  %tobool227.not.i = icmp ult i32 %sub210.i, 8
  br i1 %tobool227.not.i, label %if.else194.i.if.end232.i_crit_edge, label %if.else194.i.cleanup_crit_edge

if.else194.i.cleanup_crit_edge:                   ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else194.i.if.end232.i_crit_edge:               ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end232.i

if.end232.i:                                      ; preds = %if.else194.i.if.end232.i_crit_edge, %entry.if.end232.i_crit_edge
  %prescale.0702.i = phi i32 [ %sub210.i, %if.else194.i.if.end232.i_crit_edge ], [ 0, %entry.if.end232.i_crit_edge ]
  %shl235.i = shl nuw nsw i32 1, %prescale.0702.i
  %shr236721.i = lshr i32 %shl235.i, 1
  %add237.i = add i32 %shr236721.i, %extract.t687.i
  %shr238.i = lshr i32 %add237.i, %prescale.0702.i
  %conv239.i = zext i32 %shr238.i to i64
  %sh_prom240.i = zext i32 %prescale.0702.i to i64
  %shl241.i = shl nuw nsw i64 %conv239.i, %sh_prom240.i
  %mul242.i = mul i64 %shl241.i, 1000000000
  %div245688.i = lshr i32 %call1.i, 1
  %conv246.i = zext i32 %div245688.i to i64
  %add247.i = add i64 %mul242.i, %conv246.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add247.i)
  %cmp449.i = icmp ult i64 %add247.i, 4294967296
  br i1 %cmp449.i, label %if.then457.i, label %if.else463.i, !prof !55

if.then457.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv458.i = trunc i64 %add247.i to i32
  %div461.i = udiv i32 %conv458.i, %call1.i
  %conv462.i = zext i32 %div461.i to i64
  br label %if.end467.i

if.else463.i:                                     ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1.i, i64 %add247.i) #10, !srcloc !56
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  br label %if.end467.i

if.end467.i:                                      ; preds = %if.else463.i, %if.then457.i
  %_tmp244.0.i = phi i64 [ %conv462.i, %if.then457.i ], [ %asmresult1.i.i, %if.else463.i ]
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool471.not.i = icmp eq i8 %9, 0
  br i1 %tobool471.not.i, label %if.end467.i.if.end_crit_edge, label %if.else473.i

if.end467.i.if.end_crit_edge:                     ; preds = %if.end467.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else473.i:                                     ; preds = %if.end467.i
  call void @__sanitizer_cov_trace_pc() #8
  %duty_cycle474.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %duty_cycle474.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %duty_cycle474.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else473.i, %if.end467.i.if.end_crit_edge
  %.sink.i = phi i64 [ %11, %if.else473.i ], [ 0, %if.end467.i.if.end_crit_edge ]
  %mul480.i = mul i64 %.sink.i, %conv239.i
  %div484689.i = lshr i64 %_tmp244.0.i, 1
  %add485.i = add i64 %mul480.i, %div484689.i
  %call486.i = tail call i64 @div64_u64(i64 noundef %add485.i, i64 noundef %_tmp244.0.i) #6
  %conv487.i = trunc i64 %call486.i to i32
  %polarity.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %polarity.i, align 8
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 4, !range !57
  %lock = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c.i) #6
  %16 = call ptr @memset(ptr %c.i, i32 255, i32 24)
  %real_period.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %real_period.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %real_period.i, align 4
  %conv.i12 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %_tmp244.0.i, i64 %conv.i12)
  %cmp.not.i = icmp eq i64 %_tmp244.0.i, %conv.i12
  br i1 %cmp.not.i, label %if.end.if.end83.i_crit_edge, label %if.then.i

if.end.if.end83.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

if.then.i:                                        ; preds = %if.end
  %user_count.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 4
  %19 = ptrtoint ptr %user_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %user_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp2.i = icmp ugt i32 %20, 1
  br i1 %cmp2.i, label %if.then.i.pwm_imx_tpm_apply_hw.exit_crit_edge, label %if.end.i

if.then.i.pwm_imx_tpm_apply_hw.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_imx_tpm_apply_hw.exit

if.end.i:                                         ; preds = %if.then.i
  %base.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 2
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %25 = and i32 %24, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %and36.i = and i32 %24, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and36.i, i32 %prescale.0702.i)
  %cmp39.not.i = icmp eq i32 %and36.i, %prescale.0702.i
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp39.not.i
  br i1 %or.cond, label %do.end65.i, label %if.end.i.pwm_imx_tpm_apply_hw.exit_crit_edge

if.end.i.pwm_imx_tpm_apply_hw.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_imx_tpm_apply_hw.exit

do.end65.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and43.i = and i32 %24, -8
  %or.i = or i32 %and43.i, %prescale.0702.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %26) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %shr238.i) #6
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %29) #6, !srcloc !60
  %conv81.i = trunc i64 %_tmp244.0.i to i32
  %32 = ptrtoint ptr %real_period.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv81.i, ptr %real_period.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end65.i, %if.end.if.end83.i_crit_edge
  call void @pwm_imx_tpm_get_state(ptr noundef %chip, ptr noundef %pwm, ptr noundef nonnull %c.i) #6
  %enabled.i16 = getelementptr inbounds %struct.pwm_state, ptr %c.i, i32 0, i32 3
  %33 = ptrtoint ptr %enabled.i16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enabled.i16, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool84.not.i = icmp eq i8 %34, 0
  br i1 %tobool84.not.i, label %if.end83.i.if.end91.i_crit_edge, label %land.lhs.true86.i

if.end83.i.if.end91.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91.i

land.lhs.true86.i:                                ; preds = %if.end83.i
  %polarity.i17 = getelementptr inbounds %struct.pwm_state, ptr %c.i, i32 0, i32 2
  %35 = ptrtoint ptr %polarity.i17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %polarity.i17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %13)
  %cmp88.not.i = icmp eq i32 %36, %13
  br i1 %cmp88.not.i, label %land.lhs.true86.i.if.end91.i_crit_edge, label %land.lhs.true86.i.pwm_imx_tpm_apply_hw.exit_crit_edge

land.lhs.true86.i.pwm_imx_tpm_apply_hw.exit_crit_edge: ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_imx_tpm_apply_hw.exit

land.lhs.true86.i.if.end91.i_crit_edge:           ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91.i

if.end91.i:                                       ; preds = %land.lhs.true86.i.if.end91.i_crit_edge, %if.end83.i.if.end91.i_crit_edge
  %duty_cycle92.i = getelementptr inbounds %struct.pwm_state, ptr %c.i, i32 0, i32 1
  %37 = ptrtoint ptr %duty_cycle92.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %duty_cycle92.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %.sink.i, i64 %38)
  %cmp93.not.i = icmp eq i64 %.sink.i, %38
  br i1 %cmp93.not.i, label %if.end102.i, label %if.end102.thread.i

if.end102.thread.i:                               ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv487.i) #6
  %base100.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 2
  %40 = ptrtoint ptr %base100.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base100.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %42 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hwpwm.i, align 8
  %mul.i18 = shl i32 %43, 3
  %add.i19 = add i32 %mul.i18, 36
  %add.ptr101.i = getelementptr i8, ptr %41, i32 %add.i19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %39) #6, !srcloc !60
  br label %if.then107.i

if.end102.i:                                      ; preds = %if.end91.i
  br i1 %cmp.not.i, label %if.end102.i.if.end148.i_crit_edge, label %if.end102.i.if.then107.i_crit_edge

if.end102.i.if.then107.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107.i

if.end102.i.if.end148.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148.i

if.then107.i:                                     ; preds = %if.end102.i.if.then107.i_crit_edge, %if.end102.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %45 = ptrtoint ptr %real_period.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %real_period.i, align 4
  %div.i = udiv i32 %46, 1000000
  %add109.i = add nuw nsw i32 %div.i, 1
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add109.i) #6
  %add111.i = add i32 %call2.i.i, %44
  %base114.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 2
  %hwpwm125.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end143.i, %if.then107.i
  %47 = ptrtoint ptr %base114.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base114.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %48, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115.i) #6, !srcloc !50
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %shr238.i)
  %cmp120.not.i = icmp eq i32 %50, %shr238.i
  br i1 %cmp120.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %51 = ptrtoint ptr %base114.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base114.i, align 4
  %53 = ptrtoint ptr %hwpwm125.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hwpwm125.i, align 8
  %mul126.i = shl i32 %54, 3
  %add127.i = add i32 %mul126.i, 36
  %add.ptr128.i = getelementptr i8, ptr %52, i32 %add127.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128.i) #6, !srcloc !50
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv487.i)
  %cmp133.not.i = icmp eq i32 %56, %conv487.i
  br i1 %cmp133.not.i, label %lor.rhs.i.if.end148.i_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

lor.rhs.i.if.end148.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148.i

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add111.i, %57
  %cmp135.i = icmp slt i32 %sub.i, 0
  br i1 %cmp135.i, label %while.body.i.pwm_imx_tpm_apply_hw.exit_crit_edge, label %do.end143.i

while.body.i.pwm_imx_tpm_apply_hw.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_imx_tpm_apply_hw.exit

do.end143.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !66
  br label %while.cond.i

if.end148.i:                                      ; preds = %lor.rhs.i.if.end148.i_crit_edge, %if.end102.i.if.end148.i_crit_edge
  %base151.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 2
  %58 = ptrtoint ptr %base151.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base151.i, align 4
  %hwpwm152.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %60 = ptrtoint ptr %hwpwm152.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hwpwm152.i, align 8
  %mul153.i = shl i32 %61, 3
  %add154.i = add i32 %mul153.i, 32
  %add.ptr155.i = getelementptr i8, ptr %59, i32 %add154.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %63 = and i32 %62, -1006632961
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool161.not.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp165.i = icmp eq i32 %13, 0
  %or163.i = select i1 %cmp165.i, i32 40, i32 36
  %or201.i = select i1 %tobool161.not.i, i32 0, i32 %or163.i
  %val.0.i = or i32 %64, %or201.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  %66 = ptrtoint ptr %base151.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base151.i, align 4
  %68 = ptrtoint ptr %hwpwm152.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hwpwm152.i, align 8
  %mul208.i = shl i32 %69, 3
  %add209.i = add i32 %mul208.i, 32
  %add.ptr210.i = getelementptr i8, ptr %67, i32 %add209.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210.i, i32 %65) #6, !srcloc !60
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %34)
  %cmp217.not.i = icmp eq i8 %15, %34
  br i1 %cmp217.not.i, label %if.end148.i.pwm_imx_tpm_apply_hw.exit_crit_edge, label %if.then219.i

if.end148.i.pwm_imx_tpm_apply_hw.exit_crit_edge:  ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pwm_imx_tpm_apply_hw.exit

if.then219.i:                                     ; preds = %if.end148.i
  %70 = ptrtoint ptr %base151.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base151.i, align 4
  %add.ptr223.i = getelementptr i8, ptr %71, i32 16
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr223.i) #6, !srcloc !50
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %enable_count251.i = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 5
  %74 = ptrtoint ptr %enable_count251.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %enable_count251.i, align 4
  br i1 %tobool161.not.i, label %if.else.i, label %if.then229.i

if.then229.i:                                     ; preds = %if.then219.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %75, 1
  %76 = ptrtoint ptr %enable_count251.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc.i, ptr %enable_count251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp230.i = icmp eq i32 %75, 0
  %or249.i = or i32 %73, 8
  %spec.select.i = select i1 %cmp230.i, i32 %or249.i, i32 %73
  br label %do.body258.i

if.else.i:                                        ; preds = %if.then219.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %75, -1
  %77 = ptrtoint ptr %enable_count251.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %dec.i, ptr %enable_count251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp252.i = icmp eq i32 %dec.i, 0
  %and255.i = and i32 %73, -25
  %spec.select316.i = select i1 %cmp252.i, i32 %and255.i, i32 %73
  br label %do.body258.i

do.body258.i:                                     ; preds = %if.else.i, %if.then229.i
  %val.1.i = phi i32 [ %spec.select.i, %if.then229.i ], [ %spec.select316.i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %78 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #6
  %79 = ptrtoint ptr %base151.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base151.i, align 4
  %add.ptr262.i = getelementptr i8, ptr %80, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr262.i, i32 %78) #6, !srcloc !60
  br label %pwm_imx_tpm_apply_hw.exit

pwm_imx_tpm_apply_hw.exit:                        ; preds = %do.body258.i, %if.end148.i.pwm_imx_tpm_apply_hw.exit_crit_edge, %while.body.i.pwm_imx_tpm_apply_hw.exit_crit_edge, %land.lhs.true86.i.pwm_imx_tpm_apply_hw.exit_crit_edge, %if.end.i.pwm_imx_tpm_apply_hw.exit_crit_edge, %if.then.i.pwm_imx_tpm_apply_hw.exit_crit_edge
  %retval.0.i21 = phi i32 [ -16, %if.then.i.pwm_imx_tpm_apply_hw.exit_crit_edge ], [ -16, %land.lhs.true86.i.pwm_imx_tpm_apply_hw.exit_crit_edge ], [ 0, %do.body258.i ], [ 0, %if.end148.i.pwm_imx_tpm_apply_hw.exit_crit_edge ], [ -16, %if.end.i.pwm_imx_tpm_apply_hw.exit_crit_edge ], [ -62, %while.body.i.pwm_imx_tpm_apply_hw.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %pwm_imx_tpm_apply_hw.exit, %if.else194.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %pwm_imx_tpm_apply_hw.exit ], [ -34, %if.else194.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_imx_tpm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %real_period = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %real_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_period, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %state, align 8
  %clk = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %4) #6
  %base = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !50
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %and = and i32 %8, 7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %12, 3
  %add = add i32 %mul, 36
  %add.ptr21 = getelementptr i8, ptr %10, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !50
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv25 = zext i32 %14 to i64
  %sh_prom = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv25, %sh_prom
  %mul26 = mul i64 %shl, 1000000000
  %div366 = lshr i32 %call1, 1
  %conv27 = zext i32 %div366 to i64
  %add28 = add i64 %mul26, %conv27
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add28)
  %cmp203 = icmp ult i64 %add28, 4294967296
  br i1 %cmp203, label %if.then207, label %if.else213, !prof !55

if.then207:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv208 = trunc i64 %add28 to i32
  %div211 = udiv i32 %conv208, %call1
  %conv212 = zext i32 %div211 to i64
  br label %if.end217

if.else213:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call1, i64 %add28) #10, !srcloc !56
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  br label %if.end217

if.end217:                                        ; preds = %if.else213, %if.then207
  %_tmp.0 = phi i64 [ %conv212, %if.then207 ], [ %asmresult1.i, %if.else213 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %_tmp.0, ptr %duty_cycle, align 8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hwpwm, align 8
  %mul224 = shl i32 %20, 3
  %add225 = add i32 %mul224, 32
  %add.ptr226 = getelementptr i8, ptr %18, i32 %add225
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226) #6, !srcloc !50
  %22 = lshr i32 %21, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %and230 = and i32 %22, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and230)
  %cmp247 = icmp eq i32 %and230, 4
  %spec.select = zext i1 %cmp247 to i32
  %23 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool271 = icmp ne i32 %and230, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %tobool271 to i8
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_count = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %enable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_imx_tpm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.imx_tpm_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.ph) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_pwm_imx_tpm__238_435_imx_tpm_pwm_driver_init6, !1, !"__initcall__kmod_pwm_imx_tpm__238_435_imx_tpm_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_imx_tpm_pwm_driver_exit, !1, !"__exitcall_imx_tpm_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 439, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 428, i32 11}
!12 = !{ptr @imx_tpm_pwm_driver, !13, !"imx_tpm_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 426, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 355, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 359, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pwm_imx_tpm_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pwm_imx_tpm_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pwm_imx_tpm_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 371, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 375, i32 3}
!29 = !{ptr @pwm_imx_tpm_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pwm_imx_tpm_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @imx_tpm_pwm_ops, !32, !"imx_tpm_pwm_ops", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 328, i32 29}
!33 = !{ptr @imx_tpm_pwm_dt_ids, !34, !"imx_tpm_pwm_dt_ids", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 420, i32 34}
!35 = !{ptr @imx_tpm_pwm_pm, !36, !"imx_tpm_pwm_pm", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 417, i32 8}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-imx-tpm.c", i32 412, i32 3}
!39 = !{ptr @pwm_imx_tpm_resume._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pwm_imx_tpm_resume._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2066459}
!51 = !{i64 2153383850}
!52 = !{i64 1186187, i64 1186214, i64 1186236, i64 1186264}
!53 = !{i64 1186595, i64 1186622, i64 1186655, i64 1186676, i64 1186703, i64 1186729}
!54 = !{i32 0, i32 33}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148671731, i64 2148672011, i64 2148672345, i64 2148672679}
!57 = !{i8 0, i8 2}
!58 = !{i64 2153128477}
!59 = !{i64 2153252148}
!60 = !{i64 2066041}
!61 = !{i64 2153252543}
!62 = !{i64 2153253000}
!63 = !{i64 2153253704}
!64 = !{i64 2153254316}
!65 = !{i64 2153254940}
!66 = !{i64 2153254782}
!67 = !{i64 2153255552}
!68 = !{i64 2153339967}
!69 = !{i64 2153340653}
!70 = !{i64 2153381127}
!71 = !{i64 2152998152}
!72 = !{i64 2153038288}
!73 = !{i64 2153044145}
