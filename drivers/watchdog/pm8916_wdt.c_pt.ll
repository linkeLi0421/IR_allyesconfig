; ModuleID = '/llk/IR_all_yes/drivers/watchdog/pm8916_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/pm8916_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pm8916_wdt = type { ptr, %struct.watchdog_device, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_pm8916_wdt__187_240_pm8916_wdt_driver_init6 = internal global ptr @pm8916_wdt_driver_init, section ".initcall6.init", align 4
@pm8916_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8916_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8916_wdt_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8916_wdt_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8916_wdt_driver_exit = internal global ptr @pm8916_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"pm8916_wdt.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [55 x i8] c"pm8916_wdt.description=Qualcomm pm8916 watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [44 x i8] c"pm8916_wdt.file=drivers/watchdog/pm8916_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [26 x i8] c"pm8916_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8916-wdt\00", [21 x i8] zeroinitializer }, align 32
@pm8916_wdt_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pm8916_wdt_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm8916_wdt_suspend, ptr @pm8916_wdt_resume, ptr @pm8916_wdt_suspend, ptr @pm8916_wdt_resume, ptr @pm8916_wdt_suspend, ptr @pm8916_wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to locate regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8916_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/pm8916_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry_ptr = internal global ptr @pm8916_wdt_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 160, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get pm8916-pon address\0A\00", [62 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry_ptr.9 = internal global ptr @pm8916_wdt_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8916_wdt\00", [21 x i8] zeroinitializer }, align 32
@pm8916_wdt_pt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33664, i32 0, [32 x i8] c"QCOM PM8916 PON WDT\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@pm8916_wdt_ident = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"QCOM PM8916 PON WDT\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed configure watchdog\0A\00", [37 x i8] zeroinitializer }, align 32
@pm8916_wdt_probe._entry_ptr.13 = internal global ptr @pm8916_wdt_probe._entry.11, section ".printk_index", align 4
@pm8916_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @pm8916_wdt_start, ptr @pm8916_wdt_stop, ptr @pm8916_wdt_ping, ptr null, ptr @pm8916_wdt_set_timeout, ptr @pm8916_wdt_set_pretimeout, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"pm8916_wdt_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 232, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 235, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"pm8916_wdt_id_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 226, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"pm8916_wdt_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 223, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 154, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 158, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 160, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 167, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"pm8916_wdt_pt_ident\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 118, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"pm8916_wdt_ident\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 113, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 184, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"pm8916_wdt_ops\00", align 1
@___asan_gen_.69 = private constant [33 x i8] c"../drivers/watchdog/pm8916_wdt.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 124, i32 34 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_pm8916_wdt_driver_exit, ptr @__initcall__kmod_pm8916_wdt__187_240_pm8916_wdt_driver_init6, ptr @pm8916_wdt_driver_exit, ptr @pm8916_wdt_probe._entry, ptr @pm8916_wdt_probe._entry.11, ptr @pm8916_wdt_probe._entry.7, ptr @pm8916_wdt_probe._entry_ptr, ptr @pm8916_wdt_probe._entry_ptr.13, ptr @pm8916_wdt_probe._entry_ptr.9, ptr @pm8916_wdt_driver, ptr @.str, ptr @pm8916_wdt_id_table, ptr @pm8916_wdt_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @pm8916_wdt_pt_ident, ptr @pm8916_wdt_ident, ptr @.str.12, ptr @pm8916_wdt_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_pt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_ident to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8916_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8916_wdt_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8916_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8916_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2, align 8
  %parent3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent3, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %baseaddr = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 2
  %call.i93 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %baseaddr, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool10.not = icmp eq i32 %call.i93, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp sgt i32 %call16, 0
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %call.i94 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call16, ptr noundef nonnull @pm8916_wdt_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool19.not = icmp eq i32 %call.i94, 0
  br i1 %tobool19.not, label %if.then17.if.end27_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call16)
  %cmp22 = icmp eq i32 %call16, -517
  br i1 %cmp22, label %if.else.cleanup_crit_edge, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then17.if.end27_crit_edge
  %pm8916_wdt_ident.sink = phi ptr [ @pm8916_wdt_pt_ident, %if.then17.if.end27_crit_edge ], [ @pm8916_wdt_ident, %if.else.if.end27_crit_edge ]
  %info26 = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %info26 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pm8916_wdt_ident.sink, ptr %info26, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %8 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baseaddr, align 4
  %add = add i32 %9, 86
  %call30 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %add, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %wdev37 = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pm8916_wdt_ops, ptr %ops, align 4
  %parent39 = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %parent39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %parent39, align 4
  %min_timeout = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 127, ptr %max_timeout, align 4
  %timeout = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %timeout, align 4
  %pretimeout = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pretimeout, align 4
  %driver_data.i = getelementptr inbounds %struct.pm8916_wdt, ptr %call.i, i32 0, i32 1, i32 16
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call i32 @watchdog_init_timeout(ptr noundef %wdev37, i32 noundef 0, ptr noundef %dev1) #5
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %baseaddr.i = getelementptr inbounds %struct.pm8916_wdt, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %baseaddr.i, align 4
  %add.i = add i32 %23, 84
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout, align 4
  %26 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pretimeout, align 4
  %sub.i = sub i32 %25, %27
  %call1.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %add.i, i32 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.pm8916_wdt_configure_timers.exit_crit_edge

if.end36.pm8916_wdt_configure_timers.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8916_wdt_configure_timers.exit

if.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %19, align 4
  %30 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %baseaddr.i, align 4
  %add4.i = add i32 %31, 85
  %32 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pretimeout, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %add4.i, i32 noundef %33) #5
  br label %pm8916_wdt_configure_timers.exit

pm8916_wdt_configure_timers.exit:                 ; preds = %if.end.i, %if.end36.pm8916_wdt_configure_timers.exit_crit_edge
  %call50 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdev37) #5
  br label %cleanup

cleanup:                                          ; preds = %pm8916_wdt_configure_timers.exit, %do.end35, %if.else.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i93, %do.end14 ], [ %call30, %do.end35 ], [ %call50, %pm8916_wdt_configure_timers.exit ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i94, %if.then17.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_isr(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts) #5
  %0 = ptrtoint ptr %sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sts, align 4, !annotation !53
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arg, align 4
  %baseaddr = getelementptr inbounds %struct.pm8916_wdt, ptr %arg, i32 0, i32 2
  %3 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %baseaddr, align 4
  %add = add i32 %4, 16
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %sts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sts, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %wdev = getelementptr inbounds %struct.pm8916_wdt, ptr %arg, i32 0, i32 1
  call void @watchdog_notify_pretimeout(ptr noundef %wdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_notify_pretimeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_start(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %baseaddr = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baseaddr, align 4
  %add = add i32 %5, 87
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_stop(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %baseaddr = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baseaddr, align 4
  %add = add i32 %5, 87
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_ping(ptr nocapture noundef readonly %wdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %baseaddr = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baseaddr, align 4
  %add = add i32 %5, 88
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_set_timeout(ptr nocapture noundef %wdev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %timeout, ptr %timeout1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %baseaddr.i = getelementptr inbounds %struct.pm8916_wdt, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %baseaddr.i, align 4
  %add.i = add i32 %6, 84
  %pretimeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 8
  %7 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pretimeout.i, align 4
  %sub.i = sub i32 %timeout, %8
  %call1.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add.i, i32 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pm8916_wdt_configure_timers.exit_crit_edge

entry.pm8916_wdt_configure_timers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8916_wdt_configure_timers.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %11 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %baseaddr.i, align 4
  %add4.i = add i32 %12, 85
  %13 = ptrtoint ptr %pretimeout.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pretimeout.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add4.i, i32 noundef %14) #5
  br label %pm8916_wdt_configure_timers.exit

pm8916_wdt_configure_timers.exit:                 ; preds = %if.end.i, %entry.pm8916_wdt_configure_timers.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ %call1.i, %entry.pm8916_wdt_configure_timers.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_set_pretimeout(ptr nocapture noundef %wdev, i32 noundef %pretimeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pretimeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 8
  %0 = ptrtoint ptr %pretimeout1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %pretimeout, ptr %pretimeout1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 16
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %baseaddr.i = getelementptr inbounds %struct.pm8916_wdt, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %baseaddr.i, align 4
  %add.i = add i32 %6, 84
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdev, i32 0, i32 7
  %7 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout.i, align 4
  %sub.i = sub i32 %8, %pretimeout
  %call1.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add.i, i32 noundef %sub.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pm8916_wdt_configure_timers.exit_crit_edge

entry.pm8916_wdt_configure_timers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm8916_wdt_configure_timers.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %11 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %baseaddr.i, align 4
  %add4.i = add i32 %12, 85
  %13 = ptrtoint ptr %pretimeout1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pretimeout1, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %add4.i, i32 noundef %14) #5
  br label %pm8916_wdt_configure_timers.exit

pm8916_wdt_configure_timers.exit:                 ; preds = %if.end.i, %entry.pm8916_wdt_configure_timers.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %if.end.i ], [ %call1.i, %entry.pm8916_wdt_configure_timers.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %baseaddr.i = getelementptr inbounds %struct.pm8916_wdt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baseaddr.i, align 4
  %add.i = add i32 %9, 87
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8916_wdt_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pm8916_wdt, ptr %1, i32 0, i32 1, i32 16
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %baseaddr.i = getelementptr inbounds %struct.pm8916_wdt, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %baseaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baseaddr.i, align 4
  %add.i = add i32 %9, 87
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_pm8916_wdt__187_240_pm8916_wdt_driver_init6, !1, !"__initcall__kmod_pm8916_wdt__187_240_pm8916_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_pm8916_wdt_driver_exit, !1, !"__exitcall_pm8916_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 242, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 235, i32 11}
!12 = !{ptr @pm8916_wdt_driver, !13, !"pm8916_wdt_driver", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 232, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 154, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pm8916_wdt_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pm8916_wdt_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 158, i32 41}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 160, i32 3}
!26 = !{ptr @pm8916_wdt_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pm8916_wdt_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 167, i32 12}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 184, i32 3}
!32 = !{ptr @pm8916_wdt_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pm8916_wdt_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @pm8916_wdt_pt_ident, !35, !"pm8916_wdt_pt_ident", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 118, i32 35}
!36 = !{ptr @pm8916_wdt_ident, !37, !"pm8916_wdt_ident", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 113, i32 35}
!38 = !{ptr @pm8916_wdt_ops, !39, !"pm8916_wdt_ops", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 124, i32 34}
!40 = !{ptr @pm8916_wdt_id_table, !41, !"pm8916_wdt_id_table", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 226, i32 34}
!42 = !{ptr @pm8916_wdt_pm_ops, !43, !"pm8916_wdt_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/watchdog/pm8916_wdt.c", i32 223, i32 8}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
