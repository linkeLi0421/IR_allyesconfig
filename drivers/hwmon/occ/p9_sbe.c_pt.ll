; ModuleID = '/llk/IR_all_yes/drivers/hwmon/occ/p9_sbe.c_pt.bc'
source_filename = "../drivers/hwmon/occ/p9_sbe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.p9_sbe_occ = type { %struct.occ, i8, ptr, i32, i32, %struct.mutex, ptr }
%struct.occ = type { ptr, %struct.occ_response, %struct.occ_sensors, i32, i8, ptr, i32, %struct.mutex, ptr, ptr, %struct.attribute_group, [2 x ptr], i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4089 x i8], i16 }>
%struct.occ_sensors = type { %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor }
%struct.occ_sensor = type { i8, i8, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_occ_p9_hwmon__228_188_p9_sbe_occ_driver_init6 = internal global ptr @p9_sbe_occ_driver_init, section ".initcall6.init", align 4
@p9_sbe_occ_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @p9_sbe_occ_probe, ptr @p9_sbe_occ_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_p9_sbe_occ_driver_exit = internal global ptr @p9_sbe_occ_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [56 x i8] c"occ_p9_hwmon.author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [49 x i8] c"occ_p9_hwmon.description=BMC P9 OCC hwmon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [49 x i8] c"occ_p9_hwmon.file=drivers/hwmon/occ/occ-p9-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"occ_p9_hwmon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ-hwmon\00", [22 x i8] zeroinitializer }, align 32
@p9_sbe_occ_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ctx->sbe_error_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"p9_occ\00", [25 x i8] zeroinitializer }, align 32
@bin_attr_ffdc = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8192, ptr null, ptr null, ptr @ffdc_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@p9_sbe_occ_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create SBE error ffdc file\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p9_sbe_occ_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hwmon/occ/p9_sbe.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p9_sbe_occ_probe._entry_ptr = internal global ptr @p9_sbe_occ_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ffdc\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 224, i64 225, i64 226, i64 227, i64 228, i64 255]
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"p9_sbe_occ_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 180, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 182, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 137, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 148, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"bin_attr_ffdc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 155, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [30 x i8] c"../drivers/hwmon/occ/p9_sbe.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 48, i32 8 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_p9_sbe_occ_driver_exit, ptr @__initcall__kmod_occ_p9_hwmon__228_188_p9_sbe_occ_driver_init6, ptr @p9_sbe_occ_driver_exit, ptr @p9_sbe_occ_probe._entry, ptr @p9_sbe_occ_probe._entry_ptr, ptr @p9_sbe_occ_driver, ptr @.str, ptr @p9_sbe_occ_probe.__key, ptr @.str.1, ptr @.str.2, ptr @bin_attr_ffdc, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_sbe_occ_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_sbe_occ_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_ffdc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_sbe_occ_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_sbe_occ_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @p9_sbe_occ_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p9_sbe_occ_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @p9_sbe_occ_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_sbe_occ_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4420, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %sbe_error_lock = getelementptr inbounds %struct.p9_sbe_occ, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %sbe_error_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @p9_sbe_occ_probe.__key) #6
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %sbe = getelementptr inbounds %struct.p9_sbe_occ, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %sbe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %sbe, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %powr_sample_time_us = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %powr_sample_time_us to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %powr_sample_time_us, align 4
  %poll_cmd_data = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %poll_cmd_data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 32, ptr %poll_cmd_data, align 4
  %send_cmd = getelementptr inbounds %struct.occ, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %send_cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @p9_sbe_occ_send_cmd, ptr %send_cmd, align 4
  %call4 = tail call i32 @occ_setup(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %call4)
  %cmp = icmp eq i32 %call4, -108
  %spec.store.select = select i1 %cmp, i32 -19, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool7.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool7.not, label %if.then8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %do.body
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %call10 = tail call i32 @device_create_bin_file(ptr noundef %9, ptr noundef nonnull @bin_attr_ffdc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %do.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.3) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.then8.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %spec.store.select, %do.body.cleanup_crit_edge ], [ 0, %do.end15 ], [ 0, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_sbe_occ_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @device_remove_bin_file(ptr noundef %3, ptr noundef nonnull @bin_attr_ffdc) #6
  %sbe = getelementptr inbounds %struct.p9_sbe_occ, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sbe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sbe, align 4
  tail call void @occ_shutdown(ptr noundef %1) #6
  %ffdc = getelementptr inbounds %struct.p9_sbe_occ, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ffdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ffdc, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree(ptr noundef nonnull %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_sbe_occ_send_cmd(ptr noundef %occ, ptr noundef %cmd, i32 noundef %len) #2 align 64 {
entry:
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp1 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #6
  %0 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %resp_len, align 4
  %sbe = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 6
  %1 = ptrtoint ptr %sbe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbe, align 4
  %call = call i32 @fsi_occ_submit(ptr noundef %2, ptr noundef %cmd, i32 noundef %len, ptr noundef %resp1, ptr noundef nonnull %resp_len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %sbe_error_lock.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %sbe_error_lock.i, i32 noundef 0) #6
  %sbe_error.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 1
  %5 = ptrtoint ptr %sbe_error.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sbe_error.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.p9_sbe_occ_save_ffdc.exit.thread_crit_edge

if.then2.p9_sbe_occ_save_ffdc.exit.thread_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %p9_sbe_occ_save_ffdc.exit.thread

if.then.i:                                        ; preds = %if.then2
  %ffdc_size.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 4
  %7 = ptrtoint ptr %ffdc_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ffdc_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp.i = icmp ult i32 %8, %4
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.then4_crit_edge

if.then.i.if.then4_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then1.i:                                       ; preds = %if.then.i
  %ffdc.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 2
  %9 = ptrtoint ptr %ffdc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ffdc.i, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.then1.i.if.end.i_crit_edge, label %if.then3.i

if.then1.i.if.end.i_crit_edge:                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %10) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then1.i.if.end.i_crit_edge
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #10
  %11 = ptrtoint ptr %ffdc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %ffdc.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %ffdc_len.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 3
  %12 = ptrtoint ptr %ffdc_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ffdc_len.i, align 4
  %13 = ptrtoint ptr %ffdc_size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ffdc_size.i, align 4
  br label %p9_sbe_occ_save_ffdc.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ffdc_size.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %4, ptr %ffdc_size.i, align 4
  br label %if.then4

p9_sbe_occ_save_ffdc.exit.thread:                 ; preds = %if.then8.i, %if.then2.p9_sbe_occ_save_ffdc.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %sbe_error_lock.i) #6
  br label %cleanup

if.then4:                                         ; preds = %if.end10.i, %if.then.i.if.then4_crit_edge
  %15 = ptrtoint ptr %sbe_error.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %sbe_error.i, align 4
  %ffdc_len14.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 3
  %16 = ptrtoint ptr %ffdc_len14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %4, ptr %ffdc_len14.i, align 4
  %ffdc15.i = getelementptr inbounds %struct.p9_sbe_occ, ptr %occ, i32 0, i32 2
  %17 = ptrtoint ptr %ffdc15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ffdc15.i, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %resp1, i32 %4)
  call void @mutex_unlock(ptr noundef %sbe_error_lock.i) #6
  %20 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %occ, align 4
  %22 = load ptr, ptr @bin_attr_ffdc, align 4
  call void @sysfs_notify(ptr noundef %21, ptr noundef null, ptr noundef %22) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %return_status = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %return_status, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %sw.default [
    i8 -1, label %if.end6.cleanup_crit_edge
    i8 0, label %sw.bb7
    i8 17, label %if.end6.sw.bb8_crit_edge
    i8 18, label %if.end6.sw.bb8_crit_edge21
    i8 19, label %if.end6.sw.bb8_crit_edge22
    i8 20, label %if.end6.sw.bb8_crit_edge23
    i8 21, label %if.end6.sw.bb9_crit_edge
    i8 22, label %if.end6.sw.bb9_crit_edge24
    i8 -32, label %if.end6.sw.bb9_crit_edge25
    i8 -31, label %if.end6.sw.bb9_crit_edge26
    i8 -30, label %if.end6.sw.bb9_crit_edge27
    i8 -29, label %if.end6.sw.bb9_crit_edge28
    i8 -28, label %if.end6.sw.bb9_crit_edge29
  ]

if.end6.sw.bb9_crit_edge29:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge28:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge27:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge26:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge25:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge24:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb9_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end6.sw.bb8_crit_edge23:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end6.sw.bb8_crit_edge22:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end6.sw.bb8_crit_edge21:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end6.sw.bb8_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6.sw.bb8_crit_edge, %if.end6.sw.bb8_crit_edge21, %if.end6.sw.bb8_crit_edge22, %if.end6.sw.bb8_crit_edge23
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6.sw.bb9_crit_edge, %if.end6.sw.bb9_crit_edge24, %if.end6.sw.bb9_crit_edge25, %if.end6.sw.bb9_crit_edge26, %if.end6.sw.bb9_crit_edge27, %if.end6.sw.bb9_crit_edge28, %if.end6.sw.bb9_crit_edge29
  br label %cleanup

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb9, %sw.bb8, %sw.bb7, %if.end6.cleanup_crit_edge, %if.then4, %p9_sbe_occ_save_ffdc.exit.thread, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then4 ], [ %call, %if.then.cleanup_crit_edge ], [ -71, %sw.default ], [ -121, %sw.bb9 ], [ -22, %sw.bb8 ], [ 0, %sw.bb7 ], [ -110, %if.end6.cleanup_crit_edge ], [ %call, %p9_sbe_occ_save_ffdc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @occ_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_occ_submit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ffdc_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %battr, ptr noundef %buf, i64 noundef %pos, i32 noundef %count) #2 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %sbe_error_lock = getelementptr inbounds %struct.p9_sbe_occ, ptr %2, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %sbe_error_lock, i32 noundef 0) #6
  %sbe_error = getelementptr inbounds %struct.p9_sbe_occ, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %sbe_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sbe_error, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %ffdc = getelementptr inbounds %struct.p9_sbe_occ, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %ffdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ffdc, align 4
  %ffdc_len = getelementptr inbounds %struct.p9_sbe_occ, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %ffdc_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ffdc_len, align 4
  %call2 = call i32 @memory_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %pos.addr, ptr noundef %6, i32 noundef %8) #6
  %9 = ptrtoint ptr %pos.addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos.addr, align 8
  %11 = ptrtoint ptr %ffdc_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ffdc_len, align 4
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp.not = icmp slt i64 %10, %conv
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sbe_error to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sbe_error, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %rc.0 = phi i32 [ %call2, %if.then5 ], [ %call2, %if.then.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ]
  call void @mutex_unlock(ptr noundef %sbe_error_lock) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @occ_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_occ_p9_hwmon__228_188_p9_sbe_occ_driver_init6, !1, !"__initcall__kmod_occ_p9_hwmon__228_188_p9_sbe_occ_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 188, i32 1}
!2 = !{ptr @__exitcall_p9_sbe_occ_driver_exit, !1, !"__exitcall_p9_sbe_occ_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 190, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 191, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 192, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 182, i32 11}
!12 = !{ptr @p9_sbe_occ_driver, !13, !"p9_sbe_occ_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 180, i32 31}
!14 = !{ptr @p9_sbe_occ_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 137, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 148, i32 22}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 155, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @p9_sbe_occ_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @p9_sbe_occ_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/occ/p9_sbe.c", i32 48, i32 8}
!29 = !{ptr @bin_attr_ffdc, !28, !"bin_attr_ffdc", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
