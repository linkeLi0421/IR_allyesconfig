; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/cros_ec_baro.c_pt.bc'
source_filename = "../drivers/iio/pressure/cros_ec_baro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cros_ec_sensors_core_state = type { ptr, %struct.mutex, ptr, %struct.ec_params_motion_sense, ptr, i32, i32, i8, i32, [3 x %struct.calib_data], [3 x i8], i8, [16 x i8], ptr, i32, [6 x i32] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.45 }>
%union.anon.45 = type { %struct.anon.49, [4 x i8] }
%struct.anon.49 = type { i8, i8, i16, i32 }
%struct.calib_data = type { i16, i16 }
%struct.anon.61 = type { i8, i8, i8 }
%struct.cros_ec_baro_state = type { %struct.cros_ec_sensors_core_state, [2 x %struct.iio_chan_spec] }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.44, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.44 = type { i8, i8, i8, i8, i8, i32 }

@__initcall__kmod_cros_ec_baro__187_208_cros_ec_baro_platform_driver_init6 = internal global ptr @cros_ec_baro_platform_driver_init, section ".initcall6.init", align 4
@cros_ec_baro_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_baro_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensors_pm_ops, ptr null, ptr null }, ptr @cros_ec_baro_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_baro_platform_driver_exit = internal global ptr @cros_ec_baro_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [61 x i8] c"cros_ec_baro.description=ChromeOS EC barometer sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [52 x i8] c"cros_ec_baro.file=drivers/iio/pressure/cros_ec_baro\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [28 x i8] c"cros_ec_baro.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cros-ec-baro\00", [19 x i8] zeroinitializer }, align 32
@cros_ec_sensors_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cros_ec_baro_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-baro\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cros_ec_baro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No CROS EC device found.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros_ec_baro_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/pressure/cros_ec_baro.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_baro_probe._entry_ptr = internal global ptr @cros_ec_baro_probe._entry, section ".printk_index", align 4
@cros_ec_baro_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cros_ec_baro_read, ptr null, ptr @cros_ec_sensors_core_read_avail, ptr @cros_ec_baro_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cros_ec_sensors_ext_info = external dso_local constant [0 x %struct.iio_chan_spec_ext_info], align 4
@cros_ec_baro_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown motion sensor\0A\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_baro_probe._entry_ptr.8 = internal global ptr @cros_ec_baro_probe._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"cros_ec_baro_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 200, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 202, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"cros_ec_baro_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 192, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 132, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"cros_ec_baro_info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 116, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [39 x i8] c"../drivers/iio/pressure/cros_ec_baro.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 171, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_cros_ec_baro_platform_driver_exit, ptr @__initcall__kmod_cros_ec_baro__187_208_cros_ec_baro_platform_driver_init6, ptr @cros_ec_baro_platform_driver_exit, ptr @cros_ec_baro_probe._entry, ptr @cros_ec_baro_probe._entry.6, ptr @cros_ec_baro_probe._entry_ptr, ptr @cros_ec_baro_probe._entry_ptr.8, ptr @cros_ec_baro_platform_driver, ptr @.str, ptr @cros_ec_baro_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cros_ec_baro_info, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_baro_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_baro_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_baro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_baro_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_baro_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_baro_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_baro_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_baro_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_baro_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_baro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %ec_dev2 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev2, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 376) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @cros_ec_sensors_core_init(ptr noundef %pdev, ptr noundef nonnull %call4, i1 noundef zeroext true, ptr noundef nonnull @cros_ec_sensors_capture, ptr noundef nonnull @cros_ec_sensors_push_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %info = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cros_ec_baro_info, ptr %info, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %resp = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resp, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i32
  %type14 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %type14, align 8
  %location = getelementptr inbounds %struct.anon.61, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %location, align 1
  %conv17 = zext i8 %15 to i32
  %loc = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 6
  %16 = ptrtoint ptr %loc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv17, ptr %loc, align 4
  %info_mask_separate = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 6
  %17 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %info_mask_separate, align 4
  %info_mask_shared_by_all = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 12
  %18 = ptrtoint ptr %info_mask_shared_by_all to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4100, ptr %info_mask_shared_by_all, align 4
  %info_mask_shared_by_all_available = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 13
  %19 = ptrtoint ptr %info_mask_shared_by_all_available to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %info_mask_shared_by_all_available, align 4
  %scan_type = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 5
  %realbits = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %realbits to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %realbits, align 1
  %storagebits = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %storagebits to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %storagebits, align 2
  %shift = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %shift, align 1
  %scan_index = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %scan_index, align 4
  %ext_info = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 0, i32 16
  %24 = ptrtoint ptr %ext_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cros_ec_sensors_ext_info, ptr %ext_info, align 4
  %25 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 117, ptr %scan_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cond = icmp eq i8 %12, 6
  br i1 %cond, label %sw.bb, label %do.end27

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %channels = getelementptr inbounds %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 17, ptr %channels, align 4
  %incdec.ptr = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 13, ptr %incdec.ptr, align 4
  %channel29 = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %channel29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %channel29, align 4
  %scan_index30 = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1, i32 4
  %29 = ptrtoint ptr %scan_index30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %scan_index30, align 4
  %scan_type31 = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1, i32 5
  %30 = ptrtoint ptr %scan_type31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 115, ptr %scan_type31, align 4
  %realbits34 = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1, i32 5, i32 1
  %31 = ptrtoint ptr %realbits34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 64, ptr %realbits34, align 1
  %storagebits36 = getelementptr %struct.cros_ec_baro_state, ptr %8, i32 0, i32 1, i32 1, i32 5, i32 2
  %32 = ptrtoint ptr %storagebits36 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 64, ptr %storagebits36, align 2
  %channels39 = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 13
  %33 = ptrtoint ptr %channels39 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %channels, ptr %channels39, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call4, i32 0, i32 14
  %34 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %num_channels, align 4
  %read_ec_sensors_data = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %8, i32 0, i32 13
  %35 = ptrtoint ptr %read_ec_sensors_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cros_ec_sensors_read_cmd, ptr %read_ec_sensors_data, align 8
  %call41 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call4, ptr noundef null) #5
  br label %cleanup

do.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %sw.bb, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call41, %sw.bb ], [ -22, %do.end27 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_capture(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_push_data(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_cmd(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_baro_read(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %data, align 2
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #5
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %shl = shl nuw i32 1, %4
  %call1 = call i32 @cros_ec_sensors_read_cmd(ptr noundef %indio_dev, i32 noundef %shl, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %param, align 4
  %data6 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %data6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 -1, ptr %data6, align 1
  %call8 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end11:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %resp = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resp, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %12, align 1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 655360, ptr %val2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @cros_ec_sensors_core_read(ptr noundef %1, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end11, %sw.bb2.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call15, %sw.default ], [ %call8, %sw.bb2.sw.epilog_crit_edge ], [ 10, %if.end11 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.end ]
  call void @mutex_unlock(ptr noundef %cmd_lock) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_baro_write(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %param = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %param, align 4
  %data = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %data, align 1
  %roundup = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %roundup to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %roundup, align 1
  %call7 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %range_updated = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %range_updated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %range_updated, align 8
  %curr_range = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %curr_range to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %curr_range, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @cros_ec_sensors_core_write(ptr noundef %1, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call7, %sw.bb.sw.epilog_crit_edge ], [ %call11, %sw.default ]
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_motion_send_host_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_cros_ec_baro__187_208_cros_ec_baro_platform_driver_init6, !1, !"__initcall__kmod_cros_ec_baro__187_208_cros_ec_baro_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 208, i32 1}
!2 = !{ptr @__exitcall_cros_ec_baro_platform_driver_exit, !1, !"__exitcall_cros_ec_baro_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 210, i32 1}
!5 = !{ptr @__UNIQUE_ID_file189, !6, !"__UNIQUE_ID_file189", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 211, i32 1}
!7 = !{ptr @__UNIQUE_ID_license190, !6, !"__UNIQUE_ID_license190", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 202, i32 11}
!10 = !{ptr @cros_ec_baro_platform_driver, !11, !"cros_ec_baro_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 200, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 132, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cros_ec_baro_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @cros_ec_baro_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 171, i32 3}
!22 = !{ptr @cros_ec_baro_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cros_ec_baro_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cros_ec_baro_info, !25, !"cros_ec_baro_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 116, i32 30}
!26 = !{ptr @cros_ec_baro_ids, !27, !"cros_ec_baro_ids", i1 false, i1 false}
!27 = !{!"../drivers/iio/pressure/cros_ec_baro.c", i32 192, i32 40}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
