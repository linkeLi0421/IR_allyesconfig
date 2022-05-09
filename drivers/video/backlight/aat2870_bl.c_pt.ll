; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/aat2870_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/aat2870_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.aat2870_bl_driver_data = type { ptr, ptr, i32, i32, i32 }
%struct.aat2870_bl_platform_data = type { i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.aat2870_data = type { ptr, ptr, %struct.mutex, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_aat2870_bl__302_210_aat2870_bl_init4 = internal global ptr @aat2870_bl_init, section ".initcall4.init", align 4
@aat2870_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aat2870_bl_probe, ptr @aat2870_bl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aat2870_bl_exit = internal global ptr @aat2870_bl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [54 x i8] c"aat2870_bl.description=AnalogicTech AAT2870 Backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [51 x i8] c"aat2870_bl.file=drivers/video/backlight/aat2870_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [23 x i8] c"aat2870_bl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [50 x i8] c"aat2870_bl.author=Jin Park <jinyoungp@nvidia.com>\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aat2870-backlight\00", [46 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aat2870_bl_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/aat2870_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry_ptr = internal global ptr @aat2870_bl_probe._entry, section ".printk_index", align 4
@aat2870_bl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid device ID, %d\0A\00", [41 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry_ptr.8 = internal global ptr @aat2870_bl_probe._entry.6, section ".printk_index", align 4
@aat2870_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @aat2870_bl_update_status, ptr null, ptr @aat2870_bl_check_fb }, [16 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 145, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed allocate memory for backlight device\0A\00", [51 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry_ptr.11 = internal global ptr @aat2870_bl_probe._entry.9, section ".printk_index", align 4
@aat2870_bl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 176, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to initialize\0A\00", [42 x i8] zeroinitializer }, align 32
@aat2870_bl_probe._entry_ptr.14 = internal global ptr @aat2870_bl_probe._entry.12, section ".printk_index", align 4
@aat2870_bl_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid brightness, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aat2870_bl_update_status\00", [39 x i8] zeroinitializer }, align 32
@aat2870_bl_update_status._entry_ptr = internal global ptr @aat2870_bl_update_status._entry, section ".printk_index", align 4
@aat2870_bl_update_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aat2870_bl\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"brightness=%d, power=%d, state=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"aat2870_bl_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 198, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 200, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 118, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 124, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"aat2870_bl_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 103, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 144, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 176, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 66, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [40 x i8] c"../drivers/video/backlight/aat2870_bl.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 70, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_aat2870_bl_exit, ptr @__initcall__kmod_aat2870_bl__302_210_aat2870_bl_init4, ptr @aat2870_bl_exit, ptr @aat2870_bl_probe._entry, ptr @aat2870_bl_probe._entry.12, ptr @aat2870_bl_probe._entry.6, ptr @aat2870_bl_probe._entry.9, ptr @aat2870_bl_probe._entry_ptr, ptr @aat2870_bl_probe._entry_ptr.11, ptr @aat2870_bl_probe._entry_ptr.14, ptr @aat2870_bl_probe._entry_ptr.8, ptr @aat2870_bl_update_status._entry, ptr @aat2870_bl_update_status._entry_ptr, ptr @aat2870_bl_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @aat2870_bl_ops, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_bl_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_bl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aat2870_bl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aat2870_bl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @aat2870_bl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #6
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %4) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %5 = call ptr @memset(ptr %props, i32 0, i32 28)
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %call16 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @aat2870_bl_ops, ptr noundef nonnull %props) #6
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %7 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bd26 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %bd26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %bd26, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27 = icmp sgt i32 %12, 0
  %spec.select = select i1 %cmp27, i32 %12, i32 255
  %13 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %13, align 4
  %max_current = getelementptr inbounds %struct.aat2870_bl_platform_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %max_current to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp33 = icmp sgt i32 %16, 0
  %.sink105 = select i1 %cmp33, i32 %16, i32 32
  %17 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink105, ptr %17, align 4
  %max_brightness = getelementptr inbounds %struct.aat2870_bl_platform_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp40 = icmp sgt i32 %20, 0
  %.sink106 = select i1 %cmp40, i32 %20, i32 255
  %21 = getelementptr inbounds %struct.backlight_properties, ptr %call16, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink106, ptr %21, align 4
  %brightness = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %brightness, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %call16, i32 0, i32 2
  %24 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %power, align 8
  %25 = load i32, ptr %21, align 4
  %26 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call16, align 8
  %call54 = call i32 @aat2870_bl_update_status(ptr noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end59:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end24.cleanup_crit_edge, %do.end21, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ %call54, %do.end59 ], [ 0, %if.end24.cleanup_crit_edge ], [ -22, %do.end5 ], [ %7, %do.end21 ], [ -6, %do.end ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_bl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bd1 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd1, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %power, align 8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %3, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %9(ptr noundef %3) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_bl_update_status(ptr noundef %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 1
  %10 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4 = icmp slt i32 %11, %9
  br i1 %cmp4, label %lor.lhs.false.do.end_crit_edge, label %do.body6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev5 = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.15, i32 noundef %9) #9
  br label %cleanup

do.body6:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aat2870_bl_update_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aat2870_bl_update_status, %if.then10)) #6
          to label %do.end18 [label %if.then10], !srcloc !55

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6
  %12 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bd, align 8
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power, align 8
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aat2870_bl_update_status.__UNIQUE_ID_ddebug301, ptr noundef %dev11, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then10, %do.body6
  %power20 = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 2
  %18 = ptrtoint ptr %power20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not = icmp eq i32 %19, 0
  br i1 %cmp21.not, label %lor.lhs.false22, label %do.end18.if.then31_crit_edge

do.end18.if.then31_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false22:                                  ; preds = %do.end18
  %state24 = getelementptr inbounds %struct.backlight_properties, ptr %bd, i32 0, i32 5
  %20 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state24, align 4
  %22 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %lor.lhs.false22.if.end32_crit_edge, label %lor.lhs.false22.if.then31_crit_edge

lor.lhs.false22.if.then31_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false22.if.end32_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %lor.lhs.false22.if.then31_crit_edge, %do.end18.if.then31_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %lor.lhs.false22.if.end32_crit_edge
  %brightness.0 = phi i32 [ 0, %if.then31 ], [ %9, %lor.lhs.false22.if.end32_crit_edge ]
  %write = getelementptr inbounds %struct.aat2870_data, ptr %7, i32 0, i32 9
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %bd1.i = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %bd1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd1.i, align 4
  %max_current.i = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %max_current.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_current.i, align 4
  %sub.i = add i32 %29, -1
  %mul.i = mul i32 %sub.i, %brightness.0
  %max_brightness.i = getelementptr inbounds %struct.backlight_properties, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_brightness.i, align 4
  %div.i = sdiv i32 %mul.i, %31
  %conv = trunc i32 %div.i to i8
  %call34 = tail call i32 %25(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness.0)
  %cmp39 = icmp eq i32 %brightness.0, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end38
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i88 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i88, align 4
  %write.i = getelementptr inbounds %struct.aat2870_data, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i, align 4
  %call1.i = tail call i32 %39(ptr noundef %37, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp43 = icmp slt i32 %call1.i, 0
  br i1 %cmp43, label %if.then41.cleanup_crit_edge, label %if.then41.if.end57_crit_edge

if.then41.if.end57_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end38
  %brightness47 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %brightness47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %brightness47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %if.then50, label %if.else.if.end57_crit_edge

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then50:                                        ; preds = %if.else
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %parent.i89 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %parent.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent.i89, align 8
  %driver_data.i.i90 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i90, align 4
  %write.i91 = getelementptr inbounds %struct.aat2870_data, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %write.i91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write.i91, align 4
  %channels.i = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels.i, align 4
  %conv.i = trunc i32 %51 to i8
  %call1.i92 = tail call i32 %49(ptr noundef %47, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %cmp52 = icmp slt i32 %call1.i92, 0
  br i1 %cmp52, label %if.then50.cleanup_crit_edge, label %if.then50.if.end57_crit_edge

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %if.then50.if.end57_crit_edge, %if.else.if.end57_crit_edge, %if.then41.if.end57_crit_edge
  %brightness58 = getelementptr inbounds %struct.aat2870_bl_driver_data, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %brightness58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %brightness.0, ptr %brightness58, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then50.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end57 ], [ %call34, %if.end32.cleanup_crit_edge ], [ %call1.i, %if.then41.cleanup_crit_edge ], [ %call1.i92, %if.then50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aat2870_bl_check_fb(ptr nocapture noundef readnone %bd, ptr nocapture noundef readnone %fi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_aat2870_bl__302_210_aat2870_bl_init4, !1, !"__initcall__kmod_aat2870_bl__302_210_aat2870_bl_init4", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_aat2870_bl_exit, !3, !"__exitcall_aat2870_bl_exit", i1 false, i1 false}
!3 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 216, i32 1}
!4 = !{ptr @__UNIQUE_ID_description303, !5, !"__UNIQUE_ID_description303", i1 false, i1 false}
!5 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 218, i32 1}
!6 = !{ptr @__UNIQUE_ID_file304, !7, !"__UNIQUE_ID_file304", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 219, i32 1}
!8 = !{ptr @__UNIQUE_ID_license305, !7, !"__UNIQUE_ID_license305", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author306, !10, !"__UNIQUE_ID_author306", i1 false, i1 false}
!10 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 220, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 200, i32 11}
!13 = !{ptr @aat2870_bl_driver, !14, !"aat2870_bl_driver", i1 false, i1 false}
!14 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 198, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 118, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aat2870_bl_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @aat2870_bl_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 124, i32 3}
!25 = !{ptr @aat2870_bl_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @aat2870_bl_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 144, i32 3}
!29 = !{ptr @aat2870_bl_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @aat2870_bl_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 176, i32 3}
!33 = !{ptr @aat2870_bl_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aat2870_bl_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @aat2870_bl_ops, !36, !"aat2870_bl_ops", i1 false, i1 false}
!36 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 103, i32 35}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 66, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @aat2870_bl_update_status._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @aat2870_bl_update_status._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/aat2870_bl.c", i32 70, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @aat2870_bl_update_status.__UNIQUE_ID_ddebug301, !43, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148956726, i64 2148956731, i64 2148956744, i64 2148956788, i64 2148956822, i64 2148956843}
