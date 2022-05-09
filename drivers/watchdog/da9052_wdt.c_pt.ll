; ModuleID = '/llk/IR_all_yes/drivers/watchdog/da9052_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/da9052_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.43 = type { i8, i32 }
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
%struct.da9052_wdt_data = type { %struct.watchdog_device, ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9052 = type { ptr, ptr, %struct.mutex, %struct.completion, i32, ptr, i8, i32, ptr }

@__initcall__kmod_da9052_wdt__191_189_da9052_wdt_driver_init6 = internal global ptr @da9052_wdt_driver_init, section ".initcall6.init", align 4
@da9052_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9052_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9052_wdt_driver_exit = internal global ptr @da9052_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [60 x i8] c"da9052_wdt.author=Anthony Olech <Anthony.Olech@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [47 x i8] c"da9052_wdt.description=DA9052 SM Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [44 x i8] c"da9052_wdt.file=drivers/watchdog/da9052_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [23 x i8] c"da9052_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [42 x i8] c"da9052_wdt.alias=platform:da9052-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9052-watchdog\00", [16 x i8] zeroinitializer }, align 32
@da9052_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"DA9052 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@da9052_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @da9052_wdt_start, ptr @da9052_wdt_stop, ptr @da9052_wdt_ping, ptr null, ptr @da9052_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@da9052_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable watchdog bits, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9052_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/da9052_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9052_wdt_probe._entry_ptr = internal global ptr @da9052_wdt_probe._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@da9052_wdt_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to disable watchdog bit, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9052_wdt_set_timeout\00", [41 x i8] zeroinitializer }, align 32
@da9052_wdt_set_timeout._entry_ptr = internal global ptr @da9052_wdt_set_timeout._entry, section ".printk_index", align 4
@da9052_wdt_maps = internal constant { [9 x %struct.anon.43], [56 x i8] } { [9 x %struct.anon.43] [%struct.anon.43 { i8 1, i32 2 }, %struct.anon.43 { i8 2, i32 4 }, %struct.anon.43 { i8 3, i32 8 }, %struct.anon.43 { i8 4, i32 16 }, %struct.anon.43 { i8 5, i32 32 }, %struct.anon.43 { i8 5, i32 33 }, %struct.anon.43 { i8 6, i32 65 }, %struct.anon.43 { i8 6, i32 66 }, %struct.anon.43 { i8 7, i32 131 }], [56 x i8] zeroinitializer }, align 32
@da9052_wdt_set_timeout._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update timescale bit, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@da9052_wdt_set_timeout._entry_ptr.10 = internal global ptr @da9052_wdt_set_timeout._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 2, i64 4, i64 8, i64 16, i64 32, i64 33, i64 65, i64 66, i64 131]
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"da9052_wdt_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 182, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 185, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"da9052_wdt_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 137, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"da9052_wdt_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 142, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 175, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 63, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"da9052_wdt_maps\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 36, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [33 x i8] c"../drivers/watchdog/da9052_wdt.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 86, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_da9052_wdt_driver_exit, ptr @__initcall__kmod_da9052_wdt__191_189_da9052_wdt_driver_init6, ptr @da9052_wdt_driver_exit, ptr @da9052_wdt_probe._entry, ptr @da9052_wdt_probe._entry_ptr, ptr @da9052_wdt_set_timeout._entry, ptr @da9052_wdt_set_timeout._entry.8, ptr @da9052_wdt_set_timeout._entry_ptr, ptr @da9052_wdt_set_timeout._entry_ptr.10, ptr @da9052_wdt_driver, ptr @.str, ptr @da9052_wdt_info, ptr @da9052_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @da9052_wdt_maps, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_maps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9052_wdt_set_timeout._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9052_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9052_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9052_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %da90523 = getelementptr inbounds %struct.da9052_wdt_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %da90523 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %da90523, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %timeout, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @da9052_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @da9052_wdt_ops, ptr %ops, align 4
  %parent4 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent4, align 4
  %driver_data.i29 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %driver_data.i29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i29, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.if.end7_crit_edge, label %da9052_reg_update.exit

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

da9052_reg_update.exit:                           ; preds = %if.end.i
  %call6.i = tail call i32 %13(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %da9052_reg_update.exit.do.end_crit_edge, label %da9052_reg_update.exit.if.end7_crit_edge

da9052_reg_update.exit.if.end7_crit_edge:         ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

da9052_reg_update.exit.do.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %da9052_reg_update.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i32 = phi i32 [ %call6.i, %da9052_reg_update.exit.do.end_crit_edge ], [ %call.i.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i32) #7
  br label %cleanup

if.end7:                                          ; preds = %da9052_reg_update.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %call9 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i32, %do.end ], [ %call9, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_start(ptr nocapture noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call = tail call i32 @da9052_wdt_set_timeout(ptr noundef %wdt_dev, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %da90521.i = getelementptr inbounds %struct.da9052_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90521.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90521.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %entry.do.end.i_crit_edge, label %if.end.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i.i:                                       ; preds = %entry
  %fix_io.i.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i.da9052_wdt_set_timeout.exit_crit_edge, label %da9052_reg_update.exit.i

if.end.i.i.da9052_wdt_set_timeout.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9052_wdt_set_timeout.exit

da9052_reg_update.exit.i:                         ; preds = %if.end.i.i
  %call6.i.i = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i, label %da9052_reg_update.exit.i.do.end.i_crit_edge, label %da9052_reg_update.exit.i.da9052_wdt_set_timeout.exit_crit_edge

da9052_reg_update.exit.i.da9052_wdt_set_timeout.exit_crit_edge: ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %da9052_wdt_set_timeout.exit

da9052_reg_update.exit.i.do.end.i_crit_edge:      ; preds = %da9052_reg_update.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %da9052_reg_update.exit.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %retval.0.i53.i = phi i32 [ %call6.i.i, %da9052_reg_update.exit.i.do.end.i_crit_edge ], [ %call.i.i.i, %entry.do.end.i_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i53.i) #7
  br label %da9052_wdt_set_timeout.exit

da9052_wdt_set_timeout.exit:                      ; preds = %do.end.i, %da9052_reg_update.exit.i.da9052_wdt_set_timeout.exit_crit_edge, %if.end.i.i.da9052_wdt_set_timeout.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i53.i, %do.end.i ], [ 0, %da9052_reg_update.exit.i.da9052_wdt_set_timeout.exit_crit_edge ], [ 0, %if.end.i.i.da9052_wdt_set_timeout.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da90521 = getelementptr inbounds %struct.da9052_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90521 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90521, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %jpast = getelementptr inbounds %struct.da9052_wdt_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %jpast to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jpast, align 4
  %sub = sub i32 %4, %6
  %mul = mul i32 %sub, 1000
  %7 = add i32 %mul, -25600
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25500, i32 %7)
  %8 = icmp ult i32 %7, -25500
  br i1 %8, label %entry.if.end_crit_edge, label %while.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.preheader:                             ; preds = %entry
  %div = udiv i32 %mul, 100
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.050 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div, %while.body.preheader ]
  %dec = add i32 %__ms.050, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 17, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.if.end18_crit_edge, label %da9052_reg_update.exit

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

da9052_reg_update.exit:                           ; preds = %if.end.i
  %call6.i = tail call i32 %13(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp16 = icmp slt i32 %call6.i, 0
  br i1 %cmp16, label %da9052_reg_update.exit.cleanup_crit_edge, label %da9052_reg_update.exit.if.end18_crit_edge

da9052_reg_update.exit.if.end18_crit_edge:        ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

da9052_reg_update.exit.cleanup_crit_edge:         ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %da9052_reg_update.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %cmp.i36 = icmp slt i32 %call.i.i35, 0
  br i1 %cmp.i36, label %if.end18.cleanup_crit_edge, label %if.end.i39

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i39:                                       ; preds = %if.end18
  %16 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i38 = icmp eq ptr %17, null
  br i1 %tobool.not.i38, label %if.end.i39.cleanup_crit_edge, label %if.then4.i41

if.end.i39.cleanup_crit_edge:                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4.i41:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i40 = tail call i32 %17(ptr noundef %3, i8 noundef zeroext 17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i41, %if.end.i39.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %da9052_reg_update.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %da9052_reg_update.exit.cleanup_crit_edge ], [ %call.i.i35, %if.end18.cleanup_crit_edge ], [ %call6.i40, %if.then4.i41 ], [ %call.i.i35, %if.end.i39.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9052_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da90521 = getelementptr inbounds %struct.da9052_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90521 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90521, align 4
  %regmap.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %entry
  %fix_io.i = getelementptr inbounds %struct.da9052, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %da9052_reg_update.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

da9052_reg_update.exit:                           ; preds = %if.end.i
  %call6.i = tail call i32 %7(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %da9052_reg_update.exit.do.end_crit_edge, label %da9052_reg_update.exit.if.end_crit_edge

da9052_reg_update.exit.if.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

da9052_reg_update.exit.do.end_crit_edge:          ; preds = %da9052_reg_update.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %da9052_reg_update.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i53 = phi i32 [ %call6.i, %da9052_reg_update.exit.do.end_crit_edge ], [ %call.i.i, %entry.do.end_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i53) #7
  br label %cleanup

if.end:                                           ; preds = %da9052_reg_update.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 32212200) #4
  %11 = zext i32 %timeout to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timeout, label %if.then3.do.end17_crit_edge [
    i32 2, label %if.then3.if.else_crit_edge
    i32 4, label %if.else.fold.split
    i32 8, label %if.else.fold.split68
    i32 16, label %if.else.fold.split69
    i32 32, label %if.else.fold.split70
    i32 33, label %if.else.fold.split71
    i32 65, label %if.else.fold.split72
    i32 66, label %if.else.fold.split73
    i32 131, label %if.else.fold.split74
  ]

if.then3.if.else_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then3.do.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

if.else.fold.split:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split68:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split69:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split70:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split71:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split72:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split73:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else.fold.split74:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %if.else.fold.split74, %if.else.fold.split73, %if.else.fold.split72, %if.else.fold.split71, %if.else.fold.split70, %if.else.fold.split69, %if.else.fold.split68, %if.else.fold.split, %if.then3.if.else_crit_edge
  %i.066.lcssa = phi i32 [ 0, %if.then3.if.else_crit_edge ], [ 1, %if.else.fold.split ], [ 2, %if.else.fold.split68 ], [ 3, %if.else.fold.split69 ], [ 4, %if.else.fold.split70 ], [ 5, %if.else.fold.split71 ], [ 6, %if.else.fold.split72 ], [ 7, %if.else.fold.split73 ], [ 8, %if.else.fold.split74 ]
  %arrayidx10 = getelementptr [9 x %struct.anon.43], ptr @da9052_wdt_maps, i32 0, i32 %i.066.lcssa
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %13 to i32
  %call.i.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 17, i32 noundef 7, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i43, label %if.else.do.end17_crit_edge, label %if.end.i46

if.else.do.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

if.end.i46:                                       ; preds = %if.else
  %16 = ptrtoint ptr %fix_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fix_io.i, align 4
  %tobool.not.i45 = icmp eq ptr %17, null
  br i1 %tobool.not.i45, label %if.end.i46.if.end19_crit_edge, label %if.end12

if.end.i46.if.end19_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end12:                                         ; preds = %if.end.i46
  %call6.i47 = tail call i32 %17(ptr noundef %3, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i47)
  %cmp13 = icmp slt i32 %call6.i47, 0
  br i1 %cmp13, label %if.end12.do.end17_crit_edge, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end12.do.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end17

do.end17:                                         ; preds = %if.end12.do.end17_crit_edge, %if.else.do.end17_crit_edge, %if.then3.do.end17_crit_edge
  %ret.060 = phi i32 [ %call6.i47, %if.end12.do.end17_crit_edge ], [ %call.i.i42, %if.else.do.end17_crit_edge ], [ -22, %if.then3.do.end17_crit_edge ]
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef %ret.060) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end12.if.end19_crit_edge, %if.end.i46.if.end19_crit_edge
  %timeout20 = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %20 = ptrtoint ptr %timeout20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %timeout, ptr %timeout20, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %jpast = getelementptr inbounds %struct.da9052_wdt_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %jpast to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %jpast, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i53, %do.end ], [ %ret.060, %do.end17 ], [ 0, %if.end19 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_da9052_wdt__191_189_da9052_wdt_driver_init6, !1, !"__initcall__kmod_da9052_wdt__191_189_da9052_wdt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/da9052_wdt.c", i32 189, i32 1}
!2 = !{ptr @__exitcall_da9052_wdt_driver_exit, !1, !"__exitcall_da9052_wdt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/da9052_wdt.c", i32 191, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/da9052_wdt.c", i32 192, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/watchdog/da9052_wdt.c", i32 193, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias196, !11, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/da9052_wdt.c", i32 194, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/da9052_wdt.c", i32 185, i32 11}
!14 = !{ptr @da9052_wdt_driver, !15, !"da9052_wdt_driver", i1 false, i1 false}
!15 = !{!"../drivers/watchdog/da9052_wdt.c", i32 182, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/da9052_wdt.c", i32 175, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @da9052_wdt_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @da9052_wdt_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @da9052_wdt_info, !25, !"da9052_wdt_info", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/da9052_wdt.c", i32 137, i32 35}
!26 = !{ptr @da9052_wdt_ops, !27, !"da9052_wdt_ops", i1 false, i1 false}
!27 = !{!"../drivers/watchdog/da9052_wdt.c", i32 142, i32 34}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/watchdog/da9052_wdt.c", i32 63, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @da9052_wdt_set_timeout._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @da9052_wdt_set_timeout._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/watchdog/da9052_wdt.c", i32 86, i32 4}
!35 = !{ptr @da9052_wdt_set_timeout._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @da9052_wdt_set_timeout._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @da9052_wdt_maps, !38, !"da9052_wdt_maps", i1 false, i1 false}
!38 = !{!"../drivers/watchdog/da9052_wdt.c", i32 36, i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
