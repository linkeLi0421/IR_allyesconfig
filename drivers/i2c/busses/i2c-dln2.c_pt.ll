; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-dln2.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-dln2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.87 = type { i8 }
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
%struct.dln2_i2c = type { ptr, %struct.i2c_adapter, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dln2_platform_data = type { i16, i8 }
%struct.anon.84 = type <{ i8, i8, i8, i32, i16 }>
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.anon.85 = type { i16, [256 x i8] }
%struct.anon.86 = type <{ i8, i8, i8, i32, i16, [256 x i8] }>

@__initcall__kmod_i2c_dln2__290_255_dln2_i2c_driver_init6 = internal global ptr @dln2_i2c_driver_init, section ".initcall6.init", align 4
@dln2_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dln2_i2c_probe, ptr @dln2_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dln2_i2c_driver_exit = internal global ptr @dln2_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [60 x i8] c"i2c_dln2.author=Laurentiu Palcu <laurentiu.palcu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [69 x i8] c"i2c_dln2.description=Driver for the Diolan DLN2 I2C master interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [42 x i8] c"i2c_dln2.file=drivers/i2c/busses/i2c-dln2\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"i2c_dln2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [33 x i8] c"i2c_dln2.alias=platform:dln2-i2c\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dln2-i2c\00", [23 x i8] zeroinitializer }, align 32
@dln2_i2c_usb_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dln2_i2c_xfer, ptr null, ptr null, ptr null, ptr @dln2_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dln2_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 0, i16 256, i16 256, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%s-%d\00", [23 x i8] zeroinitializer }, align 32
@dln2_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 222, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to initialize adapter: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dln2_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-dln2.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dln2_i2c_probe._entry_ptr = internal global ptr @dln2_i2c_probe._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"dln2_i2c_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 249, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 250, i32 17 }
@___asan_gen_.13 = private unnamed_addr constant [23 x i8] c"dln2_i2c_usb_algorithm\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 177, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"dln2_i2c_quirks\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 182, i32 40 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 214, i32 59 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-dln2.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 222, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_dln2_i2c_driver_exit, ptr @__initcall__kmod_i2c_dln2__290_255_dln2_i2c_driver_init6, ptr @dln2_i2c_driver_exit, ptr @dln2_i2c_probe._entry, ptr @dln2_i2c_probe._entry_ptr, ptr @dln2_i2c_driver, ptr @.str, ptr @dln2_i2c_usb_algorithm, ptr @dln2_i2c_quirks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_i2c_usb_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dln2_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dln2_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dln2_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @dln2_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tx.i74 = alloca %struct.anon.87, align 1
  %tx.i = alloca %struct.anon.87, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 272, i32 noundef 3264) #8
  %buf = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %buf, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %call.i, align 8
  %port = getelementptr inbounds %struct.dln2_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 2
  %port10 = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %port10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %port10, align 8
  %adapter = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dln2_i2c_usb_algorithm, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 17
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dln2_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %of_node18 = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %14 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %of_node18, align 8
  %driver_data.i.i = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.dln2_i2c, ptr %call.i, i32 0, i32 1, i32 12
  %parent22 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent22, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %if.end8.dev_name.exit_crit_edge ]
  %conv = zext i8 %5 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef %retval.0.i, i32 noundef %conv)
  %driver_data.i.i73 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i73, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i) #8
  %23 = ptrtoint ptr %port10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port10, align 8
  %25 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %tx.i, align 1
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %call.i.i = call i32 @dln2_transfer(ptr noundef %27, i16 noundef zeroext 769, ptr noundef nonnull %tx.i, i32 noundef 1, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end31, label %if.end32

do.end31:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i.i) #11
  br label %cleanup

if.end32:                                         ; preds = %dev_name.exit
  %call34 = call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %out_disable, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_disable:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i74) #8
  %28 = ptrtoint ptr %port10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port10, align 8
  %30 = ptrtoint ptr %tx.i74 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tx.i74, align 1
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call.i.i76 = call i32 @dln2_transfer(ptr noundef %32, i16 noundef zeroext 770, ptr noundef nonnull %tx.i74, i32 noundef 1, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i74) #8
  br label %cleanup

cleanup:                                          ; preds = %out_disable, %if.end32.cleanup_crit_edge, %do.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end31 ], [ %call34, %out_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.87, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.dln2_i2c, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tx.i) #8
  %port.i = getelementptr inbounds %struct.dln2_i2c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port.i, align 8
  %4 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %tx.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @dln2_transfer(ptr noundef %6, i16 noundef zeroext 770, ptr noundef nonnull %tx.i, i32 noundef 1, ptr noundef null, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tx.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dln2_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %tx.i = alloca %struct.anon.84, align 1
  %rx_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp45 = icmp sgt i32 %num, 0
  br i1 %cmp45, label %for.body.lr.ph, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds %struct.anon.84, ptr %tx.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon.84, ptr %tx.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.anon.84, ptr %tx.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.anon.84, ptr %tx.i, i32 0, i32 4
  %buf.i = getelementptr inbounds %struct.dln2_i2c, ptr %1, i32 0, i32 3
  %port.i = getelementptr inbounds %struct.dln2_i2c, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %tx.i) #8
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_len.i) #8
  %17 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 258, ptr %rx_len.i, align 4
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port.i, align 8
  %20 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %tx.i, align 1
  %conv.i = trunc i16 %10 to i8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %2, align 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %3, align 1
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %4, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %14) #8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %5, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call.i = call i32 @dln2_transfer(ptr noundef %27, i16 noundef zeroext 775, ptr noundef nonnull %tx.i, i32 noundef 9, ptr noundef %16, ptr noundef nonnull %rx_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.dln2_i2c_read.exit.thread_crit_edge, label %if.end.i

if.then.dln2_i2c_read.exit.thread_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dln2_i2c_read.exit.thread

if.end.i:                                         ; preds = %if.then
  %28 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_len.i, align 4
  %conv4.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv4.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add.i)
  %cmp5.i = icmp ult i32 %29, %add.i
  br i1 %cmp5.i, label %if.end.i.dln2_i2c_read.exit.thread_crit_edge, label %if.end8.i

if.end.i.dln2_i2c_read.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dln2_i2c_read.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %16, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %14)
  %cmp12.not.i = icmp eq i16 %32, %14
  br i1 %cmp12.not.i, label %if.end, label %if.end8.i.dln2_i2c_read.exit.thread_crit_edge

if.end8.i.dln2_i2c_read.exit.thread_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dln2_i2c_read.exit.thread

dln2_i2c_read.exit.thread:                        ; preds = %if.end8.i.dln2_i2c_read.exit.thread_crit_edge, %if.end.i.dln2_i2c_read.exit.thread_crit_edge, %if.then.dln2_i2c_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -71, %if.end8.i.dln2_i2c_read.exit.thread_crit_edge ], [ -71, %if.end.i.dln2_i2c_read.exit.thread_crit_edge ], [ %call.i, %if.then.dln2_i2c_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %tx.i) #8
  br label %cleanup19

if.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf16.i = getelementptr inbounds %struct.anon.85, ptr %16, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %12, ptr %buf16.i, i32 %conv4.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_len.i) #8
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %tx.i) #8
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %14, ptr %len, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %conv8 = trunc i16 %10 to i8
  %buf9 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046, i32 3
  %35 = ptrtoint ptr %buf9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf9, align 4
  %len10 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.046, i32 2
  %37 = ptrtoint ptr %len10 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len10, align 4
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf.i, align 4
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port.i, align 8
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %40, align 1
  %addr2.i = getelementptr inbounds %struct.anon.86, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv8, ptr %addr2.i, align 1
  %mem_addr_len.i = getelementptr inbounds %struct.anon.86, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %mem_addr_len.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %mem_addr_len.i, align 1
  %mem_addr.i = getelementptr inbounds %struct.anon.86, ptr %40, i32 0, i32 3
  %46 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 0, ptr %mem_addr.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %38) #8
  %buf_len.i = getelementptr inbounds %struct.anon.86, ptr %40, i32 0, i32 4
  %48 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %47, ptr %buf_len.i, align 1
  %buf3.i = getelementptr inbounds %struct.anon.86, ptr %40, i32 0, i32 5
  %conv.i39 = zext i16 %38 to i32
  %49 = call ptr @memcpy(ptr %buf3.i, ptr %36, i32 %conv.i39)
  %sub.i = add nuw nsw i32 %conv.i39, 9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @dln2_transfer(ptr noundef %51, i16 noundef zeroext 774, ptr noundef %40, i32 noundef %sub.i, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i40 = icmp slt i32 %call.i.i, 0
  %call.conv.i = select i1 %cmp.i40, i32 %call.i.i, i32 %conv.i39
  %52 = ptrtoint ptr %len10 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len10, align 4
  %conv13 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.conv.i, i32 %conv13)
  %cmp14.not = icmp eq i32 %call.conv.i, %conv13
  br i1 %cmp14.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup19_crit_edge

if.else.cleanup19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.end
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup19_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup19

cleanup19:                                        ; preds = %for.inc.cleanup19_crit_edge, %if.else.cleanup19_crit_edge, %dln2_i2c_read.exit.thread, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %dln2_i2c_read.exit.thread ], [ %num, %entry.cleanup19_crit_edge ], [ %num, %for.inc.cleanup19_crit_edge ], [ -71, %if.else.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dln2_i2c_func(ptr nocapture noundef readnone %a) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 209616897
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dln2_transfer(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_i2c_dln2__290_255_dln2_i2c_driver_init6, !1, !"__initcall__kmod_i2c_dln2__290_255_dln2_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_dln2_i2c_driver_exit, !1, !"__exitcall_dln2_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 260, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 250, i32 17}
!14 = !{ptr @dln2_i2c_driver, !15, !"dln2_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 249, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 214, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 222, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dln2_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @dln2_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @dln2_i2c_usb_algorithm, !27, !"dln2_i2c_usb_algorithm", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 177, i32 35}
!28 = !{ptr @dln2_i2c_quirks, !29, !"dln2_i2c_quirks", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-dln2.c", i32 182, i32 40}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
