; ModuleID = '/llk/IR_all_yes/drivers/iio/light/si1145.c_pt.bc'
source_filename = "../drivers/iio/light/si1145.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.si1145_part_info = type { i8, ptr, ptr, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
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
%struct.si1145_data = type { ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i8, ptr, i32, [4 x i8], [24 x i8] }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@__initcall__kmod_si1145__289_1359_si1145_driver_init6 = internal global ptr @si1145_driver_init, section ".initcall6.init", align 4
@si1145_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si1145_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si1145_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si1145_driver_exit = internal global ptr @si1145_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"si1145.author=Peter Meerwald-Stadler <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [106 x i8] c"si1145.description=Silabs SI1132 and SI1141/2/3/5/6/7 proximity, ambient light and UV index sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"si1145.file=drivers/iio/light/si1145\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"si1145.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si1145\00", [25 x i8] zeroinitializer }, align 32
@si1145_ids = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si1132\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"si1141\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"si1142\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"si1143\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"si1145\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"si1146\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"si1147\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@si1145_part_info = internal constant { [7 x %struct.si1145_part_info], [56 x i8] } { [7 x %struct.si1145_part_info] [%struct.si1145_part_info { i8 50, ptr @si1132_info, ptr @si1132_channels, i32 6, i32 0, i8 1 }, %struct.si1145_part_info { i8 65, ptr @si114x_info, ptr @si1141_channels, i32 7, i32 1, i8 0 }, %struct.si1145_part_info { i8 66, ptr @si114x_info, ptr @si1142_channels, i32 9, i32 2, i8 0 }, %struct.si1145_part_info { i8 67, ptr @si114x_info, ptr @si1143_channels, i32 11, i32 3, i8 0 }, %struct.si1145_part_info { i8 69, ptr @si114x_info, ptr @si1145_channels, i32 8, i32 1, i8 1 }, %struct.si1145_part_info { i8 70, ptr @si114x_info, ptr @si1146_channels, i32 10, i32 2, i8 1 }, %struct.si1145_part_info { i8 71, ptr @si114x_info, ptr @si1147_channels, i32 12, i32 3, i8 1 }], [56 x i8] zeroinitializer }, align 32
@si1145_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device ID part 0x%02x rev 0x%02x seq 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si1145_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/si1145.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si1145_probe._entry_ptr = internal global ptr @si1145_probe._entry, section ".printk_index", align 4
@si1145_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1305, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"part ID mismatch got 0x%02x, expected 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@si1145_probe._entry_ptr.9 = internal global ptr @si1145_probe._entry.6, section ".printk_index", align 4
@si1145_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@si1145_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&data->cmdlock\00", [17 x i8] zeroinitializer }, align 32
@si1145_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @si1145_buffer_preenable, ptr null, ptr null, ptr null, ptr @si1145_validate_scan_mask }, [44 x i8] zeroinitializer }, align 32
@si1145_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no irq, using polling\0A\00", [41 x i8] zeroinitializer }, align 32
@si1145_probe._entry_ptr.15 = internal global ptr @si1145_probe._entry.13, section ".printk_index", align 4
@si1132_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @si1132_attribute_group, ptr @si1145_read_raw, ptr null, ptr null, ptr @si1145_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@si1132_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 44, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@si114x_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @si114x_attribute_group, ptr @si1145_read_raw, ptr null, ptr null, ptr @si1145_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@si1141_channels = internal constant { [7 x %struct.iio_chan_spec], [152 x i8] } { [7 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 5, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [152 x i8] zeroinitializer }, align 32
@si1142_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 40, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 5, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [200 x i8] zeroinitializer }, align 32
@si1143_channels = internal constant { [11 x %struct.iio_chan_spec], [248 x i8] } { [11 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 40, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 2, i32 0, i32 42, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 5, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 6, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [248 x i8] zeroinitializer }, align 32
@si1145_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 44, i32 5, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 6, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@si1146_channels = internal constant { [10 x %struct.iio_chan_spec], [208 x i8] } { [10 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 44, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 5, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 40, i32 6, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [208 x i8] zeroinitializer }, align 32
@si1147_channels = internal constant { [12 x %struct.iio_chan_spec], [256 x i8] } { [12 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 0, i32 34, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 36, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 38, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 1, i32 0, i32 40, i32 3, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 8, i32 2, i32 0, i32 42, i32 4, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 44, i32 5, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 44, i32 6, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 44, i32 7, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [256 x i8] zeroinitializer }, align 32
@si1132_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @si1132_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@si1132_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_intensity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_intensity_ir_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_in_intensity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.16, %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_intensity_ir_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.16, %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"128 64 32 16 8 4 2 1\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_intensity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"in_intensity_ir_scale_available\00", [32 x i8] zeroinitializer }, align 32
@si1145_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 247, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to reset command counter, ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si1145_command\00", [17 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr = internal global ptr @si1145_command._entry, section ".printk_index", align 4
@si1145_command._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 255, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write command, ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr.24 = internal global ptr @si1145_command._entry.21, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si1145_command._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 266, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read response, ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr.27 = internal global ptr @si1145_command._entry.25, section ".printk_index", align 4
@si1145_command._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.20, ptr @.str.3, i32 274, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout on command 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr.30 = internal global ptr @si1145_command._entry.28, section ".printk_index", align 4
@si1145_command._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.3, i32 289, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unexpected response counter %d instead of %d\0A\00", [50 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr.33 = internal global ptr @si1145_command._entry.31, section ".printk_index", align 4
@si1145_command._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.20, ptr @.str.3, i32 294, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"INVALID_SETTING error on command 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@si1145_command._entry_ptr.36 = internal global ptr @si1145_command._entry.34, section ".printk_index", align 4
@si1145_command.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.37, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"overflow, ret=%d, cmd=0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@__si1145_command_reset._entry = internal constant %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 219, ptr @.str.23, ptr @.str.5 }, align 1
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timeout on reset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__si1145_command_reset\00", [41 x i8] zeroinitializer }, align 32
@__si1145_command_reset._entry_ptr = internal global ptr @__si1145_command_reset._entry, section ".printk_index", align 4
@si114x_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @si114x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@si114x_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_intensity_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_intensity_ir_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_proximity_scale_available, i64 4), ptr null], [16 x i8] zeroinitializer }, align 32
@iio_const_attr_in_proximity_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.40, %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"128 64 32 16 8 4\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_proximity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@si1145_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @si1145_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"si1145_irq\00", [21 x i8] zeroinitializer }, align 32
@si1145_probe_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1258, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq request failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si1145_probe_trigger\00", [43 x i8] zeroinitializer }, align 32
@si1145_probe_trigger._entry_ptr = internal global ptr @si1145_probe_trigger._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 7, i64 8, i64 9, i64 27]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 7, i64 8, i64 9, i64 27]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 44]
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"si1145_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1351, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1353, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"si1145_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1339, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"si1145_part_info\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1002, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1301, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1304, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1315, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1316, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"si1145_buffer_setup_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1174, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1333, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"si1132_info\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 987, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"si1132_channels\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 881, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"si114x_info\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 993, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"si1141_channels\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 890, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"si1142_channels\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 900, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"si1143_channels\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 912, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"si1145_channels\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 926, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"si1146_channels\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 937, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"si1147_channels\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 950, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"si1132_attribute_group\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 978, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"si1132_attributes\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 965, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant [44 x i8] c"iio_const_attr_in_intensity_scale_available\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [47 x i8] c"iio_const_attr_in_intensity_ir_scale_available\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 591, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 593, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 246, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 255, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 266, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 273, i32 6 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 287, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 293, i32 5 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 298, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 219, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"si114x_attribute_group\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 982, i32 37 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"si114x_attributes\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 971, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant [44 x i8] c"iio_const_attr_in_proximity_scale_available\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 589, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1245, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"si1145_trigger_ops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1233, i32 37 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1255, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [30 x i8] c"../drivers/iio/light/si1145.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1258, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_si1145_driver_exit, ptr @__initcall__kmod_si1145__289_1359_si1145_driver_init6, ptr @__si1145_command_reset._entry, ptr @__si1145_command_reset._entry_ptr, ptr @si1145_command._entry, ptr @si1145_command._entry.21, ptr @si1145_command._entry.25, ptr @si1145_command._entry.28, ptr @si1145_command._entry.31, ptr @si1145_command._entry.34, ptr @si1145_command._entry_ptr, ptr @si1145_command._entry_ptr.24, ptr @si1145_command._entry_ptr.27, ptr @si1145_command._entry_ptr.30, ptr @si1145_command._entry_ptr.33, ptr @si1145_command._entry_ptr.36, ptr @si1145_driver_exit, ptr @si1145_probe._entry, ptr @si1145_probe._entry.13, ptr @si1145_probe._entry.6, ptr @si1145_probe._entry_ptr, ptr @si1145_probe._entry_ptr.15, ptr @si1145_probe._entry_ptr.9, ptr @si1145_probe_trigger._entry, ptr @si1145_probe_trigger._entry_ptr, ptr @si1145_driver, ptr @.str, ptr @si1145_ids, ptr @si1145_part_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @si1145_probe.__key, ptr @.str.10, ptr @si1145_probe.__key.11, ptr @.str.12, ptr @si1145_buffer_setup_ops, ptr @.str.14, ptr @si1132_info, ptr @si1132_channels, ptr @si114x_info, ptr @si1141_channels, ptr @si1142_channels, ptr @si1143_channels, ptr @si1145_channels, ptr @si1146_channels, ptr @si1147_channels, ptr @si1132_attribute_group, ptr @si1132_attributes, ptr @iio_const_attr_in_intensity_scale_available, ptr @iio_const_attr_in_intensity_ir_scale_available, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @si114x_attribute_group, ptr @si114x_attributes, ptr @iio_const_attr_in_proximity_scale_available, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @si1145_trigger_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_part_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1132_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1132_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si114x_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1141_channels to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1142_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1143_channels to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1146_channels to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1147_channels to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1132_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1132_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_intensity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_intensity_ir_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_command._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si114x_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si114x_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_proximity_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si1145_probe_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si1145_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si1145_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @si1145_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 240) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [7 x %struct.si1145_part_info], ptr @si1145_part_info, i32 0, i32 %5
  %part_info = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %part_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %part_info, align 8
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %do.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end14
  %conv23 = and i32 %call4, 255
  %conv24 = and i32 %call9, 255
  %conv25 = and i32 %call16, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %conv25) #8
  %11 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part_info, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv28 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %conv28)
  %cmp29.not = icmp eq i32 %conv23, %conv28
  br i1 %cmp29.not, label %if.end40, label %do.end34

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv23, i32 noundef %conv28) #8
  br label %cleanup

if.end40:                                         ; preds = %do.end
  %name41 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %15 = ptrtoint ptr %name41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %id, ptr %name41, align 8
  %16 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part_info, align 8
  %channels = getelementptr inbounds %struct.si1145_part_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %channels, align 4
  %channels43 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %20 = ptrtoint ptr %channels43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %channels43, align 8
  %21 = load ptr, ptr %part_info, align 8
  %num_channels = getelementptr inbounds %struct.si1145_part_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels, align 4
  %num_channels45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %num_channels45, align 4
  %25 = load ptr, ptr %part_info, align 8
  %iio_info = getelementptr inbounds %struct.si1145_part_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %iio_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iio_info, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %info, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %lock = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @si1145_probe.__key) #5
  %cmdlock = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %cmdlock, ptr noundef nonnull @.str.12, ptr noundef nonnull @si1145_probe.__key.11) #5
  %call53 = tail call fastcc i32 @si1145_initialize(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end40.cleanup_crit_edge, label %if.end57

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end40
  %call59 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @si1145_trigger_handler, i32 noundef 0, ptr noundef nonnull @si1145_buffer_setup_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end57.cleanup_crit_edge, label %if.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool64.not = icmp eq i32 %31, 0
  br i1 %tobool64.not, label %do.end73, label %if.then65

if.then65:                                        ; preds = %if.end63
  %call66 = tail call fastcc i32 @si1145_probe_trigger(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then65.cleanup_crit_edge, label %if.then65.if.end75_crit_edge

if.then65.if.end75_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %if.then65.if.end75_crit_edge
  %call77 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then65.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end34, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end34 ], [ %call77, %if.end75 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call53, %if.end40.cleanup_crit_edge ], [ %call59, %if.end57.cleanup_crit_edge ], [ %call66, %if.then65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_initialize(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 24, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 25) #5
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 25) #5
  %part_info.i = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part_info.i, align 8
  %uncompressed_meas_rate.i = getelementptr inbounds %struct.si1145_part_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %uncompressed_meas_rate.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uncompressed_meas_rate.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 8, i16 noundef zeroext 0) #5
  br label %si1145_set_meas_rate.exit

if.else.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  br label %si1145_set_meas_rate.exit

si1145_set_meas_rate.exit:                        ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %si1145_set_meas_rate.exit.cleanup_crit_edge, label %if.end9

si1145_set_meas_rate.exit.cleanup_crit_edge:      ; preds = %si1145_set_meas_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %si1145_set_meas_rate.exit
  %call10 = tail call fastcc i32 @si1145_store_samp_freq(ptr noundef %data, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part_info.i, align 8
  %num_leds = getelementptr inbounds %struct.si1145_part_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_leds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_leds, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end13.if.end24_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end13.sw.epilog_crit_edge
    i32 1, label %sw.bb20
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

sw.bb:                                            ; preds = %if.end13
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %.sink = phi i8 [ 4, %sw.bb20 ], [ 68, %sw.bb.sw.epilog_crit_edge ], [ 68, %if.end13.sw.epilog_crit_edge ]
  %call21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext %.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end24_crit_edge

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 23, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end24.cleanup_crit_edge, label %si1145_param_set.exit

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_set.exit:                            ; preds = %if.end24
  %call3.i.i = tail call fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext -84) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp26 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp26, label %si1145_param_set.exit.cleanup_crit_edge, label %if.end28

si1145_param_set.exit.cleanup_crit_edge:          ; preds = %si1145_param_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %si1145_param_set.exit
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %call.i.i157 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 23, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %cmp.i.i158 = icmp slt i32 %call.i.i157, 0
  br i1 %cmp.i.i158, label %if.end28.cleanup_crit_edge, label %si1145_param_set.exit162

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_set.exit162:                         ; preds = %if.end28
  %call3.i.i159 = tail call fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext -85) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i159)
  %cmp30 = icmp slt i32 %call3.i.i159, 0
  br i1 %cmp30, label %si1145_param_set.exit162.cleanup_crit_edge, label %if.end32

si1145_param_set.exit162.cleanup_crit_edge:       ; preds = %si1145_param_set.exit162
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %si1145_param_set.exit162
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 8
  %call.i.i163 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 23, i8 noundef zeroext 96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp.i.i164 = icmp slt i32 %call.i.i163, 0
  br i1 %cmp.i.i164, label %if.end32.cleanup_crit_edge, label %si1145_param_set.exit168

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_set.exit168:                         ; preds = %if.end32
  %call3.i.i165 = tail call fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext -86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i165)
  %cmp34 = icmp slt i32 %call3.i.i165, 0
  br i1 %cmp34, label %si1145_param_set.exit168.cleanup_crit_edge, label %if.end36

si1145_param_set.exit168.cleanup_crit_edge:       ; preds = %si1145_param_set.exit168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %si1145_param_set.exit168
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %call.i.i169 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 23, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169)
  %cmp.i.i170 = icmp slt i32 %call.i.i169, 0
  br i1 %cmp.i.i170, label %if.end36.cleanup_crit_edge, label %si1145_param_set.exit174

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_set.exit174:                         ; preds = %if.end36
  %call3.i.i171 = tail call fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext -78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i171)
  %cmp38 = icmp slt i32 %call3.i.i171, 0
  br i1 %cmp38, label %si1145_param_set.exit174.cleanup_crit_edge, label %if.end40

si1145_param_set.exit174.cleanup_crit_edge:       ; preds = %si1145_param_set.exit174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %si1145_param_set.exit174
  %call41 = tail call fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext 17, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %call45 = tail call fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext 16, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext 31, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %call53 = tail call fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext 30, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %call57 = tail call fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext 29, i8 noundef zeroext 96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %21 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %part_info.i, align 8
  %cmp62 = icmp eq ptr %22, @si1145_part_info
  %cmp64 = icmp eq ptr %22, getelementptr inbounds ([7 x %struct.si1145_part_info], ptr @si1145_part_info, i32 0, i32 4)
  %or.cond = select i1 %cmp62, i1 true, i1 %cmp64
  %cmp67 = icmp eq ptr %22, getelementptr inbounds ([7 x %struct.si1145_part_info], ptr @si1145_part_info, i32 0, i32 5)
  %or.cond155 = select i1 %or.cond, i1 true, i1 %cmp67
  %cmp70 = icmp eq ptr %22, getelementptr inbounds ([7 x %struct.si1145_part_info], ptr @si1145_part_info, i32 0, i32 6)
  %or.cond156 = select i1 %or.cond155, i1 true, i1 %cmp70
  br i1 %or.cond156, label %if.then71, label %if.end60.if.end92_crit_edge

if.end60.if.end92_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then71:                                        ; preds = %if.end60
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 8
  %call73 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 19, i8 noundef zeroext 123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then71.cleanup_crit_edge, label %if.end76

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end76:                                         ; preds = %if.then71
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %call78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 20, i8 noundef zeroext 107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end76.cleanup_crit_edge, label %if.end81

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %if.end76
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 8
  %call83 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 21, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end81.cleanup_crit_edge, label %if.end86

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %if.end81
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 8
  %call88 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 22, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end86.cleanup_crit_edge, label %if.end86.if.end92_crit_edge

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end92:                                         ; preds = %if.end86.if.end92_crit_edge, %if.end60.if.end92_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end86.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %si1145_param_set.exit174.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %si1145_param_set.exit168.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %si1145_param_set.exit162.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %si1145_param_set.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %si1145_set_meas_rate.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end92 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.i, %si1145_set_meas_rate.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %sw.bb.cleanup_crit_edge ], [ %call21, %sw.epilog.cleanup_crit_edge ], [ %call3.i.i, %si1145_param_set.exit.cleanup_crit_edge ], [ %call3.i.i159, %si1145_param_set.exit162.cleanup_crit_edge ], [ %call3.i.i165, %si1145_param_set.exit168.cleanup_crit_edge ], [ %call3.i.i171, %si1145_param_set.exit174.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call73, %if.then71.cleanup_crit_edge ], [ %call78, %if.end76.cleanup_crit_edge ], [ %call83, %if.end81.cleanup_crit_edge ], [ %call88, %if.end86.cleanup_crit_edge ], [ %call.i.i, %if.end24.cleanup_crit_edge ], [ %call.i.i157, %if.end28.cleanup_crit_edge ], [ %call.i.i163, %if.end32.cleanup_crit_edge ], [ %call.i.i169, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %autonomous = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %autonomous to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autonomous, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @si1145_command(ptr noundef %3, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, -75
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.then.if.end14_crit_edge, label %if.then.done_crit_edge

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  %and = and i32 %call5, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %or.cond120 = or i1 %cmp6, %tobool11.not
  br i1 %or.cond120, label %if.else.done_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %irq_status.0 = phi i32 [ 0, %if.then.if.end14_crit_edge ], [ %call5, %if.else.if.end14_crit_edge ]
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %9, i32 noundef %11, i32 noundef 0) #5
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %13)
  %cmp17128 = icmp ult i32 %call15, %13
  br i1 %cmp17128, label %while.cond.preheader.lr.ph, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end14
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %14 = phi i32 [ %13, %while.cond.preheader.lr.ph ], [ %39, %for.inc.while.cond.preheader_crit_edge ]
  %j.0130 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %add51, %for.inc.while.cond.preheader_crit_edge ]
  %i.0129 = phi i32 [ %call15, %while.cond.preheader.lr.ph ], [ %call56, %for.inc.while.cond.preheader_crit_edge ]
  %add122 = add nuw i32 %i.0129, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add122, i32 %14)
  %cmp20123 = icmp ult i32 %add122, %14
  br i1 %cmp20123, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %15 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_scan_mask, align 4
  %17 = sub i32 %14, %i.0129
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %add125 = phi i32 [ %add122, %while.body.lr.ph ], [ %add, %if.end36.while.body_crit_edge ]
  %run.0124 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end36.while.body_crit_edge ]
  %div3.i = lshr i32 %add125, 5
  %arrayidx.i = getelementptr i32, ptr %16, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %add125, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %while.body.while.end_crit_edge, label %if.end27

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end27:                                         ; preds = %while.body
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channels, align 8
  %address = getelementptr %struct.iio_chan_spec, ptr %23, i32 %add125, i32 3
  %24 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %address, align 4
  %address31 = getelementptr %struct.iio_chan_spec, ptr %23, i32 %i.0129, i32 3
  %26 = ptrtoint ptr %address31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address31, align 4
  %mul = shl i32 %run.0124, 1
  %add32 = add i32 %27, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add32)
  %cmp33.not = icmp eq i32 %25, %add32
  br i1 %cmp33.not, label %if.end36, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end36:                                         ; preds = %if.end27
  %inc = add i32 %run.0124, 1
  %add = add i32 %inc, %i.0129
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end36.while.end_crit_edge, %if.end27.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %run.0.lcssa = phi i32 [ 1, %while.cond.preheader.while.end_crit_edge ], [ %run.0124, %if.end27.while.end_crit_edge ], [ %run.0124, %while.body.while.end_crit_edge ], [ %17, %if.end36.while.end_crit_edge ]
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channels, align 8
  %address40 = getelementptr %struct.iio_chan_spec, ptr %31, i32 %i.0129, i32 3
  %32 = ptrtoint ptr %address40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address40, align 4
  %conv41 = trunc i32 %33 to i8
  %mul42 = shl i32 %run.0.lcssa, 1
  %conv43 = trunc i32 %mul42 to i8
  %arrayidx44 = getelementptr %struct.si1145_data, ptr %3, i32 0, i32 10, i32 %j.0130
  %call45 = tail call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %29, i8 noundef zeroext %conv41, i8 noundef zeroext %conv43, ptr noundef %arrayidx44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %while.end.done_crit_edge, label %for.inc

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

for.inc:                                          ; preds = %while.end
  %add51 = add i32 %mul42, %j.0130
  %34 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active_scan_mask, align 4
  %36 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %masklength, align 8
  %add55 = add i32 %run.0.lcssa, %i.0129
  %call56 = tail call i32 @_find_next_bit_be(ptr noundef %35, i32 noundef %37, i32 noundef %add55) #5
  %38 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %masklength, align 8
  %cmp17 = icmp ult i32 %call56, %39
  br i1 %cmp17, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %40 = ptrtoint ptr %autonomous to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %autonomous, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool58.not = icmp eq i8 %41, 0
  br i1 %tobool58.not, label %for.end.if.end69_crit_edge, label %if.then59

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then59:                                        ; preds = %for.end
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %44 = trunc i32 %irq_status.0 to i8
  %conv63 = and i8 %44, 29
  %call64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 33, i8 noundef zeroext %conv63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then59.done_crit_edge, label %if.then59.if.end69_crit_edge

if.then59.if.end69_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then59.done_crit_edge:                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end69:                                         ; preds = %if.then59.if.end69_crit_edge, %for.end.if.end69_crit_edge
  %buffer70 = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 10
  %call71 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %scan_timestamp.i, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.end69.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end69.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %48, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i121 = getelementptr i64, ptr %buffer70, i32 %sub.i
  %49 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %call71, ptr %arrayidx.i121, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end69.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer70) #5
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then59.done_crit_edge, %while.end.done_crit_edge, %if.else.done_crit_edge, %if.then.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %50 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %51) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_probe_trigger(ptr noundef %indio_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call2 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #5
  %call3 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %5, i32 noundef %call2) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @si1145_trigger_ops, ptr %call3, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call3, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.43, ptr noundef nonnull %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef nonnull %call3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %trig14 = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %trig14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %trig14, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %call3, i32 0, i32 4
  %call.i39 = tail call ptr @get_device(ptr noundef %dev.i) #5
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %12) #5
  %trig17 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %13 = ptrtoint ptr %trig17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %trig17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb17
    i32 3, label %sw.bb35
    i32 12, label %sw.bb47
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 7, label %sw.bb.sw.bb1_crit_edge
    i32 8, label %sw.bb.sw.bb1_crit_edge110
    i32 0, label %sw.bb.sw.bb1_crit_edge111
    i32 9, label %sw.bb.sw.bb1_crit_edge112
    i32 27, label %sw.bb.sw.bb1_crit_edge113
    i32 1, label %sw.bb6
  ]

sw.bb.sw.bb1_crit_edge113:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge112:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge111:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge110:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge110, %sw.bb.sw.bb1_crit_edge111, %sw.bb.sw.bb1_crit_edge112, %sw.bb.sw.bb1_crit_edge113
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %8 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_index.i, align 4
  %shl.i = shl nuw i32 1, %9
  %call1.i = tail call fastcc i32 @si1145_set_chlist(ptr noundef %indio_dev, i32 noundef %shl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.si1145_measure.exit.thread_crit_edge, label %if.end.i

if.end.si1145_measure.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_measure.exit.thread

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp2.i = icmp eq i32 %11, 8
  %conv.i = select i1 %cmp2.i, i8 5, i8 6
  %call3.i = tail call fastcc i32 @si1145_command(ptr noundef %7, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -75, i32 %call3.i)
  %cmp6.not.i = icmp eq i32 %call3.i, -75
  %or.cond.i = or i1 %cmp4.i, %cmp6.not.i
  br i1 %or.cond.i, label %si1145_measure.exit, label %if.end.i.si1145_measure.exit.thread_crit_edge

if.end.i.si1145_measure.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_measure.exit.thread

si1145_measure.exit.thread:                       ; preds = %if.end.i.si1145_measure.exit.thread_crit_edge, %if.end.si1145_measure.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.end.i.si1145_measure.exit.thread_crit_edge ], [ %call1.i, %if.end.si1145_measure.exit.thread_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

si1145_measure.exit:                              ; preds = %if.end.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address.i, align 4
  %conv10.i = trunc i32 %15 to i8
  %call11.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %13, i8 noundef zeroext %conv10.i) #5
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp = icmp slt i32 %call11.i, 0
  br i1 %cmp, label %si1145_measure.exit.cleanup_crit_edge, label %if.end5

si1145_measure.exit.cleanup_crit_edge:            ; preds = %si1145_measure.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %si1145_measure.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call11.i, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp7 = icmp eq i32 %20, 2
  %conv = select i1 %cmp7, i8 16, i8 15
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %18, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb6.cleanup_crit_edge, label %if.end12

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp14 = icmp eq i32 %22, 1
  %cond16 = select i1 %cmp14, i32 4, i32 0
  %shr109 = lshr i32 %call8, %cond16
  %and = and i32 %shr109, 15
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %25, label %sw.bb17.cleanup_crit_edge [
    i32 8, label %sw.bb17.sw.epilog_crit_edge
    i32 7, label %sw.bb20
    i32 9, label %sw.bb25
    i32 27, label %sw.bb26
  ]

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %27 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %28)
  %cmp21 = icmp eq i32 %28, 13
  %phi.bo = select i1 %cmp21, i8 -98, i8 -111
  br label %sw.epilog

sw.bb25:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 28, ptr %val, align 4
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 571429, ptr %val2, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10000, ptr %val2, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17.sw.epilog_crit_edge
  %reg.0 = phi i8 [ -117, %sw.bb17.sw.epilog_crit_edge ], [ %phi.bo, %sw.bb20 ]
  %call.i = tail call fastcc i32 @si1145_command(ptr noundef %1, i8 noundef zeroext %reg.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i87 = icmp slt i32 %call.i, 0
  br i1 %cmp.i87, label %sw.epilog.cleanup_crit_edge, label %si1145_param_query.exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_query.exit:                          ; preds = %sw.epilog
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call3.i88 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i88)
  %cmp29 = icmp slt i32 %call3.i88, 0
  br i1 %cmp29, label %si1145_param_query.exit.cleanup_crit_edge, label %if.end32

si1145_param_query.exit.cleanup_crit_edge:        ; preds = %si1145_param_query.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %si1145_param_query.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and33 = and i32 %call3.i88, 7
  %shr.i = lshr i32 128, %and33
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %36 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %37)
  %cond52 = icmp eq i32 %37, 9
  br i1 %cond52, label %sw.bb37, label %sw.default38

sw.bb37:                                          ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -10517, ptr %val, align 4
  br label %cleanup

sw.default38:                                     ; preds = %sw.bb35
  %call.i91 = tail call fastcc i32 @si1145_command(ptr noundef %1, i8 noundef zeroext -102) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp.i92, label %sw.default38.cleanup_crit_edge, label %si1145_param_query.exit96

sw.default38.cleanup_crit_edge:                   ; preds = %sw.default38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_query.exit96:                        ; preds = %sw.default38
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %call3.i93 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i93)
  %cmp40 = icmp slt i32 %call3.i93, 0
  br i1 %cmp40, label %si1145_param_query.exit96.cleanup_crit_edge, label %if.end43

si1145_param_query.exit96.cleanup_crit_edge:      ; preds = %si1145_param_query.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %si1145_param_query.exit96
  %conv44 = trunc i32 %call3.i93 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv44)
  %cmp.i97 = icmp ult i8 %conv44, 8
  br i1 %cmp.i97, label %if.end43.si1145_uncompress.exit_crit_edge, label %if.end.i98

if.end43.si1145_uncompress.exit_crit_edge:        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_uncompress.exit

if.end.i98:                                       ; preds = %if.end43
  %41 = lshr i32 %call3.i93, 4
  %42 = and i32 %call3.i93, 15
  %43 = or i32 %42, 16
  %conv7.i = and i32 %41, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %conv44)
  %cmp8.i = icmp ugt i8 %conv44, 63
  br i1 %cmp8.i, label %if.then10.i, label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %conv7.i, -4
  %shl.i99 = shl nuw nsw i32 %43, %sub.i
  br label %si1145_uncompress.exit

if.end14.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  %sub17.i = sub nsw i32 4, %conv7.i
  %shr18.i = lshr i32 %43, %sub17.i
  br label %si1145_uncompress.exit

si1145_uncompress.exit:                           ; preds = %if.end14.i, %if.then10.i, %if.end43.si1145_uncompress.exit_crit_edge
  %retval.0.i100 = phi i32 [ %shl.i99, %if.then10.i ], [ %shr18.i, %if.end14.i ], [ 0, %if.end43.si1145_uncompress.exit_crit_edge ]
  %conv46 = and i32 %retval.0.i100, 65535
  %sub = sub nsw i32 0, %conv46
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %val, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32000, ptr %val, align 4
  %part_info.i = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 4
  %46 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %part_info.i, align 8
  %uncompressed_meas_rate.i = getelementptr inbounds %struct.si1145_part_info, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %uncompressed_meas_rate.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %uncompressed_meas_rate.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  %meas_rate1.i = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %meas_rate1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %meas_rate1.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb47.si1145_read_samp_freq.exit_crit_edge

sw.bb47.si1145_read_samp_freq.exit_crit_edge:     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_read_samp_freq.exit

if.else.i:                                        ; preds = %sw.bb47
  %conv.i101 = trunc i32 %51 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv.i101)
  %cmp.i.i = icmp ult i8 %conv.i101, 8
  br i1 %cmp.i.i, label %if.else.i.si1145_uncompress.exit.i_crit_edge, label %if.end.i.i

if.else.i.si1145_uncompress.exit.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_uncompress.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  %52 = lshr i32 %51, 4
  %53 = and i32 %51, 15
  %54 = or i32 %53, 16
  %conv7.i.i = and i32 %52, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %conv.i101)
  %cmp8.i.i = icmp ugt i8 %conv.i101, 63
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.end14.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = add nsw i32 %conv7.i.i, -4
  %shl.i.i = shl nuw nsw i32 %54, %sub.i.i
  br label %si1145_uncompress.exit.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub17.i.i = sub nsw i32 4, %conv7.i.i
  %shr18.i.i = lshr i32 %54, %sub17.i.i
  br label %si1145_uncompress.exit.i

si1145_uncompress.exit.i:                         ; preds = %if.end14.i.i, %if.then10.i.i, %if.else.i.si1145_uncompress.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shl.i.i, %if.then10.i.i ], [ %shr18.i.i, %if.end14.i.i ], [ 0, %if.else.i.si1145_uncompress.exit.i_crit_edge ]
  %conv2.i = and i32 %retval.0.i.i, 65535
  br label %si1145_read_samp_freq.exit

si1145_read_samp_freq.exit:                       ; preds = %si1145_uncompress.exit.i, %sw.bb47.si1145_read_samp_freq.exit_crit_edge
  %storemerge.i = phi i32 [ %conv2.i, %si1145_uncompress.exit.i ], [ %51, %sw.bb47.si1145_read_samp_freq.exit_crit_edge ]
  %55 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %storemerge.i, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %si1145_read_samp_freq.exit, %si1145_uncompress.exit, %si1145_param_query.exit96.cleanup_crit_edge, %sw.default38.cleanup_crit_edge, %sw.bb37, %if.end32, %si1145_param_query.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb26, %sw.bb25, %sw.bb17.cleanup_crit_edge, %if.end12, %sw.bb6.cleanup_crit_edge, %if.end5, %si1145_measure.exit.cleanup_crit_edge, %si1145_measure.exit.thread, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %si1145_read_samp_freq.exit ], [ 1, %sw.bb37 ], [ 1, %si1145_uncompress.exit ], [ 2, %sw.bb26 ], [ 2, %sw.bb25 ], [ 1, %if.end32 ], [ 1, %if.end12 ], [ 1, %if.end5 ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call11.i, %si1145_measure.exit.cleanup_crit_edge ], [ %call8, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ %call3.i88, %si1145_param_query.exit.cleanup_crit_edge ], [ %call3.i93, %si1145_param_query.exit96.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %si1145_measure.exit.thread ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %call.i91, %sw.default38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb21
    i32 12, label %sw.bb63
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 8, label %sw.bb1
    i32 7, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %val)
  %cmp12.not.i = icmp slt i32 %val, 96
  br i1 %cmp12.not.i, label %for.cond.1.i, label %sw.bb1.si1145_proximity_adcgain_from_scale.exit_crit_edge

sw.bb1.si1145_proximity_adcgain_from_scale.exit_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_proximity_adcgain_from_scale.exit

for.cond.1.i:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %val)
  %cmp12.not.1.i = icmp slt i32 %val, 48
  br i1 %cmp12.not.1.i, label %for.cond.2.i, label %for.cond.1.i.si1145_proximity_adcgain_from_scale.exit_crit_edge

for.cond.1.i.si1145_proximity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_proximity_adcgain_from_scale.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %val)
  %cmp12.not.2.i = icmp slt i32 %val, 24
  br i1 %cmp12.not.2.i, label %for.cond.3.i, label %for.cond.2.i.si1145_proximity_adcgain_from_scale.exit_crit_edge

for.cond.2.i.si1145_proximity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_proximity_adcgain_from_scale.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %val)
  %cmp12.not.3.i = icmp slt i32 %val, 12
  br i1 %cmp12.not.3.i, label %for.cond.4.i, label %for.cond.3.i.si1145_proximity_adcgain_from_scale.exit_crit_edge

for.cond.3.i.si1145_proximity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_proximity_adcgain_from_scale.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %val)
  %cmp12.not.4.inv.i = icmp sgt i32 %val, 5
  %spec.select.i = select i1 %cmp12.not.4.inv.i, i8 4, i8 5
  br label %si1145_proximity_adcgain_from_scale.exit

si1145_proximity_adcgain_from_scale.exit:         ; preds = %for.cond.4.i, %for.cond.3.i.si1145_proximity_adcgain_from_scale.exit_crit_edge, %for.cond.2.i.si1145_proximity_adcgain_from_scale.exit_crit_edge, %for.cond.1.i.si1145_proximity_adcgain_from_scale.exit_crit_edge, %sw.bb1.si1145_proximity_adcgain_from_scale.exit_crit_edge
  %__fc_i.0.lcssa.i = phi i8 [ 0, %sw.bb1.si1145_proximity_adcgain_from_scale.exit_crit_edge ], [ 1, %for.cond.1.i.si1145_proximity_adcgain_from_scale.exit_crit_edge ], [ 2, %for.cond.2.i.si1145_proximity_adcgain_from_scale.exit_crit_edge ], [ 3, %for.cond.3.i.si1145_proximity_adcgain_from_scale.exit_crit_edge ], [ %spec.select.i, %for.cond.4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp20.not.i = icmp eq i32 %val2, 0
  br i1 %cmp20.not.i, label %si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge, label %si1145_proximity_adcgain_from_scale.exit.cleanup_crit_edge

si1145_proximity_adcgain_from_scale.exit.cleanup_crit_edge: ; preds = %si1145_proximity_adcgain_from_scale.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge: ; preds = %si1145_proximity_adcgain_from_scale.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %val)
  %cmp12.not.i112 = icmp slt i32 %val, 96
  br i1 %cmp12.not.i112, label %for.cond.1.i114, label %sw.bb3.si1145_intensity_adcgain_from_scale.exit_crit_edge

sw.bb3.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.1.i114:                                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %val)
  %cmp12.not.1.i113 = icmp slt i32 %val, 48
  br i1 %cmp12.not.1.i113, label %for.cond.2.i116, label %for.cond.1.i114.si1145_intensity_adcgain_from_scale.exit_crit_edge

for.cond.1.i114.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.1.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.2.i116:                                  ; preds = %for.cond.1.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %val)
  %cmp12.not.2.i115 = icmp slt i32 %val, 24
  br i1 %cmp12.not.2.i115, label %for.cond.3.i118, label %for.cond.2.i116.si1145_intensity_adcgain_from_scale.exit_crit_edge

for.cond.2.i116.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.2.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.3.i118:                                  ; preds = %for.cond.2.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %val)
  %cmp12.not.3.i117 = icmp slt i32 %val, 12
  br i1 %cmp12.not.3.i117, label %for.cond.4.i119, label %for.cond.3.i118.si1145_intensity_adcgain_from_scale.exit_crit_edge

for.cond.3.i118.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.3.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.4.i119:                                  ; preds = %for.cond.3.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %val)
  %cmp12.not.4.i = icmp slt i32 %val, 6
  br i1 %cmp12.not.4.i, label %for.cond.5.i, label %for.cond.4.i119.si1145_intensity_adcgain_from_scale.exit_crit_edge

for.cond.4.i119.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.4.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %val)
  %cmp12.not.5.i = icmp slt i32 %val, 3
  br i1 %cmp12.not.5.i, label %for.cond.6.i, label %for.cond.5.i.si1145_intensity_adcgain_from_scale.exit_crit_edge

for.cond.5.i.si1145_intensity_adcgain_from_scale.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_intensity_adcgain_from_scale.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp12.not.6.not.i = icmp eq i32 %val, 2
  %spec.select.i120 = select i1 %cmp12.not.6.not.i, i8 6, i8 7
  br label %si1145_intensity_adcgain_from_scale.exit

si1145_intensity_adcgain_from_scale.exit:         ; preds = %for.cond.6.i, %for.cond.5.i.si1145_intensity_adcgain_from_scale.exit_crit_edge, %for.cond.4.i119.si1145_intensity_adcgain_from_scale.exit_crit_edge, %for.cond.3.i118.si1145_intensity_adcgain_from_scale.exit_crit_edge, %for.cond.2.i116.si1145_intensity_adcgain_from_scale.exit_crit_edge, %for.cond.1.i114.si1145_intensity_adcgain_from_scale.exit_crit_edge, %sw.bb3.si1145_intensity_adcgain_from_scale.exit_crit_edge
  %__fc_i.0.lcssa.i121 = phi i8 [ 0, %sw.bb3.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ 1, %for.cond.1.i114.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ 2, %for.cond.2.i116.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ 3, %for.cond.3.i118.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ 4, %for.cond.4.i119.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ 5, %for.cond.5.i.si1145_intensity_adcgain_from_scale.exit_crit_edge ], [ %spec.select.i120, %for.cond.6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp20.not.i122 = icmp eq i32 %val2, 0
  br i1 %cmp20.not.i122, label %if.end7, label %si1145_intensity_adcgain_from_scale.exit.cleanup_crit_edge

si1145_intensity_adcgain_from_scale.exit.cleanup_crit_edge: ; preds = %si1145_intensity_adcgain_from_scale.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %si1145_intensity_adcgain_from_scale.exit
  call void @__sanitizer_cov_trace_pc() #7
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp8 = icmp eq i32 %7, 13
  %phi.bo = select i1 %cmp8, i8 -66, i8 -79
  %phi.bo133 = select i1 %cmp8, i8 -67, i8 -80
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7, %si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge
  %val.addr.0 = phi i8 [ %__fc_i.0.lcssa.i, %si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge ], [ %__fc_i.0.lcssa.i121, %if.end7 ]
  %reg1.0 = phi i8 [ -85, %si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge ], [ %phi.bo, %if.end7 ]
  %reg2.0 = phi i8 [ -86, %si1145_proximity_adcgain_from_scale.exit.sw.epilog_crit_edge ], [ %phi.bo133, %if.end7 ]
  %call11 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 23, i8 noundef zeroext %val.addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end13.if.then17_crit_edge, label %si1145_param_set.exit

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

si1145_param_set.exit:                            ; preds = %if.end13
  %call3.i.i = tail call fastcc i32 @si1145_command(ptr noundef %1, i8 noundef zeroext %reg1.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp15 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp15, label %si1145_param_set.exit.if.then17_crit_edge, label %if.end18

si1145_param_set.exit.if.then17_crit_edge:        ; preds = %si1145_param_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %si1145_param_set.exit.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %retval.0.i.i132 = phi i32 [ %call3.i.i, %si1145_param_set.exit.if.then17_crit_edge ], [ %call.i.i, %if.end13.if.then17_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

if.end18:                                         ; preds = %si1145_param_set.exit
  %10 = shl nuw nsw i8 %val.addr.0, 4
  %11 = and i8 %10, 112
  %conv19 = xor i8 %11, 112
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i.i124 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 23, i8 noundef zeroext %conv19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %cmp.i.i125 = icmp slt i32 %call.i.i124, 0
  br i1 %cmp.i.i125, label %if.end18.si1145_param_set.exit129_crit_edge, label %if.end.i.i127

if.end18.si1145_param_set.exit129_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_param_set.exit129

if.end.i.i127:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i126 = tail call fastcc i32 @si1145_command(ptr noundef %1, i8 noundef zeroext %reg2.0) #5
  br label %si1145_param_set.exit129

si1145_param_set.exit129:                         ; preds = %if.end.i.i127, %if.end18.si1145_param_set.exit129_crit_edge
  %retval.0.i.i128 = phi i32 [ %call3.i.i126, %if.end.i.i127 ], [ %call.i.i124, %if.end18.si1145_param_set.exit129_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %14 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp23.not = icmp eq i32 %15, 1
  br i1 %cmp23.not, label %if.end26, label %sw.bb21.cleanup_crit_edge

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val)
  %16 = icmp ult i32 %val, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp32.not = icmp eq i32 %val2, 0
  %or.cond111 = and i1 %16, %cmp32.not
  br i1 %or.cond111, label %if.end35, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp36 = icmp eq i32 %18, 2
  %conv38 = select i1 %cmp36, i8 16, i8 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp40 = icmp eq i32 %18, 1
  %call44 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %call48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext %conv38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %conv54 = select i1 %cmp40, i32 4, i32 0
  %shl55 = shl nuw nsw i32 15, %conv54
  %neg56 = xor i32 %shl55, -1
  %and57 = and i32 %call48, %neg56
  %shl60 = shl nuw nsw i32 %val, %conv54
  %or = or i32 %and57, %shl60
  %conv61 = trunc i32 %or to i8
  %call62 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext %conv38, i8 noundef zeroext %conv61) #5
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call64 = tail call fastcc i32 @si1145_store_samp_freq(ptr noundef %1, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb63, %if.end52, %if.then51, %if.end35.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %si1145_param_set.exit129, %if.then17, %sw.epilog.cleanup_crit_edge, %si1145_intensity_adcgain_from_scale.exit.cleanup_crit_edge, %si1145_proximity_adcgain_from_scale.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call64, %sw.bb63 ], [ %call48, %if.then51 ], [ %call62, %if.end52 ], [ %retval.0.i.i132, %if.then17 ], [ %retval.0.i.i128, %si1145_param_set.exit129 ], [ -22, %si1145_proximity_adcgain_from_scale.exit.cleanup_crit_edge ], [ -22, %si1145_intensity_adcgain_from_scale.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call11, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb21.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ %call44, %if.end35.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_set_chlist(ptr nocapture noundef readonly %indio_dev, i32 noundef %scan_mask) unnamed_addr #2 align 64 {
entry:
  %scan_mask.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scan_mask.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %scan_mask, ptr %scan_mask.addr, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %scan_mask1 = getelementptr inbounds %struct.si1145_data, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %scan_mask1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scan_mask1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %scan_mask)
  %cmp = icmp eq i32 %4, %scan_mask
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %5 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %masklength, align 8
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask.addr, i32 noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %8)
  %cmp488 = icmp ult i32 %call2, %8
  br i1 %cmp488, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ %call2, %for.body.lr.ph ], [ %call46, %for.inc.for.body_crit_edge ]
  %reg.089 = phi i8 [ 0, %for.body.lr.ph ], [ %reg.1, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %channels, align 8
  %address = getelementptr %struct.iio_chan_spec, ptr %10, i32 %i.090, i32 3
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %12, label %for.body.for.inc_crit_edge [
    i32 34, label %sw.bb
    i32 36, label %sw.bb6
    i32 38, label %sw.bb10
    i32 40, label %sw.bb14
    i32 42, label %sw.bb18
    i32 44, label %sw.bb22
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = or i8 %reg.089, 16
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = or i8 %reg.089, 32
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = or i8 %reg.089, 1
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = or i8 %reg.089, 2
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = or i8 %reg.089, 4
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.iio_chan_spec, ptr %10, i32 %i.090
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %20)
  %cond55 = icmp eq i32 %20, 27
  br i1 %cond55, label %sw.bb25, label %sw.default

sw.bb25:                                          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i8 %reg.089, -128
  br label %for.inc

sw.default:                                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp35 = icmp eq i32 %20, 9
  %. = select i1 %cmp35, i8 101, i8 117
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 8
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 23, i8 noundef zeroext %.) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.default.cleanup_crit_edge, label %si1145_param_set.exit

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

si1145_param_set.exit:                            ; preds = %sw.default
  %24 = or i8 %reg.089, 64
  %call3.i.i = call fastcc i32 @si1145_command(ptr noundef %2, i8 noundef zeroext -81) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp40 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp40, label %si1145_param_set.exit.cleanup_crit_edge, label %si1145_param_set.exit.for.inc_crit_edge

si1145_param_set.exit.for.inc_crit_edge:          ; preds = %si1145_param_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

si1145_param_set.exit.cleanup_crit_edge:          ; preds = %si1145_param_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %si1145_param_set.exit.for.inc_crit_edge, %sw.bb25, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb6, %sw.bb, %for.body.for.inc_crit_edge
  %reg.1 = phi i8 [ %reg.089, %for.body.for.inc_crit_edge ], [ %21, %sw.bb25 ], [ %24, %si1145_param_set.exit.for.inc_crit_edge ], [ %18, %sw.bb18 ], [ %17, %sw.bb14 ], [ %16, %sw.bb10 ], [ %15, %sw.bb6 ], [ %14, %sw.bb ]
  %25 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %i.090, 1
  %call46 = call i32 @_find_next_bit_be(ptr noundef nonnull %scan_mask.addr, i32 noundef %26, i32 noundef %add) #5
  %27 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %masklength, align 8
  %cmp4 = icmp ult i32 %call46, %28
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %reg.0.lcssa = phi i8 [ 0, %if.end.for.end_crit_edge ], [ %reg.1, %for.inc.for.end_crit_edge ]
  %29 = ptrtoint ptr %scan_mask.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_mask.addr, align 4
  %31 = ptrtoint ptr %scan_mask1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %scan_mask1, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 8
  %call.i.i79 = call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 23, i8 noundef zeroext %reg.0.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %cmp.i.i80 = icmp slt i32 %call.i.i79, 0
  br i1 %cmp.i.i80, label %for.end.si1145_param_set.exit84_crit_edge, label %if.end.i.i82

for.end.si1145_param_set.exit84_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_param_set.exit84

if.end.i.i82:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i81 = call fastcc i32 @si1145_command(ptr noundef %2, i8 noundef zeroext -95) #5
  br label %si1145_param_set.exit84

si1145_param_set.exit84:                          ; preds = %if.end.i.i82, %for.end.si1145_param_set.exit84_crit_edge
  %retval.0.i.i83 = phi i32 [ %call3.i.i81, %if.end.i.i82 ], [ %call.i.i79, %for.end.si1145_param_set.exit84_crit_edge ]
  %34 = call i32 @llvm.smin.i32(i32 %retval.0.i.i83, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %si1145_param_set.exit84, %si1145_param_set.exit.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %si1145_param_set.exit84 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %sw.default.cleanup_crit_edge ], [ %call3.i.i, %si1145_param_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %cmdlock = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %cmdlock, i32 noundef 0) #5
  %rsp_seq = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rsp_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 24, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  tail call void @msleep(i32 noundef 5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call419.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call419.i)
  %cmp520.i = icmp slt i32 %call419.i, 1
  br i1 %cmp520.i, label %if.end.i.__si1145_command_reset.exit_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end7.i

if.end.i.__si1145_command_reset.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__si1145_command_reset.exit

if.end7.i:                                        ; preds = %if.end10.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8.i = icmp slt i32 %sub.i, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.38) #8
  br label %do.end

if.end10.i:                                       ; preds = %if.end7.i
  tail call void @msleep(i32 noundef 5) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 32) #5
  %cmp5.i = icmp slt i32 %call4.i, 1
  br i1 %cmp5.i, label %if.end10.i.__si1145_command_reset.exit_crit_edge, label %if.end10.i.if.end7.i_crit_edge

if.end10.i.if.end7.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.end10.i.__si1145_command_reset.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__si1145_command_reset.exit

__si1145_command_reset.exit:                      ; preds = %if.end10.i.__si1145_command_reset.exit_crit_edge, %if.end.i.__si1145_command_reset.exit_crit_edge
  %retval.0.i103 = phi i32 [ %call419.i, %if.end.i.__si1145_command_reset.exit_crit_edge ], [ %call4.i, %if.end10.i.__si1145_command_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i103)
  %cmp2 = icmp slt i32 %retval.0.i103, 0
  br i1 %cmp2, label %__si1145_command_reset.exit.do.end_crit_edge, label %if.end

__si1145_command_reset.exit.do.end_crit_edge:     ; preds = %__si1145_command_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %__si1145_command_reset.exit.do.end_crit_edge, %do.end.i, %if.then.do.end_crit_edge
  %retval.0.i103106 = phi i32 [ %retval.0.i103, %__si1145_command_reset.exit.do.end_crit_edge ], [ %call.i, %if.then.do.end_crit_edge ], [ -110, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i103106) #8
  br label %out

if.end:                                           ; preds = %__si1145_command_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rsp_seq, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 24, i8 noundef zeroext %cmd) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call7) #8
  br label %out

if.end12:                                         ; preds = %if.end5
  tail call void @msleep(i32 noundef 5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 8
  %call14113 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14113)
  %cmp15114 = icmp slt i32 %call14113, 0
  br i1 %cmp15114, label %if.end12.do.end19_crit_edge, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  br label %if.end20

if.end12.do.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end19:                                         ; preds = %if.end31.do.end19_crit_edge, %if.end12.do.end19_crit_edge
  %call14.lcssa = phi i32 [ %call14113, %if.end12.do.end19_crit_edge ], [ %call14, %if.end31.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call14.lcssa) #8
  br label %out

if.end20:                                         ; preds = %if.end31.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %call14115 = phi i32 [ %call14, %if.end31.if.end20_crit_edge ], [ %call14113, %if.end12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call14115)
  %cmp21 = icmp ult i32 %call14115, 16
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %18 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsp_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14115, i32 %19)
  %cmp24 = icmp eq i32 %call14115, %19
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.then22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %conv) #8
  br label %out

if.end31:                                         ; preds = %if.then25
  tail call void @msleep(i32 noundef 5) #5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 8
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 32) #5
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end31.do.end19_crit_edge, label %if.end31.if.end20_crit_edge

if.end31.if.end20_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end31.do.end19_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

if.end32:                                         ; preds = %if.then22
  %add34 = add i32 %19, 1
  %and35 = and i32 %add34, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %call14115, i32 %and35)
  %cmp36 = icmp eq i32 %call14115, %and35
  br i1 %cmp36, label %if.then38, label %do.end43

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call14115, ptr %rsp_seq, align 4
  br label %out

do.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call14115, i32 noundef %and35) #8
  br label %if.end66

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %call14115)
  %cmp47 = icmp eq i32 %call14115, 128
  br i1 %cmp47, label %do.end52, label %do.body55

do.end52:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv53 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %conv53) #8
  br label %if.end66

do.body55:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si1145_command.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si1145_command, %if.then60)) #5
          to label %if.end66 [label %if.then60], !srcloc !139

if.then60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %conv61 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si1145_command.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %call14115, i32 noundef %conv61) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then60, %do.body55, %do.end52, %do.end43
  %ret.0 = phi i32 [ -5, %do.end43 ], [ -22, %do.end52 ], [ -75, %if.then60 ], [ -75, %do.body55 ]
  %24 = ptrtoint ptr %rsp_seq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %rsp_seq, align 4
  br label %out

out:                                              ; preds = %if.end66, %if.then38, %do.end30, %do.end19, %do.end11, %do.end
  %ret.1 = phi i32 [ %retval.0.i103106, %do.end ], [ %call7, %do.end11 ], [ %call14.lcssa, %do.end19 ], [ -110, %do.end30 ], [ 0, %if.then38 ], [ %ret.0, %if.end66 ]
  tail call void @mutex_unlock(ptr noundef %cmdlock) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_param_set(ptr noundef %data, i8 noundef zeroext %param, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext %value) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.si1145_param_update.exit_crit_edge, label %if.end.i

entry.si1145_param_update.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_param_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = and i8 %param, 31
  %3 = or i8 %2, -96
  %call3.i = tail call fastcc i32 @si1145_command(ptr noundef %data, i8 noundef zeroext %3) #5
  br label %si1145_param_update.exit

si1145_param_update.exit:                         ; preds = %if.end.i, %entry.si1145_param_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %entry.si1145_param_update.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si1145_store_samp_freq(ptr noundef %data, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %val, -32001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32000, i32 %0)
  %1 = icmp ult i32 %0, -32000
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %div30.rhs.trunc = trunc i32 %val to i16
  %div3031 = udiv i16 32000, %div30.rhs.trunc
  %div30.zext = zext i16 %div3031 to i32
  %lock = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %autonomous = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %autonomous to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autonomous, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %part_info.i = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part_info.i, align 8
  %uncompressed_meas_rate.i = getelementptr inbounds %struct.si1145_part_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %uncompressed_meas_rate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uncompressed_meas_rate.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 8, i16 noundef zeroext %div3031) #5
  br label %si1145_set_meas_rate.exit

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = trunc i16 %div3031 to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext %conv2.i) #5
  br label %si1145_set_meas_rate.exit

si1145_set_meas_rate.exit:                        ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %si1145_set_meas_rate.exit.if.end6_crit_edge, label %si1145_set_meas_rate.exit.out_crit_edge

si1145_set_meas_rate.exit.out_crit_edge:          ; preds = %si1145_set_meas_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

si1145_set_meas_rate.exit.if.end6_crit_edge:      ; preds = %si1145_set_meas_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %si1145_set_meas_rate.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %part_info = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part_info, align 8
  %uncompressed_meas_rate = getelementptr inbounds %struct.si1145_part_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %uncompressed_meas_rate to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %uncompressed_meas_rate, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.else, label %if.end6.out.sink.split_crit_edge

if.end6.out.sink.split_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %div3031)
  %cmp4.i = icmp eq i16 %div3031, 1
  br i1 %cmp4.i, label %if.else.si1145_compress.exit_crit_edge, label %if.else.while.cond.i_crit_edge

if.else.while.cond.i_crit_edge:                   ; preds = %if.else
  br label %while.cond.i

if.else.si1145_compress.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %si1145_compress.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.else.while.cond.i_crit_edge
  %exponent.0.i = phi i32 [ %add.i, %while.cond.i.while.cond.i_crit_edge ], [ 0, %if.else.while.cond.i_crit_edge ]
  %tmp.0.i = phi i32 [ %shr.i, %while.cond.i.while.cond.i_crit_edge ], [ %div30.zext, %if.else.while.cond.i_crit_edge ]
  %shr.i = lshr i32 %tmp.0.i, 1
  %add.i = add i32 %exponent.0.i, 1
  %cmp8.i = icmp eq i32 %shr.i, 1
  br i1 %cmp8.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add.i)
  %cmp12.i = icmp ult i32 %add.i, 5
  br i1 %cmp12.i, label %if.then14.i, label %if.end18.i

if.then14.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub nsw i32 3, %exponent.0.i
  %shl.i = shl i32 %div30.zext, %sub.i
  %shl16.i = shl nuw nsw i32 %add.i, 4
  %and.i = and i32 %shl.i, 15
  %or.i = or i32 %and.i, %shl16.i
  br label %si1145_compress.exit

if.end18.i:                                       ; preds = %while.end.i
  %sub20.i = add i32 %exponent.0.i, -4
  %shr21.i = lshr i32 %div30.zext, %sub20.i
  %and22.i = and i32 %shr21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool.not.i28 = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i28, label %if.end18.i.if.end31.i_crit_edge, label %if.then23.i

if.end18.i.if.end31.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end18.i
  %add24.i = add i32 %shr21.i, 2
  %and25.i = and i32 %add24.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.then23.i.if.end31.i_crit_edge, label %if.then27.i

if.then23.i.if.end31.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then27.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %add28.i = add i32 %exponent.0.i, 2
  %shr29.i = lshr i32 %add24.i, 1
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %if.then23.i.if.end31.i_crit_edge, %if.end18.i.if.end31.i_crit_edge
  %exponent.1.i = phi i32 [ %add28.i, %if.then27.i ], [ %add.i, %if.then23.i.if.end31.i_crit_edge ], [ %add.i, %if.end18.i.if.end31.i_crit_edge ]
  %significand.0.i = phi i32 [ %shr29.i, %if.then27.i ], [ %add24.i, %if.then23.i.if.end31.i_crit_edge ], [ %shr21.i, %if.end18.i.if.end31.i_crit_edge ]
  %shl32.i = shl i32 %exponent.1.i, 4
  %shr33.i = lshr i32 %significand.0.i, 1
  %and34.i = and i32 %shr33.i, 15
  %or35.i = or i32 %and34.i, %shl32.i
  br label %si1145_compress.exit

si1145_compress.exit:                             ; preds = %if.end31.i, %if.then14.i, %if.else.si1145_compress.exit_crit_edge
  %retval.0.i29 = phi i32 [ %or.i, %if.then14.i ], [ %or35.i, %if.end31.i ], [ 8, %if.else.si1145_compress.exit_crit_edge ]
  %conv11 = and i32 %retval.0.i29, 255
  br label %out.sink.split

out.sink.split:                                   ; preds = %si1145_compress.exit, %if.end6.out.sink.split_crit_edge
  %div30.zext.sink = phi i32 [ %conv11, %si1145_compress.exit ], [ %div30.zext, %if.end6.out.sink.split_crit_edge ]
  %meas_rate9 = getelementptr inbounds %struct.si1145_data, ptr %data, i32 0, i32 8
  %14 = ptrtoint ptr %meas_rate9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div30.zext.sink, ptr %meas_rate9, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %si1145_set_meas_rate.exit.out_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %si1145_set_meas_rate.exit.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call fastcc i32 @si1145_set_chlist(ptr noundef %indio_dev, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si1145_validate_scan_mask(ptr nocapture noundef readonly %indio_dev, ptr noundef %scan_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %part_info = getelementptr inbounds %struct.si1145_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %part_info, align 8
  %num_channels = getelementptr inbounds %struct.si1145_part_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %scan_mask, i32 noundef %5, i32 noundef 0) #5
  %6 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part_info, align 8
  %num_channels316 = getelementptr inbounds %struct.si1145_part_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_channels316 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_channels316, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %9)
  %cmp17 = icmp ult i32 %call1, %9
  br i1 %cmp17, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %9, %for.body.lr.ph ], [ %18, %for.body.for.body_crit_edge ]
  %i.019 = phi i32 [ %call1, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %count.018 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 8
  %address = getelementptr %struct.iio_chan_spec, ptr %12, i32 %i.019, i32 3
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %14)
  %cmp4 = icmp eq i32 %14, 44
  %inc = zext i1 %cmp4 to i32
  %spec.select = add i32 %count.018, %inc
  %add = add nuw i32 %i.019, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %scan_mask, i32 noundef %10, i32 noundef %add) #5
  %15 = ptrtoint ptr %part_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part_info, align 8
  %num_channels3 = getelementptr inbounds %struct.si1145_part_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %num_channels3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels3, align 4
  %cmp = icmp ult i32 %call7, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %phi.cmp = icmp ult i32 %spec.select, 2
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %count.0.lcssa = phi i1 [ true, %entry.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  ret i1 %count.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si1145_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  br i1 %state, label %if.then, label %entry.disable_crit_edge

entry.disable_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.then:                                          ; preds = %entry
  %autonomous = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %autonomous to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %autonomous, align 8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.disable_crit_edge, label %if.end

if.then.disable_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 4, i8 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.disable_crit_edge, label %if.end8

if.end.disable_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end8:                                          ; preds = %if.end
  %meas_rate = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %meas_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %meas_rate, align 8
  %part_info.i = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %part_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %part_info.i, align 8
  %uncompressed_meas_rate.i = getelementptr inbounds %struct.si1145_part_info, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %uncompressed_meas_rate.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %uncompressed_meas_rate.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %10 to i16
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %16, i8 noundef zeroext 8, i16 noundef zeroext %conv.i) #5
  br label %si1145_set_meas_rate.exit

if.else.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i = trunc i32 %10 to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 8, i8 noundef zeroext %conv2.i) #5
  br label %si1145_set_meas_rate.exit

si1145_set_meas_rate.exit:                        ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %si1145_set_meas_rate.exit.disable_crit_edge, label %if.end12

si1145_set_meas_rate.exit.disable_crit_edge:      ; preds = %si1145_set_meas_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end12:                                         ; preds = %si1145_set_meas_rate.exit
  %call13 = tail call fastcc i32 @si1145_command(ptr noundef %3, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.disable_crit_edge, label %if.end12.if.end43_crit_edge

if.end12.if.end43_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end12.disable_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

disable:                                          ; preds = %if.end12.disable_crit_edge, %si1145_set_meas_rate.exit.disable_crit_edge, %if.end.disable_crit_edge, %if.then.disable_crit_edge, %entry.disable_crit_edge
  %err.0 = phi i32 [ %call2, %if.then.disable_crit_edge ], [ %call5, %if.end.disable_crit_edge ], [ %retval.0.i, %si1145_set_meas_rate.exit.disable_crit_edge ], [ %call13, %if.end12.disable_crit_edge ], [ 0, %entry.disable_crit_edge ]
  %call17 = tail call fastcc i32 @si1145_command(ptr noundef %3, i8 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool19.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %cmp18, i1 %tobool19.not, i1 false
  %err.1 = select i1 %or.cond, i32 %call17, i32 %err.0
  %part_info.i75 = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %part_info.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %part_info.i75, align 8
  %uncompressed_meas_rate.i76 = getelementptr inbounds %struct.si1145_part_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %uncompressed_meas_rate.i76 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %uncompressed_meas_rate.i76, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i77 = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  br i1 %tobool.not.i77, label %if.else.i81, label %if.then.i79

if.then.i79:                                      ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #7
  %call.i78 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %22, i8 noundef zeroext 8, i16 noundef zeroext 0) #5
  br label %si1145_set_meas_rate.exit83

if.else.i81:                                      ; preds = %disable
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  br label %si1145_set_meas_rate.exit83

si1145_set_meas_rate.exit83:                      ; preds = %if.else.i81, %if.then.i79
  %retval.0.i82 = phi i32 [ %call.i78, %if.then.i79 ], [ %call3.i80, %if.else.i81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i82)
  %cmp23 = icmp slt i32 %retval.0.i82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool25.not = icmp eq i32 %err.1, 0
  %or.cond72 = select i1 %cmp23, i1 %tobool25.not, i1 false
  %err.2 = select i1 %or.cond72, i32 %retval.0.i82, i32 %err.1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %call29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool32.not = icmp eq i32 %err.2, 0
  %or.cond73 = select i1 %cmp30, i1 %tobool32.not, i1 false
  %err.3 = select i1 %or.cond73, i32 %call29, i32 %err.2
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 3, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool39.not = icmp eq i32 %err.3, 0
  %or.cond74 = select i1 %cmp37, i1 %tobool39.not, i1 false
  %err.4 = select i1 %or.cond74, i32 %call36, i32 %err.3
  %autonomous42 = getelementptr inbounds %struct.si1145_data, ptr %3, i32 0, i32 6
  %27 = ptrtoint ptr %autonomous42 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %autonomous42, align 8
  br label %if.end43

if.end43:                                         ; preds = %si1145_set_meas_rate.exit83, %if.end12.if.end43_crit_edge
  %err.5 = phi i32 [ %err.4, %si1145_set_meas_rate.exit83 ], [ %call13, %if.end12.if.end43_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %err.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_si1145__289_1359_si1145_driver_init6, !1, !"__initcall__kmod_si1145__289_1359_si1145_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/si1145.c", i32 1359, i32 1}
!2 = !{ptr @__exitcall_si1145_driver_exit, !1, !"__exitcall_si1145_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/si1145.c", i32 1361, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/si1145.c", i32 1362, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/si1145.c", i32 1363, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/si1145.c", i32 1353, i32 13}
!12 = !{ptr @si1145_driver, !13, !"si1145_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/si1145.c", i32 1351, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/si1145.c", i32 1301, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @si1145_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @si1145_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/light/si1145.c", i32 1304, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @si1145_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @si1145_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @si1145_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/si1145.c", i32 1315, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @si1145_probe.__key.11, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/si1145.c", i32 1316, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/si1145.c", i32 1333, i32 3}
!35 = !{ptr @si1145_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @si1145_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @si1145_part_info, !38, !"si1145_part_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/si1145.c", i32 1002, i32 38}
!39 = !{ptr @si1132_info, !40, !"si1132_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/si1145.c", i32 987, i32 30}
!41 = !{ptr @si1132_attribute_group, !42, !"si1132_attribute_group", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/si1145.c", i32 978, i32 37}
!43 = !{ptr @si1132_attributes, !44, !"si1132_attributes", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/si1145.c", i32 965, i32 26}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/si1145.c", i32 591, i32 8}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @iio_const_attr_in_intensity_scale_available, !46, !"iio_const_attr_in_intensity_scale_available", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/si1145.c", i32 593, i32 8}
!51 = !{ptr @iio_const_attr_in_intensity_ir_scale_available, !50, !"iio_const_attr_in_intensity_ir_scale_available", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/si1145.c", i32 246, i32 4}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @si1145_command._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @si1145_command._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/si1145.c", i32 255, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @si1145_command._entry.21, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @si1145_command._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/light/si1145.c", i32 266, i32 4}
!64 = !{ptr @si1145_command._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @si1145_command._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/light/si1145.c", i32 273, i32 6}
!68 = !{ptr @si1145_command._entry.28, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @si1145_command._entry_ptr.30, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/si1145.c", i32 287, i32 4}
!72 = !{ptr @si1145_command._entry.31, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @si1145_command._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/si1145.c", i32 293, i32 5}
!76 = !{ptr @si1145_command._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @si1145_command._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/si1145.c", i32 298, i32 5}
!80 = !{ptr @si1145_command.__UNIQUE_ID_ddebug288, !79, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/si1145.c", i32 219, i32 4}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__si1145_command_reset._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @__si1145_command_reset._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"si1145_proximity_scale_available", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/si1145.c", i32 585, i32 18}
!88 = distinct !{null, !89, !"si1145_intensity_scale_available", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/si1145.c", i32 587, i32 18}
!90 = !{ptr @si1132_channels, !91, !"si1132_channels", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/si1145.c", i32 881, i32 35}
!92 = !{ptr @si114x_info, !93, !"si114x_info", i1 false, i1 false}
!93 = !{!"../drivers/iio/light/si1145.c", i32 993, i32 30}
!94 = !{ptr @si114x_attribute_group, !95, !"si114x_attribute_group", i1 false, i1 false}
!95 = !{!"../drivers/iio/light/si1145.c", i32 982, i32 37}
!96 = !{ptr @si114x_attributes, !97, !"si114x_attributes", i1 false, i1 false}
!97 = !{!"../drivers/iio/light/si1145.c", i32 971, i32 26}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/light/si1145.c", i32 589, i32 8}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @iio_const_attr_in_proximity_scale_available, !99, !"iio_const_attr_in_proximity_scale_available", i1 false, i1 false}
!102 = !{ptr @si1141_channels, !103, !"si1141_channels", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/si1145.c", i32 890, i32 35}
!104 = !{ptr @si1142_channels, !105, !"si1142_channels", i1 false, i1 false}
!105 = !{!"../drivers/iio/light/si1145.c", i32 900, i32 35}
!106 = !{ptr @si1143_channels, !107, !"si1143_channels", i1 false, i1 false}
!107 = !{!"../drivers/iio/light/si1145.c", i32 912, i32 35}
!108 = !{ptr @si1145_channels, !109, !"si1145_channels", i1 false, i1 false}
!109 = !{!"../drivers/iio/light/si1145.c", i32 926, i32 35}
!110 = !{ptr @si1146_channels, !111, !"si1146_channels", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/si1145.c", i32 937, i32 35}
!112 = !{ptr @si1147_channels, !113, !"si1147_channels", i1 false, i1 false}
!113 = !{!"../drivers/iio/light/si1145.c", i32 950, i32 35}
!114 = !{ptr @si1145_buffer_setup_ops, !115, !"si1145_buffer_setup_ops", i1 false, i1 false}
!115 = !{!"../drivers/iio/light/si1145.c", i32 1174, i32 42}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/light/si1145.c", i32 1245, i32 4}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/light/si1145.c", i32 1255, i32 6}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/si1145.c", i32 1258, i32 3}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @si1145_probe_trigger._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @si1145_probe_trigger._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @si1145_trigger_ops, !126, !"si1145_trigger_ops", i1 false, i1 false}
!126 = !{!"../drivers/iio/light/si1145.c", i32 1233, i32 37}
!127 = !{ptr @si1145_ids, !128, !"si1145_ids", i1 false, i1 false}
!128 = !{!"../drivers/iio/light/si1145.c", i32 1339, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i8 0, i8 2}
!139 = !{i64 2148986733, i64 2148986738, i64 2148986751, i64 2148986795, i64 2148986829, i64 2148986850}
