; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7606_spi.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7606_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ad7606_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad7606_state = type { ptr, ptr, ptr, ptr, [16 x i32], i32, ptr, i8, ptr, i32, ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, [92 x i8], [20 x i16], [2 x i16], [84 x i8] }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@__initcall__kmod_ad7606_spi__230_360_ad7606_driver_init6 = internal global ptr @ad7606_driver_init, section ".initcall6.init", align 4
@ad7606_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad7606_id_table, ptr @ad7606_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ad7606_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad7606_driver_exit = internal global ptr @ad7606_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [67 x i8] c"ad7606_spi.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [49 x i8] c"ad7606_spi.description=Analog Devices AD7606 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [43 x i8] c"ad7606_spi.file=drivers/iio/adc/ad7606_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"ad7606_spi.license=GPL v2\00", section ".modinfo", align 1
@ad7606_id_table = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad7605-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad7606-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad7606-6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad7606-8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad7606b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"ad7616\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad7606\00", [25 x i8] zeroinitializer }, align 32
@ad7606_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7605-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7606-4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7606-6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7606-8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7606b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ad7616\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ad7606_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@ad7616_spi_bops = internal constant { %struct.ad7606_bus_ops, [40 x i8] } { %struct.ad7606_bus_ops { ptr @ad7606_spi_read_block, ptr @ad7616_sw_mode_config, ptr @ad7606_spi_reg_read, ptr @ad7606_spi_reg_write, ptr @ad7606_spi_write_mask, ptr @ad7616_spi_rd_wr_cmd }, [40 x i8] zeroinitializer }, align 32
@ad7606B_spi_bops = internal constant { %struct.ad7606_bus_ops, [40 x i8] } { %struct.ad7606_bus_ops { ptr @ad7606_spi_read_block, ptr @ad7606B_sw_mode_config, ptr @ad7606_spi_reg_read, ptr @ad7606_spi_reg_write, ptr @ad7606_spi_write_mask, ptr @ad7606B_spi_rd_wr_cmd }, [40 x i8] zeroinitializer }, align 32
@ad7606_spi_bops = internal constant { %struct.ad7606_bus_ops, [40 x i8] } { %struct.ad7606_bus_ops { ptr @ad7606_spi_read_block, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ad7606_spi_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 113, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad7606_spi_read_block\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/ad7606_spi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7606_spi_read_block._entry_ptr = internal global ptr @ad7606_spi_read_block._entry, section ".printk_index", align 4
@ad7616_sw_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [360 x i8] zeroinitializer }, align 32
@__const.ad7606B_sw_mode_config.os = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 0], align 4
@ad7606B_oversampling_avail = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256], [60 x i8] zeroinitializer }, align 32
@ad7606b_sw_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.71 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"ad7606_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 351, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"ad7606_id_table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 329, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 353, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"ad7606_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 340, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"ad7616_spi_bops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 289, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ad7606B_spi_bops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 298, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"ad7606_spi_bops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 285, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 113, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ad7616_sw_channels\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 48, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"ad7606B_oversampling_avail\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 80, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"ad7606b_sw_channels\00", align 1
@___asan_gen_.52 = private constant [32 x i8] c"../drivers/iio/adc/ad7606_spi.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 68, i32 35 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ad7606_driver_exit, ptr @__initcall__kmod_ad7606_spi__230_360_ad7606_driver_init6, ptr @ad7606_driver_exit, ptr @ad7606_spi_read_block._entry, ptr @ad7606_spi_read_block._entry_ptr, ptr @ad7606_driver, ptr @ad7606_id_table, ptr @.str, ptr @ad7606_of_match, ptr @ad7616_spi_bops, ptr @ad7606B_spi_bops, ptr @ad7606_spi_bops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ad7616_sw_channels, ptr @ad7606B_oversampling_avail, ptr @ad7606b_sw_channels], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_id_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7616_spi_bops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606B_spi_bops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_spi_bops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_spi_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7616_sw_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606B_oversampling_avail to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606b_sw_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad7606_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad7606_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad7606_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 4
  %switch.select = select i1 %switch.selectcmp, ptr @ad7606B_spi_bops, ptr @ad7606_spi_bops
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %switch.selectcmp8 = icmp eq i32 %1, 5
  %switch.select9 = select i1 %switch.selectcmp8, ptr @ad7616_spi_bops, ptr %switch.select
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call3 = tail call i32 @ad7606_probe(ptr noundef %spi, i32 noundef %3, ptr noundef null, ptr noundef %call, i32 noundef %1, ptr noundef nonnull %switch.select9) #6
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ad7606_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_spi_read_block(ptr noundef %dev, i32 noundef %count, ptr noundef %buf) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %count, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %0 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %1 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_read.exit_crit_edge

entry.spi_read.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %entry.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %spi_read.exit.cleanup_crit_edge

spi_read.exit.cleanup_crit_edge:                  ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %spi_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ 0, %spi_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7616_sw_mode_config(ptr nocapture noundef %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ad7616_sw_channels, ptr %channels, align 8
  %write_scale = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %write_scale to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ad7616_write_scale_sw, ptr %write_scale, align 4
  %write_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %write_os to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ad7616_write_os_sw, ptr %write_os, align 16
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bops, align 4
  %write_mask = getelementptr inbounds %struct.ad7606_bus_ops, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_mask, align 4
  %call1 = tail call i32 %8(ptr noundef %1, i32 noundef 2, i32 noundef 96, i32 noundef 96) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_spi_reg_read(ptr noundef %st, i32 noundef %addr) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #6
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %d16 = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 25
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %d16, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %arrayidx3 = getelementptr %struct.ad7606_state, ptr %st, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx3, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len4, align 4
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 3
  %8 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bops, align 4
  %rd_wr_cmd = getelementptr inbounds %struct.ad7606_bus_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %rd_wr_cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_wr_cmd, align 4
  %call9 = tail call zeroext i16 %11(i32 noundef %addr, i8 noundef zeroext 0) #6
  %shl = shl i16 %call9, 8
  %12 = ptrtoint ptr %d16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %shl, ptr %d16, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %24, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i.i.1, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.1, ptr %24, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx3, align 2
  %conv17 = zext i16 %30 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv17, %if.end ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_spi_reg_write(ptr noundef %st, i32 noundef %addr, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %st, align 128
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 3
  %2 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bops, align 4
  %rd_wr_cmd = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rd_wr_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_wr_cmd, align 4
  %call1 = tail call zeroext i16 %5(i32 noundef %addr, i8 noundef zeroext 1) #6
  %conv = zext i16 %call1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %and = and i32 %val, 511
  %or = or i32 %shl, %and
  %conv2 = trunc i32 %or to i16
  %d16 = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 25
  %6 = ptrtoint ptr %d16 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %d16, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %d16, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_spi_write_mask(ptr noundef %st, i32 noundef %addr, i32 noundef %mask, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bops, align 4
  %reg_read = getelementptr inbounds %struct.ad7606_bus_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_read, align 4
  %call = tail call i32 %3(ptr noundef %st, i32 noundef %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %mask, -1
  %and = and i32 %call, %neg
  %or = or i32 %and, %val
  %4 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bops, align 4
  %reg_write = getelementptr inbounds %struct.ad7606_bus_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_write, align 4
  %call2 = tail call i32 %7(ptr noundef %st, i32 noundef %addr, i32 noundef %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ad7616_spi_rd_wr_cmd(i32 noundef %addr, i8 noundef zeroext %isWriteOp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %addr, 1
  %shl = and i32 %and, 254
  %0 = shl i8 %isWriteOp, 7
  %shl2 = zext i8 %0 to i32
  %or = or i32 %shl, %shl2
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7616_write_scale_sw(ptr nocapture noundef readonly %indio_dev, i32 noundef %ch, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %shr = ashr i32 %ch, 1
  %shr1 = lshr i32 %shr, 2
  %and = and i32 %ch, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %ch_addr.0.v = select i1 %cmp, i32 4, i32 6
  %ch_addr.0 = add nuw nsw i32 %ch_addr.0.v, %shr1
  %add3 = add i32 %val, 1
  %and4 = and i32 %add3, 3
  %mul = and i32 %ch, 6
  %shl = shl nuw nsw i32 %and4, %mul
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bops, align 4
  %write_mask = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mask, align 4
  %shl8 = shl nuw nsw i32 3, %mul
  %call9 = tail call i32 %5(ptr noundef %1, i32 noundef %ch_addr.0, i32 noundef %shl8, i32 noundef %shl) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7616_write_os_sw(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bops, align 4
  %write_mask = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %write_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_mask, align 4
  %shl = shl i32 %val, 2
  %call1 = tail call i32 %5(ptr noundef %1, i32 noundef 2, i32 noundef 28, i32 noundef %shl) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606B_sw_mode_config(ptr nocapture noundef %indio_dev) #2 align 64 {
entry:
  %os = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %os) #6
  %2 = call ptr @memcpy(ptr %os, ptr @__const.ad7606B_sw_mode_config.os, i32 12)
  %gpio_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %gpio_os to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_os, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call4 = call i32 @gpiod_set_array_value(i32 noundef 3, ptr noundef %desc, ptr noundef %6, ptr noundef nonnull %os) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %oversampling_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %oversampling_avail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ad7606B_oversampling_avail, ptr %oversampling_avail, align 4
  %num_os_ratios = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %num_os_ratios to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %num_os_ratios, align 8
  %write_scale = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %write_scale to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ad7606_write_scale_sw, ptr %write_scale, align 4
  %write_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %write_os to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ad7606_write_os_sw, ptr %write_os, align 16
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bops, align 4
  %reg_write = getelementptr inbounds %struct.ad7606_bus_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_write, align 4
  %call5 = call i32 %14(ptr noundef %1, i32 noundef 2, i32 noundef 0) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ad7606b_sw_channels, ptr %channels, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %os) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ad7606B_spi_rd_wr_cmd(i32 noundef %addr, i8 noundef zeroext %is_write_op) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 63
  %0 = shl i8 %is_write_op, 6
  %1 = and i8 %0, 64
  %2 = xor i8 %1, 64
  %shl = zext i8 %2 to i32
  %or = or i32 %and, %shl
  %conv2 = trunc i32 %or to i16
  ret i16 %conv2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_write_scale_sw(ptr nocapture noundef readonly %indio_dev, i32 noundef %ch, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %shr = ashr i32 %ch, 1
  %add = add nsw i32 %shr, 3
  %bops.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bops.i, align 4
  %reg_read.i = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg_read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_read.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ad7606_spi_write_mask.exit_crit_edge, label %if.end.i

entry.ad7606_spi_write_mask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7606_spi_write_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and1 = and i32 %val, 15
  %and = shl i32 %ch, 2
  %mul = and i32 %and, 4
  %shl4 = shl nuw nsw i32 %and1, %mul
  %shl = shl nuw nsw i32 15, %mul
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %call.i, %neg.i
  %or.i = or i32 %and.i, %shl4
  %6 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops.i, align 4
  %reg_write.i = getelementptr inbounds %struct.ad7606_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %reg_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_write.i, align 4
  %call2.i = tail call i32 %9(ptr noundef %1, i32 noundef %add, i32 noundef %or.i) #6
  br label %ad7606_spi_write_mask.exit

ad7606_spi_write_mask.exit:                       ; preds = %if.end.i, %entry.ad7606_spi_write_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.ad7606_spi_write_mask.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_write_os_sw(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %bops.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bops.i, align 4
  %rd_wr_cmd.i = getelementptr inbounds %struct.ad7606_bus_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %rd_wr_cmd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd_wr_cmd.i, align 4
  %call1.i = tail call zeroext i16 %7(i32 noundef 8, i8 noundef zeroext 1) #6
  %conv.i = zext i16 %call1.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %and.i = and i32 %val, 511
  %or.i = or i32 %shl.i, %and.i
  %conv2.i = trunc i32 %or.i to i16
  %d16.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %d16.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv2.i, ptr %d16.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %d16.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.ad7606_spi_reg_write.exit_crit_edge

entry.ad7606_spi_reg_write.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad7606_spi_reg_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad7606_spi_reg_write.exit

ad7606_spi_reg_write.exit:                        ; preds = %if.end.i.i.i.i.i.i.i, %entry.ad7606_spi_reg_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_ad7606_spi__230_360_ad7606_driver_init6, !1, !"__initcall__kmod_ad7606_spi__230_360_ad7606_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 360, i32 1}
!2 = !{ptr @__exitcall_ad7606_driver_exit, !1, !"__exitcall_ad7606_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 362, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 363, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 364, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 353, i32 11}
!12 = !{ptr @ad7606_driver, !13, !"ad7606_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 351, i32 26}
!14 = !{ptr @ad7606_id_table, !15, !"ad7606_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 329, i32 35}
!16 = !{ptr @ad7616_spi_bops, !17, !"ad7616_spi_bops", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 289, i32 36}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 113, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ad7606_spi_read_block._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ad7606_spi_read_block._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ad7616_sw_channels, !27, !"ad7616_sw_channels", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 48, i32 35}
!28 = !{ptr @ad7606B_spi_bops, !29, !"ad7606B_spi_bops", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 298, i32 36}
!30 = !{ptr @ad7606B_oversampling_avail, !31, !"ad7606B_oversampling_avail", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 80, i32 27}
!32 = !{ptr @ad7606b_sw_channels, !33, !"ad7606b_sw_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 68, i32 35}
!34 = !{ptr @ad7606_spi_bops, !35, !"ad7606_spi_bops", i1 false, i1 false}
!35 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 285, i32 36}
!36 = !{ptr @ad7606_of_match, !37, !"ad7606_of_match", i1 false, i1 false}
!37 = !{!"../drivers/iio/adc/ad7606_spi.c", i32 340, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
