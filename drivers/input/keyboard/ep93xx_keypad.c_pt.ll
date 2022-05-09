; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/ep93xx_keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/ep93xx_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ep93xx_keypad = type { ptr, ptr, ptr, ptr, [64 x i16], i32, i32, i32, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ep93xx_keypad_platform_data = type { ptr, i32, i32, i32, i32 }

@__initcall__kmod_ep93xx_keypad__227_330_ep93xx_keypad_driver_init6 = internal global ptr @ep93xx_keypad_driver_init, section ".initcall6.init", align 4
@ep93xx_keypad_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ep93xx_keypad_probe, ptr @ep93xx_keypad_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep93xx_keypad_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ep93xx_keypad_driver_exit = internal global ptr @ep93xx_keypad_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [56 x i8] c"ep93xx_keypad.file=drivers/input/keyboard/ep93xx_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [26 x i8] c"ep93xx_keypad.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [70 x i8] c"ep93xx_keypad.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [58 x i8] c"ep93xx_keypad.description=EP93xx Matrix Keypad Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [43 x i8] c"ep93xx_keypad.alias=platform:ep93xx-keypad\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ep93xx-keypad\00", [18 x i8] zeroinitializer }, align 32
@ep93xx_keypad_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ep93xx_keypad_suspend, ptr @ep93xx_keypad_resume, ptr @ep93xx_keypad_suspend, ptr @ep93xx_keypad_resume, ptr @ep93xx_keypad_suspend, ptr @ep93xx_keypad_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ep93xx_keypad_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set up wakeup irq: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ep93xx_keypad_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/keyboard/ep93xx_keypad.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ep93xx_keypad_probe._entry_ptr = internal global ptr @ep93xx_keypad_probe._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"ep93xx_keypad_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 322, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 324, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"ep93xx_keypad_pm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 219, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [42 x i8] c"../drivers/input/keyboard/ep93xx_keypad.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 310, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_ep93xx_keypad_driver_exit, ptr @__initcall__kmod_ep93xx_keypad__227_330_ep93xx_keypad_driver_init6, ptr @ep93xx_keypad_driver_exit, ptr @ep93xx_keypad_probe._entry, ptr @ep93xx_keypad_probe._entry_ptr, ptr @ep93xx_keypad_driver, ptr @.str, ptr @ep93xx_keypad_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_keypad_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_keypad_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_keypad_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ep93xx_keypad_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_keypad_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ep93xx_keypad_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.ep93xx_keypad, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call17) #6
  %mmio_base = getelementptr inbounds %struct.ep93xx_keypad, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22, ptr %mmio_base, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %call.i144 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ep93xx_keypad_release_gpio_action, ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool35.not = icmp eq i32 %call.i144, 0
  br i1 %tobool35.not, label %if.end37, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.ep93xx_keypad, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call39, ptr %clk, align 4
  %cmp.i145 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %call47 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %input_dev51 = getelementptr inbounds %struct.ep93xx_keypad, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %input_dev51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call47, ptr %input_dev51, align 4
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %13 = ptrtoint ptr %call47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call47, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 25, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 31
  %15 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ep93xx_keypad_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 32
  %16 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ep93xx_keypad_close, ptr %close, align 4
  %keycodes = getelementptr inbounds %struct.ep93xx_keypad, ptr %call.i, i32 0, i32 4
  %call53 = tail call i32 @matrix_keypad_build_keymap(ptr noundef nonnull %4, ptr noundef null, i32 noundef 8, i32 noundef 8, ptr noundef %keycodes, ptr noundef nonnull %call47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.end56.if.end61_crit_edge, label %if.then59

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 5
  %21 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %evbit, align 4
  %or.i = or i32 %22, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call47, i32 0, i32 40, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %call.i146 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @ep93xx_keypad_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %27, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool66.not = icmp eq i32 %call.i146, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %call69 = tail call i32 @input_register_device(ptr noundef nonnull %call47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %if.end68
  %driver_data.i.i147 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i147 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i147, align 4
  %call74 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call77 = tail call i32 @dev_pm_set_wake_irq(ptr noundef %dev, i32 noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end72.cleanup_crit_edge, label %do.end

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call77) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end72.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then42, %if.end28.cleanup_crit_edge, %if.then25, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then25 ], [ %9, %if.then42 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -6, %if.end16.cleanup_crit_edge ], [ %call.i144, %if.end28.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ %call53, %if.end50.cleanup_crit_edge ], [ %call.i146, %if.end61.cleanup_crit_edge ], [ %call69, %if.end68.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @dev_pm_clear_wake_irq(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ep93xx_keypad_release_gpio_action(ptr nocapture noundef %_pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_open(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %pdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %clk.i = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %clk_rate.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_rate.i, align 4
  %call.i = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %9) #6
  %flags.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %trunc.i = trunc i32 %11 to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i) #6
  %mask.i = and i16 %rev.i, -4096
  %12 = zext i16 %mask.i to i32
  %debounce.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %debounce.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debounce.i, align 4
  %shl.i = shl i32 %14, 16
  %and20.i = and i32 %shl.i, 16711680
  %prescale.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prescale.i, align 4
  %and23.i = and i32 %16, 1023
  %or21.i = or i32 %and23.i, %and20.i
  %or24.i = or i32 %or21.i, %12
  %mmio_base.i = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %or24.i) #6, !srcloc !36
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  %call.i6 = tail call i32 @clk_prepare(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %21 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_keypad_close(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %pdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %enabled = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev1 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev1, align 4
  %mmio_base = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !37
  %and = and i32 %4, 63
  %arrayidx = getelementptr %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 4, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %and2 = lshr i32 %4, 6
  %shr3 = and i32 %and2, 63
  %arrayidx5 = getelementptr %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 4, i32 %shr3
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %8 to i32
  %and7 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %key18 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 5
  %9 = ptrtoint ptr %key18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp.not = icmp eq i32 %10, %conv
  %or.cond = select i1 %tobool9.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv6)
  %cmp14.not = icmp eq i32 %10, %conv6
  %or.cond114 = select i1 %or.cond, i1 true, i1 %cmp14.not
  br i1 %or.cond114, label %if.then.if.end_crit_edge, label %if.then16

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %10, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then.if.end_crit_edge
  %key218 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 6
  %11 = ptrtoint ptr %key218 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp22.not = icmp eq i32 %12, %conv
  %or.cond115 = select i1 %tobool19.not, i1 true, i1 %cmp22.not
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv6)
  %cmp26.not = icmp eq i32 %12, %conv6
  %or.cond116 = select i1 %or.cond115, i1 true, i1 %cmp26.not
  br i1 %or.cond116, label %if.end.if.end30_crit_edge, label %if.then28

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %12, i32 noundef 0) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end.if.end30_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef 1) #6
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv6, i32 noundef 1) #6
  %13 = ptrtoint ptr %key18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %key18, align 4
  %14 = ptrtoint ptr %key218 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv6, ptr %key218, align 4
  br label %if.end62

if.else:                                          ; preds = %entry
  %and33 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %key157 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 5
  %15 = ptrtoint ptr %key157 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key157, align 4
  br i1 %tobool34.not, label %if.else56, label %if.then35

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp40.not = icmp eq i32 %16, %conv
  %or.cond117 = select i1 %tobool37.not, i1 true, i1 %cmp40.not
  br i1 %or.cond117, label %if.then35.if.end44_crit_edge, label %if.then42

if.then35.if.end44_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %16, i32 noundef 0) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then35.if.end44_crit_edge
  %key245 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 6
  %17 = ptrtoint ptr %key245 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp49.not = icmp eq i32 %18, %conv
  %or.cond118 = select i1 %tobool46.not, i1 true, i1 %cmp49.not
  br i1 %or.cond118, label %if.end44.if.end53_crit_edge, label %if.then51

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %18, i32 noundef 0) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end44.if.end53_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv, i32 noundef 1) #6
  %19 = ptrtoint ptr %key157 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %key157, align 4
  %20 = ptrtoint ptr %key245 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %key245, align 4
  br label %if.end62

if.else56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %16, i32 noundef 0) #6
  %key258 = getelementptr inbounds %struct.ep93xx_keypad, ptr %dev_id, i32 0, i32 6
  %21 = ptrtoint ptr %key258 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key258, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %22, i32 noundef 0) #6
  %23 = ptrtoint ptr %key258 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %key258, align 4
  %24 = ptrtoint ptr %key157 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %key157, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else56, %if.end53, %if.end30
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %enabled = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_keypad_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input_dev1 = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call2 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call2, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %clk.i = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i, align 4
  %clk_rate.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_rate.i, align 4
  %call.i = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %11) #6
  %flags.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %trunc.i = trunc i32 %13 to i16
  %rev.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i) #6
  %mask.i = and i16 %rev.i, -4096
  %14 = zext i16 %mask.i to i32
  %debounce.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %debounce.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debounce.i, align 4
  %shl.i = shl i32 %16, 16
  %and20.i = and i32 %shl.i, 16711680
  %prescale.i = getelementptr inbounds %struct.ep93xx_keypad_platform_data, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prescale.i, align 4
  %and23.i = and i32 %18, 1023
  %or21.i = or i32 %and23.i, %and20.i
  %or24.i = or i32 %or21.i, %14
  %mmio_base.i = getelementptr inbounds %struct.ep93xx_keypad, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %or24.i) #6, !srcloc !36
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %22) #6
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enabled, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bitreverse.i16(i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_ep93xx_keypad__227_330_ep93xx_keypad_driver_init6, !1, !"__initcall__kmod_ep93xx_keypad__227_330_ep93xx_keypad_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_ep93xx_keypad_driver_exit, !1, !"__exitcall_ep93xx_keypad_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 333, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 334, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 335, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 324, i32 11}
!14 = !{ptr @ep93xx_keypad_driver, !15, !"ep93xx_keypad_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 322, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 310, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ep93xx_keypad_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ep93xx_keypad_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ep93xx_keypad_pm_ops, !25, !"ep93xx_keypad_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/ep93xx_keypad.c", i32 219, i32 8}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
!36 = !{i64 4878729}
!37 = !{i64 4879147}
