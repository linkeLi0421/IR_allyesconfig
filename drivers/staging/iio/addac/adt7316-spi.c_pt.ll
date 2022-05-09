; ModuleID = '/llk/IR_all_yes/drivers/staging/iio/addac/adt7316-spi.c_pt.bc'
source_filename = "../drivers/staging/iio/addac/adt7316-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.adt7316_bus = type { ptr, i32, ptr, ptr, ptr, ptr }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_adt7316_spi__234_150_adt7316_driver_init6 = internal global ptr @adt7316_driver_init, section ".initcall6.init", align 4
@adt7316_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adt7316_spi_id, ptr @adt7316_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adt7316_of_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adt7316_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adt7316_driver_exit = internal global ptr @adt7316_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"adt7316_spi.author=Sonic Zhang <sonic.zhang@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [126 x i8] c"adt7316_spi.description=SPI bus driver for Analog Devices ADT7316/7/8 and ADT7516/7/9 digital temperature sensor, ADC and DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [55 x i8] c"adt7316_spi.file=drivers/staging/iio/addac/adt7316-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"adt7316_spi.license=GPL v2\00", section ".modinfo", align 1
@adt7316_spi_id = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adt7316\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adt7317\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adt7318\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adt7516\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adt7517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adt7519\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7316\00", [24 x i8] zeroinitializer }, align 32
@adt7316_of_spi_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7316\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7317\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7318\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7516\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7519\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@adt7316_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@adt7316_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SPI CLK %d Hz?\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adt7316_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/iio/addac/adt7316-spi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adt7316_spi_probe._entry_ptr = internal global ptr @adt7316_spi_probe._entry, section ".printk_index", align 4
@adt7316_spi_multi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 39, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPI fail to select reg\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adt7316_spi_multi_read\00", [41 x i8] zeroinitializer }, align 32
@adt7316_spi_multi_read._entry_ptr = internal global ptr @adt7316_spi_multi_read._entry, section ".printk_index", align 4
@adt7316_spi_multi_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 47, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SPI read data error\0A\00", [43 x i8] zeroinitializer }, align 32
@adt7316_spi_multi_read._entry_ptr.10 = internal global ptr @adt7316_spi_multi_read._entry.8, section ".printk_index", align 4
@adt7316_spi_multi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 70, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SPI write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adt7316_spi_multi_write\00", [40 x i8] zeroinitializer }, align 32
@adt7316_spi_multi_write._entry_ptr = internal global ptr @adt7316_spi_multi_write._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"adt7316_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 141, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"adt7316_spi_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 117, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 143, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"adt7316_of_spi_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 129, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 104, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 39, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 47, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [43 x i8] c"../drivers/staging/iio/addac/adt7316-spi.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 70, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_adt7316_driver_exit, ptr @__initcall__kmod_adt7316_spi__234_150_adt7316_driver_init6, ptr @adt7316_driver_exit, ptr @adt7316_spi_multi_read._entry, ptr @adt7316_spi_multi_read._entry.8, ptr @adt7316_spi_multi_read._entry_ptr, ptr @adt7316_spi_multi_read._entry_ptr.10, ptr @adt7316_spi_multi_write._entry, ptr @adt7316_spi_multi_write._entry_ptr, ptr @adt7316_spi_probe._entry, ptr @adt7316_spi_probe._entry_ptr, ptr @adt7316_driver, ptr @adt7316_spi_id, ptr @.str, ptr @adt7316_of_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_spi_id to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_of_spi_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_spi_multi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_spi_multi_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7316_spi_multi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adt7316_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adt7316_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adt7316_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_spi_probe(ptr noundef %spi_dev) #2 align 64 {
entry:
  %msg.i.i.i.i33 = alloca %struct.spi_message, align 4
  %t.i.i.i34 = alloca %struct.spi_transfer, align 4
  %buf.i.i35 = alloca [65 x i8], align 1
  %msg.i.i.i.i16 = alloca %struct.spi_message, align 4
  %t.i.i.i17 = alloca %struct.spi_transfer, align 4
  %buf.i.i18 = alloca [65 x i8], align 1
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %buf.i.i = alloca [65 x i8], align 1
  %bus = alloca %struct.adt7316_bus, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bus) #6
  %0 = getelementptr inbounds %struct.adt7316_bus, ptr %bus, i32 0, i32 1
  %1 = getelementptr inbounds %struct.adt7316_bus, ptr %bus, i32 0, i32 2
  %2 = getelementptr inbounds %struct.adt7316_bus, ptr %bus, i32 0, i32 3
  %3 = getelementptr inbounds %struct.adt7316_bus, ptr %bus, i32 0, i32 4
  %4 = getelementptr inbounds %struct.adt7316_bus, ptr %bus, i32 0, i32 5
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi_dev, ptr %bus, align 4
  %irq1 = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 8
  %6 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq1, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @adt7316_spi_read, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adt7316_spi_write, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adt7316_spi_multi_read, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adt7316_spi_multi_write, ptr %4, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 3
  %13 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %14)
  %cmp = icmp ugt i32 %14, 5000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.1, i32 noundef %14) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf.i.i) #6
  %15 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %16 = getelementptr inbounds i8, ptr %buf.i.i, i32 3
  %17 = call ptr @memset(ptr %16, i32 255, i32 62)
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -112, ptr %buf.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [65 x i8], ptr %buf.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #6
  %21 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  %25 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.spi_write.exit.i.i_crit_edge

if.end.spi_write.exit.i.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %spi_dev, ptr noundef nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp10.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp10.i.i, label %do.end.i.i, label %spi_write.exit.i.i.adt7316_spi_write.exit_crit_edge

spi_write.exit.i.i.adt7316_spi_write.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adt7316_spi_write.exit

do.end.i.i:                                       ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.11) #9
  br label %adt7316_spi_write.exit

adt7316_spi_write.exit:                           ; preds = %do.end.i.i, %spi_write.exit.i.i.adt7316_spi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf.i.i18) #6
  %35 = getelementptr inbounds i8, ptr %buf.i.i18, i32 2
  %36 = getelementptr inbounds i8, ptr %buf.i.i18, i32 3
  %37 = call ptr @memset(ptr %36, i32 255, i32 62)
  %38 = ptrtoint ptr %buf.i.i18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -112, ptr %buf.i.i18, align 1
  %arrayidx2.i.i19 = getelementptr inbounds [65 x i8], ptr %buf.i.i18, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx2.i.i19 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx2.i.i19, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i17) #6
  %41 = getelementptr inbounds i8, ptr %t.i.i.i17, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 92)
  %43 = ptrtoint ptr %t.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i.i18, ptr %t.i.i.i17, align 4
  %len1.i.i.i20 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i17, i32 0, i32 2
  %44 = ptrtoint ptr %len1.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %len1.i.i.i20, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i16) #6
  %45 = getelementptr inbounds i8, ptr %msg.i.i.i.i16, i32 8
  %46 = call ptr @memset(ptr %45, i32 0, i32 40)
  %47 = ptrtoint ptr %msg.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %msg.i.i.i.i16, ptr %msg.i.i.i.i16, align 4
  %prev.i.i.i.i.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i16, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i.i16, ptr %prev.i.i.i.i.i.i.i.i21, align 4
  %resources.i.i.i.i.i.i.i22 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i16, i32 0, i32 10
  %49 = ptrtoint ptr %resources.i.i.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %resources.i.i.i.i.i.i.i22, ptr %resources.i.i.i.i.i.i.i22, align 4
  %prev.i2.i.i.i.i.i.i.i23 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i16, i32 0, i32 10, i32 1
  %50 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %resources.i.i.i.i.i.i.i22, ptr %prev.i2.i.i.i.i.i.i.i23, align 4
  %transfer_list.i.i.i.i.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i17, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i24, ptr noundef nonnull %msg.i.i.i.i16, ptr noundef nonnull %msg.i.i.i.i16) #6
  br i1 %call.i.i.i.i.i.i.i.i25, label %if.end.i.i.i.i.i.i.i.i27, label %adt7316_spi_write.exit.spi_write.exit.i.i30_crit_edge

adt7316_spi_write.exit.spi_write.exit.i.i30_crit_edge: ; preds = %adt7316_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i.i30

if.end.i.i.i.i.i.i.i.i27:                         ; preds = %adt7316_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i.i.i.i.i.i24, ptr %prev.i.i.i.i.i.i.i.i21, align 4
  %52 = ptrtoint ptr %transfer_list.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i.i.i.i16, ptr %transfer_list.i.i.i.i.i.i24, align 4
  %prev3.i.i.i.i.i.i.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i17, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i.i.i16, ptr %prev3.i.i.i.i.i.i.i.i26, align 4
  %54 = ptrtoint ptr %msg.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i.i.i.i.i.i24, ptr %msg.i.i.i.i16, align 4
  br label %spi_write.exit.i.i30

spi_write.exit.i.i30:                             ; preds = %if.end.i.i.i.i.i.i.i.i27, %adt7316_spi_write.exit.spi_write.exit.i.i30_crit_edge
  %call.i.i.i.i28 = call i32 @spi_sync(ptr noundef %spi_dev, ptr noundef nonnull %msg.i.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i28)
  %cmp10.i.i29 = icmp slt i32 %call.i.i.i.i28, 0
  br i1 %cmp10.i.i29, label %do.end.i.i31, label %spi_write.exit.i.i30.adt7316_spi_write.exit32_crit_edge

spi_write.exit.i.i30.adt7316_spi_write.exit32_crit_edge: ; preds = %spi_write.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %adt7316_spi_write.exit32

do.end.i.i31:                                     ; preds = %spi_write.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.11) #9
  br label %adt7316_spi_write.exit32

adt7316_spi_write.exit32:                         ; preds = %do.end.i.i31, %spi_write.exit.i.i30.adt7316_spi_write.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i.i18) #6
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf.i.i35) #6
  %55 = getelementptr inbounds i8, ptr %buf.i.i35, i32 2
  %56 = getelementptr inbounds i8, ptr %buf.i.i35, i32 3
  %57 = call ptr @memset(ptr %56, i32 255, i32 62)
  %58 = ptrtoint ptr %buf.i.i35 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -112, ptr %buf.i.i35, align 1
  %arrayidx2.i.i36 = getelementptr inbounds [65 x i8], ptr %buf.i.i35, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx2.i.i36 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx2.i.i36, align 1
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i34) #6
  %61 = getelementptr inbounds i8, ptr %t.i.i.i34, i32 4
  %62 = call ptr @memset(ptr %61, i32 0, i32 92)
  %63 = ptrtoint ptr %t.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i.i35, ptr %t.i.i.i34, align 4
  %len1.i.i.i37 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i34, i32 0, i32 2
  %64 = ptrtoint ptr %len1.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %len1.i.i.i37, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i33) #6
  %65 = getelementptr inbounds i8, ptr %msg.i.i.i.i33, i32 8
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i.i.i.i33, ptr %msg.i.i.i.i33, align 4
  %prev.i.i.i.i.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i33, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i.i33, ptr %prev.i.i.i.i.i.i.i.i38, align 4
  %resources.i.i.i.i.i.i.i39 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i33, i32 0, i32 10
  %69 = ptrtoint ptr %resources.i.i.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i.i.i.i.i39, ptr %resources.i.i.i.i.i.i.i39, align 4
  %prev.i2.i.i.i.i.i.i.i40 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i33, i32 0, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i.i.i.i.i39, ptr %prev.i2.i.i.i.i.i.i.i40, align 4
  %transfer_list.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i34, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i41, ptr noundef nonnull %msg.i.i.i.i33, ptr noundef nonnull %msg.i.i.i.i33) #6
  br i1 %call.i.i.i.i.i.i.i.i42, label %if.end.i.i.i.i.i.i.i.i44, label %adt7316_spi_write.exit32.spi_write.exit.i.i47_crit_edge

adt7316_spi_write.exit32.spi_write.exit.i.i47_crit_edge: ; preds = %adt7316_spi_write.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i.i47

if.end.i.i.i.i.i.i.i.i44:                         ; preds = %adt7316_spi_write.exit32
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i.i.i.i.i.i41, ptr %prev.i.i.i.i.i.i.i.i38, align 4
  %72 = ptrtoint ptr %transfer_list.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i.i.i.i33, ptr %transfer_list.i.i.i.i.i.i41, align 4
  %prev3.i.i.i.i.i.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i34, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i.i.i33, ptr %prev3.i.i.i.i.i.i.i.i43, align 4
  %74 = ptrtoint ptr %msg.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i.i.i.i.i.i41, ptr %msg.i.i.i.i33, align 4
  br label %spi_write.exit.i.i47

spi_write.exit.i.i47:                             ; preds = %if.end.i.i.i.i.i.i.i.i44, %adt7316_spi_write.exit32.spi_write.exit.i.i47_crit_edge
  %call.i.i.i.i45 = call i32 @spi_sync(ptr noundef %spi_dev, ptr noundef nonnull %msg.i.i.i.i33) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i33) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i45)
  %cmp10.i.i46 = icmp slt i32 %call.i.i.i.i45, 0
  br i1 %cmp10.i.i46, label %do.end.i.i48, label %spi_write.exit.i.i47.adt7316_spi_write.exit49_crit_edge

spi_write.exit.i.i47.adt7316_spi_write.exit49_crit_edge: ; preds = %spi_write.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %adt7316_spi_write.exit49

do.end.i.i48:                                     ; preds = %spi_write.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi_dev, ptr noundef nonnull @.str.11) #9
  br label %adt7316_spi_write.exit49

adt7316_spi_write.exit49:                         ; preds = %do.end.i.i48, %spi_write.exit.i.i47.adt7316_spi_write.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i.i35) #6
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 11
  %call6 = call i32 @adt7316_probe(ptr noundef %spi_dev, ptr noundef nonnull %bus, ptr noundef %modalias) #6
  br label %cleanup

cleanup:                                          ; preds = %adt7316_spi_write.exit49, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %adt7316_spi_write.exit49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bus) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_spi_read(ptr noundef %client, i8 noundef zeroext %reg, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @adt7316_spi_multi_read(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext 1, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_spi_write(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf.i) #6
  %0 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %1 = getelementptr inbounds i8, ptr %buf.i, i32 3
  %2 = call ptr @memset(ptr %1, i32 255, i32 62)
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -112, ptr %buf.i, align 1
  %arrayidx2.i = getelementptr inbounds [65 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg, ptr %arrayidx2.i, align 1
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %6 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %client, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp10.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp10.i, label %do.end.i, label %spi_write.exit.i.adt7316_spi_multi_write.exit_crit_edge

spi_write.exit.i.adt7316_spi_multi_write.exit_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adt7316_spi_multi_write.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %client, ptr noundef nonnull @.str.11) #9
  br label %adt7316_spi_multi_write.exit

adt7316_spi_multi_write.exit:                     ; preds = %do.end.i, %spi_write.exit.i.adt7316_spi_multi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf.i) #6
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_spi_multi_read(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %data) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -112, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %client, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %spi_write.exit.cleanup.sink.split_crit_edge, label %if.end6

spi_write.exit.cleanup.sink.split_crit_edge:      ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end6:                                          ; preds = %spi_write.exit
  %17 = call i8 @llvm.umin.i8(i8 %count, i8 63)
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -111, ptr %cmd, align 1
  %conv9 = zext i8 %17 to i32
  %call10 = call i32 @spi_write_then_read(ptr noundef %client, ptr noundef nonnull %cmd, i32 noundef 1, ptr noundef %data, i32 noundef %conv9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end6.cleanup.sink.split_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %spi_write.exit.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %spi_write.exit.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i.i, %spi_write.exit.cleanup.sink.split_crit_edge ], [ %call10, %if.end6.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %client, ptr noundef nonnull %.str.9.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7316_spi_multi_write(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf) #6
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %2 = tail call i8 @llvm.umin.i8(i8 %count, i8 63)
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -112, ptr %buf, align 1
  %arrayidx2 = getelementptr inbounds [65 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %reg, ptr %arrayidx2, align 1
  %conv3 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp425.not = icmp eq i8 %2, 0
  br i1 %cmp425.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr inbounds i8, ptr %buf, i32 2
  %5 = call ptr @memcpy(ptr %uglygep, ptr %data, i32 %conv3)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry.for.end_crit_edge
  %add9 = add nuw nsw i32 %conv3, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %6 = getelementptr inbounds i8, ptr %t.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add9, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end.spi_write.exit_crit_edge

for.end.spi_write.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %for.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %client, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10 = icmp slt i32 %call.i.i, 0
  br i1 %cmp10, label %do.end, label %spi_write.exit.cleanup_crit_edge

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %client, ptr noundef nonnull @.str.11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %spi_write.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf) #6
  ret i32 %call.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adt7316_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_adt7316_spi__234_150_adt7316_driver_init6, !1, !"__initcall__kmod_adt7316_spi__234_150_adt7316_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 150, i32 1}
!2 = !{ptr @__exitcall_adt7316_driver_exit, !1, !"__exitcall_adt7316_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 152, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 153, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 154, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 143, i32 11}
!12 = !{ptr @adt7316_driver, !13, !"adt7316_driver", i1 false, i1 false}
!13 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 141, i32 26}
!14 = !{ptr @adt7316_spi_id, !15, !"adt7316_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 117, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 104, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adt7316_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adt7316_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 39, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @adt7316_spi_multi_read._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @adt7316_spi_multi_read._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 47, i32 3}
!31 = !{ptr @adt7316_spi_multi_read._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @adt7316_spi_multi_read._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 70, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @adt7316_spi_multi_write._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @adt7316_spi_multi_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @adt7316_of_spi_match, !39, !"adt7316_of_spi_match", i1 false, i1 false}
!39 = !{!"../drivers/staging/iio/addac/adt7316-spi.c", i32 129, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
