; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/kxcjk-1013.c_pt.bc'
source_filename = "../drivers/iio/accel/kxcjk-1013.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.kx_chipset_regs = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.89 = type { i16, i8, i8 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.kx_odr_map = type { i32, i32, i32, i32 }
%struct.anon.90 = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.kxcjk1013_data = type { [2 x %struct.regulator_bulk_data], ptr, ptr, ptr, %struct.iio_mount_matrix, %struct.mutex, %struct.anon.87, i8, i8, i32, i32, i8, i8, i32, i8, i64, i32, i32, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.kxcjk_1013_platform_data = type { i8, %struct.iio_mount_matrix }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_kxcjk_1013__290_1758_kxcjk1013_driver_init6 = internal global ptr @kxcjk1013_driver_init, section ".initcall6.init", align 4
@kxcjk1013_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @kxcjk1013_probe, ptr @kxcjk1013_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @kxcjk1013_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kxcjk1013_pm_ops, ptr null, ptr null }, ptr @kxcjk1013_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_kxcjk1013_driver_exit = internal global ptr @kxcjk1013_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [76 x i8] c"kxcjk_1013.author=Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"kxcjk_1013.file=drivers/iio/accel/kxcjk-1013\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"kxcjk_1013.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [54 x i8] c"kxcjk_1013.description=KXCJK1013 accelerometer driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kxcjk1013\00", [22 x i8] zeroinitializer }, align 32
@kxcjk1013_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kionix,kxcjk1013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kionix,kxcj91008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kionix,kxtj21009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kionix,kxtf9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"kionix,kx023-1025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@kxcjk1013_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @kxcjk1013_suspend, ptr @kxcjk1013_resume, ptr @kxcjk1013_suspend, ptr @kxcjk1013_resume, ptr @kxcjk1013_suspend, ptr @kxcjk1013_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kxcjk1013_runtime_suspend, ptr @kxcjk1013_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@kxcjk1013_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"kxcjk1013\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"kxcj91008\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"kxtj21009\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"kxtf9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"kx023-1025\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"SMO8500\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@kxcjk1013_regs = internal constant { %struct.kx_chipset_regs, [23 x i8] } { %struct.kx_chipset_regs { i8 22, i8 23, i8 26, i8 27, i8 29, i8 30, i8 33, i8 41, i8 106 }, [23 x i8] zeroinitializer }, align 32
@kxtf9_regs = internal constant { %struct.kx_chipset_regs, [23 x i8] } { %struct.kx_chipset_regs { i8 22, i8 0, i8 26, i8 27, i8 29, i8 30, i8 33, i8 41, i8 90 }, [23 x i8] zeroinitializer }, align 32
@kx0231025_regs = internal constant { %struct.kx_chipset_regs, [23 x i8] } { %struct.kx_chipset_regs { i8 19, i8 20, i8 23, i8 24, i8 26, i8 28, i8 27, i8 35, i8 48 }, [23 x i8] zeroinitializer }, align 32
@kxcjk1013_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@kxcjk1013_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kxcjk1013_event, i32 1, ptr @kxcjk1013_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kxcjk1013_event, i32 1, ptr @kxcjk1013_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 2 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @kxcjk1013_event, i32 1, ptr @kxcjk1013_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@kxcjk1013_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@kxcjk1013_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @kxcjk1013_attrs_group, ptr @kxcjk1013_read_raw, ptr null, ptr null, ptr @kxcjk1013_write_raw, ptr null, ptr null, ptr @kxcjk1013_read_event_config, ptr @kxcjk1013_write_event_config, ptr @kxcjk1013_read_event, ptr @kxcjk1013_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kxcjk1013_event\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s-any-motion-dev%d\00", [44 x i8] zeroinitializer }, align 32
@kxcjk1013_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @kxcjk1013_data_rdy_trigger_set_state, ptr @kxcjk1013_trig_reen, ptr null }, [20 x i8] zeroinitializer }, align 32
@kxcjk1013_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @kxcjk1013_buffer_preenable, ptr null, ptr null, ptr @kxcjk1013_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@kxcjk1013_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1577, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kxcjk1013_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/accel/kxcjk-1013.c\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kxcjk1013_probe._entry_ptr = internal global ptr @kxcjk1013_probe._entry, section ".printk_index", align 4
@kxcjk1013_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1592, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@kxcjk1013_probe._entry_ptr.15 = internal global ptr @kxcjk1013_probe._entry.13, section ".printk_index", align 4
@kxcjk1013_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.10, i32 511, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading who_am_i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kxcjk1013_chip_init\00", [44 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr = internal global ptr @kxcjk1013_chip_init._entry, section ".printk_index", align 4
@kxcjk1013_chip_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.22, ptr @.str.10, ptr @.str.24, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kxcjk_1013\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"KXCJK1013 Chip Id %x\0A\00", [42 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.10, i32 523, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reading reg_ctrl1\0A\00", [39 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.27 = internal global ptr @kxcjk1013_chip_init._entry.25, section ".printk_index", align 4
@kxcjk1013_chip_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.10, i32 532, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error reading reg_ctrl\0A\00", [40 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.30 = internal global ptr @kxcjk1013_chip_init._entry.28, section ".printk_index", align 4
@kxcjk1013_chip_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.10, i32 543, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error reading reg_data_ctrl\0A\00", [35 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.33 = internal global ptr @kxcjk1013_chip_init._entry.31, section ".printk_index", align 4
@kxcjk1013_chip_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.10, i32 552, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error reading reg_int_ctrl1\0A\00", [35 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.36 = internal global ptr @kxcjk1013_chip_init._entry.34, section ".printk_index", align 4
@kxcjk1013_chip_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.22, ptr @.str.10, i32 563, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error writing reg_int_ctrl1\0A\00", [35 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.39 = internal global ptr @kxcjk1013_chip_init._entry.37, section ".printk_index", align 4
@kxcjk1013_chip_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.22, ptr @.str.10, i32 573, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error writing reg_inc4\0A\00", [40 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_init._entry_ptr.42 = internal global ptr @kxcjk1013_chip_init._entry.40, section ".printk_index", align 4
@kxcjk1013_set_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.43, ptr @.str.10, i32 478, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kxcjk1013_set_range\00", [44 x i8] zeroinitializer }, align 32
@kxcjk1013_set_range._entry_ptr = internal global ptr @kxcjk1013_set_range._entry, section ".printk_index", align 4
@KXCJK1013_scale_table = internal constant { [3 x %struct.anon.89], [20 x i8] } { [3 x %struct.anon.89] [%struct.anon.89 { i16 9582, i8 0, i8 0 }, %struct.anon.89 { i16 19163, i8 1, i8 0 }, %struct.anon.89 { i16 -27210, i8 0, i8 1 }], [20 x i8] zeroinitializer }, align 32
@kxcjk1013_set_range._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.10, i32 489, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_ctrl1\0A\00", [39 x i8] zeroinitializer }, align 32
@kxcjk1013_set_range._entry_ptr.46 = internal global ptr @kxcjk1013_set_range._entry.44, section ".printk_index", align 4
@kxcjk1013_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 0, i32 11, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.47, i32 1, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @kxcjk1013_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@kxcjk1013_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @kxcjk1013_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@kxcjk1013_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_accel_sampling_frequency_available, ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kxcjk1013_get_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.52, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"in_accel_sampling_frequency_available\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"25 50 100 200 400 800\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"0.781000 1.563000 3.125000 6.250000 12.500000 25 50 100 200 400 800 1600\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0.009582 0.019163 0.038326\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@kxcjk1013_set_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.10, i32 615, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed: %s for %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kxcjk1013_set_power_state\00", [38 x i8] zeroinitializer }, align 32
@kxcjk1013_set_power_state._entry_ptr = internal global ptr @kxcjk1013_set_power_state._entry, section ".printk_index", align 4
@kxcjk1013_get_acc_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.10, i32 867, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read accel_%c registers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kxcjk1013_get_acc_reg\00", [42 x i8] zeroinitializer }, align 32
@kxcjk1013_get_acc_reg._entry_ptr = internal global ptr @kxcjk1013_get_acc_reg._entry, section ".printk_index", align 4
@kxtf9_samp_freq_table = internal constant { [6 x %struct.kx_odr_map], [32 x i8] } { [6 x %struct.kx_odr_map] [%struct.kx_odr_map { i32 25, i32 0, i32 1, i32 0 }, %struct.kx_odr_map { i32 50, i32 0, i32 2, i32 1 }, %struct.kx_odr_map { i32 100, i32 0, i32 3, i32 1 }, %struct.kx_odr_map { i32 200, i32 0, i32 4, i32 1 }, %struct.kx_odr_map { i32 400, i32 0, i32 5, i32 1 }, %struct.kx_odr_map { i32 800, i32 0, i32 6, i32 1 }], [32 x i8] zeroinitializer }, align 32
@samp_freq_table = internal constant { [12 x %struct.kx_odr_map], [32 x i8] } { [12 x %struct.kx_odr_map] [%struct.kx_odr_map { i32 0, i32 781000, i32 8, i32 0 }, %struct.kx_odr_map { i32 1, i32 563000, i32 9, i32 1 }, %struct.kx_odr_map { i32 3, i32 125000, i32 10, i32 2 }, %struct.kx_odr_map { i32 6, i32 250000, i32 11, i32 3 }, %struct.kx_odr_map { i32 12, i32 500000, i32 0, i32 4 }, %struct.kx_odr_map { i32 25, i32 0, i32 1, i32 5 }, %struct.kx_odr_map { i32 50, i32 0, i32 2, i32 6 }, %struct.kx_odr_map { i32 100, i32 0, i32 3, i32 6 }, %struct.kx_odr_map { i32 200, i32 0, i32 4, i32 6 }, %struct.kx_odr_map { i32 400, i32 0, i32 5, i32 6 }, %struct.kx_odr_map { i32 800, i32 0, i32 6, i32 6 }, %struct.kx_odr_map { i32 1600, i32 0, i32 7, i32 6 }], [32 x i8] zeroinitializer }, align 32
@kxcjk1013_set_odr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.10, i32 825, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing data_ctrl\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kxcjk1013_set_odr\00", [46 x i8] zeroinitializer }, align 32
@kxcjk1013_set_odr._entry_ptr = internal global ptr @kxcjk1013_set_odr._entry, section ".printk_index", align 4
@kxcjk1013_set_odr._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.10, i32 834, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error writing reg_ctrl2\0A\00", [39 x i8] zeroinitializer }, align 32
@kxcjk1013_set_odr._entry_ptr.62 = internal global ptr @kxcjk1013_set_odr._entry.60, section ".printk_index", align 4
@kxcjk1013_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.63, ptr @.str.10, i32 460, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kxcjk1013_get_mode\00", [45 x i8] zeroinitializer }, align 32
@kxcjk1013_get_mode._entry_ptr = internal global ptr @kxcjk1013_get_mode._entry, section ".printk_index", align 4
@kxcjk1013_setup_any_motion_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.64, ptr @.str.10, i32 666, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kxcjk1013_setup_any_motion_interrupt\00", [59 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_any_motion_interrupt._entry_ptr = internal global ptr @kxcjk1013_setup_any_motion_interrupt._entry, section ".printk_index", align 4
@kxcjk1013_setup_any_motion_interrupt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.64, ptr @.str.10, i32 677, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_any_motion_interrupt._entry_ptr.66 = internal global ptr @kxcjk1013_setup_any_motion_interrupt._entry.65, section ".printk_index", align 4
@kxcjk1013_setup_any_motion_interrupt._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.64, ptr @.str.10, i32 683, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_any_motion_interrupt._entry_ptr.68 = internal global ptr @kxcjk1013_setup_any_motion_interrupt._entry.67, section ".printk_index", align 4
@kxcjk1013_setup_any_motion_interrupt._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.64, ptr @.str.10, i32 694, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_any_motion_interrupt._entry_ptr.70 = internal global ptr @kxcjk1013_setup_any_motion_interrupt._entry.69, section ".printk_index", align 4
@kxcjk1013_chip_update_thresholds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.10, i32 631, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error writing reg_wake_timer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"kxcjk1013_chip_update_thresholds\00", [63 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_update_thresholds._entry_ptr = internal global ptr @kxcjk1013_chip_update_thresholds._entry, section ".printk_index", align 4
@kxcjk1013_chip_update_thresholds._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.10, i32 638, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error writing reg_wake_thres\0A\00", [34 x i8] zeroinitializer }, align 32
@kxcjk1013_chip_update_thresholds._entry_ptr.75 = internal global ptr @kxcjk1013_chip_update_thresholds._entry.73, section ".printk_index", align 4
@kxcjk1013_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.10, i32 1357, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error reading reg_int_src1\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kxcjk1013_event_handler\00", [40 x i8] zeroinitializer }, align 32
@kxcjk1013_event_handler._entry_ptr = internal global ptr @kxcjk1013_event_handler._entry, section ".printk_index", align 4
@kxcjk1013_event_handler._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.10, i32 1380, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error reading reg_int_rel\0A\00", [37 x i8] zeroinitializer }, align 32
@kxcjk1013_event_handler._entry_ptr.80 = internal global ptr @kxcjk1013_event_handler._entry.78, section ".printk_index", align 4
@kxcjk1013_report_motion_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.10, i32 1290, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error reading reg_int_src2\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kxcjk1013_report_motion_event\00", [34 x i8] zeroinitializer }, align 32
@kxcjk1013_report_motion_event._entry_ptr = internal global ptr @kxcjk1013_report_motion_event._entry, section ".printk_index", align 4
@kxcjk1013_setup_new_data_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.83, ptr @.str.10, i32 724, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kxcjk1013_setup_new_data_interrupt\00", [61 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_new_data_interrupt._entry_ptr = internal global ptr @kxcjk1013_setup_new_data_interrupt._entry, section ".printk_index", align 4
@kxcjk1013_setup_new_data_interrupt._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.83, ptr @.str.10, i32 735, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_new_data_interrupt._entry_ptr.85 = internal global ptr @kxcjk1013_setup_new_data_interrupt._entry.84, section ".printk_index", align 4
@kxcjk1013_setup_new_data_interrupt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.83, ptr @.str.10, i32 741, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_new_data_interrupt._entry_ptr.87 = internal global ptr @kxcjk1013_setup_new_data_interrupt._entry.86, section ".printk_index", align 4
@kxcjk1013_setup_new_data_interrupt._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.83, ptr @.str.10, i32 752, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_setup_new_data_interrupt._entry_ptr.89 = internal global ptr @kxcjk1013_setup_new_data_interrupt._entry.88, section ".printk_index", align 4
@kxcjk1013_trig_reen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.90, ptr @.str.10, i32 1237, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kxcjk1013_trig_reen\00", [44 x i8] zeroinitializer }, align 32
@kxcjk1013_trig_reen._entry_ptr = internal global ptr @kxcjk1013_trig_reen._entry, section ".printk_index", align 4
@kxcjk1013_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.91, ptr @.str.10, i32 435, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kxcjk1013_set_mode\00", [45 x i8] zeroinitializer }, align 32
@kxcjk1013_set_mode._entry_ptr = internal global ptr @kxcjk1013_set_mode._entry, section ".printk_index", align 4
@kxcjk1013_set_mode._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.91, ptr @.str.10, i32 446, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@kxcjk1013_set_mode._entry_ptr.93 = internal global ptr @kxcjk1013_set_mode._entry.92, section ".printk_index", align 4
@kxcjk1013_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.10, i32 1676, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powering off device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kxcjk1013_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@kxcjk1013_runtime_suspend._entry_ptr = internal global ptr @kxcjk1013_runtime_suspend._entry, section ".printk_index", align 4
@odr_start_up_times = internal constant { [5 x [12 x %struct.anon.90]], [96 x i8] } { [5 x [12 x %struct.anon.90]] [[12 x %struct.anon.90] [%struct.anon.90 { i32 8, i32 100000 }, %struct.anon.90 { i32 9, i32 100000 }, %struct.anon.90 { i32 10, i32 100000 }, %struct.anon.90 { i32 11, i32 100000 }, %struct.anon.90 { i32 0, i32 80000 }, %struct.anon.90 { i32 1, i32 41000 }, %struct.anon.90 { i32 2, i32 21000 }, %struct.anon.90 { i32 3, i32 11000 }, %struct.anon.90 { i32 4, i32 6400 }, %struct.anon.90 { i32 5, i32 3900 }, %struct.anon.90 { i32 6, i32 2700 }, %struct.anon.90 { i32 7, i32 2100 }], [12 x %struct.anon.90] [%struct.anon.90 { i32 8, i32 100000 }, %struct.anon.90 { i32 9, i32 100000 }, %struct.anon.90 { i32 10, i32 100000 }, %struct.anon.90 { i32 11, i32 100000 }, %struct.anon.90 { i32 0, i32 80000 }, %struct.anon.90 { i32 1, i32 41000 }, %struct.anon.90 { i32 2, i32 21000 }, %struct.anon.90 { i32 3, i32 11000 }, %struct.anon.90 { i32 4, i32 6400 }, %struct.anon.90 { i32 5, i32 3900 }, %struct.anon.90 { i32 6, i32 2700 }, %struct.anon.90 { i32 7, i32 2100 }], [12 x %struct.anon.90] [%struct.anon.90 { i32 8, i32 1240000 }, %struct.anon.90 { i32 9, i32 621000 }, %struct.anon.90 { i32 10, i32 309000 }, %struct.anon.90 { i32 11, i32 151000 }, %struct.anon.90 { i32 0, i32 80000 }, %struct.anon.90 { i32 1, i32 41000 }, %struct.anon.90 { i32 2, i32 21000 }, %struct.anon.90 { i32 3, i32 11000 }, %struct.anon.90 { i32 4, i32 6000 }, %struct.anon.90 { i32 5, i32 4000 }, %struct.anon.90 { i32 6, i32 3000 }, %struct.anon.90 { i32 7, i32 2000 }], [12 x %struct.anon.90] [%struct.anon.90 { i32 1, i32 81000 }, %struct.anon.90 { i32 2, i32 41000 }, %struct.anon.90 { i32 3, i32 21000 }, %struct.anon.90 { i32 4, i32 11000 }, %struct.anon.90 { i32 5, i32 5100 }, %struct.anon.90 { i32 6, i32 2700 }, %struct.anon.90 zeroinitializer, %struct.anon.90 zeroinitializer, %struct.anon.90 zeroinitializer, %struct.anon.90 zeroinitializer, %struct.anon.90 zeroinitializer, %struct.anon.90 zeroinitializer], [12 x %struct.anon.90] [%struct.anon.90 { i32 8, i32 1240000 }, %struct.anon.90 { i32 9, i32 621000 }, %struct.anon.90 { i32 10, i32 309000 }, %struct.anon.90 { i32 11, i32 151000 }, %struct.anon.90 { i32 0, i32 81000 }, %struct.anon.90 { i32 1, i32 40000 }, %struct.anon.90 { i32 2, i32 22000 }, %struct.anon.90 { i32 3, i32 12000 }, %struct.anon.90 { i32 4, i32 7000 }, %struct.anon.90 { i32 5, i32 4400 }, %struct.anon.90 { i32 6, i32 3000 }, %struct.anon.90 { i32 7, i32 3000 }]], [96 x i8] zeroinitializer }, align 32
@switch.table.kxcjk1013_probe = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @kxcjk1013_regs, ptr @kxcjk1013_regs, ptr @kxcjk1013_regs, ptr @kxtf9_regs, ptr @kx0231025_regs], [44 x i8] zeroinitializer }, align 32
@switch.table.kxcjk1013_read_raw = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.97 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 3, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 9582, i64 19163, i64 38326]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"kxcjk1013_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1747, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1749, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"kxcjk1013_of_match\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1737, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"kxcjk1013_pm_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1703, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"kxcjk1013_id\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1725, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1464, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1465, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1469, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"kxcjk1013_regs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 198, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant [11 x i8] c"kxtf9_regs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 210, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"kx0231025_regs\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 224, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1518, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"kxcjk1013_channels\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1181, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"kxcjk1013_scan_masks\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1203, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"kxcjk1013_info\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1193, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1532, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1538, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1547, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"kxcjk1013_trigger_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1279, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"kxcjk1013_buffer_setup_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1188, i32 42 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1577, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1592, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 511, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 515, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 523, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 532, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 543, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 552, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 563, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 573, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 478, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [22 x i8] c"KXCJK1013_scale_table\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 398, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 489, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [16 x i8] c"kxcjk1013_event\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1139, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"kxcjk1013_ext_info\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1156, i32 44 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1157, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [22 x i8] c"kxcjk1013_attrs_group\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1135, i32 37 }
@___asan_gen_.267 = private unnamed_addr constant [21 x i8] c"kxcjk1013_attributes\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1129, i32 26 }
@___asan_gen_.270 = private unnamed_addr constant [51 x i8] c"iio_dev_attr_in_accel_sampling_frequency_available\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1124, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 315, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 303, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1121, i32 22 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1127, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 614, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 866, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [22 x i8] c"kxtf9_samp_freq_table\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 305, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant [16 x i8] c"samp_freq_table\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 287, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 825, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 834, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 460, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 666, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 677, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 683, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 694, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 630, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 638, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1357, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1380, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1290, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 724, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 735, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 741, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 752, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1237, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 435, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 446, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 1676, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [19 x i8] c"odr_start_up_times\00", align 1
@___asan_gen_.433 = private constant [34 x i8] c"../drivers/iio/accel/kxcjk-1013.c\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.433, i32 321, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [29 x i8] c"switch.table.kxcjk1013_probe\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [32 x i8] c"switch.table.kxcjk1013_read_raw\00", align 1
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_kxcjk1013_driver_exit, ptr @__initcall__kmod_kxcjk_1013__290_1758_kxcjk1013_driver_init6, ptr @kxcjk1013_chip_init._entry, ptr @kxcjk1013_chip_init._entry.25, ptr @kxcjk1013_chip_init._entry.28, ptr @kxcjk1013_chip_init._entry.31, ptr @kxcjk1013_chip_init._entry.34, ptr @kxcjk1013_chip_init._entry.37, ptr @kxcjk1013_chip_init._entry.40, ptr @kxcjk1013_chip_init._entry_ptr, ptr @kxcjk1013_chip_init._entry_ptr.27, ptr @kxcjk1013_chip_init._entry_ptr.30, ptr @kxcjk1013_chip_init._entry_ptr.33, ptr @kxcjk1013_chip_init._entry_ptr.36, ptr @kxcjk1013_chip_init._entry_ptr.39, ptr @kxcjk1013_chip_init._entry_ptr.42, ptr @kxcjk1013_chip_update_thresholds._entry, ptr @kxcjk1013_chip_update_thresholds._entry.73, ptr @kxcjk1013_chip_update_thresholds._entry_ptr, ptr @kxcjk1013_chip_update_thresholds._entry_ptr.75, ptr @kxcjk1013_driver_exit, ptr @kxcjk1013_event_handler._entry, ptr @kxcjk1013_event_handler._entry.78, ptr @kxcjk1013_event_handler._entry_ptr, ptr @kxcjk1013_event_handler._entry_ptr.80, ptr @kxcjk1013_get_acc_reg._entry, ptr @kxcjk1013_get_acc_reg._entry_ptr, ptr @kxcjk1013_get_mode._entry, ptr @kxcjk1013_get_mode._entry_ptr, ptr @kxcjk1013_probe._entry, ptr @kxcjk1013_probe._entry.13, ptr @kxcjk1013_probe._entry_ptr, ptr @kxcjk1013_probe._entry_ptr.15, ptr @kxcjk1013_report_motion_event._entry, ptr @kxcjk1013_report_motion_event._entry_ptr, ptr @kxcjk1013_runtime_suspend._entry, ptr @kxcjk1013_runtime_suspend._entry_ptr, ptr @kxcjk1013_set_mode._entry, ptr @kxcjk1013_set_mode._entry.92, ptr @kxcjk1013_set_mode._entry_ptr, ptr @kxcjk1013_set_mode._entry_ptr.93, ptr @kxcjk1013_set_odr._entry, ptr @kxcjk1013_set_odr._entry.60, ptr @kxcjk1013_set_odr._entry_ptr, ptr @kxcjk1013_set_odr._entry_ptr.62, ptr @kxcjk1013_set_power_state._entry, ptr @kxcjk1013_set_power_state._entry_ptr, ptr @kxcjk1013_set_range._entry, ptr @kxcjk1013_set_range._entry.44, ptr @kxcjk1013_set_range._entry_ptr, ptr @kxcjk1013_set_range._entry_ptr.46, ptr @kxcjk1013_setup_any_motion_interrupt._entry, ptr @kxcjk1013_setup_any_motion_interrupt._entry.65, ptr @kxcjk1013_setup_any_motion_interrupt._entry.67, ptr @kxcjk1013_setup_any_motion_interrupt._entry.69, ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr, ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.66, ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.68, ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.70, ptr @kxcjk1013_setup_new_data_interrupt._entry, ptr @kxcjk1013_setup_new_data_interrupt._entry.84, ptr @kxcjk1013_setup_new_data_interrupt._entry.86, ptr @kxcjk1013_setup_new_data_interrupt._entry.88, ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr, ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.85, ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.87, ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.89, ptr @kxcjk1013_trig_reen._entry, ptr @kxcjk1013_trig_reen._entry_ptr, ptr @kxcjk1013_driver, ptr @.str, ptr @kxcjk1013_of_match, ptr @kxcjk1013_pm_ops, ptr @kxcjk1013_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kxcjk1013_regs, ptr @kxtf9_regs, ptr @kx0231025_regs, ptr @kxcjk1013_probe.__key, ptr @.str.4, ptr @kxcjk1013_channels, ptr @kxcjk1013_scan_masks, ptr @kxcjk1013_info, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @kxcjk1013_trigger_ops, ptr @kxcjk1013_buffer_setup_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @KXCJK1013_scale_table, ptr @.str.45, ptr @kxcjk1013_event, ptr @kxcjk1013_ext_info, ptr @.str.47, ptr @kxcjk1013_attrs_group, ptr @kxcjk1013_attributes, ptr @iio_dev_attr_in_accel_sampling_frequency_available, ptr @iio_const_attr_in_accel_scale_available, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @kxtf9_samp_freq_table, ptr @samp_freq_table, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.90, ptr @.str.91, ptr @.str.94, ptr @.str.95, ptr @odr_start_up_times, ptr @switch.table.kxcjk1013_probe, ptr @switch.table.kxcjk1013_read_raw], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtf9_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kx0231025_regs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KXCJK1013_scale_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_range._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_get_acc_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxtf9_samp_freq_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samp_freq_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_odr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_odr._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_any_motion_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_any_motion_interrupt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_any_motion_interrupt._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_any_motion_interrupt._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_update_thresholds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_chip_update_thresholds._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_event_handler._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_report_motion_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_new_data_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_new_data_interrupt._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_new_data_interrupt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_setup_new_data_interrupt._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_trig_reen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_set_mode._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kxcjk1013_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @odr_start_up_times to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kxcjk1013_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kxcjk1013_read_raw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @kxcjk1013_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kxcjk1013_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @kxcjk1013_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 232) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client2 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %client2, align 8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !242
  %active_high_intr8 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %active_high_intr8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %active_high_intr8, align 4
  %orientation = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 4
  %orientation9 = getelementptr inbounds %struct.kxcjk_1013_platform_data, ptr %5, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %orientation, ptr %orientation9, i32 36)
  br label %if.end17

if.else:                                          ; preds = %if.end
  %active_high_intr10 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %active_high_intr10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %active_high_intr10, align 4
  %orientation12 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 4
  %call13 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.1, ptr %1, align 8
  %arrayidx19 = getelementptr [2 x %struct.regulator_bulk_data], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.2, ptr %arrayidx19, align 4
  %call23 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call23, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  %call31 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @kxcjk1013_disable_regulators, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end39, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %1) #10
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  tail call void @msleep(i32 noundef 20) #10
  %tobool40.not = icmp eq ptr %id, null
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %if.end39
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  %chipset = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %chipset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %chipset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %16 = icmp ult i32 %14, 5
  br i1 %16, label %switch.lookup, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.then41
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.kxcjk1013_probe, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %regs56 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %regs56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %switch.load, ptr %regs56, align 8
  %call57 = tail call fastcc i32 @kxcjk1013_chip_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp = icmp slt i32 %call57, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %do.body

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %switch.lookup
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @kxcjk1013_probe.__key) #10
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kxcjk1013_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %21 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @kxcjk1013_scan_masks, ptr %available_scan_masks, align 4
  %name60 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %name60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %id, ptr %name60, align 8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %24 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @kxcjk1013_info, ptr %info, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp61 = icmp sgt i32 %26, 0
  br i1 %cmp61, label %land.lhs.true, label %do.body.if.end106_crit_edge

do.body.if.end106_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true:                                    ; preds = %do.body
  %acpi_type62 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %acpi_type62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %acpi_type62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp63.not = icmp eq i32 %28, 1
  br i1 %cmp63.not, label %land.lhs.true.if.end106_crit_edge, label %if.then64

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then64:                                        ; preds = %land.lhs.true
  %call67 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull @kxcjk1013_data_rdy_trig_poll, ptr noundef nonnull @kxcjk1013_event_handler, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then64.err_poweroff_crit_edge

if.then64.err_poweroff_crit_edge:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_poweroff

if.end70:                                         ; preds = %if.then64
  %29 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name60, align 8
  %call73 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #10
  %call74 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %30, i32 noundef %call73) #10
  %dready_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call74, ptr %dready_trig, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %if.end70.err_poweroff_crit_edge, label %if.end78

if.end70.err_poweroff_crit_edge:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_poweroff

if.end78:                                         ; preds = %if.end70
  %32 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name60, align 8
  %call81 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #10
  %call82 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %33, i32 noundef %call81) #10
  %motion_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %motion_trig to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call82, ptr %motion_trig, align 8
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %if.end78.err_poweroff_crit_edge, label %if.end86

if.end78.err_poweroff_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_poweroff

if.end86:                                         ; preds = %if.end78
  %35 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dready_trig, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @kxcjk1013_trigger_ops, ptr %36, align 8
  %38 = load ptr, ptr %dready_trig, align 4
  %driver_data.i.i244 = getelementptr inbounds %struct.iio_trigger, ptr %38, i32 0, i32 4, i32 8
  %39 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %driver_data.i.i244, align 4
  %40 = load ptr, ptr %dready_trig, align 4
  %trig = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %41 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %40, i32 0, i32 4
  %call.i245 = tail call ptr @get_device(ptr noundef %dev.i) #10
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %43) #10
  %44 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dready_trig, align 4
  %call93 = tail call i32 @__iio_trigger_register(ptr noundef %45, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end86.err_poweroff_crit_edge

if.end86.err_poweroff_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_poweroff

if.end96:                                         ; preds = %if.end86
  %46 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %motion_trig, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kxcjk1013_trigger_ops, ptr %47, align 8
  %49 = load ptr, ptr %motion_trig, align 8
  %driver_data.i.i246 = getelementptr inbounds %struct.iio_trigger, ptr %49, i32 0, i32 4, i32 8
  %50 = ptrtoint ptr %driver_data.i.i246 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %driver_data.i.i246, align 4
  %51 = load ptr, ptr %motion_trig, align 8
  %call101 = tail call i32 @__iio_trigger_register(ptr noundef %51, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end96.if.end106_crit_edge, label %if.then103

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %motion_trig to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %motion_trig, align 8
  br label %err_trigger_unregister

if.end106:                                        ; preds = %if.end96.if.end106_crit_edge, %land.lhs.true.if.end106_crit_edge, %do.body.if.end106_crit_edge
  %call107 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @kxcjk1013_trigger_handler, i32 noundef 0, ptr noundef nonnull @kxcjk1013_buffer_setup_ops, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end112, label %if.end114

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %err_trigger_unregister

if.end114:                                        ; preds = %if.end106
  %call.i247 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool117.not = icmp eq i32 %call.i247, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.err_buffer_cleanup_crit_edge

if.end114.err_buffer_cleanup_crit_edge:           ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_buffer_cleanup

if.end119:                                        ; preds = %if.end114
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call123 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %do.end128, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end128:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %err_buffer_cleanup

err_buffer_cleanup:                               ; preds = %do.end128, %if.end114.err_buffer_cleanup_crit_edge
  %ret.0 = phi i32 [ %call.i247, %if.end114.err_buffer_cleanup_crit_edge ], [ %call123, %do.end128 ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #10
  br label %err_trigger_unregister

err_trigger_unregister:                           ; preds = %err_buffer_cleanup, %do.end112, %if.then103
  %ret.1 = phi i32 [ %call101, %if.then103 ], [ %call107, %do.end112 ], [ %ret.0, %err_buffer_cleanup ]
  %dready_trig133 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %dready_trig133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dready_trig133, align 4
  %tobool134.not = icmp eq ptr %54, null
  br i1 %tobool134.not, label %err_trigger_unregister.if.end137_crit_edge, label %if.then135

err_trigger_unregister.if.end137_crit_edge:       ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.then135:                                       ; preds = %err_trigger_unregister
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_trigger_unregister(ptr noundef nonnull %54) #10
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %err_trigger_unregister.if.end137_crit_edge
  %motion_trig138 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %motion_trig138 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %motion_trig138, align 8
  %tobool139.not = icmp eq ptr %56, null
  br i1 %tobool139.not, label %if.end137.err_poweroff_crit_edge, label %if.then140

if.end137.err_poweroff_crit_edge:                 ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_poweroff

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_trigger_unregister(ptr noundef nonnull %56) #10
  br label %err_poweroff

err_poweroff:                                     ; preds = %if.then140, %if.end137.err_poweroff_crit_edge, %if.end86.err_poweroff_crit_edge, %if.end78.err_poweroff_crit_edge, %if.end70.err_poweroff_crit_edge, %if.then64.err_poweroff_crit_edge
  %ret.2 = phi i32 [ %call67, %if.then64.err_poweroff_crit_edge ], [ %call93, %if.end86.err_poweroff_crit_edge ], [ %ret.1, %if.then140 ], [ %ret.1, %if.end137.err_poweroff_crit_edge ], [ -12, %if.end70.err_poweroff_crit_edge ], [ -12, %if.end78.err_poweroff_crit_edge ]
  %call143 = tail call fastcc i32 @kxcjk1013_set_mode(ptr noundef %1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %err_poweroff, %if.end119.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.end28.cleanup_crit_edge, %if.then25, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then25 ], [ %ret.2, %err_poweroff ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.else.cleanup_crit_edge ], [ %call31, %if.end28.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ -19, %if.end39.cleanup_crit_edge ], [ -22, %if.then41.cleanup_crit_edge ], [ %call57, %switch.lookup.cleanup_crit_edge ], [ 0, %if.end119.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #10
  %dready_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iio_trigger_unregister(ptr noundef nonnull %5) #10
  %motion_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %motion_trig, align 8
  tail call void @iio_trigger_unregister(ptr noundef %7) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl1.i, align 1
  %call.i16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i = icmp slt i32 %call.i16, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 8
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrl17.i, align 1
  %20 = trunc i32 %call.i16 to i8
  %conv.i = and i8 %20, 127
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext %19, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.kxcjk1013_set_mode.exit_crit_edge

if.end.i.kxcjk1013_set_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %if.end.cleanup.sink.split.i_crit_edge ], [ @.str.45, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  br label %kxcjk1013_set_mode.exit

kxcjk1013_set_mode.exit:                          ; preds = %cleanup.sink.split.i, %if.end.i.kxcjk1013_set_mode.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kxcjk1013_disable_regulators(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxcjk1013_chip_init(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kxcjk1013_chip_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kxcjk1013_chip_init, %if.then6)) #10
          to label %do.end11 [label %if.then6], !srcloc !243

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kxcjk1013_chip_init.__UNIQUE_ID_ddebug289, ptr noundef %dev8, ptr noundef nonnull @.str.24, i32 noundef %call) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body2
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 18
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end11.kxcjk1013_set_mode.exit.thread_crit_edge, label %if.end.i

do.end11.kxcjk1013_set_mode.exit.thread_crit_edge: ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread

if.end.i:                                         ; preds = %do.end11
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl17.i, align 1
  %18 = trunc i32 %call.i to i8
  %conv.i = and i8 %18, 127
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %17, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge, label %if.end15

if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread

kxcjk1013_set_mode.exit.thread:                   ; preds = %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge, %do.end11.kxcjk1013_set_mode.exit.thread_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %do.end11.kxcjk1013_set_mode.exit.thread_crit_edge ], [ @.str.45, %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %do.end11.kxcjk1013_set_mode.exit.thread_crit_edge ], [ %call8.i, %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge ]
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 8
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl1, align 1
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 8
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %ctrl128 = getelementptr inbounds %struct.kx_chipset_regs, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctrl128 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctrl128, align 1
  %33 = trunc i32 %call17 to i8
  %conv = or i8 %33, 64
  %call29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext %32, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 8
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.29) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %call39 = tail call fastcc i32 @kxcjk1013_set_range(ptr noundef %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %36 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client, align 8
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %data_ctrl = getelementptr inbounds %struct.kx_chipset_regs, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %data_ctrl to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data_ctrl, align 1
  %call46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client, align 8
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end55:                                         ; preds = %if.end43
  %conv56 = trunc i32 %call46 to i8
  %odr_bits = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 7
  %44 = ptrtoint ptr %odr_bits to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv56, ptr %odr_bits, align 8
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 8
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 8
  %int_ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %int_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %int_ctrl1, align 1
  %call59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %46, i8 noundef zeroext %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %client, align 8
  %dev67 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end68:                                         ; preds = %if.end55
  %active_high_intr = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 11
  %53 = ptrtoint ptr %active_high_intr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %active_high_intr, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool69.not = icmp eq i8 %54, 0
  %and = and i32 %call59, 239
  %masksel = select i1 %tobool69.not, i32 0, i32 16
  %ret.0 = or i32 %masksel, %and
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 8
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  %int_ctrl175 = getelementptr inbounds %struct.kx_chipset_regs, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %int_ctrl175 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %int_ctrl175, align 1
  %conv76 = trunc i32 %ret.0 to i8
  %call77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext %60, i8 noundef zeroext %conv76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %if.end86

do.end83:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client, align 8
  %dev85 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end86:                                         ; preds = %if.end68
  %chipset = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 16
  %63 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chipset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %cmp87 = icmp eq i32 %64, 4
  br i1 %cmp87, label %land.lhs.true, label %if.end86.if.end104_crit_edge

if.end86.if.end104_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

land.lhs.true:                                    ; preds = %if.end86
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp90 = icmp sgt i32 %68, 0
  br i1 %cmp90, label %if.then92, label %land.lhs.true.if.end104_crit_edge

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then92:                                        ; preds = %land.lhs.true
  %call94 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 31, i8 noundef zeroext 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %if.then92.if.end104_crit_edge

if.then92.if.end104_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.end100:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client, align 8
  %dev102 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev102, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end104:                                        ; preds = %if.then92.if.end104_crit_edge, %land.lhs.true.if.end104_crit_edge, %if.end86.if.end104_crit_edge
  %71 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client, align 8
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 8
  %ctrl1.i166 = getelementptr inbounds %struct.kx_chipset_regs, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ctrl1.i166 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ctrl1.i166, align 1
  %call.i167 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp.i168 = icmp slt i32 %call.i167, 0
  br i1 %cmp.i168, label %if.end104.kxcjk1013_set_mode.exit180.thread_crit_edge, label %if.end.i174

if.end104.kxcjk1013_set_mode.exit180.thread_crit_edge: ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit180.thread

if.end.i174:                                      ; preds = %if.end104
  %77 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client, align 8
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 8
  %ctrl17.i170 = getelementptr inbounds %struct.kx_chipset_regs, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ctrl17.i170 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ctrl17.i170, align 1
  %83 = trunc i32 %call.i167 to i8
  %conv.i171 = or i8 %83, -128
  %call8.i172 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext %82, i8 noundef zeroext %conv.i171) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i172)
  %cmp9.i173 = icmp slt i32 %call8.i172, 0
  br i1 %cmp9.i173, label %if.end.i174.kxcjk1013_set_mode.exit180.thread_crit_edge, label %if.end109

if.end.i174.kxcjk1013_set_mode.exit180.thread_crit_edge: ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit180.thread

kxcjk1013_set_mode.exit180.thread:                ; preds = %if.end.i174.kxcjk1013_set_mode.exit180.thread_crit_edge, %if.end104.kxcjk1013_set_mode.exit180.thread_crit_edge
  %.str.45.sink.i175 = phi ptr [ @.str.26, %if.end104.kxcjk1013_set_mode.exit180.thread_crit_edge ], [ @.str.45, %if.end.i174.kxcjk1013_set_mode.exit180.thread_crit_edge ]
  %retval.0.ph.i176 = phi i32 [ %call.i167, %if.end104.kxcjk1013_set_mode.exit180.thread_crit_edge ], [ %call8.i172, %if.end.i174.kxcjk1013_set_mode.exit180.thread_crit_edge ]
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 8
  %dev16.i177 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i177, ptr noundef nonnull %.str.45.sink.i175) #13
  br label %cleanup

if.end109:                                        ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #12
  %wake_thres = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 9
  %86 = ptrtoint ptr %wake_thres to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %wake_thres, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %kxcjk1013_set_mode.exit180.thread, %do.end100, %do.end83, %do.end65, %do.end52, %if.end38.cleanup_crit_edge, %do.end35, %do.end22, %kxcjk1013_set_mode.exit.thread, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call17, %do.end22 ], [ %call29, %do.end35 ], [ %call46, %do.end52 ], [ %call59, %do.end65 ], [ %call77, %do.end83 ], [ %call94, %do.end100 ], [ 0, %if.end109 ], [ %call39, %if.end38.cleanup_crit_edge ], [ %retval.0.ph.i, %kxcjk1013_set_mode.exit.thread ], [ %retval.0.ph.i176, %kxcjk1013_set_mode.exit180.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_data_rdy_trig_poll(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #10
  %timestamp = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call1, ptr %timestamp, align 8
  %dready_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dready_trigger_on, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dready_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 2
  br label %if.end4.sink.split

if.else:                                          ; preds = %entry
  %motion_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %motion_trigger_on, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.else.if.end4_crit_edge, label %if.then3

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %motion_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 3
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.then3, %if.then
  %.sink.in = phi ptr [ %motion_trig, %if.then3 ], [ %dready_trig, %if.then ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load ptr, ptr %.sink.in, align 4
  tail call void @iio_trigger_poll(ptr noundef %.sink) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else.if.end4_crit_edge
  %ev_enable_state = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %. = select i1 %tobool5.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %regs = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #13
  br label %ack_intr

if.end:                                           ; preds = %entry
  %and = and i32 %call1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.ack_intr_crit_edge, label %if.then3

if.end.ack_intr_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ack_intr

if.then3:                                         ; preds = %if.end
  %chipset = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chipset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp4 = icmp eq i32 %11, 3
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %timestamp, align 8
  %call6 = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 289184443006976, i64 noundef %13) #10
  br label %ack_intr

if.else:                                          ; preds = %if.then3
  %14 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 18
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %int_src2.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %int_src2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %int_src2.i, align 1
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81) #13
  br label %ack_intr

if.end.i:                                         ; preds = %if.else
  %and.i = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %24 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %timestamp.i, align 8
  %call4.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 564062349950976, i64 noundef %25) #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and6.i = and i32 %call1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp9.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %26 = ptrtoint ptr %timestamp9.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %timestamp9.i, align 8
  %call10.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 282587373240320, i64 noundef %27) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %and12.i = and i32 %call1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then14.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp15.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %28 = ptrtoint ptr %timestamp15.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp15.i, align 8
  %call16.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 565161861578752, i64 noundef %29) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end17.i_crit_edge
  %and18.i = and i32 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp21.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %30 = ptrtoint ptr %timestamp21.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %timestamp21.i, align 8
  %call22.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 283686884868096, i64 noundef %31) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %and24.i = and i32 %call1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp27.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %32 = ptrtoint ptr %timestamp27.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %timestamp27.i, align 8
  %call28.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 566261373206528, i64 noundef %33) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  %and30.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.ack_intr_crit_edge, label %if.then32.i

if.end29.i.ack_intr_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ack_intr

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp33.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %15, i32 0, i32 15
  %34 = ptrtoint ptr %timestamp33.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %timestamp33.i, align 8
  %call34.i = tail call i32 @iio_push_event(ptr noundef %private, i64 noundef 284786396495872, i64 noundef %35) #10
  br label %ack_intr

ack_intr:                                         ; preds = %if.then32.i, %if.end29.i.ack_intr_crit_edge, %do.end.i, %if.then5, %if.end.ack_intr_crit_edge, %do.end
  %dready_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 12
  %36 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dready_trigger_on, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool9.not = icmp eq i8 %37, 0
  br i1 %tobool9.not, label %if.end11, label %ack_intr.cleanup_crit_edge

ack_intr.cleanup_crit_edge:                       ; preds = %ack_intr
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %ack_intr
  %38 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client, align 8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %int_rel = getelementptr inbounds %struct.kx_chipset_regs, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %int_rel to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %int_rel, align 1
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client, align 8
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.79) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end11.cleanup_crit_edge, %ack_intr.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %scan = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 6
  %call2 = tail call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %5, i8 noundef zeroext 6, i8 noundef zeroext 6, ptr noundef %scan) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scan_timestamp.i, align 8, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %timestamp = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %11, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %9, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #10
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.err_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %14) #10
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxcjk1013_set_mode(ptr nocapture noundef readonly %data, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %regs = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 18
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl1, align 1
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp2 = icmp eq i32 %mode, 0
  %and = and i32 %call, 127
  %masksel = select i1 %cmp2, i32 0, i32 128
  %ret.0 = or i32 %and, %masksel
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %ctrl17 = getelementptr inbounds %struct.kx_chipset_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl17, align 1
  %conv = trunc i32 %ret.0 to i8
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %11, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.45.sink = phi ptr [ @.str.26, %entry.cleanup.sink.split_crit_edge ], [ @.str.45, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call8, %if.end.cleanup.sink.split_crit_edge ]
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 8
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull %.str.45.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxcjk1013_set_range(ptr nocapture noundef %data, i32 noundef %range_index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %regs = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 18
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl1, align 1
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 231
  %gsel_0 = getelementptr [3 x %struct.anon.89], ptr @KXCJK1013_scale_table, i32 0, i32 %range_index, i32 1
  %8 = ptrtoint ptr %gsel_0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gsel_0, align 2
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %or = or i32 %shl, %and
  %gsel_1 = getelementptr [3 x %struct.anon.89], ptr @KXCJK1013_scale_table, i32 0, i32 %range_index, i32 2
  %10 = ptrtoint ptr %gsel_1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gsel_1, align 1
  %conv3 = zext i8 %11 to i32
  %shl4 = shl nuw nsw i32 %conv3, 4
  %or5 = or i32 %or, %shl4
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 8
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %ctrl18 = getelementptr inbounds %struct.kx_chipset_regs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl18 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl18, align 1
  %conv9 = trunc i32 %or5 to i8
  %call10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %17, i8 noundef zeroext %conv9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 8
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.45) #13
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv20 = trunc i32 %range_index to i8
  %range = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20, ptr %range, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call10, %do.end16 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @kxcjk1013_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 4
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb21
    i32 12, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %sw.bb._crit_edge

sw.bb._crit_edge:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %37

if.else:                                          ; preds = %sw.bb
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.else
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !245
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then3_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then3_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !246
  br label %if.then3

if.then3:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then3_crit_edge
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 8
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 1) #13
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end:                                           ; preds = %if.else
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %10 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_index, align 4
  %axis.tr.i = trunc i32 %11 to i8
  %12 = shl i8 %axis.tr.i, 1
  %conv.i52 = add i8 %12, 6
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %14, i8 noundef zeroext %conv.i52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 8
  %dev.i54 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %add3.i = add i32 %11, 120
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i54, ptr noundef nonnull @.str.56, i32 noundef %add3.i) #13
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 8
  %call.i16.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 8
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %call.i17.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i57 = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i57, label %do.end.i60, label %if.then7.kxcjk1013_set_power_state.exit62_crit_edge

if.then7.kxcjk1013_set_power_state.exit62_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_power_state.exit62

do.end.i60:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 8
  %dev8.i59 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i59, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %kxcjk1013_set_power_state.exit62

kxcjk1013_set_power_state.exit62:                 ; preds = %do.end.i60, %if.then7.kxcjk1013_set_power_state.exit62_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shift, align 1
  %conv = zext i8 %25 to i32
  %shr83 = lshr i32 %call.i, %conv
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %realbits, align 1
  %28 = sub i8 32, %27
  %conv1.i = zext i8 %28 to i32
  %shl.i = shl i32 %shr83, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i, ptr %val, align 4
  %30 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i, align 8
  %call.i16.i64 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i65 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i.i65 to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i16.i64, ptr %last_busy.i.i65, align 8
  %33 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i, align 8
  %dev4.i66 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %call.i17.i67 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i66, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i67)
  %cmp.i68 = icmp slt i32 %call.i17.i67, 0
  br i1 %cmp.i68, label %do.end.i71, label %if.end15

do.end.i71:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i, align 8
  %dev8.i70 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i70, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %37

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

37:                                               ; preds = %do.end.i71, %sw.bb._crit_edge
  %ret.0.ph = phi i32 [ %call.i17.i67, %do.end.i71 ], [ -16, %sw.bb._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %val, align 4
  %range = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %range, align 1
  %idxprom = zext i8 %40 to i32
  %arrayidx = getelementptr [3 x %struct.anon.89], ptr @KXCJK1013_scale_table, i32 0, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx, align 2
  %conv22 = zext i16 %42 to i32
  %43 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv22, ptr %val2, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %mutex24 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex24, i32 noundef 0) #10
  %chipset.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chipset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i74 = icmp eq i32 %45, 3
  %odr_bits.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 7
  %46 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %odr_bits.i, align 8
  br i1 %cmp.i74, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb23
  %switch.tableidx = add i8 %47, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %48 = icmp ult i8 %switch.tableidx, 6
  br i1 %48, label %switch.lookup, label %if.then.i.kxcjk1013_get_odr.exit_crit_edge

if.then.i.kxcjk1013_get_odr.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_odr.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %arrayidx.i.i = getelementptr %struct.kx_odr_map, ptr @kxtf9_samp_freq_table, i32 %switch.idx.cast
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val, align 4
  %val26.i.i = getelementptr %struct.kx_odr_map, ptr @kxtf9_samp_freq_table, i32 %switch.idx.cast, i32 1
  br label %return.sink.split.i

if.else.i:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %47)
  %52 = icmp ult i8 %47, 12
  br i1 %52, label %switch.lookup84, label %if.else.i.kxcjk1013_get_odr.exit_crit_edge

if.else.i.kxcjk1013_get_odr.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_odr.exit

switch.lookup84:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = sext i8 %47 to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.kxcjk1013_read_raw, i32 0, i32 %53
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i12.i = getelementptr %struct.kx_odr_map, ptr @samp_freq_table, i32 %switch.load
  %55 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i12.i, align 4
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val, align 4
  %val26.i13.i = getelementptr %struct.kx_odr_map, ptr @samp_freq_table, i32 %switch.load, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %switch.lookup84, %switch.lookup
  %val26.i13.sink.i = phi ptr [ %val26.i13.i, %switch.lookup84 ], [ %val26.i.i, %switch.lookup ]
  %58 = ptrtoint ptr %val26.i13.sink.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val26.i13.sink.i, align 4
  %60 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val2, align 4
  br label %kxcjk1013_get_odr.exit

kxcjk1013_get_odr.exit:                           ; preds = %return.sink.split.i, %if.else.i.kxcjk1013_get_odr.exit_crit_edge, %if.then.i.kxcjk1013_get_odr.exit_crit_edge
  %retval.0.i76 = phi i32 [ -22, %if.then.i.kxcjk1013_get_odr.exit_crit_edge ], [ -22, %if.else.i.kxcjk1013_get_odr.exit_crit_edge ], [ 2, %return.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %mutex24) #10
  br label %cleanup

cleanup:                                          ; preds = %kxcjk1013_get_odr.exit, %sw.bb21, %37, %if.end15, %kxcjk1013_set_power_state.exit62, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i76, %kxcjk1013_get_odr.exit ], [ 2, %sw.bb21 ], [ %call.i.i, %if.then3 ], [ %call.i, %kxcjk1013_set_power_state.exit62 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0.ph, %37 ], [ 1, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %client.i.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 8
  %regs.i.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl1.i.i, align 1
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %kxcjk1013_get_mode.exit.thread.i, label %if.end.i

kxcjk1013_get_mode.exit.thread.i:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.26) #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb
  %chipset.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chipset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp1.i = icmp eq i32 %12, 3
  br i1 %cmp1.i, label %for.body.i.preheader.i, label %for.body.i76.preheader.i

for.body.i76.preheader.i:                         ; preds = %if.end.i
  %13 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %val, label %for.body.i76.preheader.i.if.then7.i_crit_edge [
    i32 0, label %land.lhs.true.i79.i
    i32 1, label %land.lhs.true.i79.1.i
    i32 3, label %land.lhs.true.i79.2.i
    i32 6, label %land.lhs.true.i79.3.i
    i32 12, label %land.lhs.true.i79.4.i
    i32 25, label %land.lhs.true.i79.5.i
    i32 50, label %land.lhs.true.i79.6.i
    i32 100, label %land.lhs.true.i79.7.i
    i32 200, label %land.lhs.true.i79.8.i
    i32 400, label %land.lhs.true.i79.9.i
    i32 800, label %land.lhs.true.i79.10.i
    i32 1600, label %land.lhs.true.i79.11.i
  ]

for.body.i76.preheader.i.if.then7.i_crit_edge:    ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

for.body.i.preheader.i:                           ; preds = %if.end.i
  %14 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %val, label %for.body.i.preheader.i.if.then7.i_crit_edge [
    i32 25, label %land.lhs.true.i.i
    i32 50, label %land.lhs.true.i.1.i
    i32 100, label %land.lhs.true.i.2.i
    i32 200, label %land.lhs.true.i.3.i
    i32 400, label %land.lhs.true.i.4.i
    i32 800, label %land.lhs.true.i.5.i
  ]

for.body.i.preheader.i.if.then7.i_crit_edge:      ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.i:                                ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.end5.i_crit_edge, label %land.lhs.true.i.i.if.then7.i_crit_edge

land.lhs.true.i.i.if.then7.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.i.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.1.i:                              ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.1.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.1.i, label %land.lhs.true.i.1.i.if.end5.i_crit_edge, label %land.lhs.true.i.1.i.if.then7.i_crit_edge

land.lhs.true.i.1.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.1.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.2.i:                              ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.2.i, label %land.lhs.true.i.2.i.if.end5.i_crit_edge, label %land.lhs.true.i.2.i.if.then7.i_crit_edge

land.lhs.true.i.2.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.2.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.3.i:                              ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.3.i, label %land.lhs.true.i.3.i.if.end5.i_crit_edge, label %land.lhs.true.i.3.i.if.then7.i_crit_edge

land.lhs.true.i.3.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.3.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.4.i:                              ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.4.i, label %land.lhs.true.i.4.i.if.end5.i_crit_edge, label %land.lhs.true.i.4.i.if.then7.i_crit_edge

land.lhs.true.i.4.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.4.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i.5.i:                              ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i.5.i, label %land.lhs.true.i.5.i.if.end5.i_crit_edge, label %land.lhs.true.i.5.i.if.then7.i_crit_edge

land.lhs.true.i.5.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i.5.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.i:                              ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 781000, i32 %val2)
  %cmp5.i78.i = icmp eq i32 %val2, 781000
  br i1 %cmp5.i78.i, label %land.lhs.true.i79.i.if.end5.i_crit_edge, label %land.lhs.true.i79.i.if.then7.i_crit_edge

land.lhs.true.i79.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.1.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 563000, i32 %val2)
  %cmp5.i78.1.i = icmp eq i32 %val2, 563000
  br i1 %cmp5.i78.1.i, label %land.lhs.true.i79.1.i.if.end5.i_crit_edge, label %land.lhs.true.i79.1.i.if.then7.i_crit_edge

land.lhs.true.i79.1.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.1.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.2.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp5.i78.2.i = icmp eq i32 %val2, 125000
  br i1 %cmp5.i78.2.i, label %land.lhs.true.i79.2.i.if.end5.i_crit_edge, label %land.lhs.true.i79.2.i.if.then7.i_crit_edge

land.lhs.true.i79.2.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.2.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.3.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i78.3.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.i78.3.i, label %land.lhs.true.i79.3.i.if.end5.i_crit_edge, label %land.lhs.true.i79.3.i.if.then7.i_crit_edge

land.lhs.true.i79.3.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.3.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.4.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i78.4.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.i78.4.i, label %land.lhs.true.i79.4.i.if.end5.i_crit_edge, label %land.lhs.true.i79.4.i.if.then7.i_crit_edge

land.lhs.true.i79.4.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.4.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.5.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.5.i, label %land.lhs.true.i79.5.i.if.end5.i_crit_edge, label %land.lhs.true.i79.5.i.if.then7.i_crit_edge

land.lhs.true.i79.5.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.5.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.6.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.6.i, label %land.lhs.true.i79.6.i.if.end5.i_crit_edge, label %land.lhs.true.i79.6.i.if.then7.i_crit_edge

land.lhs.true.i79.6.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.6.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.7.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.7.i, label %land.lhs.true.i79.7.i.if.end5.i_crit_edge, label %land.lhs.true.i79.7.i.if.then7.i_crit_edge

land.lhs.true.i79.7.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.7.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.8.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.8.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.8.i, label %land.lhs.true.i79.8.i.if.end5.i_crit_edge, label %land.lhs.true.i79.8.i.if.then7.i_crit_edge

land.lhs.true.i79.8.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.8.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.9.i:                            ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.9.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.9.i, label %land.lhs.true.i79.9.i.if.end5.i_crit_edge, label %land.lhs.true.i79.9.i.if.then7.i_crit_edge

land.lhs.true.i79.9.i.if.then7.i_crit_edge:       ; preds = %land.lhs.true.i79.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.9.i.if.end5.i_crit_edge:        ; preds = %land.lhs.true.i79.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.10.i:                           ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.10.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.10.i, label %land.lhs.true.i79.10.i.if.end5.i_crit_edge, label %land.lhs.true.i79.10.i.if.then7.i_crit_edge

land.lhs.true.i79.10.i.if.then7.i_crit_edge:      ; preds = %land.lhs.true.i79.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.10.i.if.end5.i_crit_edge:       ; preds = %land.lhs.true.i79.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i79.11.i:                           ; preds = %for.body.i76.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i78.11.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i78.11.i, label %land.lhs.true.i79.11.i.if.end5.i_crit_edge, label %land.lhs.true.i79.11.i.if.then7.i_crit_edge

land.lhs.true.i79.11.i.if.then7.i_crit_edge:      ; preds = %land.lhs.true.i79.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

land.lhs.true.i79.11.i.if.end5.i_crit_edge:       ; preds = %land.lhs.true.i79.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i79.11.i.if.end5.i_crit_edge, %land.lhs.true.i79.10.i.if.end5.i_crit_edge, %land.lhs.true.i79.9.i.if.end5.i_crit_edge, %land.lhs.true.i79.8.i.if.end5.i_crit_edge, %land.lhs.true.i79.7.i.if.end5.i_crit_edge, %land.lhs.true.i79.6.i.if.end5.i_crit_edge, %land.lhs.true.i79.5.i.if.end5.i_crit_edge, %land.lhs.true.i79.4.i.if.end5.i_crit_edge, %land.lhs.true.i79.3.i.if.end5.i_crit_edge, %land.lhs.true.i79.2.i.if.end5.i_crit_edge, %land.lhs.true.i79.1.i.if.end5.i_crit_edge, %land.lhs.true.i79.i.if.end5.i_crit_edge, %land.lhs.true.i.5.i.if.end5.i_crit_edge, %land.lhs.true.i.4.i.if.end5.i_crit_edge, %land.lhs.true.i.3.i.if.end5.i_crit_edge, %land.lhs.true.i.2.i.if.end5.i_crit_edge, %land.lhs.true.i.1.i.if.end5.i_crit_edge, %land.lhs.true.i.i.if.end5.i_crit_edge
  %cmp.i85.i = phi i1 [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @samp_freq_table), %land.lhs.true.i79.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 1), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.1.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 2), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.2.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 3), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.3.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 4), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.4.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 5), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.5.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 6), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.6.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 7), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.7.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 8), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.8.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 9), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.9.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 10), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.10.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 11), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i79.11.i.if.end5.i_crit_edge ], [ icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @kxtf9_samp_freq_table), %land.lhs.true.i.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 1), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i.1.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 2), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i.2.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 3), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i.3.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 4), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i.4.i.if.end5.i_crit_edge ], [ icmp ugt (ptr getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 5), ptr inttoptr (i32 -4096 to ptr)), %land.lhs.true.i.5.i.if.end5.i_crit_edge ]
  %odr_setting.0.i = phi ptr [ @samp_freq_table, %land.lhs.true.i79.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 1), %land.lhs.true.i79.1.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 2), %land.lhs.true.i79.2.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 3), %land.lhs.true.i79.3.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 4), %land.lhs.true.i79.4.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 5), %land.lhs.true.i79.5.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 6), %land.lhs.true.i79.6.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 7), %land.lhs.true.i79.7.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 8), %land.lhs.true.i79.8.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 9), %land.lhs.true.i79.9.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 10), %land.lhs.true.i79.10.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([12 x %struct.kx_odr_map], ptr @samp_freq_table, i32 0, i32 11), %land.lhs.true.i79.11.i.if.end5.i_crit_edge ], [ @kxtf9_samp_freq_table, %land.lhs.true.i.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 1), %land.lhs.true.i.1.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 2), %land.lhs.true.i.2.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 3), %land.lhs.true.i.3.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 4), %land.lhs.true.i.4.i.if.end5.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.kx_odr_map], ptr @kxtf9_samp_freq_table, i32 0, i32 5), %land.lhs.true.i.5.i.if.end5.i_crit_edge ]
  br i1 %cmp.i85.i, label %if.end5.i.if.then7.i_crit_edge, label %if.end9.i

if.end5.i.if.then7.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i.if.then7.i_crit_edge, %land.lhs.true.i79.11.i.if.then7.i_crit_edge, %land.lhs.true.i79.10.i.if.then7.i_crit_edge, %land.lhs.true.i79.9.i.if.then7.i_crit_edge, %land.lhs.true.i79.8.i.if.then7.i_crit_edge, %land.lhs.true.i79.7.i.if.then7.i_crit_edge, %land.lhs.true.i79.6.i.if.then7.i_crit_edge, %land.lhs.true.i79.5.i.if.then7.i_crit_edge, %land.lhs.true.i79.4.i.if.then7.i_crit_edge, %land.lhs.true.i79.3.i.if.then7.i_crit_edge, %land.lhs.true.i79.2.i.if.then7.i_crit_edge, %land.lhs.true.i79.1.i.if.then7.i_crit_edge, %land.lhs.true.i79.i.if.then7.i_crit_edge, %land.lhs.true.i.5.i.if.then7.i_crit_edge, %land.lhs.true.i.4.i.if.then7.i_crit_edge, %land.lhs.true.i.3.i.if.then7.i_crit_edge, %land.lhs.true.i.2.i.if.then7.i_crit_edge, %land.lhs.true.i.1.i.if.then7.i_crit_edge, %land.lhs.true.i.i.if.then7.i_crit_edge, %for.body.i.preheader.i.if.then7.i_crit_edge, %for.body.i76.preheader.i.if.then7.i_crit_edge
  %odr_setting.0116.i = phi ptr [ %odr_setting.0.i, %if.end5.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.5.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.11.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.4.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.3.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.2.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.1.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.10.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.9.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.8.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.7.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.6.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.5.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.4.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.3.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.2.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.1.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.i79.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.i.preheader.i.if.then7.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.i76.preheader.i.if.then7.i_crit_edge ]
  %15 = ptrtoint ptr %odr_setting.0116.i to i32
  br label %cleanup.sink.split

if.end9.i:                                        ; preds = %if.end5.i
  %16 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i.i, align 8
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i88.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ctrl1.i88.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl1.i88.i, align 1
  %call.i89.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i)
  %cmp.i90.i = icmp slt i32 %call.i89.i, 0
  br i1 %cmp.i90.i, label %if.end9.i.kxcjk1013_set_mode.exit.thread.i_crit_edge, label %if.end.i92.i

if.end9.i.kxcjk1013_set_mode.exit.thread.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread.i

if.end.i92.i:                                     ; preds = %if.end9.i
  %22 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i.i, align 8
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 8
  %ctrl17.i.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctrl17.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl17.i.i, align 1
  %28 = trunc i32 %call.i89.i to i8
  %conv.i.i = and i8 %28, 127
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %27, i8 noundef zeroext %conv.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end.i92.i.kxcjk1013_set_mode.exit.thread.i_crit_edge, label %if.end13.i

if.end.i92.i.kxcjk1013_set_mode.exit.thread.i_crit_edge: ; preds = %if.end.i92.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread.i

kxcjk1013_set_mode.exit.thread.i:                 ; preds = %if.end.i92.i.kxcjk1013_set_mode.exit.thread.i_crit_edge, %if.end9.i.kxcjk1013_set_mode.exit.thread.i_crit_edge
  %.str.45.sink.i.i = phi ptr [ @.str.26, %if.end9.i.kxcjk1013_set_mode.exit.thread.i_crit_edge ], [ @.str.45, %if.end.i92.i.kxcjk1013_set_mode.exit.thread.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %call.i89.i, %if.end9.i.kxcjk1013_set_mode.exit.thread.i_crit_edge ], [ %call8.i.i, %if.end.i92.i.kxcjk1013_set_mode.exit.thread.i_crit_edge ]
  %29 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i.i, align 8
  %dev16.i.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i.i, ptr noundef nonnull %.str.45.sink.i.i) #13
  br label %cleanup.sink.split

if.end13.i:                                       ; preds = %if.end.i92.i
  %31 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i.i, align 8
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 8
  %data_ctrl.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %data_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data_ctrl.i, align 1
  %odr_bits.i = getelementptr inbounds %struct.kx_odr_map, ptr %odr_setting.0.i, i32 0, i32 2
  %37 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %odr_bits.i, align 4
  %conv.i = trunc i32 %38 to i8
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext %36, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #13
  br label %cleanup.sink.split

if.end19.i:                                       ; preds = %if.end13.i
  %41 = ptrtoint ptr %odr_bits.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %odr_bits.i, align 4
  %conv21.i = trunc i32 %42 to i8
  %odr_bits22.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %odr_bits22.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv21.i, ptr %odr_bits22.i, align 8
  %44 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client.i.i, align 8
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 8
  %wuf_ctrl.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %wuf_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wuf_ctrl.i, align 1
  %wuf_bits.i = getelementptr inbounds %struct.kx_odr_map, ptr %odr_setting.0.i, i32 0, i32 3
  %50 = ptrtoint ptr %wuf_bits.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wuf_bits.i, align 4
  %conv25.i = trunc i32 %51 to i8
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext %49, i8 noundef zeroext %conv25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end32.i, label %if.end35.i

do.end32.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %client.i.i, align 8
  %dev34.i = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i, ptr noundef nonnull @.str.61) #13
  br label %cleanup.sink.split

if.end35.i:                                       ; preds = %if.end19.i
  %54 = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp36.not.i = icmp eq i32 %54, 0
  br i1 %cmp36.not.i, label %if.end35.i.cleanup.sink.split_crit_edge, label %if.then38.i

if.end35.i.cleanup.sink.split_crit_edge:          ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then38.i:                                      ; preds = %if.end35.i
  %55 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i.i, align 8
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i96.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %ctrl1.i96.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ctrl1.i96.i, align 1
  %call.i97.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %56, i8 noundef zeroext %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %cmp.i98.i = icmp slt i32 %call.i97.i, 0
  br i1 %cmp.i98.i, label %if.then38.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge, label %if.end.i104.i

if.then38.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit110.thread.i

if.end.i104.i:                                    ; preds = %if.then38.i
  %61 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client.i.i, align 8
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 8
  %ctrl17.i100.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ctrl17.i100.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ctrl17.i100.i, align 1
  %67 = trunc i32 %call.i97.i to i8
  %conv.i101.i = or i8 %67, -128
  %call8.i102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext %66, i8 noundef zeroext %conv.i101.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i102.i)
  %cmp9.i103.i = icmp slt i32 %call8.i102.i, 0
  br i1 %cmp9.i103.i, label %if.end.i104.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge, label %if.end.i104.i.cleanup.sink.split_crit_edge

if.end.i104.i.cleanup.sink.split_crit_edge:       ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i104.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge: ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit110.thread.i

kxcjk1013_set_mode.exit110.thread.i:              ; preds = %if.end.i104.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge, %if.then38.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge
  %.str.45.sink.i105.i = phi ptr [ @.str.26, %if.then38.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge ], [ @.str.45, %if.end.i104.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge ]
  %retval.0.ph.i106.i = phi i32 [ %call.i97.i, %if.then38.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge ], [ %call8.i102.i, %if.end.i104.i.kxcjk1013_set_mode.exit110.thread.i_crit_edge ]
  %68 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client.i.i, align 8
  %dev16.i107.i = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i107.i, ptr noundef nonnull %.str.45.sink.i105.i) #13
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %mutex4 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex4, i32 noundef 0) #10
  %70 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %val2, label %if.end.cleanup.sink.split_crit_edge [
    i32 9582, label %if.end.if.then.i_crit_edge
    i32 19163, label %if.then.fold.split.i
    i32 38326, label %if.then.fold.split74.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.fold.split74.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split74.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %i.072.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split74.i ]
  %client.i.i15 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client.i.i15, align 8
  %regs.i.i16 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 18
  %73 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i16, align 8
  %ctrl1.i.i17 = getelementptr inbounds %struct.kx_chipset_regs, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ctrl1.i.i17 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ctrl1.i.i17, align 1
  %call.i.i18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext %76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp.i.i19 = icmp slt i32 %call.i.i18, 0
  %77 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client.i.i15, align 8
  br i1 %cmp.i.i19, label %if.then.i.cleanup.sink.split.i_crit_edge, label %if.end.i20

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i20:                                       ; preds = %if.then.i
  %79 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i16, align 8
  %ctrl1.i41.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ctrl1.i41.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ctrl1.i41.i, align 1
  %call.i42.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %78, i8 noundef zeroext %82) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i43.i = icmp slt i32 %call.i42.i, 0
  br i1 %cmp.i43.i, label %if.end.i20.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i45.i

if.end.i20.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end.i45.i:                                     ; preds = %if.end.i20
  %83 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client.i.i15, align 8
  %85 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i16, align 8
  %ctrl17.i.i21 = getelementptr inbounds %struct.kx_chipset_regs, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %ctrl17.i.i21 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ctrl17.i.i21, align 1
  %89 = trunc i32 %call.i42.i to i8
  %conv.i.i22 = and i8 %89, 127
  %call8.i.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %84, i8 noundef zeroext %88, i8 noundef zeroext %conv.i.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i23)
  %cmp9.i.i24 = icmp slt i32 %call8.i.i23, 0
  br i1 %cmp9.i.i24, label %if.end.i45.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end10.i

if.end.i45.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end10.i:                                       ; preds = %if.end.i45.i
  %call11.i = tail call fastcc i32 @kxcjk1013_set_range(ptr noundef %1, i32 noundef %i.072.lcssa.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cleanup.sink.split_crit_edge, label %if.end15.i

if.end10.i.cleanup.sink.split_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.i:                                       ; preds = %if.end10.i
  %90 = and i32 %call.i.i18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp16.not.i = icmp eq i32 %90, 0
  br i1 %cmp16.not.i, label %if.end15.i.cleanup.sink.split_crit_edge, label %if.then18.i

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then18.i:                                      ; preds = %if.end15.i
  %91 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client.i.i15, align 8
  %93 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i16, align 8
  %ctrl1.i49.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %ctrl1.i49.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ctrl1.i49.i, align 1
  %call.i50.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %92, i8 noundef zeroext %96) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %cmp.i51.i = icmp slt i32 %call.i50.i, 0
  br i1 %cmp.i51.i, label %if.then18.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i57.i

if.then18.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end.i57.i:                                     ; preds = %if.then18.i
  %97 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %client.i.i15, align 8
  %99 = ptrtoint ptr %regs.i.i16 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i.i16, align 8
  %ctrl17.i53.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %ctrl17.i53.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ctrl17.i53.i, align 1
  %103 = trunc i32 %call.i50.i to i8
  %conv.i54.i = or i8 %103, -128
  %call8.i55.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %98, i8 noundef zeroext %102, i8 noundef zeroext %conv.i54.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i55.i)
  %cmp9.i56.i = icmp slt i32 %call8.i55.i, 0
  br i1 %cmp9.i56.i, label %if.end.i57.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i57.i.cleanup.sink.split_crit_edge

if.end.i57.i.cleanup.sink.split_crit_edge:        ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i57.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.end.i57.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then18.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i45.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i20.cleanup.sink.split.sink.split.i_crit_edge
  %.str.45.sink.i58.sink.ph.i = phi ptr [ @.str.26, %if.end.i20.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.45, %if.end.i45.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.26, %if.then18.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.45, %if.end.i57.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %retval.0.ph.ph.i = phi i32 [ %call.i42.i, %if.end.i20.cleanup.sink.split.sink.split.i_crit_edge ], [ %call8.i.i23, %if.end.i45.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call.i50.i, %if.then18.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call8.i55.i, %if.end.i57.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %104 = ptrtoint ptr %client.i.i15 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %client.i.i15, align 8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.then.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %78, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %105, %cleanup.sink.split.sink.split.i ]
  %.str.45.sink.i58.sink.i = phi ptr [ @.str.26, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %.str.45.sink.i58.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %retval.0.ph.i = phi i32 [ %call.i.i18, %if.then.i.cleanup.sink.split.i_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  %dev16.i60.i = getelementptr inbounds %struct.i2c_client, ptr %.sink.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i60.i, ptr noundef nonnull %.str.45.sink.i58.sink.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.i, %if.end.i57.i.cleanup.sink.split_crit_edge, %if.end15.i.cleanup.sink.split_crit_edge, %if.end10.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %kxcjk1013_set_mode.exit110.thread.i, %if.end.i104.i.cleanup.sink.split_crit_edge, %if.end35.i.cleanup.sink.split_crit_edge, %do.end32.i, %do.end.i, %kxcjk1013_set_mode.exit.thread.i, %if.then7.i, %kxcjk1013_get_mode.exit.thread.i
  %mutex.sink = phi ptr [ %mutex, %kxcjk1013_get_mode.exit.thread.i ], [ %mutex, %if.then7.i ], [ %mutex, %kxcjk1013_set_mode.exit.thread.i ], [ %mutex, %do.end.i ], [ %mutex, %do.end32.i ], [ %mutex, %if.end35.i.cleanup.sink.split_crit_edge ], [ %mutex, %if.end.i104.i.cleanup.sink.split_crit_edge ], [ %mutex, %kxcjk1013_set_mode.exit110.thread.i ], [ %mutex4, %if.end.cleanup.sink.split_crit_edge ], [ %mutex4, %if.end10.i.cleanup.sink.split_crit_edge ], [ %mutex4, %if.end15.i.cleanup.sink.split_crit_edge ], [ %mutex4, %if.end.i57.i.cleanup.sink.split_crit_edge ], [ %mutex4, %cleanup.sink.split.i ]
  %retval.0.ph = phi i32 [ %call.i.i, %kxcjk1013_get_mode.exit.thread.i ], [ %15, %if.then7.i ], [ %retval.0.ph.i.i, %kxcjk1013_set_mode.exit.thread.i ], [ %call14.i, %do.end.i ], [ %call26.i, %do.end32.i ], [ 0, %if.end35.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i104.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.i106.i, %kxcjk1013_set_mode.exit110.thread.i ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %call11.i, %if.end10.i.cleanup.sink.split_crit_edge ], [ 0, %if.end15.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i57.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %mutex.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kxcjk1013_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true3

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %mutex44 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex44, i32 noundef 0) #10
  br label %if.end8

land.lhs.true3:                                   ; preds = %entry
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %motion_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %motion_trigger_on, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end8_crit_edge, label %land.lhs.true3.cleanup.sink.split.sink.split_crit_edge

land.lhs.true3.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

land.lhs.true3.if.end8_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true3.if.end8_crit_edge, %if.end.thread
  %mutex45 = phi ptr [ %mutex44, %if.end.thread ], [ %mutex, %land.lhs.true3.if.end8_crit_edge ]
  %call10 = tail call fastcc i32 @kxcjk1013_set_power_state(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %call15 = tail call fastcc i32 @kxcjk1013_setup_any_motion_interrupt(ptr noundef %1, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end13.cleanup.sink.split.sink.split_crit_edge

if.end13.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.then17:                                        ; preds = %if.end13
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 8
  %call.i16.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 8
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i17.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then17.cleanup.sink.split.sink.split_crit_edge

if.then17.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 8
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.end.i, %if.then17.cleanup.sink.split.sink.split_crit_edge, %if.end13.cleanup.sink.split.sink.split_crit_edge, %land.lhs.true3.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi i32 [ 0, %land.lhs.true3.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.then17.cleanup.sink.split.sink.split_crit_edge ], [ 0, %do.end.i ], [ %state, %if.end13.cleanup.sink.split.sink.split_crit_edge ]
  %mutex45.sink.ph = phi ptr [ %mutex, %land.lhs.true3.cleanup.sink.split.sink.split_crit_edge ], [ %mutex45, %if.then17.cleanup.sink.split.sink.split_crit_edge ], [ %mutex45, %do.end.i ], [ %mutex45, %if.end13.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ 0, %land.lhs.true3.cleanup.sink.split.sink.split_crit_edge ], [ %call15, %if.then17.cleanup.sink.split.sink.split_crit_edge ], [ %call15, %do.end.i ], [ 0, %if.end13.cleanup.sink.split.sink.split_crit_edge ]
  %ev_enable_state6 = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %ev_enable_state6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %ev_enable_state6, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end8.cleanup.sink.split_crit_edge
  %mutex45.sink = phi ptr [ %mutex45, %if.end8.cleanup.sink.split_crit_edge ], [ %mutex45.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call10, %if.end8.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex45.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kxcjk1013_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val2, align 4
  %3 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wake_thres = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %wake_dur = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %storemerge.in = phi ptr [ %wake_dur, %sw.bb1 ], [ %wake_thres, %sw.bb ]
  %4 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kxcjk1013_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ev_enable_state = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %info, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wake_thres = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %wake_thres to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val, ptr %wake_thres, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %wake_dur = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %wake_dur to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %val, ptr %wake_dur, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_get_samp_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chipset = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chipset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  %.str.49..str.50 = select i1 %cmp, ptr @.str.49, ptr @.str.50
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, ptr noundef nonnull %.str.49..str.50)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxcjk1013_set_power_state(ptr nocapture noundef readonly %data, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  br i1 %on, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !245
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !246
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i16 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %3 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store volatile i64 %call.i16, ptr %last_busy.i, align 8
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i17 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %cmp = icmp slt i32 %call.i17, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %ret.020 = phi i32 [ %call.i17, %if.end.do.end_crit_edge ], [ %call.i, %if.then.i.do.end_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  %client7 = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client7, align 8
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.020, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kxcjk1013_setup_any_motion_interrupt(ptr nocapture noundef readonly %data, i1 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 18
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 8
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %ctrl1.i110 = getelementptr inbounds %struct.kx_chipset_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl1.i110 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl1.i110, align 1
  %call.i111 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %if.end.cleanup.sink.split.sink.split_crit_edge, label %if.end.i114

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end.i114:                                      ; preds = %if.end
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl17.i, align 1
  %18 = trunc i32 %call.i111 to i8
  %conv.i = and i8 %18, 127
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %17, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i114.cleanup.sink.split.sink.split_crit_edge, label %if.end4

if.end.i114.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end4:                                          ; preds = %if.end.i114
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 8
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %wake_timer.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %wake_timer.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wake_timer.i, align 1
  %wake_dur.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 10
  %25 = ptrtoint ptr %wake_dur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wake_dur.i, align 8
  %conv.i118 = trunc i32 %26 to i8
  %call.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext %24, i8 noundef zeroext %conv.i118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp slt i32 %call.i119, 0
  %27 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i, align 8
  br i1 %cmp.i120, label %if.end4.cleanup.sink.split_crit_edge, label %if.end.i121

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i121:                                      ; preds = %if.end4
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %wake_thres.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %wake_thres.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wake_thres.i, align 1
  %wake_thres5.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %data, i32 0, i32 9
  %33 = ptrtoint ptr %wake_thres5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wake_thres5.i, align 4
  %conv6.i = trunc i32 %34 to i8
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext %32, i8 noundef zeroext %conv6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  %35 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i, align 8
  br i1 %cmp8.i, label %if.end.i121.cleanup.sink.split_crit_edge, label %if.end8

if.end.i121.cleanup.sink.split_crit_edge:         ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end.i121
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 8
  %int_ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %int_ctrl1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %int_ctrl1, align 1
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup.sink.split.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end13:                                         ; preds = %if.end8
  %and = and i32 %call9, 223
  %masksel = select i1 %status, i32 32, i32 0
  %ret.0 = or i32 %and, %masksel
  %41 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client.i, align 8
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %int_ctrl118 = getelementptr inbounds %struct.kx_chipset_regs, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %int_ctrl118 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %int_ctrl118, align 1
  %conv = trunc i32 %ret.0 to i8
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext %46, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  %47 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i, align 8
  br i1 %cmp20, label %if.end13.cleanup.sink.split_crit_edge, label %if.end28

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.end13
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %ctrl1 = getelementptr inbounds %struct.kx_chipset_regs, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ctrl1, align 1
  %call31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %48, i8 noundef zeroext %52) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.cleanup.sink.split.sink.split_crit_edge, label %if.end40

if.end28.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end40:                                         ; preds = %if.end28
  %and45 = and i32 %call31, 253
  %masksel151 = select i1 %status, i32 2, i32 0
  %ret.1 = or i32 %and45, %masksel151
  %53 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client.i, align 8
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 8
  %ctrl149 = getelementptr inbounds %struct.kx_chipset_regs, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ctrl149 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ctrl149, align 1
  %conv50 = trunc i32 %ret.1 to i8
  %call51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext %58, i8 noundef zeroext %conv50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end40.cleanup.sink.split.sink.split_crit_edge, label %if.end60

if.end40.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end60:                                         ; preds = %if.end40
  %59 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp61.not = icmp eq i32 %59, 0
  br i1 %cmp61.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  %60 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client.i, align 8
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 8
  %ctrl1.i127 = getelementptr inbounds %struct.kx_chipset_regs, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %ctrl1.i127 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ctrl1.i127, align 1
  %call.i128 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext %65) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.i129 = icmp slt i32 %call.i128, 0
  br i1 %cmp.i129, label %if.then63.cleanup.sink.split.sink.split_crit_edge, label %if.end.i135

if.then63.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

if.end.i135:                                      ; preds = %if.then63
  %66 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client.i, align 8
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %ctrl17.i131 = getelementptr inbounds %struct.kx_chipset_regs, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ctrl17.i131 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ctrl17.i131, align 1
  %72 = trunc i32 %call.i128 to i8
  %conv.i132 = or i8 %72, -128
  %call8.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %67, i8 noundef zeroext %71, i8 noundef zeroext %conv.i132) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i133)
  %cmp9.i134 = icmp slt i32 %call8.i133, 0
  br i1 %cmp9.i134, label %if.end.i135.cleanup.sink.split.sink.split_crit_edge, label %if.end.i135.cleanup_crit_edge

if.end.i135.cleanup_crit_edge:                    ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i135.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end.i135.cleanup.sink.split.sink.split_crit_edge, %if.then63.cleanup.sink.split.sink.split_crit_edge, %if.end40.cleanup.sink.split.sink.split_crit_edge, %if.end28.cleanup.sink.split.sink.split_crit_edge, %if.end8.cleanup.sink.split.sink.split_crit_edge, %if.end.i114.cleanup.sink.split.sink.split_crit_edge, %if.end.cleanup.sink.split.sink.split_crit_edge
  %.str.45.sink.i136.sink.ph = phi ptr [ @.str.26, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ @.str.45, %if.end.i114.cleanup.sink.split.sink.split_crit_edge ], [ @.str.35, %if.end8.cleanup.sink.split.sink.split_crit_edge ], [ @.str.26, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ @.str.45, %if.end40.cleanup.sink.split.sink.split_crit_edge ], [ @.str.26, %if.then63.cleanup.sink.split.sink.split_crit_edge ], [ @.str.45, %if.end.i135.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call.i111, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %call8.i, %if.end.i114.cleanup.sink.split.sink.split_crit_edge ], [ %call9, %if.end8.cleanup.sink.split.sink.split_crit_edge ], [ %call31, %if.end28.cleanup.sink.split.sink.split_crit_edge ], [ %call51, %if.end40.cleanup.sink.split.sink.split_crit_edge ], [ %call.i128, %if.then63.cleanup.sink.split.sink.split_crit_edge ], [ %call8.i133, %if.end.i135.cleanup.sink.split.sink.split_crit_edge ]
  %73 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end13.cleanup.sink.split_crit_edge, %if.end.i121.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %entry.cleanup.sink.split_crit_edge ], [ %28, %if.end4.cleanup.sink.split_crit_edge ], [ %36, %if.end.i121.cleanup.sink.split_crit_edge ], [ %48, %if.end13.cleanup.sink.split_crit_edge ], [ %74, %cleanup.sink.split.sink.split ]
  %.str.45.sink.i136.sink = phi ptr [ @.str.26, %entry.cleanup.sink.split_crit_edge ], [ @.str.71, %if.end4.cleanup.sink.split_crit_edge ], [ @.str.74, %if.end.i121.cleanup.sink.split_crit_edge ], [ @.str.38, %if.end13.cleanup.sink.split_crit_edge ], [ %.str.45.sink.i136.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i119, %if.end4.cleanup.sink.split_crit_edge ], [ %call7.i, %if.end.i121.cleanup.sink.split_crit_edge ], [ %call19, %if.end13.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %dev16.i138 = getelementptr inbounds %struct.i2c_client, ptr %.sink, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i138, ptr noundef nonnull %.str.45.sink.i136.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i135.cleanup_crit_edge, %if.end60.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i135.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_data_rdy_trigger_set_state(ptr noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %state to i8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br i1 %state, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ev_enable_state = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %ev_enable_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ev_enable_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %motion_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %motion_trigger_on, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %motion_trigger_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %motion_trigger_on, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call fastcc i32 @kxcjk1013_set_power_state(ptr noundef %3, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %motion_trig = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %motion_trig, align 8
  %cmp12 = icmp eq ptr %10, %trig
  br i1 %cmp12, label %if.end18, label %if.else

if.else:                                          ; preds = %if.end11
  %client.i.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i.i, align 8
  %regs.i.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl1.i.i, align 1
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %17 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i.i, align 8
  br i1 %cmp.i.i, label %if.else.if.end18.thread66_crit_edge, label %if.end.i

if.else.if.end18.thread66_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.thread66

if.end.i:                                         ; preds = %if.else
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i103.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ctrl1.i103.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl1.i103.i, align 1
  %call.i104.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %cmp.i105.i = icmp slt i32 %call.i104.i, 0
  br i1 %cmp.i105.i, label %if.end.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i107.i

if.end.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end.i107.i:                                    ; preds = %if.end.i
  %23 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i.i, align 8
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 8
  %ctrl17.i.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctrl17.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ctrl17.i.i, align 1
  %29 = trunc i32 %call.i104.i to i8
  %conv.i.i = and i8 %29, 127
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext %28, i8 noundef zeroext %conv.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end.i107.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end4.i

if.end.i107.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end4.i:                                        ; preds = %if.end.i107.i
  %30 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i.i, align 8
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 8
  %int_ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %int_ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %int_ctrl1.i, align 1
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end9.i

if.end4.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end9.i:                                        ; preds = %if.end4.i
  %and.i = and i32 %call5.i, 223
  %masksel.i = select i1 %state, i32 32, i32 0
  %ret.0.i = or i32 %and.i, %masksel.i
  %36 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i.i, align 8
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 8
  %int_ctrl114.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %int_ctrl114.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %int_ctrl114.i, align 1
  %conv.i = trunc i32 %ret.0.i to i8
  %call15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext %41, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  %42 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %client.i.i, align 8
  br i1 %cmp16.i, label %if.end9.i.if.end18.thread66_crit_edge, label %if.end24.i

if.end9.i.if.end18.thread66_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.thread66

if.end24.i:                                       ; preds = %if.end9.i
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ctrl1.i, align 1
  %call27.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end24.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end36.i

if.end24.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end36.i:                                       ; preds = %if.end24.i
  %and41.i = and i32 %call27.i, 223
  %ret.1.i = or i32 %and41.i, %masksel.i
  %48 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client.i.i, align 8
  %50 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i, align 8
  %ctrl145.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ctrl145.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ctrl145.i, align 1
  %conv46.i = trunc i32 %ret.1.i to i8
  %call47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext %53, i8 noundef zeroext %conv46.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.end36.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end56.i

if.end36.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end56.i:                                       ; preds = %if.end36.i
  %54 = and i32 %call.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp57.not.i = icmp eq i32 %54, 0
  br i1 %cmp57.not.i, label %if.end56.i.if.end23_crit_edge, label %if.then59.i

if.end56.i.if.end23_crit_edge:                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then59.i:                                      ; preds = %if.end56.i
  %55 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i.i, align 8
  %57 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i, align 8
  %ctrl1.i111.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %ctrl1.i111.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ctrl1.i111.i, align 1
  %call.i112.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %56, i8 noundef zeroext %60) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %cmp.i113.i = icmp slt i32 %call.i112.i, 0
  br i1 %cmp.i113.i, label %if.then59.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i119.i

if.then59.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

if.end.i119.i:                                    ; preds = %if.then59.i
  %61 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client.i.i, align 8
  %63 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i, align 8
  %ctrl17.i115.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ctrl17.i115.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ctrl17.i115.i, align 1
  %67 = trunc i32 %call.i112.i to i8
  %conv.i116.i = or i8 %67, -128
  %call8.i117.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext %66, i8 noundef zeroext %conv.i116.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i117.i)
  %cmp9.i118.i = icmp slt i32 %call8.i117.i, 0
  br i1 %cmp9.i118.i, label %if.end.i119.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.end.i119.i.if.end23_crit_edge

if.end.i119.i.if.end23_crit_edge:                 ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i119.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.end.i119.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then59.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end36.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end24.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i107.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge
  %.str.45.sink.i120.sink.ph.i = phi ptr [ @.str.26, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.45, %if.end.i107.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.35, %if.end4.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.26, %if.end24.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.45, %if.end36.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.26, %if.then59.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.45, %if.end.i119.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %retval.0.ph.ph.i = phi i32 [ %call.i104.i, %if.end.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call8.i.i, %if.end.i107.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call5.i, %if.end4.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call27.i, %if.end24.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call47.i, %if.end36.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call.i112.i, %if.then59.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %call8.i117.i, %if.end.i119.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %68 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client.i.i, align 8
  br label %if.end18.thread66

if.end18.thread66:                                ; preds = %cleanup.sink.split.sink.split.i, %if.end9.i.if.end18.thread66_crit_edge, %if.else.if.end18.thread66_crit_edge
  %.sink.i = phi ptr [ %18, %if.else.if.end18.thread66_crit_edge ], [ %43, %if.end9.i.if.end18.thread66_crit_edge ], [ %69, %cleanup.sink.split.sink.split.i ]
  %.str.45.sink.i120.sink.i = phi ptr [ @.str.26, %if.else.if.end18.thread66_crit_edge ], [ @.str.38, %if.end9.i.if.end18.thread66_crit_edge ], [ %.str.45.sink.i120.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %retval.0.ph.i = phi i32 [ %call.i.i, %if.else.if.end18.thread66_crit_edge ], [ %call15.i, %if.end9.i.if.end18.thread66_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  %dev16.i122.i = getelementptr inbounds %struct.i2c_client, ptr %.sink.i, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i122.i, ptr noundef nonnull %.str.45.sink.i120.sink.i) #13
  br label %if.then20

if.end18:                                         ; preds = %if.end11
  %call15 = tail call fastcc i32 @kxcjk1013_setup_any_motion_interrupt(ptr noundef %3, i1 noundef zeroext %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp19 = icmp slt i32 %call15, 0
  br i1 %cmp19, label %if.end18.if.then20_crit_edge, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread66
  %ret.069 = phi i32 [ %retval.0.ph.i, %if.end18.thread66 ], [ %call15, %if.end18.if.then20_crit_edge ]
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %client.i, align 8
  %call.i16.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4, i32 12, i32 22
  %72 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %73 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client.i, align 8
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %74, i32 0, i32 4
  %call.i17.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %client.i, align 8
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end18.if.end23_crit_edge, %if.end.i119.i.if.end23_crit_edge, %if.end56.i.if.end23_crit_edge
  %77 = ptrtoint ptr %motion_trig to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %motion_trig, align 8
  %cmp25 = icmp eq ptr %78, %trig
  br i1 %cmp25, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %motion_trigger_on28 = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 14
  %79 = ptrtoint ptr %motion_trigger_on28 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool, ptr %motion_trigger_on28, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %dready_trigger_on = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 12
  %80 = ptrtoint ptr %dready_trigger_on to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool, ptr %dready_trigger_on, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else30, %if.then26, %do.end.i, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.end.cleanup_crit_edge ], [ %ret.069, %if.then20.cleanup_crit_edge ], [ %ret.069, %do.end.i ], [ 0, %if.else30 ], [ 0, %if.then26 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kxcjk1013_trig_reen(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %regs = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %int_rel = getelementptr inbounds %struct.kx_chipset_regs, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %int_rel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %int_rel, align 1
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.kxcjk1013_set_power_state.exit_crit_edge

entry.kxcjk1013_set_power_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_power_state.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !245
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !246
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 8
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 1) #13
  br label %kxcjk1013_set_power_state.exit

kxcjk1013_set_power_state.exit:                   ; preds = %do.end.i, %entry.kxcjk1013_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %entry.kxcjk1013_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 8
  %call.i16.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i16.i, ptr %last_busy.i.i, align 8
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 8
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call.i17.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev4.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.kxcjk1013_set_power_state.exit_crit_edge

entry.kxcjk1013_set_power_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_power_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 8
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 0) #13
  br label %kxcjk1013_set_power_state.exit

kxcjk1013_set_power_state.exit:                   ; preds = %do.end.i, %entry.kxcjk1013_set_power_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i17.i, %do.end.i ], [ 0, %entry.kxcjk1013_set_power_state.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup.sink.split.i_crit_edge, label %if.end.i

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl17.i, align 1
  %16 = trunc i32 %call.i to i8
  %conv.i = and i8 %16, 127
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %15, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.kxcjk1013_set_mode.exit_crit_edge

if.end.i.kxcjk1013_set_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %entry.cleanup.sink.split.i_crit_edge ], [ @.str.45, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  br label %kxcjk1013_set_mode.exit

kxcjk1013_set_mode.exit:                          ; preds = %cleanup.sink.split.i, %if.end.i.kxcjk1013_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.kxcjk1013_set_mode.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.kxcjk1013_set_mode.exit_crit_edge, label %if.end.i

entry.kxcjk1013_set_mode.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl17.i, align 1
  %16 = trunc i32 %call.i to i8
  %conv.i = or i8 %16, -128
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %15, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.kxcjk1013_set_mode.exit_crit_edge, label %if.then

if.end.i.kxcjk1013_set_mode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit

kxcjk1013_set_mode.exit:                          ; preds = %if.end.i.kxcjk1013_set_mode.exit_crit_edge, %entry.kxcjk1013_set_mode.exit_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %entry.kxcjk1013_set_mode.exit_crit_edge ], [ @.str.45, %if.end.i.kxcjk1013_set_mode.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.kxcjk1013_set_mode.exit_crit_edge ], [ %call8.i, %if.end.i.kxcjk1013_set_mode.exit_crit_edge ]
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %range = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %range to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %range, align 1
  %conv = zext i8 %20 to i32
  %call3 = tail call fastcc i32 @kxcjk1013_set_range(ptr noundef %3, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %kxcjk1013_set_mode.exit
  %ret.0 = phi i32 [ %call3, %if.then ], [ %retval.0.ph.i, %kxcjk1013_set_mode.exit ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl17.i, align 1
  %16 = trunc i32 %call.i to i8
  %conv.i = and i8 %16, 127
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %15, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.do.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %entry.do.end_crit_edge ], [ @.str.45, %if.end.i.do.end_crit_edge ]
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 8
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.94) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kxcjk1013_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 8
  %regs.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl1.i, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.kxcjk1013_set_mode.exit.thread_crit_edge, label %if.end.i

entry.kxcjk1013_set_mode.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %ctrl17.i = getelementptr inbounds %struct.kx_chipset_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl17.i, align 1
  %16 = trunc i32 %call.i to i8
  %conv.i = or i8 %16, -128
  %call8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %15, i8 noundef zeroext %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge, label %if.end

if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_set_mode.exit.thread

kxcjk1013_set_mode.exit.thread:                   ; preds = %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge, %entry.kxcjk1013_set_mode.exit.thread_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.26, %entry.kxcjk1013_set_mode.exit.thread_crit_edge ], [ @.str.45, %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.kxcjk1013_set_mode.exit.thread_crit_edge ], [ %call8.i, %if.end.i.kxcjk1013_set_mode.exit.thread_crit_edge ]
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 8
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull %.str.45.sink.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %chipset.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 16
  %19 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chipset.i, align 8
  %odr_bits2.i = getelementptr inbounds %struct.kxcjk1013_data, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %odr_bits2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %odr_bits2.i, align 8
  %conv.i15 = zext i8 %22 to i32
  %arrayidx1.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 0
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i15)
  %cmp3.i = icmp eq i32 %24, %conv.i15
  br i1 %cmp3.i, label %if.end.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.i

if.end.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.i:                                        ; preds = %if.end
  %arrayidx1.1.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 1
  %25 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv.i15)
  %cmp3.1.i = icmp eq i32 %26, %conv.i15
  br i1 %cmp3.1.i, label %for.inc.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.1.i

for.inc.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx1.2.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 2
  %27 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv.i15)
  %cmp3.2.i = icmp eq i32 %28, %conv.i15
  br i1 %cmp3.2.i, label %for.inc.1.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx1.3.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 3
  %29 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i15)
  %cmp3.3.i = icmp eq i32 %30, %conv.i15
  br i1 %cmp3.3.i, label %for.inc.2.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx1.4.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 4
  %31 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv.i15)
  %cmp3.4.i = icmp eq i32 %32, %conv.i15
  br i1 %cmp3.4.i, label %for.inc.3.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx1.5.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 5
  %33 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i15)
  %cmp3.5.i = icmp eq i32 %34, %conv.i15
  br i1 %cmp3.5.i, label %for.inc.4.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx1.6.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 6
  %35 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i15)
  %cmp3.6.i = icmp eq i32 %36, %conv.i15
  br i1 %cmp3.6.i, label %for.inc.5.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx1.7.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 7
  %37 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx1.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv.i15)
  %cmp3.7.i = icmp eq i32 %38, %conv.i15
  br i1 %cmp3.7.i, label %for.inc.6.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %arrayidx1.8.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 8
  %39 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx1.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i15)
  %cmp3.8.i = icmp eq i32 %40, %conv.i15
  br i1 %cmp3.8.i, label %for.inc.7.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %arrayidx1.9.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 9
  %41 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx1.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv.i15)
  %cmp3.9.i = icmp eq i32 %42, %conv.i15
  br i1 %cmp3.9.i, label %for.inc.8.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.9.i

for.inc.8.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %arrayidx1.10.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 10
  %43 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx1.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv.i15)
  %cmp3.10.i = icmp eq i32 %44, %conv.i15
  br i1 %cmp3.10.i, label %for.inc.9.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.10.i

for.inc.9.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %arrayidx1.11.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 11
  %45 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx1.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv.i15)
  %cmp3.11.i = icmp eq i32 %46, %conv.i15
  br i1 %cmp3.11.i, label %for.inc.10.i.kxcjk1013_get_startup_times.exit_crit_edge, label %for.inc.10.i.if.else_crit_edge

for.inc.10.i.if.else_crit_edge:                   ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

for.inc.10.i.kxcjk1013_get_startup_times.exit_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kxcjk1013_get_startup_times.exit

kxcjk1013_get_startup_times.exit:                 ; preds = %for.inc.10.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.9.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.8.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.7.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.6.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.5.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.4.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.3.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.2.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.1.i.kxcjk1013_get_startup_times.exit_crit_edge, %for.inc.i.kxcjk1013_get_startup_times.exit_crit_edge, %if.end.kxcjk1013_get_startup_times.exit_crit_edge
  %i.014.lcssa.i = phi i32 [ 0, %if.end.kxcjk1013_get_startup_times.exit_crit_edge ], [ 1, %for.inc.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 2, %for.inc.1.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 3, %for.inc.2.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 4, %for.inc.3.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 5, %for.inc.4.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 6, %for.inc.5.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 7, %for.inc.6.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 8, %for.inc.7.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 9, %for.inc.8.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 10, %for.inc.9.i.kxcjk1013_get_startup_times.exit_crit_edge ], [ 11, %for.inc.10.i.kxcjk1013_get_startup_times.exit_crit_edge ]
  %usec.i = getelementptr [5 x [12 x %struct.anon.90]], ptr @odr_start_up_times, i32 0, i32 %20, i32 %i.014.lcssa.i, i32 1
  %47 = ptrtoint ptr %usec.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %48)
  %cmp4 = icmp slt i32 %48, 20000
  br i1 %cmp4, label %if.then5, label %kxcjk1013_get_startup_times.exit.if.else_crit_edge

kxcjk1013_get_startup_times.exit.if.else_crit_edge: ; preds = %kxcjk1013_get_startup_times.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then5:                                         ; preds = %kxcjk1013_get_startup_times.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef %48, i32 noundef 20000, i32 noundef 2) #10
  br label %cleanup

if.else:                                          ; preds = %kxcjk1013_get_startup_times.exit.if.else_crit_edge, %for.inc.10.i.if.else_crit_edge
  %retval.0.i1621 = phi i32 [ %48, %kxcjk1013_get_startup_times.exit.if.else_crit_edge ], [ 100000, %for.inc.10.i.if.else_crit_edge ]
  %div22 = udiv i32 %retval.0.i1621, 1000
  %call6 = tail call i32 @msleep_interruptible(i32 noundef %div22) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %kxcjk1013_set_mode.exit.thread
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then5 ], [ %retval.0.ph.i, %kxcjk1013_set_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !121, !123, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !196, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !211, !213, !215, !216, !217, !219, !220, !222, !224, !226, !227, !228, !229, !231}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__initcall__kmod_kxcjk_1013__290_1758_kxcjk1013_driver_init6, !1, !"__initcall__kmod_kxcjk_1013__290_1758_kxcjk1013_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1758, i32 1}
!2 = !{ptr @__exitcall_kxcjk1013_driver_exit, !1, !"__exitcall_kxcjk1013_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1760, i32 1}
!5 = !{ptr @__UNIQUE_ID_file292, !6, !"__UNIQUE_ID_file292", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1761, i32 1}
!7 = !{ptr @__UNIQUE_ID_license293, !6, !"__UNIQUE_ID_license293", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1762, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1749, i32 11}
!12 = !{ptr @kxcjk1013_driver, !13, !"kxcjk1013_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1747, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1464, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1465, i32 31}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1469, i32 43}
!20 = !{ptr @kxcjk1013_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1518, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1532, i32 7}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1538, i32 11}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1547, i32 10}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1577, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kxcjk1013_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @kxcjk1013_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1592, i32 3}
!39 = !{ptr @kxcjk1013_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @kxcjk1013_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1414, i32 21}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1416, i32 28}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1418, i32 12}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1419, i32 28}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1420, i32 12}
!51 = !{ptr @kxcjk1013_regs, !52, !"kxcjk1013_regs", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 198, i32 37}
!53 = !{ptr @kxtf9_regs, !54, !"kxtf9_regs", i1 false, i1 false}
!54 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 210, i32 37}
!55 = !{ptr @kx0231025_regs, !56, !"kx0231025_regs", i1 false, i1 false}
!56 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 224, i32 37}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 511, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @kxcjk1013_chip_init._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @kxcjk1013_chip_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 515, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @kxcjk1013_chip_init.__UNIQUE_ID_ddebug289, !63, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 523, i32 3}
!68 = !{ptr @kxcjk1013_chip_init._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @kxcjk1013_chip_init._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 532, i32 3}
!72 = !{ptr @kxcjk1013_chip_init._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @kxcjk1013_chip_init._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 543, i32 3}
!76 = !{ptr @kxcjk1013_chip_init._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @kxcjk1013_chip_init._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 552, i32 3}
!80 = !{ptr @kxcjk1013_chip_init._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @kxcjk1013_chip_init._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 563, i32 3}
!84 = !{ptr @kxcjk1013_chip_init._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @kxcjk1013_chip_init._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 573, i32 4}
!88 = !{ptr @kxcjk1013_chip_init._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @kxcjk1013_chip_init._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 478, i32 3}
!92 = !{ptr @kxcjk1013_set_range._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @kxcjk1013_set_range._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 489, i32 3}
!96 = !{ptr @kxcjk1013_set_range._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @kxcjk1013_set_range._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @KXCJK1013_scale_table, !99, !"KXCJK1013_scale_table", i1 false, i1 false}
!99 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 398, i32 3}
!100 = !{ptr @kxcjk1013_channels, !101, !"kxcjk1013_channels", i1 false, i1 false}
!101 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1181, i32 35}
!102 = !{ptr @kxcjk1013_event, !103, !"kxcjk1013_event", i1 false, i1 false}
!103 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1139, i32 36}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1157, i32 2}
!106 = !{ptr @kxcjk1013_ext_info, !107, !"kxcjk1013_ext_info", i1 false, i1 false}
!107 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1156, i32 44}
!108 = !{ptr @kxcjk1013_scan_masks, !109, !"kxcjk1013_scan_masks", i1 false, i1 false}
!109 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1203, i32 28}
!110 = !{ptr @kxcjk1013_info, !111, !"kxcjk1013_info", i1 false, i1 false}
!111 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1193, i32 30}
!112 = !{ptr @kxcjk1013_attrs_group, !113, !"kxcjk1013_attrs_group", i1 false, i1 false}
!113 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1135, i32 37}
!114 = !{ptr @kxcjk1013_attributes, !115, !"kxcjk1013_attributes", i1 false, i1 false}
!115 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1129, i32 26}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1124, i32 8}
!118 = !{ptr @iio_dev_attr_in_accel_sampling_frequency_available, !117, !"iio_dev_attr_in_accel_sampling_frequency_available", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 315, i32 2}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 303, i32 2}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1121, i32 22}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1127, i32 8}
!127 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @iio_const_attr_in_accel_scale_available, !126, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 614, i32 3}
!131 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @kxcjk1013_set_power_state._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @kxcjk1013_set_power_state._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 866, i32 3}
!136 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @kxcjk1013_get_acc_reg._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @kxcjk1013_get_acc_reg._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @kxtf9_samp_freq_table, !140, !"kxtf9_samp_freq_table", i1 false, i1 false}
!140 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 305, i32 32}
!141 = !{ptr @samp_freq_table, !142, !"samp_freq_table", i1 false, i1 false}
!142 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 287, i32 32}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 825, i32 3}
!145 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @kxcjk1013_set_odr._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @kxcjk1013_set_odr._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 834, i32 3}
!150 = !{ptr @kxcjk1013_set_odr._entry.60, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @kxcjk1013_set_odr._entry_ptr.62, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 460, i32 3}
!154 = !{ptr @kxcjk1013_get_mode._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @kxcjk1013_get_mode._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 666, i32 3}
!158 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry.65, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 677, i32 3}
!162 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.66, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry.67, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 683, i32 3}
!165 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.68, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry.69, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 694, i32 3}
!168 = !{ptr @kxcjk1013_setup_any_motion_interrupt._entry_ptr.70, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 630, i32 3}
!171 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @kxcjk1013_chip_update_thresholds._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @kxcjk1013_chip_update_thresholds._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 638, i32 3}
!176 = !{ptr @kxcjk1013_chip_update_thresholds._entry.73, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @kxcjk1013_chip_update_thresholds._entry_ptr.75, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1357, i32 3}
!180 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @kxcjk1013_event_handler._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @kxcjk1013_event_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1380, i32 3}
!185 = !{ptr @kxcjk1013_event_handler._entry.78, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @kxcjk1013_event_handler._entry_ptr.80, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1290, i32 3}
!189 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @kxcjk1013_report_motion_event._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @kxcjk1013_report_motion_event._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @kxcjk1013_trigger_ops, !193, !"kxcjk1013_trigger_ops", i1 false, i1 false}
!193 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1279, i32 37}
!194 = !{ptr @.str.83, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 724, i32 3}
!196 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry.84, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 735, i32 3}
!200 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.85, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry.86, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 741, i32 3}
!203 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.87, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry.88, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 752, i32 3}
!206 = !{ptr @kxcjk1013_setup_new_data_interrupt._entry_ptr.89, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1237, i32 3}
!209 = !{ptr @kxcjk1013_trig_reen._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @kxcjk1013_trig_reen._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @kxcjk1013_buffer_setup_ops, !212, !"kxcjk1013_buffer_setup_ops", i1 false, i1 false}
!212 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1188, i32 42}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 435, i32 3}
!215 = !{ptr @kxcjk1013_set_mode._entry, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @kxcjk1013_set_mode._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @kxcjk1013_set_mode._entry.92, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 446, i32 3}
!219 = !{ptr @kxcjk1013_set_mode._entry_ptr.93, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @kxcjk1013_of_match, !221, !"kxcjk1013_of_match", i1 false, i1 false}
!221 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1737, i32 34}
!222 = !{ptr @kxcjk1013_pm_ops, !223, !"kxcjk1013_pm_ops", i1 false, i1 false}
!223 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1703, i32 32}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1676, i32 3}
!226 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @kxcjk1013_runtime_suspend._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @kxcjk1013_runtime_suspend._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @odr_start_up_times, !230, !"odr_start_up_times", i1 false, i1 false}
!230 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 321, i32 3}
!231 = !{ptr @kxcjk1013_id, !232, !"kxcjk1013_id", i1 false, i1 false}
!232 = !{!"../drivers/iio/accel/kxcjk-1013.c", i32 1725, i32 35}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{i8 0, i8 2}
!243 = !{i64 2148994884, i64 2148994889, i64 2148994902, i64 2148994946, i64 2148994980, i64 2148995001}
!244 = !{i64 2148380926}
!245 = !{i64 866546, i64 866571, i64 866593, i64 866609, i64 866621, i64 866641, i64 866665, i64 866681, i64 866693}
!246 = !{i64 2148381114}
