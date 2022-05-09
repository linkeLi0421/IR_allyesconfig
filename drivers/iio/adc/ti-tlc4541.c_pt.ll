; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-tlc4541.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-tlc4541.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tlc4541_chip_info = type { ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlc4541_state = type { ptr, ptr, [3 x %struct.spi_transfer], %struct.spi_message, [32 x i8], [8 x i16], [112 x i8] }

@__initcall__kmod_ti_tlc4541__290_262_tlc4541_driver_init6 = internal global ptr @tlc4541_driver_init, section ".initcall6.init", align 4
@tlc4541_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @tlc4541_id, ptr @tlc4541_probe, ptr @tlc4541_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tlc4541_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tlc4541_driver_exit = internal global ptr @tlc4541_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [54 x i8] c"ti_tlc4541.author=Phil Reid <preid@electromag.com.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [53 x i8] c"ti_tlc4541.description=Texas Instruments TLC4541 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [43 x i8] c"ti_tlc4541.file=drivers/iio/adc/ti-tlc4541\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"ti_tlc4541.license=GPL v2\00", section ".modinfo", align 1
@tlc4541_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"tlc3541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"tlc4541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tlc4541\00", [24 x i8] zeroinitializer }, align 32
@tlc4541_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlc3541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlc4541\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tlc4541_chip_info = internal constant { [2 x %struct.tlc4541_chip_info], [16 x i8] } { [2 x %struct.tlc4541_chip_info] [%struct.tlc4541_chip_info { ptr @tlc3541_channels, i32 2 }, %struct.tlc4541_chip_info { ptr @tlc4541_channels, i32 2 }], [16 x i8] zeroinitializer }, align 32
@tlc4541_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @tlc4541_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@tlc3541_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 14, i8 16, i8 2, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tlc4541_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"tlc4541_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 253, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"tlc4541_id\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 246, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 255, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"tlc4541_dt_ids\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 239, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"tlc4541_chip_info\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 80, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"tlc4541_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 156, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 200, i32 42 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"tlc3541_channels\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 77, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"tlc4541_channels\00", align 1
@___asan_gen_.27 = private constant [32 x i8] c"../drivers/iio/adc/ti-tlc4541.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 78, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tlc4541_driver_exit, ptr @__initcall__kmod_ti_tlc4541__290_262_tlc4541_driver_init6, ptr @tlc4541_driver_exit, ptr @tlc4541_driver, ptr @tlc4541_id, ptr @.str, ptr @tlc4541_dt_ids, ptr @tlc4541_chip_info, ptr @tlc4541_info, ptr @.str.1, ptr @tlc3541_channels, ptr @tlc4541_channels], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_chip_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc3541_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlc4541_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc4541_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tlc4541_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tlc4541_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tlc4541_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc4541_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %device_init = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %device_init) #4
  %0 = ptrtoint ptr %device_init to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %device_init, align 1
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %2, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.tlc4541_chip_info], ptr @tlc4541_chip_info, i32 0, i32 %6
  %call4 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %name5, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %channels6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels6, align 8
  %num_channels = getelementptr [2 x %struct.tlc4541_chip_info], ptr @tlc4541_chip_info, i32 0, i32 %6, i32 1
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels, align 4
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_channels7, align 4
  %info8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tlc4541_info, ptr %info8, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #4
  %16 = getelementptr inbounds i8, ptr %t.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 92)
  %18 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %device_init, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %19 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #4
  %20 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #4
  %rx_buf = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 5
  %rx_buf12 = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %rx_buf12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rx_buf, ptr %rx_buf12, align 4
  %len = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %len, align 8
  %delay = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 1, i32 9
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 3, ptr %delay, align 2
  %unit = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 1, i32 9, i32 1
  %33 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %unit, align 2
  %rx_buf24 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 2, i32 1
  %34 = ptrtoint ptr %rx_buf24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rx_buf, ptr %rx_buf24, align 4
  %len27 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 2, i32 2
  %35 = ptrtoint ptr %len27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %len27, align 8
  %scan_single_msg = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 3
  %36 = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 3, i32 1
  %37 = call ptr @memset(ptr %36, i32 0, i32 40)
  %38 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %scan_single_msg, ptr %scan_single_msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 3, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %scan_single_msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 3, i32 10
  %40 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 3, i32 10, i32 1
  %41 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %scan_single_msg, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %spi_write.exit.spi_message_add_tail.exit.i_crit_edge

spi_write.exit.spi_message_add_tail.exit.i_crit_edge: ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %scan_single_msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 0, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %scan_single_msg, ptr %prev3.i.i.i.i, align 4
  %45 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i.i, ptr %scan_single_msg, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %spi_write.exit.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i.i.1 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 1, i32 18
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.1, ptr noundef %47, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.i.1, label %if.end.i.i.i.i.1, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.1

if.end.i.i.i.i.1:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %transfer_list.i.i.1, ptr %prev.i.i.i.i, align 4
  %49 = ptrtoint ptr %transfer_list.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %scan_single_msg, ptr %transfer_list.i.i.1, align 4
  %prev3.i.i.i.i.1 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 1, i32 18, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i.i.1, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %transfer_list.i.i.1, ptr %47, align 4
  br label %spi_message_add_tail.exit.i.1

spi_message_add_tail.exit.i.1:                    ; preds = %if.end.i.i.i.i.1, %spi_message_add_tail.exit.i.spi_message_add_tail.exit.i.1_crit_edge
  %transfer_list.i.i.2 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 2, i32 18
  %52 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.2 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.2, ptr noundef %53, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.i.2, label %if.end.i.i.i.i.2, label %spi_message_add_tail.exit.i.1.spi_message_add_tail.exit.i.2_crit_edge

spi_message_add_tail.exit.i.1.spi_message_add_tail.exit.i.2_crit_edge: ; preds = %spi_message_add_tail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.2

if.end.i.i.i.i.2:                                 ; preds = %spi_message_add_tail.exit.i.1
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i.2, ptr %prev.i.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %scan_single_msg, ptr %transfer_list.i.i.2, align 4
  %prev3.i.i.i.i.2 = getelementptr %struct.tlc4541_state, ptr %2, i32 0, i32 2, i32 2, i32 18, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i.i.2, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i.2, ptr %53, align 4
  br label %spi_message_add_tail.exit.i.2

spi_message_add_tail.exit.i.2:                    ; preds = %if.end.i.i.i.i.2, %spi_message_add_tail.exit.i.1.spi_message_add_tail.exit.i.2_crit_edge
  %call31 = call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.tlc4541_state, ptr %2, i32 0, i32 1
  %58 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call31, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %spi_message_add_tail.exit.i.2
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %spi_message_add_tail.exit.i.2
  %call39 = call i32 @regulator_enable(ptr noundef %call31) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @tlc4541_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.error_disable_reg_crit_edge

if.end41.error_disable_reg_crit_edge:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_disable_reg

if.end45:                                         ; preds = %if.end41
  %call46 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %error_cleanup_buffer

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error_cleanup_buffer:                             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #4
  br label %error_disable_reg

error_disable_reg:                                ; preds = %error_cleanup_buffer, %if.end41.error_disable_reg_crit_edge
  %ret.0 = phi i32 [ %call42, %if.end41.error_disable_reg_crit_edge ], [ %call46, %error_cleanup_buffer ]
  %60 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg, align 4
  %call51 = call i32 @regulator_disable(ptr noundef %61) #4
  br label %cleanup

cleanup:                                          ; preds = %error_disable_reg, %if.end45.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %if.then34 ], [ %ret.0, %error_disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ %call39, %if.end37.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %device_init) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc4541_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #4
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %reg = getelementptr inbounds %struct.tlc4541_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc4541_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %scan_single_msg = getelementptr inbounds %struct.tlc4541_state, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %scan_single_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.tlc4541_state, ptr %3, i32 0, i32 5
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %9, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %rx_buf, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %rx_buf) #4
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %12) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlc4541_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %scan_single_msg = getelementptr inbounds %struct.tlc4541_state, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @spi_sync(ptr noundef %4, ptr noundef %scan_single_msg) #4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rx_buf = getelementptr inbounds %struct.tlc4541_state, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rx_buf, align 128
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 1
  %conv5 = zext i8 %9 to i32
  %shr = lshr i32 %conv, %conv5
  store i32 %shr, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %realbits, align 1
  %conv7 = zext i8 %11 to i32
  %sub8 = sub nsw i32 32, %conv7
  %shr9 = lshr i32 -1, %sub8
  %and10 = and i32 %shr9, %shr
  store i32 %and10, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %reg.i = getelementptr inbounds %struct.tlc4541_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %call.i = tail call i32 @regulator_get_voltage(ptr noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %div.i = sdiv i32 %call.i, 1000
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp13, label %sw.bb11.cleanup_crit_edge, label %if.end16

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %val, align 4
  %realbits18 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %realbits18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %realbits18, align 1
  %conv19 = zext i8 %16 to i32
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv19, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %sw.bb11.cleanup_crit_edge, %if.end4, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end16 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.i, %sw.bb11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ti_tlc4541__290_262_tlc4541_driver_init6, !1, !"__initcall__kmod_ti_tlc4541__290_262_tlc4541_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_tlc4541_driver_exit, !1, !"__exitcall_tlc4541_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 255, i32 13}
!12 = !{ptr @tlc4541_driver, !13, !"tlc4541_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 253, i32 26}
!14 = !{ptr @tlc4541_id, !15, !"tlc4541_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 246, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 200, i32 42}
!18 = !{ptr @tlc4541_chip_info, !19, !"tlc4541_chip_info", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 80, i32 39}
!20 = !{ptr @tlc3541_channels, !21, !"tlc3541_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 77, i32 8}
!22 = !{ptr @tlc4541_channels, !23, !"tlc4541_channels", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 78, i32 8}
!24 = !{ptr @tlc4541_info, !25, !"tlc4541_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 156, i32 30}
!26 = !{ptr @tlc4541_dt_ids, !27, !"tlc4541_dt_ids", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ti-tlc4541.c", i32 239, i32 34}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
