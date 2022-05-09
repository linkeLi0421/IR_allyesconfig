; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/mcp320x.c_pt.bc'
source_filename = "../drivers/iio/adc/mcp320x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcp320x_chip_info = type { ptr, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.mcp320x = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], %struct.spi_message, %struct.spi_transfer, ptr, %struct.mutex, ptr, [8 x i8], i8, [4 x i8], [123 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_mcp320x__290_528_mcp320x_driver_init6 = internal global ptr @mcp320x_driver_init, section ".initcall6.init", align 4
@mcp320x_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp320x_id, ptr @mcp320x_probe, ptr @mcp320x_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp320x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcp320x_driver_exit = internal global ptr @mcp320x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [53 x i8] c"mcp320x.author=Oskar Andero <oskar.andero@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [74 x i8] c"mcp320x.description=Microchip Technology MCP3x01/02/04/08 and MCP3550/1/3\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"mcp320x.file=drivers/iio/adc/mcp320x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"mcp320x.license=GPL v2\00", section ".modinfo", align 1
@mcp320x_id = internal constant { [14 x %struct.spi_device_id], [104 x i8] } { [14 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mcp3002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"mcp3004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"mcp3008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"mcp3201\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"mcp3202\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"mcp3204\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"mcp3208\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id { [32 x i8] c"mcp3301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"mcp3550-50\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"mcp3550-60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.spi_device_id { [32 x i8] c"mcp3551\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.spi_device_id { [32 x i8] c"mcp3553\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.spi_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp320x\00", [24 x i8] zeroinitializer }, align 32
@mcp320x_dt_ids = internal constant { [23 x %struct.of_device_id], [1124 x i8] } { [23 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3201\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3202\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3204\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3208\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3002\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3201\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3202\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3204\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3208\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3550-50\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3550-60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3551\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp3553\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [1124 x i8] zeroinitializer }, align 32
@mcp320x_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mcp320x_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mcp320x_chip_infos = internal constant { [13 x %struct.mcp320x_chip_info], [48 x i8] } { [13 x %struct.mcp320x_chip_info] [%struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 10, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3202_channels, i32 4, i32 10, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3204_channels, i32 8, i32 10, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3208_channels, i32 16, i32 10, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 12, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3202_channels, i32 4, i32 12, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3204_channels, i32 8, i32 12, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3208_channels, i32 16, i32 12, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 13, i32 0 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 21, i32 83006 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 21, i32 69175 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 21, i32 75840 }, %struct.mcp320x_chip_info { ptr @mcp3201_channels, i32 1, i32 21, i32 18175 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@mcp320x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@mcp3201_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [40 x i8] zeroinitializer }, align 32
@mcp3202_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [64 x i8] zeroinitializer }, align 32
@mcp3204_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [160 x i8] zeroinitializer }, align 32
@mcp3208_channels = internal constant { [16 x %struct.iio_chan_spec], [352 x i8] } { [16 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 0, i32 1, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 2, i32 3, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 3, i32 2, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 4, i32 5, i32 4, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 5, i32 4, i32 5, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 6, i32 7, i32 6, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }, %struct.iio_chan_spec { i32 0, i32 7, i32 6, i32 7, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 80 }], [352 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.3 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"mcp320x_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 519, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"mcp320x_id\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 501, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 521, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"mcp320x_dt_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 473, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"mcp320x_info\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 297, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"mcp320x_chip_infos\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 301, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 440, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 448, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"mcp3201_channels\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 256, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"mcp3202_channels\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 260, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"mcp3204_channels\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 267, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"mcp3208_channels\00", align 1
@___asan_gen_.42 = private constant [29 x i8] c"../drivers/iio/adc/mcp320x.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 278, i32 35 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mcp320x_driver_exit, ptr @__initcall__kmod_mcp320x__290_528_mcp320x_driver_init6, ptr @mcp320x_driver_exit, ptr @mcp320x_driver, ptr @mcp320x_id, ptr @.str, ptr @mcp320x_dt_ids, ptr @mcp320x_info, ptr @mcp320x_chip_infos, ptr @.str.1, ptr @mcp320x_probe.__key, ptr @.str.2, ptr @mcp3201_channels, ptr @mcp3202_channels, ptr @mcp3204_channels, ptr @mcp3208_channels], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_id to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_dt_ids to i32), i32 4508, i32 5632, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_chip_infos to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp320x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3201_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3202_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3204_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3208_channels to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp320x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp320x_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp320x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp320x_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp320x_probe(ptr noundef %spi) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #4
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
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %name4, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mcp320x_info, ptr %info, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call5, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [13 x %struct.mcp320x_chip_info], ptr @mcp320x_chip_infos, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %channels6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels6, align 8
  %num_channels = getelementptr [13 x %struct.mcp320x_chip_info], ptr @mcp320x_chip_infos, i32 0, i32 %8, i32 1
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_channels, align 4
  %num_channels7 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_channels7, align 4
  %chip_info8 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %chip_info8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %chip_info8, align 4
  %tx_buf = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 9
  %transfer = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_buf, ptr %transfer, align 4
  %len = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 10
  %rx_buf16 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_buf, ptr %rx_buf16, align 4
  %resolution = getelementptr [13 x %struct.mcp320x_chip_info], ptr @mcp320x_chip_infos, i32 0, i32 %8, i32 2
  %19 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resolution, align 4
  %sub = add i32 %20, 7
  %div107 = lshr i32 %sub, 3
  %len19 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 2
  %21 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div107, ptr %len19, align 4
  %22 = and i32 %8, 268435455
  %23 = lshr i32 7953, %22
  %24 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  %msg24 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 1, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg24, ptr %msg24, align 4
  %prev.i.i.i.i108 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg24, ptr %prev.i.i.i.i108, align 4
  %resources.i.i.i109 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %resources.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i109, ptr %resources.i.i.i109, align 4
  %prev.i2.i.i.i110 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 1, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i109, ptr %prev.i2.i.i.i110, align 4
  br i1 %cmp.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end
  %transfer_list.i.i = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg24, ptr noundef %msg24) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end.i.i.i.i:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %prev.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i108, align 4
  %32 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg24, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg24, ptr %prev3.i.i.i.i, align 4
  %34 = ptrtoint ptr %msg24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i, ptr %msg24, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end
  %transfer_list.i.i112 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i.i113 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i112, ptr noundef %msg24, ptr noundef %msg24) #4
  br i1 %call.i.i.i.i113, label %if.end.i.i.i.i116, label %if.else.spi_message_add_tail.exit.i119_crit_edge

if.else.spi_message_add_tail.exit.i119_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i119

if.end.i.i.i.i116:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %prev.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i112, ptr %prev.i.i.i.i108, align 4
  %36 = ptrtoint ptr %transfer_list.i.i112 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg24, ptr %transfer_list.i.i112, align 4
  %prev3.i.i.i.i115 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg24, ptr %prev3.i.i.i.i115, align 4
  %38 = ptrtoint ptr %msg24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i112, ptr %msg24, align 4
  br label %spi_message_add_tail.exit.i119

spi_message_add_tail.exit.i119:                   ; preds = %if.end.i.i.i.i116, %if.else.spi_message_add_tail.exit.i119_crit_edge
  %transfer_list.i.i112.1 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 18
  %39 = ptrtoint ptr %prev.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i108, align 4
  %call.i.i.i.i113.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i112.1, ptr noundef %40, ptr noundef %msg24) #4
  br i1 %call.i.i.i.i113.1, label %if.end.i.i.i.i116.1, label %spi_message_add_tail.exit.i119.if.end27_crit_edge

spi_message_add_tail.exit.i119.if.end27_crit_edge: ; preds = %spi_message_add_tail.exit.i119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end.i.i.i.i116.1:                              ; preds = %spi_message_add_tail.exit.i119
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %prev.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i112.1, ptr %prev.i.i.i.i108, align 4
  %42 = ptrtoint ptr %transfer_list.i.i112.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg24, ptr %transfer_list.i.i112.1, align 4
  %prev3.i.i.i.i115.1 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 2, i32 1, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i115.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i.i115.1, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i112.1, ptr %40, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i.i.i.i116.1, %spi_message_add_tail.exit.i119.if.end27_crit_edge, %if.end.i.i.i.i, %if.then21.if.end27_crit_edge
  %.off = add i32 %8, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %if.end27.sw.epilog_crit_edge

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end27
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode, align 8
  %and = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %sw.bb.if.end33_crit_edge

sw.bb.if.end33_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len19, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %len19, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %sw.bb.if.end33_crit_edge
  %delay = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 4, i32 9
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 8, ptr %delay, align 2
  %unit = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 4, i32 9, i32 1
  %50 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %unit, align 2
  %start_conv_msg = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 3
  %51 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 3, i32 1
  %52 = call ptr @memset(ptr %51, i32 0, i32 40)
  %53 = ptrtoint ptr %start_conv_msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %start_conv_msg, ptr %start_conv_msg, align 4
  %prev.i.i.i.i121 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 3, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %start_conv_msg, ptr %prev.i.i.i.i121, align 4
  %resources.i.i.i122 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 3, i32 10
  %55 = ptrtoint ptr %resources.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %resources.i.i.i122, ptr %resources.i.i.i122, align 4
  %prev.i2.i.i.i123 = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 3, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i2.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %resources.i.i.i122, ptr %prev.i2.i.i.i123, align 4
  %transfer_list.i.i125 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 4, i32 18
  %call.i.i.i.i126 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i125, ptr noundef %start_conv_msg, ptr noundef %start_conv_msg) #4
  br i1 %call.i.i.i.i126, label %if.end.i.i.i.i129, label %if.end33.spi_message_add_tail.exit.i132_crit_edge

if.end33.spi_message_add_tail.exit.i132_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit.i132

if.end.i.i.i.i129:                                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %prev.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %transfer_list.i.i125, ptr %prev.i.i.i.i121, align 4
  %58 = ptrtoint ptr %transfer_list.i.i125 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %start_conv_msg, ptr %transfer_list.i.i125, align 4
  %prev3.i.i.i.i128 = getelementptr %struct.mcp320x, ptr %1, i32 0, i32 4, i32 18, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %start_conv_msg, ptr %prev3.i.i.i.i128, align 4
  %60 = ptrtoint ptr %start_conv_msg to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %transfer_list.i.i125, ptr %start_conv_msg, align 4
  br label %spi_message_add_tail.exit.i132

spi_message_add_tail.exit.i132:                   ; preds = %if.end.i.i.i.i129, %if.end33.spi_message_add_tail.exit.i132_crit_edge
  %call37 = call fastcc i32 @mcp320x_adc_conversion(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext true, i32 noundef %8, ptr noundef nonnull %ret)
  %call38 = call fastcc i32 @mcp320x_adc_conversion(ptr noundef %1, i8 noundef zeroext 0, i1 noundef zeroext true, i32 noundef %8, ptr noundef nonnull %ret)
  br label %sw.epilog

sw.epilog:                                        ; preds = %spi_message_add_tail.exit.i132, %if.end27.sw.epilog_crit_edge
  %call40 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #4
  %reg = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call40, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end46

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  %call48 = tail call i32 @regulator_enable(ptr noundef %call40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end46.cleanup_crit_edge, label %do.body

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end46
  %lock = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mcp320x_probe.__key) #4
  %call52 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %reg_disable, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

reg_disable:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg, align 4
  %call57 = tail call i32 @regulator_disable(ptr noundef %64) #4
  br label %cleanup

cleanup:                                          ; preds = %reg_disable, %do.body.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %62, %if.then43 ], [ %call52, %reg_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call48, %if.end46.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp320x_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %reg = getelementptr inbounds %struct.mcp320x, ptr %3, i32 0, i32 5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp320x_adc_conversion(ptr noundef %adc, i8 noundef zeroext %channel, i1 noundef zeroext %differential, i32 noundef %device_index, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info = getelementptr inbounds %struct.mcp320x, ptr %adc, i32 0, i32 7
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %conv_time = getelementptr inbounds %struct.mcp320x_chip_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %conv_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conv_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc, align 128
  %start_conv_msg = getelementptr inbounds %struct.mcp320x, ptr %adc, i32 0, i32 3
  %call = tail call i32 @spi_sync(ptr noundef %5, ptr noundef %start_conv_msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup94_crit_edge, label %if.end

if.then.cleanup94_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup94

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info, align 4
  %conv_time3 = getelementptr inbounds %struct.mcp320x_chip_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %conv_time3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conv_time3, align 4
  %add = add i32 %9, 100
  tail call void @usleep_range_state(i32 noundef %9, i32 noundef %add, i32 noundef 2) #4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %rx_buf = getelementptr inbounds %struct.mcp320x, ptr %adc, i32 0, i32 10
  %10 = ptrtoint ptr %rx_buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %rx_buf, align 1
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.mcp320x_chip_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp8 = icmp ugt i32 %14, 1
  br i1 %cmp8, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %15 = zext i32 %device_index to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %device_index, label %if.then9.mcp320x_channel_to_tx_data.exit_crit_edge [
    i32 1, label %if.then9.sw.bb.i_crit_edge
    i32 5, label %if.then9.sw.bb.i_crit_edge136
    i32 2, label %if.then9.sw.bb4.i_crit_edge
    i32 6, label %if.then9.sw.bb4.i_crit_edge137
    i32 3, label %if.then9.sw.bb4.i_crit_edge138
    i32 7, label %if.then9.sw.bb4.i_crit_edge139
  ]

if.then9.sw.bb4.i_crit_edge139:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4.i

if.then9.sw.bb4.i_crit_edge138:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4.i

if.then9.sw.bb4.i_crit_edge137:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4.i

if.then9.sw.bb4.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4.i

if.then9.sw.bb.i_crit_edge136:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then9.sw.bb.i_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then9.mcp320x_channel_to_tx_data.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %mcp320x_channel_to_tx_data.exit

sw.bb.i:                                          ; preds = %if.then9.sw.bb.i_crit_edge, %if.then9.sw.bb.i_crit_edge136
  %or.i = select i1 %differential, i8 16, i8 24
  %shl2.i = shl i8 %channel, 2
  %or3.i = or i8 %or.i, %shl2.i
  br label %mcp320x_channel_to_tx_data.exit

sw.bb4.i:                                         ; preds = %if.then9.sw.bb4.i_crit_edge, %if.then9.sw.bb4.i_crit_edge137, %if.then9.sw.bb4.i_crit_edge138, %if.then9.sw.bb4.i_crit_edge139
  %or10.i = select i1 %differential, i8 64, i8 96
  %shl11.i = shl i8 %channel, 2
  %or12.i = or i8 %or10.i, %shl11.i
  br label %mcp320x_channel_to_tx_data.exit

mcp320x_channel_to_tx_data.exit:                  ; preds = %sw.bb4.i, %sw.bb.i, %if.then9.mcp320x_channel_to_tx_data.exit_crit_edge
  %retval.0.i = phi i8 [ %or12.i, %sw.bb4.i ], [ %or3.i, %sw.bb.i ], [ -22, %if.then9.mcp320x_channel_to_tx_data.exit_crit_edge ]
  %tx_buf = getelementptr inbounds %struct.mcp320x, ptr %adc, i32 0, i32 9
  %16 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %retval.0.i, ptr %tx_buf, align 128
  br label %if.end13

if.end13:                                         ; preds = %mcp320x_channel_to_tx_data.exit, %if.end6.if.end13_crit_edge
  %17 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adc, align 128
  %msg = getelementptr inbounds %struct.mcp320x, ptr %adc, i32 0, i32 1
  %call15 = tail call i32 @spi_sync(ptr noundef %18, ptr noundef %msg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup94_crit_edge, label %if.end19

if.end13.cleanup94_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup94

if.end19:                                         ; preds = %if.end13
  %19 = zext i32 %device_index to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %device_index, label %if.end19.cleanup94_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end19.sw.bb25_crit_edge
    i32 2, label %if.end19.sw.bb25_crit_edge140
    i32 3, label %if.end19.sw.bb25_crit_edge141
    i32 4, label %sw.bb35
    i32 5, label %if.end19.sw.bb45_crit_edge
    i32 6, label %if.end19.sw.bb45_crit_edge142
    i32 7, label %if.end19.sw.bb45_crit_edge143
    i32 8, label %sw.bb55
    i32 9, label %if.end19.sw.bb65_crit_edge
    i32 10, label %if.end19.sw.bb65_crit_edge144
    i32 11, label %if.end19.sw.bb65_crit_edge145
    i32 12, label %if.end19.sw.bb65_crit_edge146
  ]

if.end19.sw.bb65_crit_edge146:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb65

if.end19.sw.bb65_crit_edge145:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb65

if.end19.sw.bb65_crit_edge144:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb65

if.end19.sw.bb65_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb65

if.end19.sw.bb45_crit_edge143:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end19.sw.bb45_crit_edge142:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end19.sw.bb45_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb45

if.end19.sw.bb25_crit_edge141:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

if.end19.sw.bb25_crit_edge140:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

if.end19.sw.bb25_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

if.end19.cleanup94_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup94

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_buf, align 1
  %conv21 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv21, 5
  %arrayidx23 = getelementptr %struct.mcp320x, ptr %adc, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx23, align 1
  %24 = lshr i8 %23, 3
  %25 = zext i8 %24 to i32
  %or = or i32 %shl, %25
  br label %cleanup94.sink.split

sw.bb25:                                          ; preds = %if.end19.sw.bb25_crit_edge, %if.end19.sw.bb25_crit_edge140, %if.end19.sw.bb25_crit_edge141
  %26 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_buf, align 1
  %conv28 = zext i8 %27 to i32
  %shl29 = shl nuw nsw i32 %conv28, 2
  %arrayidx31 = getelementptr %struct.mcp320x, ptr %adc, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx31, align 1
  %30 = lshr i8 %29, 6
  %31 = zext i8 %30 to i32
  %or34 = or i32 %shl29, %31
  br label %cleanup94.sink.split

sw.bb35:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx_buf, align 1
  %conv38 = zext i8 %33 to i32
  %shl39 = shl nuw nsw i32 %conv38, 7
  %arrayidx41 = getelementptr %struct.mcp320x, ptr %adc, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx41, align 1
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i32
  %or44 = or i32 %shl39, %37
  br label %cleanup94.sink.split

sw.bb45:                                          ; preds = %if.end19.sw.bb45_crit_edge, %if.end19.sw.bb45_crit_edge142, %if.end19.sw.bb45_crit_edge143
  %38 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rx_buf, align 1
  %conv48 = zext i8 %39 to i32
  %shl49 = shl nuw nsw i32 %conv48, 4
  %arrayidx51 = getelementptr %struct.mcp320x, ptr %adc, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx51, align 1
  %42 = lshr i8 %41, 4
  %43 = zext i8 %42 to i32
  %or54 = or i32 %shl49, %43
  br label %cleanup94.sink.split

sw.bb55:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rx_buf, align 1
  %and = zext i8 %45 to i32
  %arrayidx61 = getelementptr %struct.mcp320x, ptr %adc, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %47 to i32
  %48 = shl i32 %and, 27
  %49 = shl nuw nsw i32 %conv62, 19
  %shl.i = or i32 %49, %48
  %shr.i = ashr exact i32 %shl.i, 19
  br label %cleanup94.sink.split

sw.bb65:                                          ; preds = %if.end19.sw.bb65_crit_edge, %if.end19.sw.bb65_crit_edge144, %if.end19.sw.bb65_crit_edge145, %if.end19.sw.bb65_crit_edge146
  %50 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_buf, align 4
  %52 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adc, align 128
  %mode = getelementptr inbounds %struct.spi_device, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode, align 8
  %and69 = lshr i32 %55, 1
  %and69.lobit = and i32 %and69, 1
  %56 = xor i32 %and69.lobit, 1
  %spec.select = shl i32 %51, %56
  %shr74 = lshr i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %spec.select)
  %.not = icmp ugt i32 %spec.select, -1073741825
  br i1 %.not, label %sw.bb65.cleanup94_crit_edge, label %if.else

sw.bb65.cleanup94_crit_edge:                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup94

if.else:                                          ; preds = %sw.bb65
  %57 = and i32 %spec.select, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool76.not = icmp eq i32 %57, 0
  br i1 %tobool76.not, label %if.else84, label %if.then82

if.then82:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and83 = and i32 %shr74, 12582911
  br label %cleanup94.sink.split

if.else84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %58 = and i32 %spec.select, -1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  %or90 = or i32 %shr74, -4194304
  %spec.select135 = select i1 %59, i32 %shr74, i32 %or90
  br label %cleanup94.sink.split

cleanup94.sink.split:                             ; preds = %if.else84, %if.then82, %sw.bb55, %sw.bb45, %sw.bb35, %sw.bb25, %sw.bb
  %raw.1.sink = phi i32 [ %shr.i, %sw.bb55 ], [ %or54, %sw.bb45 ], [ %or44, %sw.bb35 ], [ %or34, %sw.bb25 ], [ %or, %sw.bb ], [ %and83, %if.then82 ], [ %spec.select135, %if.else84 ]
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %raw.1.sink, ptr %val, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup94.sink.split, %sw.bb65.cleanup94_crit_edge, %if.end19.cleanup94_crit_edge, %if.end13.cleanup94_crit_edge, %if.then.cleanup94_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup94_crit_edge ], [ %call15, %if.end13.cleanup94_crit_edge ], [ -5, %sw.bb65.cleanup94_crit_edge ], [ -22, %if.end19.cleanup94_crit_edge ], [ 0, %cleanup94.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp320x_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call1 = tail call ptr @spi_get_device_id(ptr noundef %3) #4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %mask, label %entry.out_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 3
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  %conv = trunc i32 %8 to i8
  %differential = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 19
  %9 = ptrtoint ptr %differential to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %differential, align 4
  %10 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool = icmp ne i8 %10, 0
  %call2 = tail call fastcc i32 @mcp320x_adc_conversion(ptr noundef %1, i8 noundef zeroext %conv, i1 noundef zeroext %tobool, i32 noundef %6, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %spec.store.select = select i1 %cmp, i32 %call2, i32 1
  br label %out

sw.bb4:                                           ; preds = %entry
  %reg = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %call5 = tail call i32 @regulator_get_voltage(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb4.out_crit_edge, label %if.end9

sw.bb4.out_crit_edge:                             ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end9:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %div21 = udiv i32 %call5, 1000
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div21, ptr %val, align 4
  %chip_info = getelementptr inbounds %struct.mcp320x, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_info, align 4
  %resolution = getelementptr inbounds %struct.mcp320x_chip_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resolution, align 4
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val2, align 4
  br label %out

out:                                              ; preds = %if.end9, %sw.bb4.out_crit_edge, %sw.bb, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call5, %sw.bb4.out_crit_edge ], [ 11, %if.end9 ], [ %spec.store.select, %sw.bb ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_mcp320x__290_528_mcp320x_driver_init6, !1, !"__initcall__kmod_mcp320x__290_528_mcp320x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/mcp320x.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_mcp320x_driver_exit, !1, !"__exitcall_mcp320x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/mcp320x.c", i32 530, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/mcp320x.c", i32 531, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/mcp320x.c", i32 532, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/mcp320x.c", i32 521, i32 11}
!12 = !{ptr @mcp320x_driver, !13, !"mcp320x_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/mcp320x.c", i32 519, i32 26}
!14 = !{ptr @mcp320x_id, !15, !"mcp320x_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/mcp320x.c", i32 501, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/mcp320x.c", i32 440, i32 43}
!18 = !{ptr @mcp320x_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/mcp320x.c", i32 448, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mcp320x_info, !22, !"mcp320x_info", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/mcp320x.c", i32 297, i32 30}
!23 = !{ptr @mcp320x_chip_infos, !24, !"mcp320x_chip_infos", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/mcp320x.c", i32 301, i32 39}
!25 = !{ptr @mcp3201_channels, !26, !"mcp3201_channels", i1 false, i1 false}
!26 = !{!"../drivers/iio/adc/mcp320x.c", i32 256, i32 35}
!27 = !{ptr @mcp3202_channels, !28, !"mcp3202_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/adc/mcp320x.c", i32 260, i32 35}
!29 = !{ptr @mcp3204_channels, !30, !"mcp3204_channels", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/mcp320x.c", i32 267, i32 35}
!31 = !{ptr @mcp3208_channels, !32, !"mcp3208_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/mcp320x.c", i32 278, i32 35}
!33 = !{ptr @mcp320x_dt_ids, !34, !"mcp320x_dt_ids", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/mcp320x.c", i32 473, i32 34}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
