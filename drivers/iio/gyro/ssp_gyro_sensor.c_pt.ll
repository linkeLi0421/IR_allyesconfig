; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/ssp_gyro_sensor.c_pt.bc'
source_filename = "../drivers/iio/gyro/ssp_gyro_sensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.ssp_sensor_data = type { ptr, i32, ptr }

@__initcall__kmod_ssp_gyro_sensor__183_140_ssp_gyro_driver_init6 = internal global ptr @ssp_gyro_driver_init, section ".initcall6.init", align 4
@ssp_gyro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssp_gyro_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ssp_gyro_driver_exit = internal global ptr @ssp_gyro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [57 x i8] c"ssp_gyro_sensor.author=Karol Wrona <k.wrona@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [64 x i8] c"ssp_gyro_sensor.description=Samsung sensorhub gyroscopes driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [54 x i8] c"ssp_gyro_sensor.file=drivers/iio/gyro/ssp_gyro_sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [28 x i8] c"ssp_gyro_sensor.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssp-gyroscope\00", [18 x i8] zeroinitializer }, align 32
@ssp_gyro_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssp-gyroscope\00", [18 x i8] zeroinitializer }, align 32
@ssp_gyro_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ssp_gyro_read_raw, ptr null, ptr null, ptr @ssp_gyro_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ssp_gyro_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 0, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 1, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 0, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 2, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 0, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ssp_gyro_scan_mask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@ssp_gyro_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @ssp_common_buffer_postenable, ptr null, ptr @ssp_common_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@ssp_gyro_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 58, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gyro sensor enable fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssp_gyro_write_raw\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/gyro/ssp_gyro_sensor.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssp_gyro_write_raw._entry_ptr = internal global ptr @ssp_gyro_write_raw._entry, section ".printk_index", align 4
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"ssp_gyro_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 133, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 135, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"ssp_gyro_name\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 18, i32 19 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"ssp_gyro_iio_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 68, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"ssp_gyro_channels\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 75, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"ssp_gyro_scan_mask\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 73, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"ssp_gyro_buffer_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 89, i32 42 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [38 x i8] c"../drivers/iio/gyro/ssp_gyro_sensor.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 58, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_ssp_gyro_driver_exit, ptr @__initcall__kmod_ssp_gyro_sensor__183_140_ssp_gyro_driver_init6, ptr @ssp_gyro_driver_exit, ptr @ssp_gyro_write_raw._entry, ptr @ssp_gyro_write_raw._entry_ptr, ptr @ssp_gyro_driver, ptr @.str, ptr @ssp_gyro_name, ptr @ssp_gyro_iio_info, ptr @ssp_gyro_channels, ptr @ssp_gyro_scan_mask, ptr @ssp_gyro_buffer_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_scan_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_gyro_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_gyro_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ssp_gyro_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssp_gyro_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ssp_gyro_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_gyro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 12) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ssp_process_gyro_data, ptr %1, align 4
  %type = getelementptr inbounds %struct.ssp_sensor_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ssp_gyro_name, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ssp_gyro_iio_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ssp_gyro_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ssp_gyro_scan_mask, ptr %available_scan_masks, align 4
  %call3 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @ssp_gyro_buffer_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ssp_register_consumer(ptr noundef nonnull %call, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_process_gyro_data(ptr noundef %indio_dev, ptr noundef %buf, i64 noundef %timestamp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ssp_common_process_data(ptr noundef %indio_dev, ptr noundef %buf, i32 noundef 6, i64 noundef %timestamp) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssp_register_consumer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_common_process_data(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_gyro_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @ssp_get_sensor_delay(ptr noundef %5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.i = icmp eq i32 %call2, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val2, align 4
  br label %ssp_convert_to_freq.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %div.i = udiv i32 1000000000, %call2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i, ptr %val, align 4
  %rem.i = urem i32 %div.i, 1000000
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem.i, ptr %val2, align 4
  %9 = load i32, ptr %val, align 4
  %div1.i = udiv i32 %9, 1000000
  br label %ssp_convert_to_freq.exit

ssp_convert_to_freq.exit:                         ; preds = %if.end.i, %if.then.i
  %storemerge.i = phi i32 [ %div1.i, %if.end.i ], [ 0, %if.then.i ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %ssp_convert_to_freq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %ssp_convert_to_freq.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_gyro_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %conv.i = sext i32 %val to i64
  %mul.i = mul nsw i64 %conv.i, 1000000
  %conv1.i = sext i32 %val2 to i64
  %add.i = add nsw i64 %mul.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp.i = icmp eq i64 %add.i, 0
  br i1 %cmp.i, label %sw.bb.ssp_convert_to_time.exit_crit_edge, label %if.end.i

sw.bb.ssp_convert_to_time.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssp_convert_to_time.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i64 @div64_u64(i64 noundef 1000000000, i64 noundef %add.i) #4
  %conv3.i = trunc i64 %call.i to i32
  br label %ssp_convert_to_time.exit

ssp_convert_to_time.exit:                         ; preds = %if.end.i, %sw.bb.ssp_convert_to_time.exit_crit_edge
  %retval.0.i = phi i32 [ %conv3.i, %if.end.i ], [ 0, %sw.bb.ssp_convert_to_time.exit_crit_edge ]
  %call3 = tail call i32 @ssp_change_delay(ptr noundef %5, i32 noundef 1, i32 noundef %retval.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %ssp_convert_to_time.exit.cleanup_crit_edge

ssp_convert_to_time.exit.cleanup_crit_edge:       ; preds = %ssp_convert_to_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %ssp_convert_to_time.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ssp_convert_to_time.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call3, %ssp_convert_to_time.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_get_sensor_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_change_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_common_buffer_postenable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_common_buffer_postdisable(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_ssp_gyro_sensor__183_140_ssp_gyro_driver_init6, !1, !"__initcall__kmod_ssp_gyro_sensor__183_140_ssp_gyro_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_ssp_gyro_driver_exit, !1, !"__exitcall_ssp_gyro_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 142, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 135, i32 11}
!12 = !{ptr @ssp_gyro_driver, !13, !"ssp_gyro_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 133, i32 31}
!14 = !{ptr @ssp_gyro_name, !15, !"ssp_gyro_name", i1 false, i1 false}
!15 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 18, i32 19}
!16 = !{ptr @ssp_gyro_iio_info, !17, !"ssp_gyro_iio_info", i1 false, i1 false}
!17 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 68, i32 30}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 58, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ssp_gyro_write_raw._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ssp_gyro_write_raw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ssp_gyro_channels, !27, !"ssp_gyro_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 75, i32 35}
!28 = !{ptr @ssp_gyro_scan_mask, !29, !"ssp_gyro_scan_mask", i1 false, i1 false}
!29 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 73, i32 28}
!30 = !{ptr @ssp_gyro_buffer_ops, !31, !"ssp_gyro_buffer_ops", i1 false, i1 false}
!31 = !{!"../drivers/iio/gyro/ssp_gyro_sensor.c", i32 89, i32 42}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
