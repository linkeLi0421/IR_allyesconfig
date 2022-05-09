; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/wm831x_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/wm831x_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.wm831x_backlight_pdata = type { i32, i32 }
%struct.wm831x_backlight_data = type { ptr, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_wm831x_bl__301_211_wm831x_backlight_driver_init6 = internal global ptr @wm831x_backlight_driver_init, section ".initcall6.init", align 4
@wm831x_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm831x_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm831x_backlight_driver_exit = internal global ptr @wm831x_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [56 x i8] c"wm831x_bl.description=Backlight Driver for WM831x PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [65 x i8] c"wm831x_bl.author=Mark Brown <broonie@opensource.wolfsonmicro.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [49 x i8] c"wm831x_bl.file=drivers/video/backlight/wm831x_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"wm831x_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [42 x i8] c"wm831x_bl.alias=platform:wm831x-backlight\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm831x-backlight\00", [47 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/wm831x_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry_ptr = internal global ptr @wm831x_backlight_probe._entry, section ".printk_index", align 4
@wm831x_isinkv_values = external dso_local local_unnamed_addr constant [56 x i32], align 4
@wm831x_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid max_uA: %duA\0A\00", [42 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry_ptr.8 = internal global ptr @wm831x_backlight_probe._entry.6, section ".printk_index", align 4
@wm831x_backlight_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Maximum current is %duA not %duA as requested\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry_ptr.12 = internal global ptr @wm831x_backlight_probe._entry.9, section ".printk_index", align 4
@wm831x_backlight_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid ISINK %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry_ptr.15 = internal global ptr @wm831x_backlight_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm831x\00", [25 x i8] zeroinitializer }, align 32
@wm831x_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @wm831x_backlight_update_status, ptr @wm831x_backlight_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@wm831x_backlight_probe._entry_ptr.19 = internal global ptr @wm831x_backlight_probe._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"wm831x_backlight_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 204, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 206, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 127, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 138, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 144, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 158, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 185, i32 50 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"wm831x_backlight_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 104, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [39 x i8] c"../drivers/video/backlight/wm831x_bl.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 188, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wm831x_backlight_driver_exit, ptr @__initcall__kmod_wm831x_bl__301_211_wm831x_backlight_driver_init6, ptr @wm831x_backlight_driver_exit, ptr @wm831x_backlight_probe._entry, ptr @wm831x_backlight_probe._entry.13, ptr @wm831x_backlight_probe._entry.17, ptr @wm831x_backlight_probe._entry.6, ptr @wm831x_backlight_probe._entry.9, ptr @wm831x_backlight_probe._entry_ptr, ptr @wm831x_backlight_probe._entry_ptr.12, ptr @wm831x_backlight_probe._entry_ptr.15, ptr @wm831x_backlight_probe._entry_ptr.19, ptr @wm831x_backlight_probe._entry_ptr.8, ptr @wm831x_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @wm831x_backlight_ops, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_backlight_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm831x_backlight_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm831x_backlight_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %6 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %backlight = getelementptr inbounds %struct.wm831x_pdata, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backlight, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.do.end_crit_edge, label %for.cond.preheader

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %if.end
  %max_uA = getelementptr inbounds %struct.wm831x_backlight_pdata, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_uA, align 4
  br label %for.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0123 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [56 x i32], ptr @wm831x_isinkv_values, i32 0, i32 %i.0123
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp8 = icmp ugt i32 %13, %11
  br i1 %cmp8, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, 55
  br i1 %exitcond.not, label %for.inc.if.end18_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end18_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0123)
  %cmp11 = icmp eq i32 %i.0123, 0
  br i1 %cmp11, label %do.end15, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_uA, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %15) #9
  br label %cleanup

if.end18:                                         ; preds = %for.end.if.end18_crit_edge, %for.inc.if.end18_crit_edge
  %i.0122 = phi i32 [ %i.0123, %for.end.if.end18_crit_edge ], [ 55, %for.inc.if.end18_crit_edge ]
  %sub = add nsw i32 %i.0122, -1
  %16 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_uA, align 4
  %arrayidx20 = getelementptr [56 x i32], ptr @wm831x_isinkv_values, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp21.not = icmp eq i32 %17, %19
  br i1 %cmp21.not, label %if.end18.if.end29_crit_edge, label %do.end25

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef %17) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end25, %if.end18.if.end29_crit_edge
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %9, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end33 [
    i32 1, label %if.end29.sw.epilog_crit_edge
    i32 2, label %sw.bb30
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %21) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb30, %if.end29.sw.epilog_crit_edge
  %isink_reg.0 = phi i32 [ 16463, %sw.bb30 ], [ 16462, %if.end29.sw.epilog_crit_edge ]
  %dcdc_cfg.0 = phi i16 [ 1, %sw.bb30 ], [ 0, %if.end29.sw.epilog_crit_edge ]
  %call36 = tail call i32 @wm831x_reg_unlock(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %sw.epilog.cleanup_crit_edge, label %if.end39

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog
  %call40 = tail call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16484, i16 noundef zeroext 1, i16 noundef zeroext %dcdc_cfg.0) #6
  tail call void @wm831x_reg_lock(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %cmp47 = icmp eq ptr %call.i, null
  br i1 %cmp47, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %3, ptr %call.i, align 4
  %current_brightness = getelementptr inbounds %struct.wm831x_backlight_data, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %current_brightness to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %current_brightness, align 4
  %isink_reg52 = getelementptr inbounds %struct.wm831x_backlight_data, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %isink_reg52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %isink_reg.0, ptr %isink_reg52, align 4
  %26 = call ptr @memset(ptr %props, i32 0, i32 28)
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %7, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %6, align 4
  %call55 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @wm831x_backlight_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  %29 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %30 = ptrtoint ptr %call55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %call55, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call55, ptr %driver_data.i.i, align 4
  %call65 = call i32 @wm831x_set_bits(ptr noundef %3, i16 noundef zeroext 16464, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call55, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call55, i32 0, i32 3
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end63.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end63.backlight_update_status.exit_crit_edge:  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end63
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i117 = call i32 %35(ptr noundef %call55) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end63.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end60, %if.end44.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end33, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end33 ], [ %29, %do.end60 ], [ 0, %backlight_update_status.exit ], [ -22, %do.end ], [ %call36, %sw.epilog.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm831x_reg_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_backlight_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %0 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit_crit_edge

entry.backlight_get_brightness.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %2 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %entry.backlight_get_brightness.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %entry.backlight_get_brightness.exit_crit_edge ]
  %driver_data.i.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %current_brightness.i = getelementptr inbounds %struct.wm831x_backlight_data, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.i = icmp ne i32 %retval.0.i, 0
  %spec.select.i = and i1 %tobool2.i, %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool6.not.i = icmp eq i32 %retval.0.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %14 = and i1 %tobool6.not.i, %not.tobool.not.i
  br i1 %spec.select.i, label %if.then.i, label %backlight_get_brightness.exit.if.end18.i_crit_edge

backlight_get_brightness.exit.if.end18.i_crit_edge: ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then.i:                                        ; preds = %backlight_get_brightness.exit
  %isink_reg.i = getelementptr inbounds %struct.wm831x_backlight_data, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %isink_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isink_reg.i, align 4
  %conv.i = trunc i32 %16 to i16
  %call10.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext %conv.i, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.then.i.if.then55.i_crit_edge, label %if.end.i

if.then.i.if.then55.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.end.i:                                         ; preds = %if.then.i
  %call13.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext 16464, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end.i.if.then55.i_crit_edge, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.end.i.if.then55.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.end18.i:                                       ; preds = %if.end.i.if.end18.i_crit_edge, %backlight_get_brightness.exit.if.end18.i_crit_edge
  br i1 %14, label %if.then20.i, label %if.end18.i.if.end33.i_crit_edge

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then20.i:                                      ; preds = %if.end18.i
  %call21.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext 16464, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then20.i.if.then55.i_crit_edge, label %if.end25.i

if.then20.i.if.then55.i_crit_edge:                ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.end25.i:                                       ; preds = %if.then20.i
  %isink_reg26.i = getelementptr inbounds %struct.wm831x_backlight_data, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %isink_reg26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %isink_reg26.i, align 4
  %conv27.i = trunc i32 %18 to i16
  %call28.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext %conv27.i, i16 noundef zeroext -16384, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end25.i.if.then55.i_crit_edge, label %if.end25.i.if.end33.i_crit_edge

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.end25.i.if.then55.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.end33.i:                                       ; preds = %if.end25.i.if.end33.i_crit_edge, %if.end18.i.if.end33.i_crit_edge
  %isink_reg34.i = getelementptr inbounds %struct.wm831x_backlight_data, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %isink_reg34.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %isink_reg34.i, align 4
  %conv35.i = trunc i32 %20 to i16
  %conv36.i = trunc i32 %retval.0.i to i16
  %call37.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext %conv35.i, i16 noundef zeroext 63, i16 noundef zeroext %conv36.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %err.i, label %if.end41.i

if.end41.i:                                       ; preds = %if.end33.i
  br i1 %spec.select.i, label %if.then43.i, label %if.end41.i.if.end51.i_crit_edge

if.end41.i.if.end51.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then43.i:                                      ; preds = %if.end41.i
  %21 = ptrtoint ptr %isink_reg34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %isink_reg34.i, align 4
  %conv45.i = trunc i32 %22 to i16
  %call46.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext %conv45.i, i16 noundef zeroext 16384, i16 noundef zeroext 16384) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then43.i.wm831x_backlight_set.exit_crit_edge, label %if.then43.i.if.end51.i_crit_edge

if.then43.i.if.end51.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then43.i.wm831x_backlight_set.exit_crit_edge:  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_backlight_set.exit

if.end51.i:                                       ; preds = %if.then43.i.if.end51.i_crit_edge, %if.end41.i.if.end51.i_crit_edge
  %23 = ptrtoint ptr %current_brightness.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %current_brightness.i, align 4
  br label %wm831x_backlight_set.exit

err.i:                                            ; preds = %if.end33.i
  %brmerge.i = or i1 %spec.select.i, %14
  br i1 %brmerge.i, label %err.i.if.then55.i_crit_edge, label %err.i.wm831x_backlight_set.exit_crit_edge

err.i.wm831x_backlight_set.exit_crit_edge:        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm831x_backlight_set.exit

err.i.if.then55.i_crit_edge:                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.then55.i:                                      ; preds = %err.i.if.then55.i_crit_edge, %if.end25.i.if.then55.i_crit_edge, %if.then20.i.if.then55.i_crit_edge, %if.end.i.if.then55.i_crit_edge, %if.then.i.if.then55.i_crit_edge
  %ret.095.i = phi i32 [ %call37.i, %err.i.if.then55.i_crit_edge ], [ %call28.i, %if.end25.i.if.then55.i_crit_edge ], [ %call21.i, %if.then20.i.if.then55.i_crit_edge ], [ %call13.i, %if.end.i.if.then55.i_crit_edge ], [ %call10.i, %if.then.i.if.then55.i_crit_edge ]
  %call56.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext 16464, i16 noundef zeroext 8, i16 noundef zeroext 0) #6
  %isink_reg57.i = getelementptr inbounds %struct.wm831x_backlight_data, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %isink_reg57.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %isink_reg57.i, align 4
  %conv58.i = trunc i32 %25 to i16
  %call59.i = tail call i32 @wm831x_set_bits(ptr noundef %11, i16 noundef zeroext %conv58.i, i16 noundef zeroext -32768, i16 noundef zeroext 0) #6
  br label %wm831x_backlight_set.exit

wm831x_backlight_set.exit:                        ; preds = %if.then55.i, %err.i.wm831x_backlight_set.exit_crit_edge, %if.end51.i, %if.then43.i.wm831x_backlight_set.exit_crit_edge
  %retval.0.i3 = phi i32 [ 0, %if.end51.i ], [ %call46.i, %if.then43.i.wm831x_backlight_set.exit_crit_edge ], [ %call37.i, %err.i.wm831x_backlight_set.exit_crit_edge ], [ %ret.095.i, %if.then55.i ]
  ret i32 %retval.0.i3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm831x_backlight_get_brightness(ptr nocapture noundef readonly %bl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_brightness = getelementptr inbounds %struct.wm831x_backlight_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %current_brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_brightness, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_wm831x_bl__301_211_wm831x_backlight_driver_init6, !1, !"__initcall__kmod_wm831x_bl__301_211_wm831x_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 211, i32 1}
!2 = !{ptr @__exitcall_wm831x_backlight_driver_exit, !1, !"__exitcall_wm831x_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 213, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 214, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 215, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias306, !11, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 216, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 206, i32 11}
!14 = !{ptr @wm831x_backlight_driver, !15, !"wm831x_backlight_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 204, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 127, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wm831x_backlight_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wm831x_backlight_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 138, i32 3}
!26 = !{ptr @wm831x_backlight_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wm831x_backlight_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 144, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @wm831x_backlight_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm831x_backlight_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 158, i32 3}
!35 = !{ptr @wm831x_backlight_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm831x_backlight_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 185, i32 50}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 188, i32 3}
!41 = !{ptr @wm831x_backlight_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm831x_backlight_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @wm831x_backlight_ops, !44, !"wm831x_backlight_ops", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/wm831x_bl.c", i32 104, i32 35}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
