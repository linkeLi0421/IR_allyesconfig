; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/bma220_spi.c_pt.bc'
source_filename = "../drivers/iio/accel/bma220_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.bma220_data = type { ptr, %struct.mutex, %struct.anon.72, [16 x i8], [2 x i8], [126 x i8] }
%struct.anon.72 = type { [3 x i8], i64 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_bma220_spi__234_327_bma220_driver_init6 = internal global ptr @bma220_driver_init, section ".initcall6.init", align 4
@bma220_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @bma220_spi_id, ptr @bma220_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @bma220_acpi_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bma220_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_bma220_driver_exit = internal global ptr @bma220_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [62 x i8] c"bma220_spi.author=Tiberiu Breana <tiberiu.a.breana@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"bma220_spi.description=BMA220 acceleration sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [45 x i8] c"bma220_spi.file=drivers/iio/accel/bma220_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"bma220_spi.license=GPL v2\00", section ".modinfo", align 1
@bma220_spi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"bma220\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bma220_spi\00", [21 x i8] zeroinitializer }, align 32
@bma220_acpi_id = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"BMA0220\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bma220_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bma220_suspend, ptr @bma220_resume, ptr @bma220_suspend, ptr @bma220_resume, ptr @bma220_suspend, ptr @bma220_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bma220_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iio allocation failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bma220_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/accel/bma220_spi.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bma220_probe._entry_ptr = internal global ptr @bma220_probe._entry, section ".printk_index", align 4
@bma220_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@bma220_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @bma220_read_raw, ptr null, ptr @bma220_read_avail, ptr @bma220_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bma220\00", [25 x i8] zeroinitializer }, align 32
@bma220_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 2, i32 0, %struct.anon.71 { i8 115, i8 6, i8 8, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 3, i32 1, %struct.anon.71 { i8 115, i8 6, i8 8, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 4, i32 2, %struct.anon.71 { i8 115, i8 6, i8 8, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@bma220_accel_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@bma220_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bma220_probe._entry_ptr.10 = internal global ptr @bma220_probe._entry.8, section ".printk_index", align 4
@bma220_scale_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 0, i32 623000], [2 x i32] [i32 1, i32 248000], [2 x i32] [i32 2, i32 491000], [2 x i32] [i32 4, i32 983000]], [32 x i8] zeroinitializer }, align 32
@bma220_write_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set measurement range\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bma220_write_raw\00", [47 x i8] zeroinitializer }, align 32
@bma220_write_raw._entry_ptr = internal global ptr @bma220_write_raw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"bma220_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 318, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"bma220_spi_id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 307, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"bma220_acpi_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 312, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"bma220_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 305, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 258, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 264, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"bma220_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 195, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 267, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"bma220_channels\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 73, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"bma220_accel_scan_masks\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 85, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 285, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"bma220_scale_table\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 58, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [34 x i8] c"../drivers/iio/accel/bma220_spi.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 169, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_bma220_driver_exit, ptr @__initcall__kmod_bma220_spi__234_327_bma220_driver_init6, ptr @bma220_driver_exit, ptr @bma220_probe._entry, ptr @bma220_probe._entry.8, ptr @bma220_probe._entry_ptr, ptr @bma220_probe._entry_ptr.10, ptr @bma220_write_raw._entry, ptr @bma220_write_raw._entry_ptr, ptr @bma220_driver, ptr @bma220_spi_id, ptr @.str, ptr @bma220_acpi_id, ptr @bma220_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bma220_probe.__key, ptr @.str.6, ptr @bma220_info, ptr @.str.7, ptr @bma220_channels, ptr @bma220_accel_scan_masks, ptr @.str.9, ptr @bma220_scale_table, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_spi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_acpi_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_accel_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_scale_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma220_write_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @bma220_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bma220_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @bma220_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i.i.i.i.i = alloca i8, align 1
  %result.i.i.i.i.i = alloca i8, align 1
  %cmd.addr.i.i26.i = alloca i8, align 1
  %result.i.i27.i = alloca i8, align 1
  %cmd.addr.i.i18.i = alloca i8, align 1
  %result.i.i19.i = alloca i8, align 1
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %1, align 128
  %lock = getelementptr inbounds %struct.bma220_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @bma220_probe.__key) #6
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bma220_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.7, ptr %name, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bma220_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bma220_accel_scan_masks, ptr %available_scan_masks, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %11 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %12 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %bma220_read_reg.exit.thread.i, label %bma220_read_reg.exit.i

bma220_read_reg.exit.thread.i:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  br label %cleanup

bma220_read_reg.exit.i:                           ; preds = %if.end
  %13 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %14)
  %cmp.not.i = icmp eq i8 %14, -35
  br i1 %cmp.not.i, label %if.end.i, label %bma220_read_reg.exit.i.cleanup_crit_edge

bma220_read_reg.exit.i.cleanup_crit_edge:         ; preds = %bma220_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %bma220_read_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i18.i) #6
  %15 = ptrtoint ptr %cmd.addr.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -104, ptr %cmd.addr.i.i18.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i19.i) #6
  %16 = ptrtoint ptr %result.i.i19.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %result.i.i19.i, align 1, !annotation !59
  %call.i.i20.i = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %cmd.addr.i.i18.i, i32 noundef 1, ptr noundef nonnull %result.i.i19.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i)
  %cmp.i.i21.i = icmp slt i32 %call.i.i20.i, 0
  br i1 %cmp.i.i21.i, label %if.end5.thread.i, label %bma220_read_reg.exit25.i

if.end5.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i19.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i18.i) #6
  br label %cleanup

bma220_read_reg.exit25.i:                         ; preds = %if.end.i
  %17 = ptrtoint ptr %result.i.i19.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %result.i.i19.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i19.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i18.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp2.i = icmp eq i8 %18, 0
  br i1 %cmp2.i, label %if.then3.i, label %bma220_read_reg.exit25.i.if.end10_crit_edge

bma220_read_reg.exit25.i.if.end10_crit_edge:      ; preds = %bma220_read_reg.exit25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3.i:                                       ; preds = %bma220_read_reg.exit25.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i26.i) #6
  %19 = ptrtoint ptr %cmd.addr.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -104, ptr %cmd.addr.i.i26.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i27.i) #6
  %20 = ptrtoint ptr %result.i.i27.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %result.i.i27.i, align 1, !annotation !59
  %call.i.i28.i = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %cmd.addr.i.i26.i, i32 noundef 1, ptr noundef nonnull %result.i.i27.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i)
  %cmp.i.i29.i = icmp slt i32 %call.i.i28.i, 0
  br i1 %cmp.i.i29.i, label %if.end5.thread44.i, label %if.end8.i

if.end5.thread44.i:                               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i27.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i26.i) #6
  br label %cleanup

if.end8.i:                                        ; preds = %if.then3.i
  %21 = ptrtoint ptr %result.i.i27.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %result.i.i27.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i27.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i26.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp9.i = icmp eq i8 %22, 0
  br i1 %cmp9.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end10_crit_edge

if.end8.i.if.end10_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end8.i.if.end10_crit_edge, %bma220_read_reg.exit25.i.if.end10_crit_edge
  %call.i = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @bma220_deinit, ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i.i.i) #6
  %23 = ptrtoint ptr %cmd.addr.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -104, ptr %cmd.addr.i.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i.i.i) #6
  %24 = ptrtoint ptr %result.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %result.i.i.i.i.i, align 1, !annotation !59
  %call.i.i.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.bma220_read_reg.exit.thread.i.i.i_crit_edge, label %bma220_read_reg.exit.i.i.i

if.then.i.bma220_read_reg.exit.thread.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i.i.i

for.cond.i.i.i:                                   ; preds = %bma220_read_reg.exit.i.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i.i.i) #6
  %25 = ptrtoint ptr %cmd.addr.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -104, ptr %cmd.addr.i.i.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i.i.i) #6
  %26 = ptrtoint ptr %result.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %result.i.i.i.i.i, align 1, !annotation !59
  %call.i.i.1.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i.i.i)
  %cmp.i.i.1.i.i.i = icmp slt i32 %call.i.i.1.i.i.i, 0
  br i1 %cmp.i.i.1.i.i.i, label %for.cond.i.i.i.bma220_read_reg.exit.thread.i.i.i_crit_edge, label %bma220_read_reg.exit.1.i.i.i

for.cond.i.i.i.bma220_read_reg.exit.thread.i.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i.i.i

bma220_read_reg.exit.1.i.i.i:                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i.i.i) #6
  br label %cleanup

bma220_read_reg.exit.thread.i.i.i:                ; preds = %for.cond.i.i.i.bma220_read_reg.exit.thread.i.i.i_crit_edge, %if.then.i.bma220_read_reg.exit.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i.i.i) #6
  br label %cleanup

bma220_read_reg.exit.i.i.i:                       ; preds = %if.then.i
  %27 = ptrtoint ptr %result.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %result.i.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp7.i.i.i = icmp eq i8 %28, 0
  br i1 %cmp7.i.i.i, label %bma220_read_reg.exit.i.i.i.cleanup_crit_edge, label %for.cond.i.i.i

bma220_read_reg.exit.i.i.i.cleanup_crit_edge:     ; preds = %bma220_read_reg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call17 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @bma220_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end21, %bma220_read_reg.exit.i.i.i.cleanup_crit_edge, %bma220_read_reg.exit.thread.i.i.i, %bma220_read_reg.exit.1.i.i.i, %if.end8.i.cleanup_crit_edge, %if.end5.thread44.i, %if.end5.thread.i, %bma220_read_reg.exit.i.cleanup_crit_edge, %bma220_read_reg.exit.thread.i, %do.end
  %retval.0 = phi i32 [ %call17, %do.end21 ], [ %call25, %if.end23 ], [ -12, %do.end ], [ %call.i.i28.i, %if.end5.thread44.i ], [ %call.i.i20.i, %if.end5.thread.i ], [ -19, %bma220_read_reg.exit.thread.i ], [ -19, %bma220_read_reg.exit.i.cleanup_crit_edge ], [ -16, %if.end8.i.cleanup_crit_edge ], [ %call.i, %bma220_read_reg.exit.1.i.i.i ], [ %call.i, %bma220_read_reg.exit.thread.i.i.i ], [ %call.i, %bma220_read_reg.exit.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bma220_deinit(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.i

entry.bma220_read_reg.exit.thread.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

for.cond.i:                                       ; preds = %bma220_read_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.1.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %cmp.i.i.1.i = icmp slt i32 %call.i.i.1.i, 0
  br i1 %cmp.i.i.1.i, label %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.1.i

for.cond.i.bma220_read_reg.exit.thread.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

bma220_read_reg.exit.1.i:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  br label %bma220_power.exit

bma220_read_reg.exit.thread.i:                    ; preds = %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, %entry.bma220_read_reg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  br label %bma220_power.exit

bma220_read_reg.exit.i:                           ; preds = %entry
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.i = icmp eq i8 %5, 0
  br i1 %cmp7.i, label %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, label %for.cond.i

bma220_read_reg.exit.i.bma220_power.exit_crit_edge: ; preds = %bma220_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_power.exit

bma220_power.exit:                                ; preds = %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, %bma220_read_reg.exit.thread.i, %bma220_read_reg.exit.1.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %lock = getelementptr inbounds %struct.bma220_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %tx_buf = getelementptr inbounds %struct.bma220_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -126, ptr %tx_buf, align 128
  %scan = getelementptr inbounds %struct.bma220_data, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @spi_write_then_read(ptr noundef %5, ptr noundef %tx_buf, i32 noundef 1, ptr noundef %scan, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scan_timestamp.i, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %12, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %15) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %cmd.addr.i.i30 = alloca i8, align 1
  %result.i.i31 = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %address, align 4
  %conv = trunc i32 %6 to i8
  %7 = or i8 %conv, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %8 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %9 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %result.i.i, align 1, !annotation !59
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %4, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bma220_read_reg.exit.thread, label %bma220_read_reg.exit

bma220_read_reg.exit.thread:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %cleanup

bma220_read_reg.exit:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 1
  %conv3 = zext i8 %13 to i32
  %shr42 = lshr i32 %conv.i.i, %conv3
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits, align 1
  %16 = sub i8 32, %15
  %conv1.i = zext i8 %16 to i32
  %shl.i = shl i32 %shr42, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i30) #6
  %20 = ptrtoint ptr %cmd.addr.i.i30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -111, ptr %cmd.addr.i.i30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i31) #6
  %21 = ptrtoint ptr %result.i.i31 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %result.i.i31, align 1, !annotation !59
  %call.i.i32 = call i32 @spi_write_then_read(ptr noundef %19, ptr noundef nonnull %cmd.addr.i.i30, i32 noundef 1, ptr noundef nonnull %result.i.i31, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp.i.i33 = icmp slt i32 %call.i.i32, 0
  br i1 %cmp.i.i33, label %bma220_read_reg.exit37.thread, label %bma220_read_reg.exit37

bma220_read_reg.exit37.thread:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i30) #6
  br label %cleanup

bma220_read_reg.exit37:                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %result.i.i31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %result.i.i31, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i30) #6
  %24 = and i8 %23, 3
  %conv14 = zext i8 %24 to i32
  %arrayidx = getelementptr [4 x [2 x i32]], ptr @bma220_scale_table, i32 0, i32 %conv14
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val, align 4
  %arrayidx18 = getelementptr [4 x [2 x i32]], ptr @bma220_scale_table, i32 0, i32 %conv14, i32 1
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx18, align 4
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %bma220_read_reg.exit37, %bma220_read_reg.exit37.thread, %bma220_read_reg.exit, %bma220_read_reg.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %bma220_read_reg.exit37 ], [ 1, %bma220_read_reg.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %bma220_read_reg.exit.thread ], [ %call.i.i32, %bma220_read_reg.exit37.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bma220_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bma220_scale_table, ptr %vals, align 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %type, align 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %val, label %for.body.preheader.cleanup_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true.1
    i32 2, label %land.lhs.true.2
    i32 4, label %land.lhs.true.3
  ]

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 623000, i32 %val2)
  %cmp5 = icmp eq i32 %val2, 623000
  br i1 %cmp5, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true.1:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 248000, i32 %val2)
  %cmp5.1 = icmp eq i32 %val2, 248000
  br i1 %cmp5.1, label %land.lhs.true.1.if.end8_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.1.if.end8_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true.2:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 491000, i32 %val2)
  %cmp5.2 = icmp eq i32 %val2, 491000
  br i1 %cmp5.2, label %land.lhs.true.2.if.end8_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.2.if.end8_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true.3:                                  ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 983000, i32 %val2)
  %cmp5.3 = icmp eq i32 %val2, 983000
  br i1 %cmp5.3, label %land.lhs.true.3.if.end8_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.3.if.end8_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.3.if.end8_crit_edge, %land.lhs.true.2.if.end8_crit_edge, %land.lhs.true.1.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge
  %i.037.lcssa = phi i8 [ 0, %land.lhs.true.if.end8_crit_edge ], [ 1, %land.lhs.true.1.if.end8_crit_edge ], [ 2, %land.lhs.true.2.if.end8_crit_edge ], [ 3, %land.lhs.true.3.if.end8_crit_edge ]
  %lock = getelementptr inbounds %struct.bma220_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %tx_buf = getelementptr inbounds %struct.bma220_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %tx_buf, align 128
  %arrayidx11 = getelementptr %struct.bma220_data, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %i.037.lcssa, ptr %arrayidx11, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_buf, ptr %t.i, align 4
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
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end8.spi_write.exit_crit_edge

if.end8.spi_write.exit_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end8
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

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end8.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp14 = icmp slt i32 %call.i.i, 0
  br i1 %cmp14, label %do.end, label %spi_write.exit.if.end18_crit_edge

spi_write.exit.if.end18_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.11) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %spi_write.exit.if.end18_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.3.cleanup_crit_edge ], [ -22, %land.lhs.true.2.cleanup_crit_edge ], [ -22, %land.lhs.true.1.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.i

entry.bma220_read_reg.exit.thread.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

for.cond.i:                                       ; preds = %bma220_read_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.1.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %cmp.i.i.1.i = icmp slt i32 %call.i.i.1.i, 0
  br i1 %cmp.i.i.1.i, label %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.1.i

for.cond.i.bma220_read_reg.exit.thread.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

bma220_read_reg.exit.1.i:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7.1.i = icmp eq i8 %5, 0
  %spec.select.i = select i1 %cmp7.1.i, i32 0, i32 -16
  br label %bma220_power.exit

bma220_read_reg.exit.thread.i:                    ; preds = %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, %entry.bma220_read_reg.exit.thread.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i.i, %entry.bma220_read_reg.exit.thread.i_crit_edge ], [ %call.i.i.1.i, %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  br label %bma220_power.exit

bma220_read_reg.exit.i:                           ; preds = %entry
  %6 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7.i = icmp eq i8 %7, 0
  br i1 %cmp7.i, label %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, label %for.cond.i

bma220_read_reg.exit.i.bma220_power.exit_crit_edge: ; preds = %bma220_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_power.exit

bma220_power.exit:                                ; preds = %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, %bma220_read_reg.exit.thread.i, %bma220_read_reg.exit.1.i
  %retval.0.i = phi i32 [ %call.i.i.lcssa.i, %bma220_read_reg.exit.thread.i ], [ 0, %bma220_read_reg.exit.i.bma220_power.exit_crit_edge ], [ %spec.select.i, %bma220_read_reg.exit.1.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma220_resume(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %0 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %1 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.i

entry.bma220_read_reg.exit.thread.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

for.cond.i:                                       ; preds = %bma220_read_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  %2 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -104, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #6
  %3 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !59
  %call.i.i.1.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %cmp.i.i.1.i = icmp slt i32 %call.i.i.1.i, 0
  br i1 %cmp.i.i.1.i, label %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, label %bma220_read_reg.exit.1.i

for.cond.i.bma220_read_reg.exit.thread.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_read_reg.exit.thread.i

bma220_read_reg.exit.1.i:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp2.1.i = icmp eq i8 %5, -1
  %spec.select.i = select i1 %cmp2.1.i, i32 0, i32 -16
  br label %bma220_power.exit

bma220_read_reg.exit.thread.i:                    ; preds = %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge, %entry.bma220_read_reg.exit.thread.i_crit_edge
  %call.i.i.lcssa.i = phi i32 [ %call.i.i.i, %entry.bma220_read_reg.exit.thread.i_crit_edge ], [ %call.i.i.1.i, %for.cond.i.bma220_read_reg.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  br label %bma220_power.exit

bma220_read_reg.exit.i:                           ; preds = %entry
  %6 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp2.i = icmp eq i8 %7, -1
  br i1 %cmp2.i, label %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, label %for.cond.i

bma220_read_reg.exit.i.bma220_power.exit_crit_edge: ; preds = %bma220_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bma220_power.exit

bma220_power.exit:                                ; preds = %bma220_read_reg.exit.i.bma220_power.exit_crit_edge, %bma220_read_reg.exit.thread.i, %bma220_read_reg.exit.1.i
  %retval.0.i = phi i32 [ %call.i.i.lcssa.i, %bma220_read_reg.exit.thread.i ], [ 0, %bma220_read_reg.exit.i.bma220_power.exit_crit_edge ], [ %spec.select.i, %bma220_read_reg.exit.1.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_bma220_spi__234_327_bma220_driver_init6, !1, !"__initcall__kmod_bma220_spi__234_327_bma220_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/bma220_spi.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_bma220_driver_exit, !1, !"__exitcall_bma220_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/bma220_spi.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/bma220_spi.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/bma220_spi.c", i32 331, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/bma220_spi.c", i32 320, i32 11}
!12 = !{ptr @bma220_driver, !13, !"bma220_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/bma220_spi.c", i32 318, i32 26}
!14 = !{ptr @bma220_spi_id, !15, !"bma220_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/bma220_spi.c", i32 307, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/bma220_spi.c", i32 258, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @bma220_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @bma220_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @bma220_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/accel/bma220_spi.c", i32 264, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/bma220_spi.c", i32 267, i32 20}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/bma220_spi.c", i32 285, i32 3}
!31 = !{ptr @bma220_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bma220_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @bma220_info, !34, !"bma220_info", i1 false, i1 false}
!34 = !{!"../drivers/iio/accel/bma220_spi.c", i32 195, i32 30}
!35 = !{ptr @bma220_scale_table, !36, !"bma220_scale_table", i1 false, i1 false}
!36 = !{!"../drivers/iio/accel/bma220_spi.c", i32 58, i32 18}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/bma220_spi.c", i32 169, i32 4}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bma220_write_raw._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @bma220_write_raw._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bma220_channels, !43, !"bma220_channels", i1 false, i1 false}
!43 = !{!"../drivers/iio/accel/bma220_spi.c", i32 73, i32 35}
!44 = !{ptr @bma220_accel_scan_masks, !45, !"bma220_accel_scan_masks", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/bma220_spi.c", i32 85, i32 28}
!46 = !{ptr @bma220_acpi_id, !47, !"bma220_acpi_id", i1 false, i1 false}
!47 = !{!"../drivers/iio/accel/bma220_spi.c", i32 312, i32 36}
!48 = !{ptr @bma220_pm_ops, !49, !"bma220_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/bma220_spi.c", i32 305, i32 8}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i8 0, i8 2}
