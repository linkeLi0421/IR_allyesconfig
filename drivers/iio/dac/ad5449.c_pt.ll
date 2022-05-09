; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5449.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5449.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.ad5449_chip_info = type { ptr, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad5449 = type { ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, i8, [2 x i16], [126 x i8], [2 x i16], [124 x i8] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.ad5449_platform_data = type { i32, i8 }

@__initcall__kmod_ad5449__290_365_ad5449_spi_driver_init6 = internal global ptr @ad5449_spi_driver_init, section ".initcall6.init", align 4
@ad5449_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5449_spi_ids, ptr @ad5449_spi_probe, ptr @ad5449_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5449_spi_driver_exit = internal global ptr @ad5449_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"ad5449.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [58 x i8] c"ad5449.description=Analog Devices AD5449 and similar DACs\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5449.file=drivers/iio/dac/ad5449\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5449.license=GPL v2\00", section ".modinfo", align 1
@ad5449_spi_ids = internal constant { [8 x %struct.spi_device_id], [64 x i8] } { [8 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5415\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"ad5426\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5429\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5432\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5439\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad5443\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad5449\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5449\00", [25 x i8] zeroinitializer }, align 32
@ad5449_chip_info = internal constant { [6 x %struct.ad5449_chip_info], [56 x i8] } { [6 x %struct.ad5449_chip_info] [%struct.ad5449_chip_info { ptr @ad5429_channels, i32 1, i8 0 }, %struct.ad5449_chip_info { ptr @ad5429_channels, i32 2, i8 1 }, %struct.ad5449_chip_info { ptr @ad5439_channels, i32 1, i8 0 }, %struct.ad5449_chip_info { ptr @ad5439_channels, i32 2, i8 1 }, %struct.ad5449_chip_info { ptr @ad5449_channels, i32 1, i8 0 }, %struct.ad5449_chip_info { ptr @ad5449_channels, i32 2, i8 1 }], [56 x i8] zeroinitializer }, align 32
@ad5449_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5449_read_raw, ptr null, ptr null, ptr @ad5449_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5449_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad5429_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 8, i8 16, i8 4, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5439_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 10, i8 16, i8 2, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@ad5449_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREFA\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VREFB\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"ad5449_spi_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 357, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"ad5449_spi_ids\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 345, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 359, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"ad5449_chip_info\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 225, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"ad5449_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 194, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 306, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"ad5429_channels\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 221, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ad5439_channels\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 222, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ad5449_channels\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 223, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 261, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 264, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [28 x i8] c"../drivers/iio/dac/ad5449.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 266, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5449_spi_driver_exit, ptr @__initcall__kmod_ad5449__290_365_ad5449_spi_driver_init6, ptr @ad5449_spi_driver_exit, ptr @ad5449_spi_driver, ptr @ad5449_spi_ids, ptr @.str, ptr @ad5449_chip_info, ptr @ad5449_info, ptr @ad5449_spi_probe.__key, ptr @.str.1, ptr @ad5429_channels, ptr @ad5439_channels, ptr @ad5449_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_spi_ids to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_chip_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5429_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5439_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5449_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5449_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5449_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5449_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5449_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5449_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #4
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [6 x %struct.ad5449_chip_info], ptr @ad5449_chip_info, i32 0, i32 %6
  %chip_info = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %chip_info, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %3, align 128
  %num_channels105 = getelementptr [6 x %struct.ad5449_chip_info], ptr @ad5449_chip_info, i32 0, i32 %6, i32 1
  %9 = ptrtoint ptr %num_channels105 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels105, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %11 = phi i32 [ %16, %for.body.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0107)
  %cmp1.i = icmp eq i32 %i.0107, 0
  %.str.3..str.4.i = select i1 %cmp1.i, ptr @.str.3, ptr @.str.4
  %retval.0.i = select i1 %cmp.i, ptr @.str.2, ptr %.str.3..str.4.i
  %arrayidx8 = getelementptr %struct.ad5449, ptr %3, i32 0, i32 2, i32 %i.0107
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %arrayidx8, align 4
  %inc = add nuw i32 %i.0107, 1
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad5449_chip_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_channels, align 4
  %cmp6 = icmp ult i32 %inc, %16
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %vref_reg12 = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 2
  %call13 = tail call i32 @devm_regulator_bulk_get(ptr noundef %spi, i32 noundef %16, ptr noundef %vref_reg12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %17 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip_info, align 4
  %num_channels17 = getelementptr inbounds %struct.ad5449_chip_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %num_channels17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_channels17, align 4
  %call20 = tail call i32 @regulator_bulk_enable(i32 noundef %20, ptr noundef %vref_reg12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %name25 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %21 = ptrtoint ptr %name25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %name25, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %22 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ad5449_info, ptr %info, align 8
  %23 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call2, align 8
  %24 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip_info, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %channels27 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %28 = ptrtoint ptr %channels27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %channels27, align 8
  %29 = load ptr, ptr %chip_info, align 4
  %num_channels29 = getelementptr inbounds %struct.ad5449_chip_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_channels29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_channels29, align 4
  %num_channels30 = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %32 = ptrtoint ptr %num_channels30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_channels30, align 4
  %lock = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ad5449_spi_probe.__key) #4
  %33 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip_info, align 4
  %has_ctrl = getelementptr inbounds %struct.ad5449_chip_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %has_ctrl to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_ctrl, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool32.not = icmp eq i8 %36, 0
  br i1 %tobool32.not, label %if.end23.if.end45_crit_edge, label %if.then33

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then33:                                        ; preds = %if.end23
  %tobool34.not = icmp eq ptr %1, null
  br i1 %tobool34.not, label %if.then33.if.end43_crit_edge, label %if.then35

if.then33.if.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %hardware_clear_to_midscale = getelementptr inbounds %struct.ad5449_platform_data, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %hardware_clear_to_midscale to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hardware_clear_to_midscale, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool36.not = icmp eq i8 %38, 0
  %spec.select = select i1 %tobool36.not, i32 0, i32 256
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %shl = shl i32 %40, 10
  %or39 = or i32 %spec.select, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp41 = icmp ne i32 %40, 3
  %frombool = zext i1 %cmp41 to i8
  %41 = trunc i32 %or39 to i16
  %phi.cast = or i16 %41, -12288
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.then33.if.end43_crit_edge
  %frombool.sink = phi i8 [ %frombool, %if.then35 ], [ 1, %if.then33.if.end43_crit_edge ]
  %ctrl.1 = phi i16 [ %phi.cast, %if.then35 ], [ -12288, %if.then33.if.end43_crit_edge ]
  %42 = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool.sink, ptr %42, align 4
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.ad5449, ptr %45, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %data.i = getelementptr inbounds %struct.ad5449, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %ctrl.1, ptr %data.i, align 128
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %45, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %49 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 92)
  %51 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %53 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %54 = call ptr @memset(ptr %53, i32 0, i32 40)
  %55 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end43.ad5449_write.exit_crit_edge

if.end43.ad5449_write.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5449_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5449_write.exit

ad5449_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end43.ad5449_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %48, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %if.end45

if.end45:                                         ; preds = %ad5449_write.exit, %if.end23.if.end45_crit_edge
  %call46 = call i32 @__iio_device_register(ptr noundef nonnull %call2, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %error_disable_reg

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error_disable_reg:                                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip_info, align 4
  %num_channels51 = getelementptr inbounds %struct.ad5449_chip_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %num_channels51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_channels51, align 4
  %call54 = call i32 @regulator_bulk_disable(i32 noundef %66, ptr noundef %vref_reg12) #4
  br label %cleanup

cleanup:                                          ; preds = %error_disable_reg, %if.end45.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %error_disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %for.end.cleanup_crit_edge ], [ %call20, %if.end15.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5449_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %chip_info = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad5449_chip_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels, align 4
  %vref_reg = getelementptr inbounds %struct.ad5449, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %vref_reg) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5449_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %has_sdo = getelementptr inbounds %struct.ad5449, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %has_sdo to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_sdo, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %address4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #4
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 188)
  %data.i = getelementptr inbounds %struct.ad5449, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data.i, ptr %t.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len.i, align 4
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 7
  %11 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %cs_change.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1
  %arrayidx3.i = getelementptr %struct.ad5449, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx3.i, ptr %arrayinit.element.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 1
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx3.i, ptr %rx_buf.i, align 4
  %len6.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len6.i, align 4
  %lock.i = getelementptr inbounds %struct.ad5449, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %15 = trunc i32 %6 to i16
  %addr.tr.i = mul i16 %15, 12288
  %conv.i = add i16 %addr.tr.i, 8192
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %data.i, align 128
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx3.i, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
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
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then.spi_message_add_tail.exit.i.i.i_crit_edge

if.then.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then
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
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.then.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %31, ptr noundef nonnull %msg.i.i) #4
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge

spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i.i.1.i

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i.i.i.1.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %31, align 4
  br label %spi_message_add_tail.exit.i.i.1.i

spi_message_add_tail.exit.i.i.1.i:                ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.spi_message_add_tail.exit.i.i.1.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5449_read.exit.thread, label %ad5449_read.exit

ad5449_read.exit.thread:                          ; preds = %spi_message_add_tail.exit.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #4
  br label %cleanup

ad5449_read.exit:                                 ; preds = %spi_message_add_tail.exit.i.i.1.i
  %36 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx3.i, align 2
  %conv19.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv19.i, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.end, label %ad5449_read.exit.cleanup_crit_edge

ad5449_read.exit.cleanup_crit_edge:               ; preds = %ad5449_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ad5449_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %and = and i32 %40, 4095
  br label %if.end5

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.ad5449, ptr %1, i32 0, i32 5, i32 %6
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %42 to i32
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %storemerge = phi i32 [ %conv, %if.else ], [ %and, %if.end ]
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %44 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel, align 4
  %consumer = getelementptr %struct.ad5449, ptr %1, i32 0, i32 2, i32 %45, i32 1
  %46 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %consumer, align 4
  %call8 = tail call i32 @regulator_get_voltage(ptr noundef %47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %sw.bb6.cleanup_crit_edge, label %if.end11

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %div29 = udiv i32 %call8, 1000
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div29, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %realbits, align 1
  %conv12 = zext i8 %50 to i32
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sw.bb6.cleanup_crit_edge, %if.end5, %ad5449_read.exit.cleanup_crit_edge, %ad5449_read.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end11 ], [ 1, %if.end5 ], [ %call.i.i, %ad5449_read.exit.cleanup_crit_edge ], [ %call8, %sw.bb6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %ad5449_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5449_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %info) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info)
  %cond = icmp ne i32 %info, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp, %cond
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp1.not = icmp sgt i32 %shl, %val
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 1
  %conv4 = zext i8 %7 to i32
  %shl5 = shl i32 %val, %conv4
  %lock.i = getelementptr inbounds %struct.ad5449, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %add = mul i32 %5, 12288
  %shl.i = add i32 %add, 4096
  %or.i = or i32 %shl5, %shl.i
  %conv.i = trunc i32 %or.i to i16
  %data.i = getelementptr inbounds %struct.ad5449, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %data.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #4
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #4
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.ad5449_write.exit_crit_edge

if.end.ad5449_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %ad5449_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5449_write.exit

ad5449_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end.ad5449_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #4
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp7 = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp7, label %if.then9, label %ad5449_write.exit.cleanup_crit_edge

ad5449_write.exit.cleanup_crit_edge:              ; preds = %ad5449_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %ad5449_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv10 = trunc i32 %val to i16
  %25 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address, align 4
  %arrayidx = getelementptr %struct.ad5449, ptr %1, i32 0, i32 5, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv10, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %ad5449_write.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call.i.i.i, %ad5449_write.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_ad5449__290_365_ad5449_spi_driver_init6, !1, !"__initcall__kmod_ad5449__290_365_ad5449_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5449.c", i32 365, i32 1}
!2 = !{ptr @__exitcall_ad5449_spi_driver_exit, !1, !"__exitcall_ad5449_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5449.c", i32 367, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5449.c", i32 368, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5449.c", i32 369, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5449.c", i32 359, i32 11}
!12 = !{ptr @ad5449_spi_driver, !13, !"ad5449_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5449.c", i32 357, i32 26}
!14 = !{ptr @ad5449_spi_ids, !15, !"ad5449_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5449.c", i32 345, i32 35}
!16 = !{ptr @ad5449_spi_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5449.c", i32 306, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ad5449_chip_info, !20, !"ad5449_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/ad5449.c", i32 225, i32 38}
!21 = !{ptr @ad5429_channels, !22, !"ad5429_channels", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ad5449.c", i32 221, i32 8}
!23 = !{ptr @ad5439_channels, !24, !"ad5439_channels", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/ad5449.c", i32 222, i32 8}
!25 = !{ptr @ad5449_channels, !26, !"ad5449_channels", i1 false, i1 false}
!26 = !{!"../drivers/iio/dac/ad5449.c", i32 223, i32 8}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/dac/ad5449.c", i32 261, i32 10}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ad5449.c", i32 264, i32 10}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ad5449.c", i32 266, i32 10}
!33 = !{ptr @ad5449_info, !34, !"ad5449_info", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ad5449.c", i32 194, i32 30}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
