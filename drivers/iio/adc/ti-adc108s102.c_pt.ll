; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-adc108s102.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-adc108s102.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.adc108s102_state = type { ptr, ptr, i32, %struct.spi_transfer, %struct.spi_transfer, %struct.spi_message, %struct.spi_message, [68 x i8], [9 x i16], [110 x i8], [9 x i16], [110 x i8] }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_ti_adc108s102__290_319_adc108s102_driver_init6 = internal global ptr @adc108s102_driver_init, section ".initcall6.init", align 4
@adc108s102_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adc108s102_id, ptr @adc108s102_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc108s102_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adc108s102_driver_exit = internal global ptr @adc108s102_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [62 x i8] c"ti_adc108s102.author=Bogdan Pricop <bogdan.pricop@emutex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [77 x i8] c"ti_adc108s102.description=Texas Instruments ADC108S102 and ADC128S102 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ti_adc108s102.file=drivers/iio/adc/ti-adc108s102\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"ti_adc108s102.license=GPL v2\00", section ".modinfo", align 1
@adc108s102_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adc108s102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc108s102\00", [21 x i8] zeroinitializer }, align 32
@adc108s102_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc108s102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@adc108s102_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot enable vref regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adc108s102_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/adc/ti-adc108s102.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc108s102_probe._entry_ptr = internal global ptr @adc108s102_probe._entry, section ".printk_index", align 4
@adc108s102_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vref get voltage failed\0A\00", [39 x i8] zeroinitializer }, align 32
@adc108s102_probe._entry_ptr.9 = internal global ptr @adc108s102_probe._entry.7, section ".printk_index", align 4
@adc108s102_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [200 x i8] zeroinitializer }, align 32
@adc108s102_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @adc108s102_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adc108s102_update_scan_mode, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adc108s102_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@adc108s102_probe._entry_ptr.12 = internal global ptr @adc108s102_probe._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"adc108s102_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 310, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"adc108s102_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 304, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 312, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"adc108s102_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 290, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 239, i32 43 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 245, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 255, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"adc108s102_channels\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 101, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"adc108s102_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 214, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [35 x i8] c"../drivers/iio/adc/ti-adc108s102.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 286, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_adc108s102_driver_exit, ptr @__initcall__kmod_ti_adc108s102__290_319_adc108s102_driver_init6, ptr @adc108s102_driver_exit, ptr @adc108s102_probe._entry, ptr @adc108s102_probe._entry.10, ptr @adc108s102_probe._entry.7, ptr @adc108s102_probe._entry_ptr, ptr @adc108s102_probe._entry_ptr.12, ptr @adc108s102_probe._entry_ptr.9, ptr @adc108s102_driver, ptr @adc108s102_id, ptr @.str, ptr @adc108s102_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @adc108s102_channels, ptr @adc108s102_info, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc108s102_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc108s102_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adc108s102_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc108s102_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adc108s102_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc108s102_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #4
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
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call i32 @regulator_enable(ptr noundef %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adc108s102_reg_disable, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end21, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %5) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %call23 = tail call i32 @regulator_get_voltage(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %div98 = udiv i32 %call23, 1000
  %va_millivolt31 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %va_millivolt31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div98, ptr %va_millivolt31, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi, ptr %1, align 128
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %modalias, ptr %name, align 8
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adc108s102_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @adc108s102_info, ptr %info, align 8
  %tx_buf = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 10
  %scan_single_xfer = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %scan_single_xfer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_buf, ptr %scan_single_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 8
  %rx_buf38 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %rx_buf38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_buf, ptr %rx_buf38, align 4
  %len = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %len, align 4
  %scan_single_msg = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6
  %18 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %scan_single_msg, ptr %scan_single_msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %scan_single_msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6, i32 10
  %22 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 4, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %scan_single_msg, ptr noundef %scan_single_msg) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end30.spi_message_init_with_transfers.exit_crit_edge

if.end30.spi_message_init_with_transfers.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_init_with_transfers.exit

if.end.i.i.i.i:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %scan_single_msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 4, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %scan_single_msg, ptr %prev3.i.i.i.i, align 4
  %27 = ptrtoint ptr %scan_single_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i, ptr %scan_single_msg, align 4
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %if.end.i.i.i.i, %if.end30.spi_message_init_with_transfers.exit_crit_edge
  %call42 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @adc108s102_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %spi_message_init_with_transfers.exit.cleanup_crit_edge

spi_message_init_with_transfers.exit.cleanup_crit_edge: ; preds = %spi_message_init_with_transfers.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %spi_message_init_with_transfers.exit
  %call47 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %do.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %if.end45.cleanup_crit_edge, %spi_message_init_with_transfers.exit.cleanup_crit_edge, %do.end28, %devm_add_action_or_reset.exit, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call12, %do.end ], [ %call23, %do.end28 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call42, %spi_message_init_with_transfers.exit.cleanup_crit_edge ], [ %call47, %do.end52 ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adc108s102_reg_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc108s102_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
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
  %ring_msg = getelementptr inbounds %struct.adc108s102_state, ptr %3, i32 0, i32 5
  %call2 = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %ring_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_notify_crit_edge, label %if.end

entry.out_notify_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_notify

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.adc108s102_state, ptr %3, i32 0, i32 8, i32 1
  %len = getelementptr inbounds %struct.adc108s102_state, ptr %3, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -2
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %call4 = tail call i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %sub, i64 noundef %call3) #4
  br label %out_notify

out_notify:                                       ; preds = %if.end, %entry.out_notify_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %9) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc108s102_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
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
    i32 2, label %sw.bb6
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
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %ch.tr.i = trunc i32 %4 to i16
  %conv2.i = shl i16 %ch.tr.i, 11
  %tx_buf.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2.i, ptr %tx_buf.i, align 128
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %scan_single_msg.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @spi_sync(ptr noundef %7, ptr noundef %scan_single_msg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %adc108s102_scan_direct.exit.thread, label %adc108s102_scan_direct.exit

adc108s102_scan_direct.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i = getelementptr %struct.adc108s102_state, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %9 to i32
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %if.end4

adc108s102_scan_direct.exit:                      ; preds = %if.end
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %adc108s102_scan_direct.exit.cleanup_crit_edge, label %adc108s102_scan_direct.exit.if.end4_crit_edge

adc108s102_scan_direct.exit.if.end4_crit_edge:    ; preds = %adc108s102_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

adc108s102_scan_direct.exit.cleanup_crit_edge:    ; preds = %adc108s102_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %adc108s102_scan_direct.exit.if.end4_crit_edge, %adc108s102_scan_direct.exit.thread
  %retval.0.i25 = phi i32 [ %conv4.i, %adc108s102_scan_direct.exit.thread ], [ %call.i, %adc108s102_scan_direct.exit.if.end4_crit_edge ]
  %and = and i32 %retval.0.i25, 4095
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not = icmp eq i32 %12, 0
  br i1 %cmp7.not, label %if.end10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %va_millivolt = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %va_millivolt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %va_millivolt, align 8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %realbits, align 1
  %conv11 = zext i8 %17 to i32
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv11, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.bb6.cleanup_crit_edge, %if.end4, %adc108s102_scan_direct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end10 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call.i, %adc108s102_scan_direct.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc108s102_update_scan_mode(ptr nocapture noundef readonly %indio_dev, ptr noundef %active_scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 8, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp29 = icmp ult i32 %call1, 8
  br i1 %cmp29, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cmds.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bit.030 = phi i32 [ %call4, %for.body.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %bit.0.tr = trunc i32 %bit.030 to i16
  %conv3 = shl nuw nsw i16 %bit.0.tr, 11
  %inc = add i32 %cmds.031, 1
  %arrayidx = getelementptr %struct.adc108s102_state, ptr %1, i32 0, i32 10, i32 %cmds.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv3, ptr %arrayidx, align 2
  %add = add nuw nsw i32 %bit.030, 1
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %active_scan_mask, i32 noundef 8, i32 noundef %add) #4
  %cmp = icmp ult i32 %call4, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cmds.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %tx_buf5 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 10
  %arrayidx7 = getelementptr %struct.adc108s102_state, ptr %1, i32 0, i32 10, i32 %cmds.0.lcssa
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %arrayidx7, align 2
  %ring_xfer = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ring_xfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_buf5, ptr %ring_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 8
  %rx_buf13 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %rx_buf13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buf, ptr %rx_buf13, align 4
  %inc6 = shl i32 %cmds.0.lcssa, 1
  %mul = add i32 %inc6, 2
  %len = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %len, align 4
  %ring_msg = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 5
  %7 = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 5, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %ring_msg, ptr %ring_msg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ring_msg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 5, i32 10
  %11 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 5, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 3, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %ring_msg, ptr noundef %ring_msg) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.spi_message_init_with_transfers.exit_crit_edge

for.end.spi_message_init_with_transfers.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_init_with_transfers.exit

if.end.i.i.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ring_msg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.adc108s102_state, ptr %1, i32 0, i32 3, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ring_msg, ptr %prev3.i.i.i.i, align 4
  %16 = ptrtoint ptr %ring_msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i, ptr %ring_msg, align 4
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %if.end.i.i.i.i, %for.end.spi_message_init_with_transfers.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_ti_adc108s102__290_319_adc108s102_driver_init6, !1, !"__initcall__kmod_ti_adc108s102__290_319_adc108s102_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 319, i32 1}
!2 = !{ptr @__exitcall_adc108s102_driver_exit, !1, !"__exitcall_adc108s102_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 321, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 322, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 323, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 312, i32 13}
!12 = !{ptr @adc108s102_driver, !13, !"adc108s102_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 310, i32 26}
!14 = !{ptr @adc108s102_id, !15, !"adc108s102_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 304, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 239, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 245, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adc108s102_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @adc108s102_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 255, i32 4}
!28 = !{ptr @adc108s102_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @adc108s102_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 286, i32 3}
!32 = !{ptr @adc108s102_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adc108s102_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @adc108s102_channels, !35, !"adc108s102_channels", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 101, i32 35}
!36 = !{ptr @adc108s102_info, !37, !"adc108s102_info", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 214, i32 30}
!38 = !{ptr @adc108s102_of_match, !39, !"adc108s102_of_match", i1 false, i1 false}
!39 = !{!"../drivers/iio/adc/ti-adc108s102.c", i32 290, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
