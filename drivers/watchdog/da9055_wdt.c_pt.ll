; ModuleID = '/llk/IR_all_yes/drivers/watchdog/da9055_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/da9055_wdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
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
%struct.da9055_wdt_data = type { %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9055 = type { ptr, ptr, ptr, ptr, i32, i32 }

@__param_str_nowayout = internal constant [20 x i8] c"da9055_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype187 = internal constant [34 x i8] c"da9055_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout188 = internal constant [77 x i8] c"da9055_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_da9055_wdt__189_164_da9055_wdt_driver_init6 = internal global ptr @da9055_wdt_driver_init, section ".initcall6.init", align 4
@da9055_wdt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @da9055_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_da9055_wdt_driver_exit = internal global ptr @da9055_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [55 x i8] c"da9055_wdt.author=David Dajun Chen <dchen@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [39 x i8] c"da9055_wdt.description=DA9055 watchdog\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [44 x i8] c"da9055_wdt.file=drivers/watchdog/da9055_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [23 x i8] c"da9055_wdt.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [42 x i8] c"da9055_wdt.alias=platform:da9055-watchdog\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da9055-watchdog\00", [16 x i8] zeroinitializer }, align 32
@da9055_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"DA9055 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@da9055_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @da9055_wdt_start, ptr @da9055_wdt_stop, ptr @da9055_wdt_ping, ptr null, ptr @da9055_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@da9055_wdt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to stop watchdog, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9055_wdt_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/watchdog/da9055_wdt.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9055_wdt_probe._entry_ptr = internal global ptr @da9055_wdt_probe._entry, section ".printk_index", align 4
@da9055_wdt_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"watchdog_register_device() failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@da9055_wdt_probe._entry_ptr.8 = internal global ptr @da9055_wdt_probe._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@da9055_wdt_maps = internal constant { [10 x %struct.anon.43], [48 x i8] } { [10 x %struct.anon.43] [%struct.anon.43 zeroinitializer, %struct.anon.43 { i8 1, i32 2 }, %struct.anon.43 { i8 2, i32 4 }, %struct.anon.43 { i8 3, i32 8 }, %struct.anon.43 { i8 4, i32 16 }, %struct.anon.43 { i8 5, i32 32 }, %struct.anon.43 { i8 5, i32 33 }, %struct.anon.43 { i8 6, i32 65 }, %struct.anon.43 { i8 6, i32 66 }, %struct.anon.43 { i8 7, i32 131 }], [48 x i8] zeroinitializer }, align 32
@da9055_wdt_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 72, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update timescale bit, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9055_wdt_set_timeout\00", [41 x i8] zeroinitializer }, align 32
@da9055_wdt_set_timeout._entry_ptr = internal global ptr @da9055_wdt_set_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 4, i64 8, i64 16, i64 32, i64 33, i64 65, i64 66, i64 131]
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 22, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"da9055_wdt_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 157, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 160, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"da9055_wdt_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 107, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"da9055_wdt_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 112, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 145, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 151, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"da9055_wdt_maps\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 39, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [33 x i8] c"../drivers/watchdog/da9055_wdt.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 71, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__UNIQUE_ID_nowayout188, ptr @__UNIQUE_ID_nowayouttype187, ptr @__exitcall_da9055_wdt_driver_exit, ptr @__initcall__kmod_da9055_wdt__189_164_da9055_wdt_driver_init6, ptr @__param_nowayout, ptr @da9055_wdt_driver_exit, ptr @da9055_wdt_probe._entry, ptr @da9055_wdt_probe._entry.6, ptr @da9055_wdt_probe._entry_ptr, ptr @da9055_wdt_probe._entry_ptr.8, ptr @da9055_wdt_set_timeout._entry, ptr @da9055_wdt_set_timeout._entry_ptr, ptr @nowayout, ptr @da9055_wdt_driver, ptr @.str, ptr @da9055_wdt_info, ptr @da9055_wdt_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @da9055_wdt_maps, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_maps to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9055_wdt_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9055_wdt_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9055_wdt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9055_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_probe(ptr noundef %pdev) #2 align 64 {
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 112, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %da90553 = getelementptr inbounds %struct.da9055_wdt_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %da90553 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %da90553, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %timeout, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @da9055_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @da9055_wdt_ops, ptr %ops, align 4
  %parent4 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %parent4, align 4
  %9 = load i8, ptr @nowayout, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.end.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end.watchdog_set_nowayout.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #4
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i42 = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %driver_data.i42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i42, align 4
  %11 = ptrtoint ptr %da90553 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %da90553, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 11, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp9.i.i, label %do.end, label %if.end8

do.end:                                           ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.da9055, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call.i.i.i.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i.i.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %watchdog_set_nowayout.exit
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %timeout, align 4
  %call10 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end8.cleanup_crit_edge, label %do.end15

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %dev16 = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i.i, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %do.end15 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_stop(ptr nocapture noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %da90551.i = getelementptr inbounds %struct.da9055_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90551.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90551.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 11, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp9.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp9.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %call.i.i.i) #7
  br label %da9055_wdt_set_timeout.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %timeout13.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %8 = ptrtoint ptr %timeout13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %timeout13.i, align 4
  br label %da9055_wdt_set_timeout.exit

da9055_wdt_set_timeout.exit:                      ; preds = %if.end12.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i.i.i, %do.end.i ], [ 0, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_start(ptr nocapture noundef %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call = tail call i32 @da9055_wdt_set_timeout(ptr noundef %wdt_dev, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da90551 = getelementptr inbounds %struct.da9055_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90551 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90551, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.03 = phi i32 [ 256, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 14, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9055_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %da90551 = getelementptr inbounds %struct.da9055_wdt_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %da90551 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %da90551, align 4
  %4 = zext i32 %timeout to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timeout, label %entry.do.end_crit_edge [
    i32 0, label %entry.if.end8_crit_edge
    i32 2, label %if.end8.fold.split
    i32 4, label %if.end8.fold.split34
    i32 8, label %if.end8.fold.split35
    i32 16, label %if.end8.fold.split36
    i32 32, label %if.end8.fold.split37
    i32 33, label %if.end8.fold.split38
    i32 65, label %if.end8.fold.split39
    i32 66, label %if.end8.fold.split40
    i32 131, label %if.end8.fold.split41
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end8.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split39:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split40:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8.fold.split41:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end8:                                          ; preds = %if.end8.fold.split41, %if.end8.fold.split40, %if.end8.fold.split39, %if.end8.fold.split38, %if.end8.fold.split37, %if.end8.fold.split36, %if.end8.fold.split35, %if.end8.fold.split34, %if.end8.fold.split, %entry.if.end8_crit_edge
  %i.032.lcssa = phi i32 [ %timeout, %entry.if.end8_crit_edge ], [ 1, %if.end8.fold.split ], [ 2, %if.end8.fold.split34 ], [ 3, %if.end8.fold.split35 ], [ 4, %if.end8.fold.split36 ], [ 5, %if.end8.fold.split37 ], [ 6, %if.end8.fold.split38 ], [ 7, %if.end8.fold.split39 ], [ 8, %if.end8.fold.split40 ], [ 9, %if.end8.fold.split41 ]
  %arrayidx5 = getelementptr [10 x %struct.anon.43], ptr @da9055_wdt_maps, i32 0, i32 %i.032.lcssa
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 4
  %shl = shl i8 %6, 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %conv2.i = zext i8 %shl to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 11, i32 noundef 112, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9 = icmp slt i32 %call.i.i, 0
  br i1 %cmp9, label %if.end8.do.end_crit_edge, label %if.end12

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.029 = phi i32 [ %call.i.i, %if.end8.do.end_crit_edge ], [ -22, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.da9055, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.9, i32 noundef %ret.029) #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %timeout13 = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %11 = ptrtoint ptr %timeout13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %timeout, ptr %timeout13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  %retval.0 = phi i32 [ %ret.029, %do.end ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/da9055_wdt.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype187, !1, !"__UNIQUE_ID_nowayouttype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout188, !4, !"__UNIQUE_ID_nowayout188", i1 false, i1 false}
!4 = !{!"../drivers/watchdog/da9055_wdt.c", i32 24, i32 1}
!5 = !{ptr @__initcall__kmod_da9055_wdt__189_164_da9055_wdt_driver_init6, !6, !"__initcall__kmod_da9055_wdt__189_164_da9055_wdt_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/watchdog/da9055_wdt.c", i32 164, i32 1}
!7 = !{ptr @__exitcall_da9055_wdt_driver_exit, !6, !"__exitcall_da9055_wdt_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author190, !9, !"__UNIQUE_ID_author190", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/da9055_wdt.c", i32 166, i32 1}
!10 = !{ptr @__UNIQUE_ID_description191, !11, !"__UNIQUE_ID_description191", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/da9055_wdt.c", i32 167, i32 1}
!12 = !{ptr @__UNIQUE_ID_file192, !13, !"__UNIQUE_ID_file192", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/da9055_wdt.c", i32 168, i32 1}
!14 = !{ptr @__UNIQUE_ID_license193, !13, !"__UNIQUE_ID_license193", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias194, !16, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!16 = !{!"../drivers/watchdog/da9055_wdt.c", i32 169, i32 1}
!17 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!18 = !{ptr @nowayout, !19, !"nowayout", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/da9055_wdt.c", i32 22, i32 13}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/watchdog/da9055_wdt.c", i32 160, i32 11}
!22 = !{ptr @da9055_wdt_driver, !23, !"da9055_wdt_driver", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/da9055_wdt.c", i32 157, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/watchdog/da9055_wdt.c", i32 145, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @da9055_wdt_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @da9055_wdt_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/da9055_wdt.c", i32 151, i32 3}
!34 = !{ptr @da9055_wdt_probe._entry.6, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @da9055_wdt_probe._entry_ptr.8, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @da9055_wdt_info, !37, !"da9055_wdt_info", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/da9055_wdt.c", i32 107, i32 35}
!38 = !{ptr @da9055_wdt_ops, !39, !"da9055_wdt_ops", i1 false, i1 false}
!39 = !{!"../drivers/watchdog/da9055_wdt.c", i32 112, i32 34}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/watchdog/da9055_wdt.c", i32 71, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @da9055_wdt_set_timeout._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @da9055_wdt_set_timeout._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @da9055_wdt_maps, !46, !"da9055_wdt_maps", i1 false, i1 false}
!46 = !{!"../drivers/watchdog/da9055_wdt.c", i32 39, i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
