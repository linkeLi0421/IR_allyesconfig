; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-sl28cpld.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sl28cpld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sl28cpld_pwm = type { %struct.pwm_chip, ptr, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_pwm_sl28cpld__189_257_sl28cpld_pwm_driver_init6 = internal global ptr @sl28cpld_pwm_driver_init, section ".initcall6.init", align 4
@sl28cpld_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sl28cpld_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sl28cpld_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sl28cpld_pwm_driver_exit = internal global ptr @sl28cpld_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description190 = internal constant [45 x i8] c"pwm_sl28cpld.description=sl28cpld PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [53 x i8] c"pwm_sl28cpld.author=Michael Walle <michael@walle.cc>\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [43 x i8] c"pwm_sl28cpld.file=drivers/pwm/pwm-sl28cpld\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [25 x i8] c"pwm_sl28cpld.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sl28cpld-pwm\00", [19 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kontron,sl28cpld-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no parent device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sl28cpld_pwm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/pwm/pwm-sl28cpld.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry_ptr = internal global ptr @sl28cpld_pwm_probe._entry, section ".printk_index", align 4
@sl28cpld_pwm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not get parent regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry_ptr.8 = internal global ptr @sl28cpld_pwm_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no 'reg' property found (%pe)\0A\00", [33 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry_ptr.12 = internal global ptr @sl28cpld_pwm_probe._entry.10, section ".printk_index", align 4
@sl28cpld_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @sl28cpld_pwm_apply, ptr @sl28cpld_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add PWM chip (%pe)\00", [35 x i8] zeroinitializer }, align 32
@sl28cpld_pwm_probe._entry_ptr.15 = internal global ptr @sl28cpld_pwm_probe._entry.13, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"sl28cpld_pwm_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 250, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 253, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"sl28cpld_pwm_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 244, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 207, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 217, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 221, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 223, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"sl28cpld_pwm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 194, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [30 x i8] c"../drivers/pwm/pwm-sl28cpld.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 236, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_sl28cpld_pwm_driver_exit, ptr @__initcall__kmod_pwm_sl28cpld__189_257_sl28cpld_pwm_driver_init6, ptr @sl28cpld_pwm_driver_exit, ptr @sl28cpld_pwm_probe._entry, ptr @sl28cpld_pwm_probe._entry.10, ptr @sl28cpld_pwm_probe._entry.13, ptr @sl28cpld_pwm_probe._entry.6, ptr @sl28cpld_pwm_probe._entry_ptr, ptr @sl28cpld_pwm_probe._entry_ptr.12, ptr @sl28cpld_pwm_probe._entry_ptr.15, ptr @sl28cpld_pwm_probe._entry_ptr.8, ptr @sl28cpld_pwm_driver, ptr @.str, ptr @sl28cpld_pwm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @sl28cpld_pwm_ops, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl28cpld_pwm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sl28cpld_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sl28cpld_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sl28cpld_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sl28cpld_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl28cpld_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call8 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.sl28cpld_pwm, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %regmap, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %offset = getelementptr inbounds %struct.sl28cpld_pwm, ptr %call.i, i32 0, i32 2
  %call.i62 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %offset, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool19.not = icmp eq i32 %call.i62, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %5 = inttoptr i32 %call.i62 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %5) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sl28cpld_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %npwm, align 4
  %call31 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end26.cleanup_crit_edge, label %do.end36

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %9 = inttoptr i32 %call31 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %9) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end26.cleanup_crit_edge, %do.end23, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %call31, %do.end36 ], [ -19, %do.end14 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl28cpld_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %sub = add i64 %3, 3999999
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp173 = icmp ult i64 %sub, 4294967296
  br i1 %cmp173, label %if.then177, label %if.else183, !prof !49

if.then177:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv178 = trunc i64 %sub to i32
  %div181 = udiv i32 %conv178, %conv
  br label %cond.false219

if.else183:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %sub) #10, !srcloc !50
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t786 = trunc i64 %asmresult1.i to i32
  br label %cond.false219

cond.false219:                                    ; preds = %if.else183, %if.then177
  %_tmp.0.off0 = phi i32 [ %div181, %if.then177 ], [ %extract.t786, %if.else183 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %_tmp.0.off0)
  %cmp.i = icmp ugt i32 %_tmp.0.off0, 1
  br i1 %cmp.i, label %cond.end221, label %cond.false219.if.end477_crit_edge

cond.false219.if.end477_crit_edge:                ; preds = %cond.false219
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end477

cond.end221:                                      ; preds = %cond.false219
  %sub.i751 = add i32 %_tmp.0.off0, -1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i751, i1 false) #6, !range !51
  %cond222 = sub nuw nsw i32 32, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i751)
  %cmp225 = icmp ugt i32 %sub.i751, 7
  br i1 %cmp225, label %cond.end221.cleanup_crit_edge, label %cond.end221.if.end477_crit_edge

cond.end221.if.end477_crit_edge:                  ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end477

cond.end221.cleanup_crit_edge:                    ; preds = %cond.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end477:                                        ; preds = %cond.end221.if.end477_crit_edge, %cond.false219.if.end477_crit_edge
  %cond222783 = phi i32 [ %cond222, %cond.end221.if.end477_crit_edge ], [ 0, %cond.false219.if.end477_crit_edge ]
  %6 = trunc i32 %cond222783 to i8
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool251.not = icmp eq i8 %8, 0
  %9 = or i8 %6, -128
  %spec.select = select i1 %tobool251.not, i8 %6, i8 %9
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %duty_cycle, align 8
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #10, !srcloc !53
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #10, !srcloc !54
  %asmresult10.i756 = extractvalue { i64, i32 } %13, 0
  %div453746 = lshr i64 %asmresult10.i756, 13
  %extract.t747 = trunc i64 %div453746 to i32
  %sub481 = sub nuw nsw i32 7, %cond222783
  %shl482 = shl nuw nsw i32 1, %sub481
  %14 = tail call i32 @llvm.umin.i32(i32 %shl482, i32 %extract.t747)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp490 = icmp eq i32 %14, 128
  %15 = and i8 %spec.select, -4
  %16 = or i8 %15, 1
  %ctrl.1 = select i1 %cmp490, i8 %16, i8 %spec.select
  %cycle.0 = select i1 %cmp490, i32 64, i32 %14
  %state516 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %17 = ptrtoint ptr %state516 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %state516, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %3)
  %cmp519 = icmp ugt i64 %18, %3
  br i1 %cmp519, label %if.then522, label %if.end477.if.end528_crit_edge

if.end477.if.end528_crit_edge:                    ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end528

if.then522:                                       ; preds = %if.end477
  %regmap = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 2
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %add523 = add i32 %22, 1
  %call524 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %add523, i32 noundef %cycle.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call524)
  %tobool525.not = icmp eq i32 %call524, 0
  br i1 %tobool525.not, label %if.then522.if.end528_crit_edge, label %if.then522.cleanup_crit_edge

if.then522.cleanup_crit_edge:                     ; preds = %if.then522
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then522.if.end528_crit_edge:                   ; preds = %if.then522
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end528

if.end528:                                        ; preds = %if.then522.if.end528_crit_edge, %if.end477.if.end528_crit_edge
  %regmap529 = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 1
  %23 = ptrtoint ptr %regmap529 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap529, align 4
  %offset530 = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 2
  %25 = ptrtoint ptr %offset530 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset530, align 4
  %conv532 = zext i8 %ctrl.1 to i32
  %call533 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %26, i32 noundef %conv532) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call533)
  %tobool534.not = icmp eq i32 %call533, 0
  br i1 %tobool534.not, label %if.end536, label %if.end528.cleanup_crit_edge

if.end528.cleanup_crit_edge:                      ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end536:                                        ; preds = %if.end528
  br i1 %cmp519, label %if.end536.if.end546_crit_edge, label %if.then538

if.end536.if.end546_crit_edge:                    ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end546

if.then538:                                       ; preds = %if.end536
  %27 = ptrtoint ptr %regmap529 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap529, align 4
  %29 = ptrtoint ptr %offset530 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset530, align 4
  %add541 = add i32 %30, 1
  %call542 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %add541, i32 noundef %cycle.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call542)
  %tobool543.not = icmp eq i32 %call542, 0
  br i1 %tobool543.not, label %if.then538.if.end546_crit_edge, label %if.then538.cleanup_crit_edge

if.then538.cleanup_crit_edge:                     ; preds = %if.then538
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then538.if.end546_crit_edge:                   ; preds = %if.then538
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end546

if.end546:                                        ; preds = %if.then538.if.end546_crit_edge, %if.end536.if.end546_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end546, %if.then538.cleanup_crit_edge, %if.end528.cleanup_crit_edge, %if.then522.cleanup_crit_edge, %cond.end221.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end546 ], [ -22, %entry.cleanup_crit_edge ], [ -34, %cond.end221.cleanup_crit_edge ], [ %call524, %if.then522.cleanup_crit_edge ], [ %call533, %if.end528.cleanup_crit_edge ], [ %call542, %if.then538.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl28cpld_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef %state) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !55
  %regmap = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %offset = getelementptr inbounds %struct.sl28cpld_pwm, ptr %chip, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 7
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %enabled, align 4
  %and14 = and i32 %6, 3
  %sub = xor i32 %and14, 7
  %mul = shl i32 31250, %sub
  %10 = zext i32 %mul to i64
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %state, align 8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  %add17 = add i32 %15, 1
  %call18 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add17, ptr noundef nonnull %reg) #6
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %mul19 = mul i32 %17, 31250
  %conv20 = zext i32 %mul19 to i64
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %18 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %polarity, align 8
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %state, align 8
  %21 = call i64 @llvm.umin.i64(i64 %20, i64 %conv20)
  %22 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %duty_cycle, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pwm_sl28cpld__189_257_sl28cpld_pwm_driver_init6, !1, !"__initcall__kmod_pwm_sl28cpld__189_257_sl28cpld_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_sl28cpld_pwm_driver_exit, !1, !"__exitcall_sl28cpld_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description190, !4, !"__UNIQUE_ID_description190", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_author191, !6, !"__UNIQUE_ID_author191", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file192, !8, !"__UNIQUE_ID_file192", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license193, !8, !"__UNIQUE_ID_license193", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 253, i32 11}
!12 = !{ptr @sl28cpld_pwm_driver, !13, !"sl28cpld_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 250, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 207, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sl28cpld_pwm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sl28cpld_pwm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 217, i32 3}
!24 = !{ptr @sl28cpld_pwm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sl28cpld_pwm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 221, i32 45}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 223, i32 3}
!30 = !{ptr @sl28cpld_pwm_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sl28cpld_pwm_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 236, i32 3}
!34 = !{ptr @sl28cpld_pwm_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sl28cpld_pwm_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sl28cpld_pwm_ops, !37, !"sl28cpld_pwm_ops", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 194, i32 29}
!38 = !{ptr @sl28cpld_pwm_of_match, !39, !"sl28cpld_pwm_of_match", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-sl28cpld.c", i32 244, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148638160, i64 2148638440, i64 2148638774, i64 2148639108}
!51 = !{i32 0, i32 33}
!52 = !{i8 0, i8 2}
!53 = !{i64 1152329, i64 1152356}
!54 = !{i64 1153024, i64 1153051, i64 1153084, i64 1153105, i64 1153132, i64 1153158}
!55 = !{!"auto-init"}
