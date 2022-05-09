; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/cros_ec_accel_legacy.c_pt.bc'
source_filename = "../drivers/iio/accel/cros_ec_accel_legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_sensors_core_state = type { ptr, %struct.mutex, ptr, %struct.ec_params_motion_sense, ptr, i32, i32, i8, i32, [3 x %struct.calib_data], [3 x i8], i8, [16 x i8], ptr, i32, [6 x i32] }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.45 }>
%union.anon.45 = type { %struct.anon.49, [4 x i8] }
%struct.anon.49 = type { i8, i8, i16, i32 }
%struct.calib_data = type { i16, i16 }
%struct.anon.57 = type { i8, i8, [0 x %struct.ec_response_motion_sensor_data] }
%struct.ec_response_motion_sensor_data = type { i8, i8, %union.anon.58 }
%union.anon.58 = type { [3 x i16] }

@__initcall__kmod_cros_ec_accel_legacy__187_247_cros_ec_accel_platform_driver_init6 = internal global ptr @cros_ec_accel_platform_driver_init, section ".initcall6.init", align 4
@cros_ec_accel_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_accel_legacy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_accel_platform_driver_exit = internal global ptr @cros_ec_accel_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [73 x i8] c"cros_ec_accel_legacy.description=ChromeOS EC legacy accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [67 x i8] c"cros_ec_accel_legacy.author=Gwendal Grignou <gwendal@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [65 x i8] c"cros_ec_accel_legacy.file=drivers/iio/accel/cros_ec_accel_legacy\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [36 x i8] c"cros_ec_accel_legacy.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [57 x i8] c"cros_ec_accel_legacy.alias=platform:cros-ec-accel-legacy\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cros-ec-accel-legacy\00", [43 x i8] zeroinitializer }, align 32
@cros_ec_accel_legacy_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cros_ec_accel_legacy_read, ptr null, ptr @cros_ec_accel_legacy_read_avail, ptr @cros_ec_accel_legacy_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cros_ec_accel_legacy_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 1, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4100, i32 4096, ptr null, i32 0, ptr @cros_ec_sensors_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 0, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4100, i32 4096, ptr null, i32 0, ptr @cros_ec_sensors_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 33, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4100, i32 4096, ptr null, i32 0, ptr @cros_ec_sensors_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/iio/accel/cros_ec_accel_legacy.c\00", [55 x i8] zeroinitializer }, align 32
@cros_ec_legacy_sample_freq = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 0], [24 x i8] zeroinitializer }, align 32
@cros_ec_accel_legacy_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to read sensor data\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cros_ec_accel_legacy_read_cmd\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_accel_legacy_read_cmd._entry_ptr = internal global ptr @cros_ec_accel_legacy_read_cmd._entry, section ".printk_index", align 4
@cros_ec_sensors_ext_info = external dso_local constant [0 x %struct.iio_chan_spec_ext_info], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 12]
@___asan_gen_.6 = private unnamed_addr constant [30 x i8] c"cros_ec_accel_platform_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 241, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 243, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"cros_ec_accel_legacy_info\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 162, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"cros_ec_accel_legacy_channels\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 199, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 94, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"cros_ec_legacy_sample_freq\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 39, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [44 x i8] c"../drivers/iio/accel/cros_ec_accel_legacy.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 61, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_cros_ec_accel_platform_driver_exit, ptr @__initcall__kmod_cros_ec_accel_legacy__187_247_cros_ec_accel_platform_driver_init6, ptr @cros_ec_accel_legacy_read_cmd._entry, ptr @cros_ec_accel_legacy_read_cmd._entry_ptr, ptr @cros_ec_accel_platform_driver_exit, ptr @cros_ec_accel_platform_driver, ptr @.str, ptr @cros_ec_accel_legacy_info, ptr @cros_ec_accel_legacy_channels, ptr @.str.1, ptr @cros_ec_legacy_sample_freq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_accel_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_accel_legacy_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_accel_legacy_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_legacy_sample_freq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_accel_legacy_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_accel_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_accel_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_accel_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_accel_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_accel_legacy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 200) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @cros_ec_sensors_core_init(ptr noundef %pdev, ptr noundef nonnull %call, i1 noundef zeroext true, ptr noundef nonnull @cros_ec_sensors_capture, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cros_ec_accel_legacy_info, ptr %info, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %cmd_readmem = getelementptr inbounds %struct.cros_ec_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %cmd_readmem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_readmem, align 8
  %cmp.not = icmp eq ptr %6, null
  %spec.select = select i1 %cmp.not, ptr @cros_ec_accel_legacy_read_cmd, ptr @cros_ec_sensors_read_lpc
  %7 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %7, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cros_ec_accel_legacy_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %num_channels, align 4
  %loc = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %loc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11 = icmp eq i32 %12, 1
  br i1 %cmp11, label %if.then12, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %sign = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 10
  %13 = ptrtoint ptr %sign to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %sign, align 4
  %arrayidx14 = getelementptr %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %arrayidx14, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6.if.end15_crit_edge
  %call16 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
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
declare dso_local i32 @cros_ec_sensors_read_lpc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_accel_legacy_read_cmd(ptr noundef %indio_dev, i32 noundef %scan_mask, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %scan_mask.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scan_mask.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %scan_mask, ptr %scan_mask.addr, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %param = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %param, align 4
  store i8 2, ptr %3, align 1
  %call4 = tail call i32 @cros_ec_motion_send_host_cmd(ptr noundef %2, i16 noundef zeroext 18) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask.addr, i32 noundef %9, i32 noundef 0) #7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %11)
  %cmp935 = icmp ult i32 %call7, %11
  br i1 %cmp935, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %resp = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 4
  %idxprom = zext i8 %5 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ %call7, %for.body.lr.ph ], [ %call15, %for.body.for.body_crit_edge ]
  %data.addr.036 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resp, align 4
  %14 = getelementptr %struct.anon.57, ptr %13, i32 0, i32 2, i32 %idxprom, i32 2
  %arrayidx10 = getelementptr [3 x i16], ptr %14, i32 0, i32 %i.037
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr %struct.cros_ec_sensors_core_state, ptr %2, i32 0, i32 10, i32 %i.037
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %18 to i16
  %mul = mul i16 %16, %conv12
  %19 = ptrtoint ptr %data.addr.036 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %mul, ptr %data.addr.036, align 2
  %incdec.ptr = getelementptr i16, ptr %data.addr.036, i32 1
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %i.037, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask.addr, i32 noundef %21, i32 noundef %add) #7
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  %cmp9 = icmp ult i32 %call15, %23
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_accel_legacy_read(ptr noundef %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %data, align 2
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_index, align 4
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #7
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 5, label %sw.bb25
    i32 12, label %sw.bb26
  ]

sw.bb:                                            ; preds = %entry
  %read_ec_sensors_data = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %read_ec_sensors_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ec_sensors_data, align 8
  %shl = shl nuw i32 1, %4
  %call1 = call i32 %7(ptr noundef %indio_dev, i32 noundef %shl, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  %conv = sext i16 %9 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.cros_ec_sensors_core_state, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %sw.bb2.if.end18_crit_edge, label %do.end, !prof !40

sw.bb2.if.end18_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 9, ptr noundef null) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %sw.bb2.if.end18_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  %14 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9586168, ptr %val2, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10, ptr %val, align 4
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @cros_ec_sensors_core_read(ptr noundef %1, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb26, %sw.bb25, %if.end18, %if.end, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call27, %sw.default ], [ 2, %sw.bb26 ], [ 1, %sw.bb25 ], [ 3, %if.end18 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ 1, %if.end ]
  call void @mutex_unlock(ptr noundef %cmd_lock) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cros_ec_accel_legacy_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %length, align 4
  %1 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cros_ec_legacy_sample_freq, ptr %vals, align 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_accel_legacy_write(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mask)
  %cmp = icmp eq i32 %mask, 5
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_sensors_core_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_motion_send_host_cmd(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_cros_ec_accel_legacy__187_247_cros_ec_accel_platform_driver_init6, !1, !"__initcall__kmod_cros_ec_accel_legacy__187_247_cros_ec_accel_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_cros_ec_accel_platform_driver_exit, !1, !"__exitcall_cros_ec_accel_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 250, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 251, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 252, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 243, i32 11}
!14 = !{ptr @cros_ec_accel_platform_driver, !15, !"cros_ec_accel_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 241, i32 31}
!16 = !{ptr @cros_ec_accel_legacy_info, !17, !"cros_ec_accel_legacy_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 162, i32 30}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 94, i32 3}
!20 = !{ptr @cros_ec_legacy_sample_freq, !21, !"cros_ec_legacy_sample_freq", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 39, i32 18}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 61, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cros_ec_accel_legacy_read_cmd._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @cros_ec_accel_legacy_read_cmd._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cros_ec_accel_legacy_channels, !30, !"cros_ec_accel_legacy_channels", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/cros_ec_accel_legacy.c", i32 199, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
