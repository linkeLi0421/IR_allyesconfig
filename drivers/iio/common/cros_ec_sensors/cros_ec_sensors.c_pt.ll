; ModuleID = '/llk/IR_all_yes/drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c_pt.bc'
source_filename = "../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cros_ec_sensors_state = type { %struct.cros_ec_sensors_core_state, [4 x %struct.iio_chan_spec] }
%struct.cros_ec_sensors_core_state = type { ptr, %struct.mutex, ptr, %struct.ec_params_motion_sense, ptr, i32, i32, i8, i32, [3 x %struct.calib_data], [3 x i8], i8, [16 x i8], ptr, i32, [6 x i32] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.45 }>
%union.anon.45 = type { %struct.anon.49, [4 x i8] }
%struct.anon.49 = type { i8, i8, i16, i32 }
%struct.calib_data = type { i16, i16 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.64 = type { i16, [3 x i16] }
%struct.anon.65 = type { i16, [3 x i16] }
%struct.anon.50 = type <{ i8, i16, i16, [3 x i16] }>
%struct.anon.51 = type <{ i8, i16, i16, [3 x i16] }>

@__initcall__kmod_cros_ec_sensors__187_325_cros_ec_sensors_platform_driver_init6 = internal global ptr @cros_ec_sensors_platform_driver_init, section ".initcall6.init", align 4
@cros_ec_sensors_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_sensors_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_ec_sensors_pm_ops, ptr null, ptr null }, ptr @cros_ec_sensors_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_sensors_platform_driver_exit = internal global ptr @cros_ec_sensors_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [62 x i8] c"cros_ec_sensors.description=ChromeOS EC 3-axis sensors driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [72 x i8] c"cros_ec_sensors.file=drivers/iio/common/cros_ec_sensors/cros_ec_sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [31 x i8] c"cros_ec_sensors.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cros-ec-sensors\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_sensors_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cros_ec_sensors_ids = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"cros-ec-accel\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"cros-ec-gyro\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"cros-ec-mag\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ec_sensors_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cros_ec_sensors_read, ptr null, ptr @cros_ec_sensors_core_read_avail, ptr @cros_ec_sensors_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cros_ec_sensors_ext_info = external dso_local constant [0 x %struct.iio_chan_spec_ext_info], align 4
@cros_ec_sensors_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown motion sensor\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cros_ec_sensors_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_sensors_probe._entry_ptr = internal global ptr @cros_ec_sensors_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967225]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@___asan_gen_.9 = private unnamed_addr constant [32 x i8] c"cros_ec_sensors_platform_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 317, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 319, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"cros_ec_sensors_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 303, i32 40 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"ec_sensors_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 219, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [56 x i8] c"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 277, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_cros_ec_sensors_platform_driver_exit, ptr @__initcall__kmod_cros_ec_sensors__187_325_cros_ec_sensors_platform_driver_init6, ptr @cros_ec_sensors_platform_driver_exit, ptr @cros_ec_sensors_probe._entry, ptr @cros_ec_sensors_probe._entry_ptr, ptr @cros_ec_sensors_platform_driver, ptr @.str, ptr @cros_ec_sensors_ids, ptr @ec_sensors_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensors_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensors_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_sensors_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensors_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_sensors_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_sensors_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_sensors_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 552) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @cros_ec_sensors_core_init(ptr noundef %pdev, ptr noundef nonnull %call, i1 noundef zeroext true, ptr noundef nonnull @cros_ec_sensors_capture, ptr noundef nonnull @cros_ec_sensors_push_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ec_sensors_info, ptr %info, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %channels = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1
  %type = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 5
  %info_mask_separate = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 6
  %3 = ptrtoint ptr %info_mask_separate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 49, ptr %info_mask_separate, align 4
  %info_mask_shared_by_all = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 12
  %4 = ptrtoint ptr %info_mask_shared_by_all to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4100, ptr %info_mask_shared_by_all, align 4
  %info_mask_shared_by_all_available = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 13
  %5 = ptrtoint ptr %info_mask_shared_by_all_available to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %info_mask_shared_by_all_available, align 4
  %scan_type = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 5
  %realbits = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %realbits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %realbits, align 1
  %storagebits = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %storagebits to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %storagebits, align 2
  %scan_index = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %scan_index, align 4
  %ext_info = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 16
  %9 = ptrtoint ptr %ext_info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cros_ec_sensors_ext_info, ptr %ext_info, align 4
  %modified = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 19
  %10 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %modified, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %modified, align 4
  %channel2 = getelementptr inbounds %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %channel2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %channel2, align 4
  %12 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 115, ptr %scan_type, align 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %switch.lookup, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %switch.lookup91.do.end_crit_edge, %switch.lookup.do.end_crit_edge, %if.end6.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end6
  %switch.offset = add i32 %14, 3
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.offset, ptr %channels, align 4
  %info_mask_separate.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 6
  %17 = ptrtoint ptr %info_mask_separate.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 49, ptr %info_mask_separate.1, align 4
  %info_mask_shared_by_all.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 12
  %18 = ptrtoint ptr %info_mask_shared_by_all.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4100, ptr %info_mask_shared_by_all.1, align 4
  %info_mask_shared_by_all_available.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 13
  %19 = ptrtoint ptr %info_mask_shared_by_all_available.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %info_mask_shared_by_all_available.1, align 4
  %scan_type.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 5
  %realbits.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 5, i32 1
  %20 = ptrtoint ptr %realbits.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %realbits.1, align 1
  %storagebits.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 5, i32 2
  %21 = ptrtoint ptr %storagebits.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %storagebits.1, align 2
  %scan_index.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 4
  %22 = ptrtoint ptr %scan_index.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %scan_index.1, align 4
  %ext_info.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 16
  %23 = ptrtoint ptr %ext_info.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cros_ec_sensors_ext_info, ptr %ext_info.1, align 4
  %modified.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 19
  %24 = ptrtoint ptr %modified.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.1 = load i8, ptr %modified.1, align 4
  %bf.set.1 = or i8 %bf.load.1, -128
  store i8 %bf.set.1, ptr %modified.1, align 4
  %channel2.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1, i32 2
  %25 = ptrtoint ptr %channel2.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %channel2.1, align 4
  %26 = ptrtoint ptr %scan_type.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 115, ptr %scan_type.1, align 4
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %switch.lookup91, label %switch.lookup.do.end_crit_edge

switch.lookup.do.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

switch.lookup91:                                  ; preds = %switch.lookup
  %incdec.ptr = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 1
  %switch.offset92 = add i32 %28, 3
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %switch.offset92, ptr %incdec.ptr, align 4
  %info_mask_separate.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 6
  %31 = ptrtoint ptr %info_mask_separate.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 49, ptr %info_mask_separate.2, align 4
  %info_mask_shared_by_all.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 12
  %32 = ptrtoint ptr %info_mask_shared_by_all.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4100, ptr %info_mask_shared_by_all.2, align 4
  %info_mask_shared_by_all_available.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 13
  %33 = ptrtoint ptr %info_mask_shared_by_all_available.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4096, ptr %info_mask_shared_by_all_available.2, align 4
  %scan_type.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 5
  %realbits.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 5, i32 1
  %34 = ptrtoint ptr %realbits.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %realbits.2, align 1
  %storagebits.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 5, i32 2
  %35 = ptrtoint ptr %storagebits.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %storagebits.2, align 2
  %scan_index.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 4
  %36 = ptrtoint ptr %scan_index.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %scan_index.2, align 4
  %ext_info.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 16
  %37 = ptrtoint ptr %ext_info.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cros_ec_sensors_ext_info, ptr %ext_info.2, align 4
  %modified.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 19
  %38 = ptrtoint ptr %modified.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.2 = load i8, ptr %modified.2, align 4
  %bf.set.2 = or i8 %bf.load.2, -128
  store i8 %bf.set.2, ptr %modified.2, align 4
  %channel2.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2, i32 2
  %39 = ptrtoint ptr %channel2.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %channel2.2, align 4
  %40 = ptrtoint ptr %scan_type.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 115, ptr %scan_type.2, align 4
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %switch.lookup89, label %switch.lookup91.do.end_crit_edge

switch.lookup91.do.end_crit_edge:                 ; preds = %switch.lookup91
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

switch.lookup89:                                  ; preds = %switch.lookup91
  %incdec.ptr.1 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 2
  %switch.offset90 = add i32 %42, 3
  %44 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %switch.offset90, ptr %incdec.ptr.1, align 4
  %incdec.ptr.2 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 13, ptr %incdec.ptr.2, align 4
  %channel17 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3, i32 1
  %46 = ptrtoint ptr %channel17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %channel17, align 4
  %scan_index18 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3, i32 4
  %47 = ptrtoint ptr %scan_index18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %scan_index18, align 4
  %scan_type19 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3, i32 5
  %48 = ptrtoint ptr %scan_type19 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 115, ptr %scan_type19, align 4
  %realbits22 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3, i32 5, i32 1
  %49 = ptrtoint ptr %realbits22 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 64, ptr %realbits22, align 1
  %storagebits24 = getelementptr %struct.cros_ec_sensors_state, ptr %2, i32 0, i32 1, i32 3, i32 5, i32 2
  %50 = ptrtoint ptr %storagebits24 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %storagebits24, align 2
  %channels27 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %51 = ptrtoint ptr %channels27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %channels, ptr %channels27, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %52 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %num_channels, align 4
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 8
  %cmd_readmem = getelementptr inbounds %struct.cros_ec_device, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %cmd_readmem to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cmd_readmem, align 8
  %cmp29.not = icmp eq ptr %56, null
  br i1 %cmp29.not, label %switch.lookup89.if.else_crit_edge, label %land.lhs.true

switch.lookup89.if.else_crit_edge:                ; preds = %switch.lookup89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %switch.lookup89
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp32.not = icmp eq i32 %58, 2
  br i1 %cmp32.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %switch.lookup89.if.else_crit_edge
  br label %if.end37

if.end37:                                         ; preds = %if.else, %land.lhs.true.if.end37_crit_edge
  %cros_ec_sensors_read_cmd.sink = phi ptr [ @cros_ec_sensors_read_cmd, %if.else ], [ @cros_ec_sensors_read_lpc, %land.lhs.true.if.end37_crit_edge ]
  %read_ec_sensors_data36 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 13
  %59 = ptrtoint ptr %read_ec_sensors_data36 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cros_ec_sensors_read_cmd.sink, ptr %read_ec_sensors_data36, align 8
  %call38 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call38, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_capture(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_push_data(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_lpc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_read_cmd(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_read(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %remainder.i156 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
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
  switch i32 %mask, label %sw.default95 [
    i32 0, label %sw.bb
    i32 5, label %sw.bb3
    i32 4, label %sw.bb24
    i32 2, label %sw.bb67
  ]

sw.bb:                                            ; preds = %entry
  %read_ec_sensors_data = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %read_ec_sensors_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ec_sensors_data, align 8
  %shl = shl nuw i32 1, %4
  %call2 = call i32 %7(ptr noundef %indio_dev, i32 noundef %shl, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.sw.epilog98_crit_edge, label %if.end

sw.bb.sw.epilog98_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  %conv = sext i16 %9 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog98

sw.bb3:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 11, ptr %param, align 4
  %flags = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %flags, align 1
  %call8 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb3.sw.epilog98_crit_edge, label %for.cond.preheader

sw.bb3.sw.epilog98_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98

for.cond.preheader:                               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  %resp = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resp, align 4
  %arrayidx = getelementptr %struct.anon.64, ptr %14, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx, align 1
  %arrayidx17 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 0
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx17, align 4
  %arrayidx.1 = getelementptr %struct.anon.64, ptr %14, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx.1, align 1
  %arrayidx17.1 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %arrayidx17.1, align 4
  %arrayidx.2 = getelementptr %struct.anon.64, ptr %14, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx.2, align 1
  %arrayidx17.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx17.2, align 4
  %arrayidx21 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 %4
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx21, align 4
  %conv23 = sext i16 %25 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv23, ptr %val, align 4
  br label %sw.epilog98

sw.bb24:                                          ; preds = %entry
  %param26 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %param26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 18, ptr %param26, align 4
  %flags30 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %flags30 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %flags30, align 1
  %call32 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  %29 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call32, label %sw.bb24.sw.epilog98_crit_edge [
    i32 -71, label %sw.bb24.if.then37_crit_edge
    i32 -95, label %sw.bb24.if.then37_crit_edge160
    i32 0, label %for.cond41.preheader
  ]

sw.bb24.if.then37_crit_edge160:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb24.if.then37_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

sw.bb24.sw.epilog98_crit_edge:                    ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98

for.cond41.preheader:                             ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %resp46 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %resp46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resp46, align 4
  %arrayidx47 = getelementptr %struct.anon.65, ptr %31, i32 0, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx47, align 1
  %scale51 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 0, i32 1
  %34 = ptrtoint ptr %scale51 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %scale51, align 2
  %arrayidx47.1 = getelementptr %struct.anon.65, ptr %31, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx47.1, align 1
  %scale51.1 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 1, i32 1
  %37 = ptrtoint ptr %scale51.1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %scale51.1, align 2
  %arrayidx47.2 = getelementptr %struct.anon.65, ptr %31, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %arrayidx47.2, align 1
  %scale51.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 2, i32 1
  %40 = ptrtoint ptr %scale51.2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %scale51.2, align 2
  %scale58 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 %4, i32 1
  %41 = ptrtoint ptr %scale58 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %scale58, align 2
  %43 = lshr i16 %42, 15
  %44 = zext i16 %43 to i32
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  %46 = load i16, ptr %scale58, align 2
  %47 = and i16 %46, 32767
  %48 = zext i16 %47 to i64
  %mul = mul nuw nsw i64 %48, 1000000
  %div155 = lshr i64 %mul, 15
  %conv66 = trunc i64 %div155 to i32
  %49 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv66, ptr %val2, align 4
  br label %sw.epilog98

if.then37:                                        ; preds = %sw.bb24.if.then37_crit_edge, %sw.bb24.if.then37_crit_edge160
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %val, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val2, align 4
  br label %sw.epilog98

sw.bb67:                                          ; preds = %entry
  %param69 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %param69 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 4, ptr %param69, align 4
  %data73 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 3
  %53 = ptrtoint ptr %data73 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 -1, ptr %data73, align 1
  %call75 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %sw.bb67.sw.epilog98_crit_edge, label %if.end79

sw.bb67.sw.epilog98_crit_edge:                    ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98

if.end79:                                         ; preds = %sw.bb67
  %resp81 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %resp81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %resp81, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %55, align 1
  %conv83 = sext i32 %57 to i64
  %type = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %59, label %if.end79.sw.epilog98_crit_edge [
    i32 0, label %sw.bb85
    i32 1, label %sw.bb89
    i32 2, label %sw.bb93
  ]

if.end79.sw.epilog98_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog98

sw.bb85:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %mul86 = mul nsw i64 %conv83, 980665
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #5
  %61 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %remainder.i, align 4, !annotation !33
  %call.i = call i64 @div_s64_rem(i64 noundef %mul86, i32 noundef 10, ptr noundef nonnull %remainder.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #5
  %conv88 = trunc i64 %call.i to i32
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv88, ptr %val, align 4
  %63 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 327680000, ptr %val2, align 4
  br label %sw.epilog98

sw.bb89:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %val, align 4
  %mul90 = mul nsw i64 %conv83, 3141592653
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i156) #5
  %65 = ptrtoint ptr %remainder.i156 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %remainder.i156, align 4, !annotation !33
  %call.i157 = call i64 @div_s64_rem(i64 noundef %mul90, i32 noundef 5898240, ptr noundef nonnull %remainder.i156) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i156) #5
  %conv92 = trunc i64 %call.i157 to i32
  %66 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv92, ptr %val2, align 4
  br label %sw.epilog98

sw.bb93:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %57, ptr %val, align 4
  %68 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3276800, ptr %val2, align 4
  br label %sw.epilog98

sw.default95:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call97 = tail call i32 @cros_ec_sensors_core_read(ptr noundef %1, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #5
  br label %sw.epilog98

sw.epilog98:                                      ; preds = %sw.default95, %sw.bb93, %sw.bb89, %sw.bb85, %if.end79.sw.epilog98_crit_edge, %sw.bb67.sw.epilog98_crit_edge, %if.then37, %for.cond41.preheader, %sw.bb24.sw.epilog98_crit_edge, %for.cond.preheader, %sw.bb3.sw.epilog98_crit_edge, %if.end, %sw.bb.sw.epilog98_crit_edge
  %ret.0 = phi i32 [ %call97, %sw.default95 ], [ %call75, %sw.bb67.sw.epilog98_crit_edge ], [ 10, %sw.bb93 ], [ 3, %sw.bb89 ], [ 10, %sw.bb85 ], [ 2, %if.then37 ], [ 2, %for.cond41.preheader ], [ %call8, %sw.bb3.sw.epilog98_crit_edge ], [ 1, %for.cond.preheader ], [ %call2, %sw.bb.sw.epilog98_crit_edge ], [ 1, %if.end ], [ %call32, %sw.bb24.sw.epilog98_crit_edge ], [ -22, %if.end79.sw.epilog98_crit_edge ]
  call void @mutex_unlock(ptr noundef %cmd_lock) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read_avail(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensors_write(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index, align 4
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #5
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mask, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb18
    i32 2, label %sw.bb49
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %val to i16
  %arrayidx = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %arrayidx, align 4
  %param = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 11, ptr %param, align 4
  %7 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1
  %flags = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 1, ptr %flags, align 1
  %arrayidx8 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 0
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8, align 4
  %arrayidx13 = getelementptr %struct.anon.50, ptr %7, i32 0, i32 3, i32 0
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %arrayidx13, align 1
  %arrayidx8.1 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8.1, align 4
  %arrayidx13.1 = getelementptr %struct.anon.50, ptr %7, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %arrayidx13.1, align 1
  %arrayidx8.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx8.2, align 4
  %arrayidx13.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %arrayidx13.2, align 1
  %temp = getelementptr inbounds %struct.anon.50, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -32768, ptr %temp, align 1
  %call17 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv19 = trunc i32 %val to i16
  %scale = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 %3, i32 1
  %19 = ptrtoint ptr %scale to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv19, ptr %scale, align 2
  %param24 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %param24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %param24, align 4
  %21 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1
  %flags28 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %flags28 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 1, ptr %flags28, align 1
  %scale36 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 0, i32 1
  %23 = ptrtoint ptr %scale36 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %scale36, align 2
  %arrayidx40 = getelementptr %struct.anon.51, ptr %21, i32 0, i32 3, i32 0
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %arrayidx40, align 1
  %scale36.1 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 1, i32 1
  %26 = ptrtoint ptr %scale36.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %scale36.1, align 2
  %arrayidx40.1 = getelementptr %struct.anon.51, ptr %21, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %arrayidx40.1, align 1
  %scale36.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 9, i32 2, i32 1
  %29 = ptrtoint ptr %scale36.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %scale36.2, align 2
  %arrayidx40.2 = getelementptr %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx40.2, align 1
  %temp46 = getelementptr inbounds %struct.anon.51, ptr %21, i32 0, i32 2
  %32 = ptrtoint ptr %temp46 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 -32768, ptr %temp46, align 1
  %call48 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp51 = icmp eq i32 %34, 2
  br i1 %cmp51, label %sw.bb49.sw.epilog_crit_edge, label %if.end

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb49
  %param54 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %param54 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %param54, align 4
  %data = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %val, ptr %data, align 1
  %roundup = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 3, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %roundup to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %roundup, align 1
  %call61 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %1, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then64:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %range_updated = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %range_updated to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %range_updated, align 8
  %curr_range = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %curr_range to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %val, ptr %curr_range, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call69 = tail call i32 @cros_ec_sensors_core_write(ptr noundef %1, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then64, %if.end.sw.epilog_crit_edge, %sw.bb49.sw.epilog_crit_edge, %sw.bb18, %sw.bb
  %ret.0 = phi i32 [ %call69, %sw.default ], [ 0, %if.then64 ], [ %call61, %if.end.sw.epilog_crit_edge ], [ %call48, %sw.bb18 ], [ %call17, %sw.bb ], [ -22, %sw.bb49.sw.epilog_crit_edge ]
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
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_cros_ec_sensors__187_325_cros_ec_sensors_platform_driver_init6, !1, !"__initcall__kmod_cros_ec_sensors__187_325_cros_ec_sensors_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 325, i32 1}
!2 = !{ptr @__exitcall_cros_ec_sensors_platform_driver_exit, !1, !"__exitcall_cros_ec_sensors_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 327, i32 1}
!5 = !{ptr @__UNIQUE_ID_file189, !6, !"__UNIQUE_ID_file189", i1 false, i1 false}
!6 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 328, i32 1}
!7 = !{ptr @__UNIQUE_ID_license190, !6, !"__UNIQUE_ID_license190", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 319, i32 11}
!10 = !{ptr @cros_ec_sensors_platform_driver, !11, !"cros_ec_sensors_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 317, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 277, i32 4}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cros_ec_sensors_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @cros_ec_sensors_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ec_sensors_info, !21, !"ec_sensors_info", i1 false, i1 false}
!21 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 219, i32 30}
!22 = !{ptr @cros_ec_sensors_ids, !23, !"cros_ec_sensors_ids", i1 false, i1 false}
!23 = !{!"../drivers/iio/common/cros_ec_sensors/cros_ec_sensors.c", i32 303, i32 40}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
