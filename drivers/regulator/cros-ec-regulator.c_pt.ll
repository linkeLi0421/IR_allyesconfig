; ModuleID = '/llk/IR_all_yes/drivers/regulator/cros-ec-regulator.c_pt.bc'
source_filename = "../drivers/regulator/cros-ec-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ec_response_regulator_get_info = type { [16 x i8], i16, [16 x i16] }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cros_ec_regulator_data = type { %struct.regulator_desc, ptr, ptr, i32, ptr, i16 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }

@__initcall__kmod_cros_ec_regulator__292_252_cros_ec_regulator_driver_init6 = internal global ptr @cros_ec_regulator_driver_init, section ".initcall6.init", align 4
@cros_ec_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @regulator_cros_ec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_regulator_driver_exit = internal global ptr @cros_ec_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file293 = internal constant [59 x i8] c"cros_ec_regulator.file=drivers/regulator/cros-ec-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [33 x i8] c"cros_ec_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [63 x i8] c"cros_ec_regulator.description=ChromeOS EC controlled regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [60 x i8] c"cros_ec_regulator.author=Pi-Hsun Shih <pihsun@chromium.org>\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros-ec-regulator\00", [46 x i8] zeroinitializer }, align 32
@regulator_cros_ec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cros_ec_regulator_voltage_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @cros_ec_regulator_list_voltage, ptr @cros_ec_regulator_set_voltage, ptr null, ptr null, ptr @cros_ec_regulator_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_regulator_enable, ptr @cros_ec_regulator_disable, ptr @cros_ec_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@cros_ec_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cros_ec_regulator_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/regulator/cros-ec-regulator.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_regulator_probe._entry_ptr = internal global ptr @cros_ec_regulator_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"cros_ec_regulator_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 244, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 247, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"regulator_cros_ec_of_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 238, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 209, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"cros_ec_regulator_voltage_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 145, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [41 x i8] c"../drivers/regulator/cros-ec-regulator.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 229, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_cros_ec_regulator_driver_exit, ptr @__initcall__kmod_cros_ec_regulator__292_252_cros_ec_regulator_driver_init6, ptr @cros_ec_regulator_driver_exit, ptr @cros_ec_regulator_probe._entry, ptr @cros_ec_regulator_probe._entry_ptr, ptr @cros_ec_regulator_driver, ptr @.str, ptr @regulator_cros_ec_of_match, ptr @.str.1, ptr @cros_ec_regulator_voltage_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_cros_ec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_regulator_voltage_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_regulator_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %resp.i = alloca %struct.ec_response_regulator_get_info, align 1
  %cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg) #7
  %2 = call ptr @memset(ptr %cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 264, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %ec_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ec_dev, align 4
  %call5 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull %call.i) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %index, i32 noundef 1, i32 noundef 0) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %owner = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 4
  %type = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 12
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %ops = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cros_ec_regulator_voltage_ops, ptr %ops, align 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %resp.i) #7
  %14 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 70) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end11.cros_ec_regulator_init_info.exit.thread_crit_edge, label %if.end.i.i

if.end11.cros_ec_regulator_init_info.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_regulator_init_info.exit.thread

if.end.i.i:                                       ; preds = %if.end11
  %17 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %command2.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %command2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 300, ptr %command2.i.i, align 4
  %outsize3.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %outsize3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %outsize3.i.i, align 8
  %insize4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %insize4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 50, ptr %insize4.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %data.i.i, align 4
  %call9.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %cmp10.i.i = icmp slt i32 %call9.i.i, 0
  br i1 %cmp10.i.i, label %cros_ec_cmd.exit.thread45.i, label %if.end.i

cros_ec_cmd.exit.thread45.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %cros_ec_regulator_init_info.exit.thread

if.end.i:                                         ; preds = %if.end.i.i
  %22 = call ptr @memcpy(ptr %resp.i, ptr %data.i.i, i32 50)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %num_voltages.i = getelementptr inbounds %struct.ec_response_regulator_get_info, ptr %resp.i, i32 0, i32 1
  %23 = ptrtoint ptr %num_voltages.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %num_voltages.i, align 1
  %25 = tail call i16 @llvm.umin.i16(i16 %24, i16 16) #7
  %num_voltages8.i = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %num_voltages8.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %num_voltages8.i, align 4
  %voltages_mv.i = getelementptr inbounds %struct.ec_response_regulator_get_info, ptr %resp.i, i32 0, i32 2
  %27 = shl nuw nsw i16 %25, 1
  %mul.i = zext i16 %27 to i32
  %call11.i = call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %voltages_mv.i, i32 noundef %mul.i, i32 noundef 3264) #7
  %voltages_mV.i = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %voltages_mV.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call11.i, ptr %voltages_mV.i, align 4
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.end.i.cros_ec_regulator_init_info.exit.thread_crit_edge, label %if.end14.i

if.end.i.cros_ec_regulator_init_info.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_regulator_init_info.exit.thread

if.end14.i:                                       ; preds = %if.end.i
  %29 = ptrtoint ptr %num_voltages8.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_voltages8.i, align 4
  %conv16.i = zext i16 %30 to i32
  %n_voltages.i = getelementptr inbounds %struct.regulator_desc, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %n_voltages.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv16.i, ptr %n_voltages.i, align 4
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %resp.i, i32 0, i32 15
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx.i, align 1
  %call19.i = call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef nonnull %resp.i, i32 noundef 3264) #7
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call19.i, ptr %call.i, align 4
  %tobool24.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool24.not.i, label %if.end14.i.cros_ec_regulator_init_info.exit.thread_crit_edge, label %if.end15

if.end14.i.cros_ec_regulator_init_info.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_regulator_init_info.exit.thread

cros_ec_regulator_init_info.exit.thread:          ; preds = %if.end14.i.cros_ec_regulator_init_info.exit.thread_crit_edge, %if.end.i.cros_ec_regulator_init_info.exit.thread_crit_edge, %cros_ec_cmd.exit.thread45.i, %if.end11.cros_ec_regulator_init_info.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end11.cros_ec_regulator_init_info.exit.thread_crit_edge ], [ %call9.i.i, %cros_ec_cmd.exit.thread45.i ], [ -12, %if.end.i.cros_ec_regulator_init_info.exit.thread_crit_edge ], [ -12, %if.end14.i.cros_ec_regulator_init_info.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %resp.i) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end14.i
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %resp.i) #7
  %34 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev1, ptr %cfg, align 4
  %init_data18 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 1
  %35 = ptrtoint ptr %init_data18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5, ptr %init_data18, align 4
  %driver_data = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 2
  %36 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data, align 4
  %of_node19 = getelementptr inbounds %struct.regulator_config, ptr %cfg, i32 0, i32 3
  %37 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %1, ptr %of_node19, align 4
  %call21 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %cfg) #7
  %dev22 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call21, ptr %dev22, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call21 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %39) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then25, %cros_ec_regulator_init_info.exit.thread, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %if.then25 ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %8, %if.end8.cleanup_crit_edge ], [ %retval.0.i.ph, %cros_ec_regulator_init_info.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_list_voltage(ptr noundef %dev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %num_voltages = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %num_voltages to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_voltages, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %selector)
  %cmp.not = icmp ugt i32 %conv, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %voltages_mV = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %voltages_mV to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %voltages_mV, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %selector
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv2, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_set_voltage(ptr noundef %dev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef readnone %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %sub = add i32 %min_uV, 999
  %div = sdiv i32 %sub, 1000
  %div1 = sdiv i32 %max_uV, 1000
  %index2 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div1)
  %cmp = icmp sgt i32 %div, %div1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %command2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 303, ptr %command2.i, align 4
  %outsize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %outsize3.i, align 8
  %insize4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insize4.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %data.i, align 4
  %cmd.sroa.5.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %10 = ptrtoint ptr %cmd.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %cmd.sroa.5.0.data.i.sroa_idx, align 8
  %cmd.sroa.7.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 2
  %11 = ptrtoint ptr %cmd.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div1, ptr %cmd.sroa.7.0.data.i.sroa_idx, align 4
  %call9.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call9.i, %if.end.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_get_voltage(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %index1 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %command2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 304, ptr %command2.i, align 4
  %outsize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %outsize3.i, align 8
  %insize4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %insize4.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %data.i, align 4
  %call9.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %cros_ec_cmd.exit.thread11, label %if.end

cros_ec_cmd.exit.thread11:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %resp.sroa.0.0.copyload = load i32, ptr %data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %mul = mul i32 %resp.sroa.0.0.copyload, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cros_ec_cmd.exit.thread11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end ], [ %call9.i, %cros_ec_cmd.exit.thread11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_enable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %index1 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 25) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cros_ec_cmd.exit_crit_edge, label %if.end.i

entry.cros_ec_cmd.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %command2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 301, ptr %command2.i, align 4
  %outsize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %outsize3.i, align 8
  %insize4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insize4.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %data.i, align 4
  %cmd.sroa.5.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %10 = ptrtoint ptr %cmd.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cmd.sroa.5.0.data.i.sroa_idx, align 8
  %call9.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cros_ec_cmd.exit

cros_ec_cmd.exit:                                 ; preds = %if.end.i, %entry.cros_ec_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end.i ], [ -12, %entry.cros_ec_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_disable(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %index1 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 25) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cros_ec_cmd.exit_crit_edge, label %if.end.i

entry.cros_ec_cmd.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cros_ec_cmd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %command2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 301, ptr %command2.i, align 4
  %outsize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %outsize3.i, align 8
  %insize4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insize4.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %data.i, align 4
  %cmd.sroa.5.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %10 = ptrtoint ptr %cmd.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cmd.sroa.5.0.data.i.sroa_idx, align 8
  %call9.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cros_ec_cmd.exit

cros_ec_cmd.exit:                                 ; preds = %if.end.i, %entry.cros_ec_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.end.i ], [ -12, %entry.cros_ec_cmd.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_regulator_is_enabled(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %dev) #7
  %index1 = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_regulator_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i.i, align 8
  %command2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 302, ptr %command2.i, align 4
  %outsize3.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %outsize3.i, align 8
  %insize4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %insize4.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %data.i, align 4
  %call9.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %cros_ec_cmd.exit.thread11, label %if.end

cros_ec_cmd.exit.thread11:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %resp.sroa.0.0.copyload = load i8, ptr %data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %conv = zext i8 %resp.sroa.0.0.copyload to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cros_ec_cmd.exit.thread11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call9.i, %cros_ec_cmd.exit.thread11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_cros_ec_regulator__292_252_cros_ec_regulator_driver_init6, !1, !"__initcall__kmod_cros_ec_regulator__292_252_cros_ec_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 252, i32 1}
!2 = !{ptr @__exitcall_cros_ec_regulator_driver_exit, !1, !"__exitcall_cros_ec_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file293, !4, !"__UNIQUE_ID_file293", i1 false, i1 false}
!4 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 254, i32 1}
!5 = !{ptr @__UNIQUE_ID_license294, !4, !"__UNIQUE_ID_license294", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description295, !7, !"__UNIQUE_ID_description295", i1 false, i1 false}
!7 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 255, i32 1}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 256, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 247, i32 12}
!12 = !{ptr @cros_ec_regulator_driver, !13, !"cros_ec_regulator_driver", i1 false, i1 false}
!13 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 244, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 209, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 229, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cros_ec_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cros_ec_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cros_ec_regulator_voltage_ops, !25, !"cros_ec_regulator_voltage_ops", i1 false, i1 false}
!25 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 145, i32 35}
!26 = !{ptr @regulator_cros_ec_of_match, !27, !"regulator_cros_ec_of_match", i1 false, i1 false}
!27 = !{!"../drivers/regulator/cros-ec-regulator.c", i32 238, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
