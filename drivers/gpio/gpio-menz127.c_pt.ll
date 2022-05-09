; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-menz127.c_pt.bc'
source_filename = "../drivers/gpio/gpio-menz127.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mcb_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcb_device_id = type { i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.men_z127_gpio = type { %struct.gpio_chip, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_gpio_menz127__223_208_men_z127_driver_init6 = internal global ptr @men_z127_driver_init, section ".initcall6.init", align 4
@men_z127_driver = internal global { %struct.mcb_driver, [36 x i8] } { %struct.mcb_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @men_z127_ids, ptr @men_z127_probe, ptr @men_z127_remove, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_men_z127_driver_exit = internal global ptr @men_z127_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [59 x i8] c"gpio_menz127.author=Andreas Werner <andreas.werner@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [52 x i8] c"gpio_menz127.description=MEN 16z127 GPIO Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"gpio_menz127.file=drivers/gpio/gpio-menz127\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [28 x i8] c"gpio_menz127.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [30 x i8] c"gpio_menz127.alias=mcb:16z127\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns229 = internal constant [27 x i8] c"gpio_menz127.import_ns=MCB\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_menz127\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"z127-gpio\00", [22 x i8] zeroinitializer }, align 32
@men_z127_ids = internal constant { [2 x %struct.mcb_device_id], [16 x i8] } { [2 x %struct.mcb_device_id] [%struct.mcb_device_id { i16 127, i32 0 }, %struct.mcb_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@men_z127_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request device memory\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"men_z127_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-menz127.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@men_z127_probe._entry_ptr = internal global ptr @men_z127_probe._entry, section ".printk_index", align 4
@men_z127_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@men_z127_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@men_z127_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 170, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to register MEN 16Z127 GPIO controller\00", [50 x i8] zeroinitializer }, align 32
@men_z127_probe._entry_ptr.9 = internal global ptr @men_z127_probe._entry.7, section ".printk_index", align 4
@men_z127_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 174, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MEN 16Z127 GPIO driver registered\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@men_z127_probe._entry_ptr.13 = internal global ptr @men_z127_probe._entry.10, section ".printk_index", align 4
@men_z127_debounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 47, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"debounce value %u out of range\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"men_z127_debounce\00", [46 x i8] zeroinitializer }, align 32
@men_z127_debounce._entry_ptr = internal global ptr @men_z127_debounce._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 11]
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"men_z127_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 200, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 208, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 202, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"men_z127_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 194, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 144, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 168, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 170, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [31 x i8] c"../drivers/gpio/gpio-menz127.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 47, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_import_ns229, ptr @__UNIQUE_ID_license227, ptr @__exitcall_men_z127_driver_exit, ptr @__initcall__kmod_gpio_menz127__223_208_men_z127_driver_init6, ptr @men_z127_debounce._entry, ptr @men_z127_debounce._entry_ptr, ptr @men_z127_driver_exit, ptr @men_z127_probe._entry, ptr @men_z127_probe._entry.10, ptr @men_z127_probe._entry.7, ptr @men_z127_probe._entry_ptr, ptr @men_z127_probe._entry_ptr.13, ptr @men_z127_probe._entry_ptr.9, ptr @men_z127_driver, ptr @.str, ptr @.str.1, ptr @men_z127_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @men_z127_probe.lock_key, ptr @men_z127_probe.request_key, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_ids to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @men_z127_debounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z127_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mcb_register_driver(ptr noundef nonnull @men_z127_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @men_z127_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mcb_unregister_driver(ptr noundef nonnull @men_z127_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mcb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z127_probe(ptr noundef %mdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdev, i32 noundef 356, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @mcb_request_mem(ptr noundef %mdev, ptr noundef %retval.0.i) #5
  %mem = getelementptr inbounds %struct.men_z127_gpio, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %mem, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.2) #8
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end9:                                          ; preds = %dev_name.exit
  %8 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call13 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #5
  %reg_base = getelementptr inbounds %struct.men_z127_gpio, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %reg_base, align 4
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.end9.err_release_crit_edge, label %if.end16

if.end9.err_release_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_release

if.end16:                                         ; preds = %if.end9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 4
  %add.ptr22 = getelementptr i8, ptr %call13, i32 12
  %call23 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %mdev, i32 noundef 4, ptr noundef %add.ptr, ptr noundef nonnull %call13, ptr noundef null, ptr noundef %add.ptr22, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end16.err_unmap_crit_edge

if.end16.err_unmap_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.end26:                                         ; preds = %if.end16
  %set_config = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 14
  %14 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @men_z127_set_config, ptr %set_config, align 4
  %call29 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @men_z127_probe.lock_key, ptr noundef nonnull @men_z127_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end38, label %do.end34

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdev, ptr noundef nonnull @.str.8) #8
  br label %err_unmap

do.end38:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

err_unmap:                                        ; preds = %do.end34, %if.end16.err_unmap_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end16.err_unmap_crit_edge ], [ %call29, %do.end34 ]
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %16) #5
  br label %err_release

err_release:                                      ; preds = %err_unmap, %if.end9.err_release_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_unmap ], [ -6, %if.end9.err_release_crit_edge ]
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mem, align 4
  tail call void @mcb_release_mem(ptr noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %err_release, %do.end38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %ret.1, %err_release ], [ 0, %do.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @men_z127_remove(ptr nocapture noundef readonly %mdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @gpiochip_remove(ptr noundef %1) #5
  %reg_base = getelementptr inbounds %struct.men_z127_gpio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %3) #5
  %mem = getelementptr inbounds %struct.men_z127_gpio, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  tail call void @mcb_release_mem(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mcb_request_mem(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @men_z127_set_config(ptr noundef %gc, i32 noundef %offset, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %trunc = trunc i32 %config to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 6, label %entry.sw.bb_crit_edge
    i8 8, label %entry.sw.bb_crit_edge18
    i8 11, label %sw.bb2
  ]

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18
  %and.i = and i32 %config, 255
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %bgpio_lock.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %bgpio_lock.i) #5
  %reg_base.i = getelementptr inbounds %struct.men_z127_gpio, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 28
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !55
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 6
  %shl.i = shl nuw i32 1, %offset
  %or.i = or i32 %4, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i9 = and i32 %4, %neg.i
  %od_en.0.i = select i1 %cmp.i, i32 %or.i, i32 %and.i9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %od_en.0.i) #5
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %5) #5, !srcloc !58
  tail call void @_raw_spin_unlock(ptr noundef %bgpio_lock.i) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %shr.i = lshr i32 %config, 8
  %call.i10 = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %8 = add nsw i32 %shr.i, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276701, i32 %8)
  %9 = icmp ult i32 %8, 3276701
  br i1 %9, label %if.then3.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.14, i32 noundef %shr.i) #8
  br label %cleanup

if.then3.i:                                       ; preds = %sw.bb2
  %12 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 false) #5, !range !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 31
  br i1 %tobool.not.i, label %if.then3.i.if.end12.i_crit_edge, label %land.lhs.true5.i

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

land.lhs.true5.i:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub6.i = sub nsw i32 30, %12
  %shl.i11 = shl nuw nsw i32 1, %sub6.i
  %and.i12 = and i32 %shl.i11, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool7.not.i = icmp eq i32 %and.i12, 0
  %add.i = add nuw nsw i32 %shr.i, 49
  %spec.select.i = select i1 %tobool7.not.i, i32 %shr.i, i32 %add.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true5.i, %if.then3.i.if.end12.i_crit_edge
  %debounce.sink69.i = phi i32 [ %shr.i, %if.then3.i.if.end12.i_crit_edge ], [ %spec.select.i, %land.lhs.true5.i ]
  %debounce.sink69.i.frozen = freeze i32 %debounce.sink69.i
  %div16.i = udiv i32 %debounce.sink69.i.frozen, 50
  %13 = mul i32 %div16.i, 50
  %rem.i.decomposed = sub i32 %debounce.sink69.i.frozen, %13
  %sub11.i = sub nuw nsw i32 %debounce.sink69.i, %rem.i.decomposed
  %bgpio_lock.i13 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %bgpio_lock.i13) #5
  %reg_base.i14 = getelementptr inbounds %struct.men_z127_gpio, ptr %call.i10, i32 0, i32 1
  %14 = ptrtoint ptr %reg_base.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #5, !srcloc !55
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %sub11.i)
  %18 = icmp ult i32 %sub11.i, 50
  br i1 %18, label %if.then22.i, label %if.else25.i

if.then22.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl23.i = shl nuw i32 1, %offset
  %neg.i16 = xor i32 %shl23.i, -1
  %and24.i = and i32 %17, %neg.i16
  br label %do.body28.i

if.else25.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl26.i = shl nuw i32 1, %offset
  %or.i17 = or i32 %17, %shl26.i
  br label %do.body28.i

do.body28.i:                                      ; preds = %if.else25.i, %if.then22.i
  %db_cnt.0.i = phi i32 [ 0, %if.then22.i ], [ %div16.i, %if.else25.i ]
  %db_en.0.i = phi i32 [ %and24.i, %if.then22.i ], [ %or.i17, %if.else25.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %db_en.0.i) #5
  %20 = ptrtoint ptr %reg_base.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i14, align 4
  %add.ptr32.i = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %19) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %db_cnt.0.i) #5
  %23 = ptrtoint ptr %reg_base.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i14, align 4
  %mul37.i = shl i32 %offset, 2
  %add38.i = add i32 %mul37.i, 128
  %add.ptr39.i = getelementptr i8, ptr %24, i32 %add38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %22) #5, !srcloc !58
  tail call void @_raw_spin_unlock(ptr noundef %bgpio_lock.i13) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body28.i, %do.end.i, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -524, %entry.cleanup_crit_edge ], [ 0, %do.body28.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_release_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_gpio_menz127__223_208_men_z127_driver_init6, !1, !"__initcall__kmod_gpio_menz127__223_208_men_z127_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-menz127.c", i32 208, i32 1}
!2 = !{ptr @__exitcall_men_z127_driver_exit, !1, !"__exitcall_men_z127_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-menz127.c", i32 210, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-menz127.c", i32 211, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-menz127.c", i32 212, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-menz127.c", i32 213, i32 1}
!12 = !{ptr @__UNIQUE_ID_import_ns229, !13, !"__UNIQUE_ID_import_ns229", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-menz127.c", i32 214, i32 1}
!14 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-menz127.c", i32 202, i32 11}
!17 = !{ptr @men_z127_driver, !18, !"men_z127_driver", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-menz127.c", i32 200, i32 26}
!19 = !{ptr @men_z127_ids, !20, !"men_z127_ids", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-menz127.c", i32 194, i32 35}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-menz127.c", i32 144, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @men_z127_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @men_z127_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @men_z127_probe.lock_key, !30, !"lock_key", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-menz127.c", i32 168, i32 8}
!31 = !{ptr @men_z127_probe.request_key, !30, !"request_key", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-menz127.c", i32 170, i32 3}
!34 = !{ptr @men_z127_probe._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @men_z127_probe._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-menz127.c", i32 174, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @men_z127_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @men_z127_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-menz127.c", i32 47, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @men_z127_debounce._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @men_z127_debounce._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 4039209}
!56 = !{i64 2153782290}
!57 = !{i64 2153782675}
!58 = !{i64 4038791}
!59 = !{i32 0, i32 33}
!60 = !{i64 2153780751}
!61 = !{i64 2153781132}
!62 = !{i64 2153781579}
