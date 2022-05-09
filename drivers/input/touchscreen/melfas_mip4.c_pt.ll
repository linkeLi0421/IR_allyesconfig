; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/melfas_mip4.c_pt.bc'
source_filename = "../drivers/input/touchscreen/melfas_mip4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mip4_ts = type { ptr, ptr, ptr, [32 x i8], [16 x i8], i16, [4 x i8], [32 x i8], i32, i32, i8, i8, i8, i32, i32, %struct.mip4_fw_version, i32, i32, i32, [4 x i16], i8, [128 x i8] }
%struct.mip4_fw_version = type { i16, i16, i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.mip4_bin_tail = type { [4 x i8], [4 x i8], i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i16, i16, i32 }

@__initcall__kmod_melfas_mip4__319_1601_mip4_driver_init6 = internal global ptr @mip4_driver_init, section ".initcall6.init", align 4
@mip4_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mip4_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mip4_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mip4_pm_ops, ptr null, ptr null }, ptr @mip4_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mip4_driver_exit = internal global ptr @mip4_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description320 = internal constant [48 x i8] c"melfas_mip4.description=MELFAS MIP4 Touchscreen\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [50 x i8] c"melfas_mip4.author=Sangwon Jee <jeesw@melfas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [55 x i8] c"melfas_mip4.file=drivers/input/touchscreen/melfas_mip4\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [24 x i8] c"melfas_mip4.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mip4_ts\00", [24 x i8] zeroinitializer }, align 32
@mip4_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"melfas,mip4_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mip4_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mip4_suspend, ptr @mip4_resume, ptr @mip4_suspend, ptr @mip4_resume, ptr @mip4_suspend, ptr @mip4_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mip4_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mip4_ts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mip4_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not supported I2C adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mip4_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/melfas_mip4.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mip4_probe._entry_ptr = internal global ptr @mip4_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ce\00", [29 x i8] zeroinitializer }, align 32
@mip4_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get gpio: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mip4_probe._entry_ptr.10 = internal global ptr @mip4_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MELFAS MIP4 Touchscreen\00", [40 x i8] zeroinitializer }, align 32
@mip4_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to request interrupt %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_probe._entry_ptr.14 = internal global ptr @mip4_probe._entry.12, section ".printk_index", align 4
@mip4_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mip4_probe._entry_ptr.17 = internal global ptr @mip4_probe._entry.15, section ".printk_index", align 4
@mip4_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mip4_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mip4_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to create sysfs attribute group: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mip4_probe._entry_ptr.20 = internal global ptr @mip4_probe._entry.18, section ".printk_index", align 4
@mip4_query_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nothing at this address\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mip4_query_device\00", [46 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr = internal global ptr @mip4_query_device._entry, section ".printk_index", align 4
@mip4_query_device._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 269, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to retrieve product name: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.26 = internal global ptr @mip4_query_device._entry.23, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.28, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"melfas_mip4\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"product name: %.*s\0A\00", [44 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 280, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to retrieve product id: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.31 = internal global ptr @mip4_query_device._entry.29, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.32, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"product id: %04X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"melfas_mip4_%04X.fw\00", [44 x i8] zeroinitializer }, align 32
@mip4_query_device.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.34, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware name: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.3, i32 298, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to retrieve IC name: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.37 = internal global ptr @mip4_query_device._entry.35, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.38, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IC name: %.*s\0A\00", [17 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.22, ptr @.str.3, i32 307, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to retrieve FW version: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.41 = internal global ptr @mip4_query_device._entry.39, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.42, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"F/W Version: %04X %04X %04X %04X\0A\00", [62 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str.3, i32 320, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to retrieve touchscreen parameters: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.45 = internal global ptr @mip4_query_device._entry.43, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.46, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max_x: %d, max_y: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mip4_query_device.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.47, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"node_x: %d, node_y: %d, node_key: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mip4_query_device.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.48, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ppm_x: %d, ppm_y: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.22, ptr @.str.3, i32 350, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to retrieve device type: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.51 = internal global ptr @mip4_query_device._entry.49, section ".printk_index", align 4
@mip4_query_device.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.52, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"event_format: %d, event_size: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mip4_query_device._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.3, i32 360, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown event format %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mip4_query_device._entry_ptr.55 = internal global ptr @mip4_query_device._entry.53, section ".printk_index", align 4
@mip4_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s - i2c_transfer failed: %d (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mip4_i2c_xfer\00", [18 x i8] zeroinitializer }, align 32
@mip4_i2c_xfer._entry_ptr = internal global ptr @mip4_i2c_xfer._entry, section ".printk_index", align 4
@mip4_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 598, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read packet info: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mip4_interrupt\00", [17 x i8] zeroinitializer }, align 32
@mip4_interrupt._entry_ptr = internal global ptr @mip4_interrupt._entry, section ".printk_index", align 4
@mip4_interrupt.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"packet size: %d, alert: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mip4_interrupt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.3, i32 608, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Empty packet\0A\00", [18 x i8] zeroinitializer }, align 32
@mip4_interrupt._entry_ptr.63 = internal global ptr @mip4_interrupt._entry.61, section ".printk_index", align 4
@mip4_interrupt._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read packet data: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mip4_interrupt._entry_ptr.66 = internal global ptr @mip4_interrupt._entry.64, section ".printk_index", align 4
@mip4_interrupt.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.59, ptr @.str.3, ptr @.str.67, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Alert: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mip4_handle_packet.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mip4_handle_packet\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Type: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@mip4_handle_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown event type: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mip4_handle_packet._entry_ptr = internal global ptr @mip4_handle_packet._entry, section ".printk_index", align 4
@mip4_report_keys.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mip4_report_keys\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Key - ID: %d, keycode: %d, state: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mip4_report_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown key: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mip4_report_keys._entry_ptr = internal global ptr @mip4_report_keys._entry, section ".printk_index", align 4
@mip4_report_touch.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mip4_report_touch\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Screen - Slot: %d State: %d X: %04d Y: %04d Z: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mip4_report_touch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Screen - invalid slot ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mip4_report_touch._entry_ptr = internal global ptr @mip4_report_touch._entry, section ".printk_index", align 4
@mip4_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_product_id, ptr @dev_attr_ic_name, ptr @dev_attr_update_fw, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mip4_sysfs_read_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mip4_sysfs_read_hw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mip4_sysfs_read_product_id, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ic_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mip4_sysfs_read_ic_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mip4_sysfs_fw_update }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%04X %04X %04X %04X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product_id\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04X\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ic_name\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@mip4_sysfs_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to retrieve firmware %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mip4_sysfs_fw_update\00", [43 x i8] zeroinitializer }, align 32
@mip4_sysfs_fw_update._entry_ptr = internal global ptr @mip4_sysfs_fw_update._entry, section ".printk_index", align 4
@mip4_sysfs_fw_update._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 1319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware update failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mip4_sysfs_fw_update._entry_ptr.89 = internal global ptr @mip4_sysfs_fw_update._entry.87, section ".printk_index", align 4
@mip4_execute_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.3, i32 1276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to flash firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mip4_execute_fw_update\00", [41 x i8] zeroinitializer }, align 32
@mip4_execute_fw_update._entry_ptr = internal global ptr @mip4_execute_fw_update._entry, section ".printk_index", align 4
@mip4_parse_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Invalid firmware, size mismatch (tail %zd vs %zd)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip4_parse_firmware\00", [44 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr = internal global ptr @mip4_parse_firmware._entry, section ".printk_index", align 4
@mip4_parse_firmware._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 1181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wrong tail size: %d (expected %zd)\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr.96 = internal global ptr @mip4_parse_firmware._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MBT\01\00", [27 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.93, ptr @.str.3, i32 1191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to locate tail marker (%*ph vs %*ph)\0A\00", [51 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr.100 = internal global ptr @mip4_parse_firmware._entry.98, section ".printk_index", align 4
@mip4_parse_firmware.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.93, ptr @.str.3, ptr @.str.101, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"F/W Data offset: %#08x, size: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.3, i32 1205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"encoded fw length %d is not multiple of pages (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr.104 = internal global ptr @mip4_parse_firmware._entry.102, section ".printk_index", align 4
@mip4_parse_firmware._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.93, ptr @.str.3, i32 1212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Wrong firmware size, expected %d bytes, got %zd\0A\00", [47 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr.107 = internal global ptr @mip4_parse_firmware._entry.105, section ".printk_index", align 4
@mip4_parse_firmware.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.93, ptr @.str.3, ptr @.str.108, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"F/W file version %04X %04X %04X %04X\0A\00", [58 x i8] zeroinitializer }, align 32
@mip4_parse_firmware.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.93, ptr @.str.3, ptr @.str.109, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"F/W chip version: %04X %04X %04X %04X\0A\00", [57 x i8] zeroinitializer }, align 32
@mip4_parse_firmware.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.93, ptr @.str.3, ptr @.str.110, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"F/W type: Bootloader\0A\00", [42 x i8] zeroinitializer }, align 32
@mip4_parse_firmware.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.93, ptr @.str.3, ptr @.str.111, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"F/W type: Main\0A\00", [16 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.93, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong firmware type\0A\00", [43 x i8] zeroinitializer }, align 32
@mip4_parse_firmware._entry_ptr.114 = internal global ptr @mip4_parse_firmware._entry.112, section ".printk_index", align 4
@mip4_flash_fw.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 1, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mip4_flash_fw\00", [18 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering bootloader mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mip4_flash_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enter bootloader mode: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mip4_flash_fw._entry_ptr = internal global ptr @mip4_flash_fw._entry, section ".printk_index", align 4
@mip4_flash_fw.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.115, ptr @.str.3, ptr @.str.118, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Program & Verify, page size: %d, packet size: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mip4_flash_fw.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.115, ptr @.str.3, ptr @.str.119, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Exiting bootloader mode\0A\00", [39 x i8] zeroinitializer }, align 32
@mip4_flash_fw._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.3, i32 1131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to exit bootloader mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_flash_fw._entry_ptr.122 = internal global ptr @mip4_flash_fw._entry.120, section ".printk_index", align 4
@mip4_bl_change_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 798, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to send %d mode change: %d (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip4_bl_change_mode\00", [44 x i8] zeroinitializer }, align 32
@mip4_bl_change_mode._entry_ptr = internal global ptr @mip4_bl_change_mode._entry, section ".printk_index", align 4
@mip4_bl_change_mode.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.124, ptr @.str.3, ptr @.str.125, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sent mode change request (mode: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@mip4_bl_change_mode._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.124, ptr @.str.3, i32 813, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read device mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mip4_bl_change_mode._entry_ptr.128 = internal global ptr @mip4_bl_change_mode._entry.126, section ".printk_index", align 4
@mip4_bl_change_mode.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.124, ptr @.str.3, ptr @.str.129, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Current device mode: %d, want: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mip4_bl_get_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to retrieve bootloader buffer address: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip4_bl_get_address\00", [44 x i8] zeroinitializer }, align 32
@mip4_bl_get_address._entry_ptr = internal global ptr @mip4_bl_get_address._entry, section ".printk_index", align 4
@mip4_bl_get_address.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bootloader buffer address %#04x\0A\00", [63 x i8] zeroinitializer }, align 32
@mip4_bl_program_page.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mip4_bl_program_page\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Writing page @%#06x (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 894, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid page length: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry_ptr = internal global ptr @mip4_bl_program_page._entry, section ".printk_index", align 4
@mip4_bl_program_page._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.133, ptr @.str.3, i32 910, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to send write page address: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry_ptr.138 = internal global ptr @mip4_bl_program_page._entry.136, section ".printk_index", align 4
@mip4_bl_program_page._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.133, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send write page size: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry_ptr.141 = internal global ptr @mip4_bl_program_page._entry.139, section ".printk_index", align 4
@mip4_bl_program_page.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.133, ptr @.str.3, ptr @.str.142, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writing chunk at %#04x (size %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.133, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to read chunk at %#04x (size %d): %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry_ptr.145 = internal global ptr @mip4_bl_program_page._entry.143, section ".printk_index", align 4
@mip4_bl_program_page._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.133, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send 'write' command: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mip4_bl_program_page._entry_ptr.148 = internal global ptr @mip4_bl_program_page._entry.146, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mip4_bl_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read bootloader status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip4_bl_read_status\00", [44 x i8] zeroinitializer }, align 32
@mip4_bl_read_status._entry_ptr = internal global ptr @mip4_bl_read_status._entry, section ".printk_index", align 4
@mip4_bl_read_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.150, ptr @.str.3, ptr @.str.151, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - done\0A\00", [21 x i8] zeroinitializer }, align 32
@mip4_bl_read_status._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.150, ptr @.str.3, i32 743, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bootloader failure\0A\00", [44 x i8] zeroinitializer }, align 32
@mip4_bl_read_status._entry_ptr.154 = internal global ptr @mip4_bl_read_status._entry.152, section ".printk_index", align 4
@mip4_bl_read_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.150, ptr @.str.3, ptr @.str.155, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - Busy\0A\00", [21 x i8] zeroinitializer }, align 32
@mip4_bl_read_status._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.150, ptr @.str.3, i32 754, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected bootloader status: %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@mip4_bl_read_status._entry_ptr.158 = internal global ptr @mip4_bl_read_status._entry.156, section ".printk_index", align 4
@mip4_bl_verify_page.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.159, ptr @.str.3, ptr @.str.160, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mip4_bl_verify_page\00", [44 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Validating page @%#06x (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to send read page address: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry_ptr = internal global ptr @mip4_bl_verify_page._entry, section ".printk_index", align 4
@mip4_bl_verify_page._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.159, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send read page size: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry_ptr.164 = internal global ptr @mip4_bl_verify_page._entry.162, section ".printk_index", align 4
@mip4_bl_verify_page._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.159, ptr @.str.3, i32 1022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send 'read' command: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry_ptr.167 = internal global ptr @mip4_bl_verify_page._entry.165, section ".printk_index", align 4
@mip4_bl_verify_page.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.159, ptr @.str.3, ptr @.str.168, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reading chunk at %#04x (size %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.159, ptr @.str.3, i32 1048, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry_ptr.170 = internal global ptr @mip4_bl_verify_page._entry.169, section ".printk_index", align 4
@mip4_bl_verify_page._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.159, ptr @.str.3, i32 1055, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to validate chunk at %#04x (size %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@mip4_bl_verify_page._entry_ptr.173 = internal global ptr @mip4_bl_verify_page._entry.171, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 1]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 16, i64 61166, i64 65535]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 61166, i64 65535]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 61166, i64 65535]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 61166, i64 65535]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 14, i64 160]
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"mip4_driver\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1591, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1595, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant [14 x i8] c"mip4_of_match\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1570, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"mip4_pm_ops\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1567, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"mip4_i2c_ids\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1585, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1434, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1450, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1453, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1457, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1470, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1508, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1516, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"mip4_attr_group\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1423, i32 37 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1523, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 258, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 268, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 271, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 279, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 283, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 288, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 289, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 297, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 300, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 306, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 309, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 318, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 324, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 330, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 336, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 349, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 355, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 359, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 206, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 597, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 604, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 608, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 617, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 623, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 562, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 575, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 453, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 461, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 519, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 524, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [11 x i8] c"mip4_attrs\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1414, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c"dev_attr_hw_version\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c"dev_attr_product_id\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"dev_attr_ic_name\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1348, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1339, i32 35 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1373, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1365, i32 35 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1392, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1385, i32 35 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1412, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1326, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1298, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1318, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1275, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1164, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1179, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1186, i32 33 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1188, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1198, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1203, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1210, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1218, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1223, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1232, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1237, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1239, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1088, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1092, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1104, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1126, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1130, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 796, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 802, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 812, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 817, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 867, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 874, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 889, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 893, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 909, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 921, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 930, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 939, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 953, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 731, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 739, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 743, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 747, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 752, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 987, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 997, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1009, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1021, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1039, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1046, i32 4 }
@___asan_gen_.684 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.688 = private constant [43 x i8] c"../drivers/input/touchscreen/melfas_mip4.c\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.688, i32 1053, i32 4 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_mip4_driver_exit, ptr @__initcall__kmod_melfas_mip4__319_1601_mip4_driver_init6, ptr @mip4_bl_change_mode._entry, ptr @mip4_bl_change_mode._entry.126, ptr @mip4_bl_change_mode._entry_ptr, ptr @mip4_bl_change_mode._entry_ptr.128, ptr @mip4_bl_get_address._entry, ptr @mip4_bl_get_address._entry_ptr, ptr @mip4_bl_program_page._entry, ptr @mip4_bl_program_page._entry.136, ptr @mip4_bl_program_page._entry.139, ptr @mip4_bl_program_page._entry.143, ptr @mip4_bl_program_page._entry.146, ptr @mip4_bl_program_page._entry_ptr, ptr @mip4_bl_program_page._entry_ptr.138, ptr @mip4_bl_program_page._entry_ptr.141, ptr @mip4_bl_program_page._entry_ptr.145, ptr @mip4_bl_program_page._entry_ptr.148, ptr @mip4_bl_read_status._entry, ptr @mip4_bl_read_status._entry.152, ptr @mip4_bl_read_status._entry.156, ptr @mip4_bl_read_status._entry_ptr, ptr @mip4_bl_read_status._entry_ptr.154, ptr @mip4_bl_read_status._entry_ptr.158, ptr @mip4_bl_verify_page._entry, ptr @mip4_bl_verify_page._entry.162, ptr @mip4_bl_verify_page._entry.165, ptr @mip4_bl_verify_page._entry.169, ptr @mip4_bl_verify_page._entry.171, ptr @mip4_bl_verify_page._entry_ptr, ptr @mip4_bl_verify_page._entry_ptr.164, ptr @mip4_bl_verify_page._entry_ptr.167, ptr @mip4_bl_verify_page._entry_ptr.170, ptr @mip4_bl_verify_page._entry_ptr.173, ptr @mip4_driver_exit, ptr @mip4_execute_fw_update._entry, ptr @mip4_execute_fw_update._entry_ptr, ptr @mip4_flash_fw._entry, ptr @mip4_flash_fw._entry.120, ptr @mip4_flash_fw._entry_ptr, ptr @mip4_flash_fw._entry_ptr.122, ptr @mip4_handle_packet._entry, ptr @mip4_handle_packet._entry_ptr, ptr @mip4_i2c_xfer._entry, ptr @mip4_i2c_xfer._entry_ptr, ptr @mip4_interrupt._entry, ptr @mip4_interrupt._entry.61, ptr @mip4_interrupt._entry.64, ptr @mip4_interrupt._entry_ptr, ptr @mip4_interrupt._entry_ptr.63, ptr @mip4_interrupt._entry_ptr.66, ptr @mip4_parse_firmware._entry, ptr @mip4_parse_firmware._entry.102, ptr @mip4_parse_firmware._entry.105, ptr @mip4_parse_firmware._entry.112, ptr @mip4_parse_firmware._entry.94, ptr @mip4_parse_firmware._entry.98, ptr @mip4_parse_firmware._entry_ptr, ptr @mip4_parse_firmware._entry_ptr.100, ptr @mip4_parse_firmware._entry_ptr.104, ptr @mip4_parse_firmware._entry_ptr.107, ptr @mip4_parse_firmware._entry_ptr.114, ptr @mip4_parse_firmware._entry_ptr.96, ptr @mip4_probe._entry, ptr @mip4_probe._entry.12, ptr @mip4_probe._entry.15, ptr @mip4_probe._entry.18, ptr @mip4_probe._entry.8, ptr @mip4_probe._entry_ptr, ptr @mip4_probe._entry_ptr.10, ptr @mip4_probe._entry_ptr.14, ptr @mip4_probe._entry_ptr.17, ptr @mip4_probe._entry_ptr.20, ptr @mip4_query_device._entry, ptr @mip4_query_device._entry.23, ptr @mip4_query_device._entry.29, ptr @mip4_query_device._entry.35, ptr @mip4_query_device._entry.39, ptr @mip4_query_device._entry.43, ptr @mip4_query_device._entry.49, ptr @mip4_query_device._entry.53, ptr @mip4_query_device._entry_ptr, ptr @mip4_query_device._entry_ptr.26, ptr @mip4_query_device._entry_ptr.31, ptr @mip4_query_device._entry_ptr.37, ptr @mip4_query_device._entry_ptr.41, ptr @mip4_query_device._entry_ptr.45, ptr @mip4_query_device._entry_ptr.51, ptr @mip4_query_device._entry_ptr.55, ptr @mip4_report_keys._entry, ptr @mip4_report_keys._entry_ptr, ptr @mip4_report_touch._entry, ptr @mip4_report_touch._entry_ptr, ptr @mip4_sysfs_fw_update._entry, ptr @mip4_sysfs_fw_update._entry.87, ptr @mip4_sysfs_fw_update._entry_ptr, ptr @mip4_sysfs_fw_update._entry_ptr.89, ptr @mip4_driver, ptr @.str, ptr @mip4_of_match, ptr @mip4_pm_ops, ptr @mip4_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @mip4_attr_group, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @mip4_attrs, ptr @dev_attr_fw_version, ptr @dev_attr_hw_version, ptr @dev_attr_product_id, ptr @dev_attr_ic_name, ptr @dev_attr_update_fw, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.172], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_query_device._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_interrupt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_interrupt._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_handle_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_report_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_report_touch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ic_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_sysfs_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_sysfs_fw_update._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_execute_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_parse_firmware._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_flash_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_flash_fw._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_change_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_change_mode._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_get_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_program_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_program_page._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_program_page._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_program_page._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_program_page._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_read_status._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_read_status._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_verify_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_verify_page._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_verify_page._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_verify_page._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mip4_bl_verify_page._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mip4_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mip4_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @mip4_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %input12 = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %input12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %input12, align 4
  %phys = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.dev_name.exit_crit_edge

if.end10.dev_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end10.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i)
  %call17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #9
  %gpio_ce = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %gpio_ce to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call17, ptr %gpio_ce, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end29

if.then20:                                        ; preds = %dev_name.exit
  %cmp.not = icmp eq ptr %call17, inttoptr (i32 517 to ptr)
  br i1 %cmp.not, label %if.then20.cleanup_crit_edge, label %do.end26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %13) #12
  br label %cleanup

if.end29:                                         ; preds = %dev_name.exit
  %tobool.not.i153 = icmp eq ptr %call17, null
  br i1 %tobool.not.i153, label %if.end29.mip4_power_on.exit_crit_edge, label %if.then.i

if.end29.mip4_power_on.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_power_on.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call17, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 300000, i32 noundef 2) #9
  br label %mip4_power_on.exit

mip4_power_on.exit:                               ; preds = %if.then.i, %if.end29.mip4_power_on.exit_crit_edge
  %call34 = tail call fastcc i32 @mip4_query_device(ptr noundef nonnull %call.i)
  %14 = ptrtoint ptr %gpio_ce to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_ce, align 4
  %tobool.not.i156 = icmp eq ptr %15, null
  br i1 %tobool.not.i156, label %mip4_power_on.exit.mip4_power_off.exit_crit_edge, label %if.then.i157

mip4_power_on.exit.mip4_power_off.exit_crit_edge: ; preds = %mip4_power_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_power_off.exit

if.then.i157:                                     ; preds = %mip4_power_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %15, i32 noundef 0) #9
  br label %mip4_power_off.exit

mip4_power_off.exit:                              ; preds = %if.then.i157, %mip4_power_on.exit.mip4_power_off.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %mip4_power_off.exit.cleanup_crit_edge

mip4_power_off.exit.cleanup_crit_edge:            ; preds = %mip4_power_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %mip4_power_off.exit
  %16 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.11, ptr %call7, align 8
  %phys40 = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 1
  %17 = ptrtoint ptr %phys40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %phys, ptr %phys40, align 4
  %id41 = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3
  %18 = ptrtoint ptr %id41 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 24, ptr %id41, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 5061, ptr %vendor, align 2
  %product_id = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %product_id, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %product, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 31
  %23 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mip4_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 32
  %24 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mip4_input_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %key_code = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 19
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 17
  %26 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %key_code, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 16
  %27 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %keycodesize, align 8
  %key_num = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 18
  %28 = ptrtoint ptr %key_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_num, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 15
  %30 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %keycodemax, align 4
  %max_x = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 53, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #9
  %max_y = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 54, i32 noundef 0, i32 noundef %34, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 48, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  tail call void @input_set_abs_params(ptr noundef nonnull %call7, i32 noundef 49, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #9
  %35 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input12, align 4
  %ppm_x = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 13
  %37 = ptrtoint ptr %ppm_x to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ppm_x, align 4
  tail call void @input_alloc_absinfo(ptr noundef %36) #9
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 26
  %39 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i159 = icmp eq ptr %40, null
  br i1 %tobool.not.i159, label %if.end37.input_abs_set_res.exit_crit_edge, label %if.then.i160

if.end37.input_abs_set_res.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit

if.then.i160:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i = getelementptr %struct.input_absinfo, ptr %40, i32 53, i32 5
  %41 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i160, %if.end37.input_abs_set_res.exit_crit_edge
  %42 = ptrtoint ptr %input12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input12, align 4
  %ppm_y = getelementptr inbounds %struct.mip4_ts, ptr %call.i, i32 0, i32 14
  %44 = ptrtoint ptr %ppm_y to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ppm_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef %43) #9
  %absinfo.i162 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 26
  %46 = ptrtoint ptr %absinfo.i162 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %absinfo.i162, align 8
  %tobool.not.i163 = icmp eq ptr %47, null
  br i1 %tobool.not.i163, label %input_abs_set_res.exit.input_abs_set_res.exit167_crit_edge, label %if.then.i165

input_abs_set_res.exit.input_abs_set_res.exit167_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit167

if.then.i165:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i164 = getelementptr %struct.input_absinfo, ptr %47, i32 54, i32 5
  %48 = ptrtoint ptr %resolution.i164 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %resolution.i164, align 4
  br label %input_abs_set_res.exit167

input_abs_set_res.exit167:                        ; preds = %if.then.i165, %input_abs_set_res.exit.input_abs_set_res.exit167_crit_edge
  %call47 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call7, i32 noundef 10, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %input_abs_set_res.exit167.cleanup_crit_edge

input_abs_set_res.exit167.cleanup_crit_edge:      ; preds = %input_abs_set_res.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end50:                                         ; preds = %input_abs_set_res.exit167
  %driver_data.i.i168 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %49 = ptrtoint ptr %driver_data.i.i168 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i.i168, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  %call52 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %51, ptr noundef null, ptr noundef nonnull @mip4_interrupt, i32 noundef 532480, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %53, i32 noundef %call52) #12
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call61 = tail call i32 @input_register_device(ptr noundef nonnull %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call61) #12
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  %call70 = tail call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @mip4_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %do.end75

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call70) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.end68.cleanup_crit_edge, %do.end66, %do.end57, %input_abs_set_res.exit167.cleanup_crit_edge, %mip4_power_off.exit.cleanup_crit_edge, %do.end26, %if.then20.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call52, %do.end57 ], [ %call61, %do.end66 ], [ %call70, %do.end75 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %13, %do.end26 ], [ 517, %if.then20.cleanup_crit_edge ], [ %call34, %mip4_power_off.exit.cleanup_crit_edge ], [ %call47, %input_abs_set_res.exit167.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_query_device(ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  %cmd.i = alloca [2 x i8], align 2
  %buf.i = alloca [8 x i8], align 8
  %dummy = alloca %union.i2c_smbus_data, align 2
  %cmd = alloca [2 x i8], align 1
  %buf = alloca [14 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %dummy) #9
  %0 = call ptr @memset(ptr %dummy, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cmd, align 1, !annotation !365
  %2 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !365
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 12
  %9 = getelementptr inbounds [14 x i8], ptr %buf, i32 0, i32 13
  %10 = call ptr @memset(ptr %buf, i32 255, i32 14)
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %call = call i32 @i2c_smbus_xfer(ptr noundef %14, i16 noundef zeroext %16, i16 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %dummy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %cmd, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %2, align 1
  %product_name = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 4
  %call5 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd, ptr noundef %product_name, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ts, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.24, i32 noundef %call5) #12
  br label %if.end25

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then17)) #9
          to label %if.end25 [label %if.then17], !srcloc !366

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug288, ptr noundef %dev19, ptr noundef nonnull @.str.28, i32 noundef 16, ptr noundef %product_name) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %do.body12, %do.end9
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %cmd, align 1
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 124, ptr %2, align 1
  %call30 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else38, label %do.end35

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ts, align 4
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.30, i32 noundef %call30) #12
  br label %if.end60

if.else38:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %buf, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #9
  %product_id = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 5
  %32 = ptrtoint ptr %product_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %product_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then53)) #9
          to label %if.end60 [label %if.then53], !srcloc !366

if.then53:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ts, align 4
  %dev55 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %product_id, align 4
  %conv = zext i16 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug289, ptr noundef %dev55, ptr noundef nonnull @.str.32, i32 noundef %conv) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.else38, %do.end35
  %fw_name = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 7
  %product_id62 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 5
  %37 = ptrtoint ptr %product_id62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %product_id62, align 4
  %conv63 = zext i16 %38 to i32
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name, i32 noundef 32, ptr noundef nonnull @.str.33, i32 noundef %conv63)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then77)) #9
          to label %do.end84 [label %if.then77], !srcloc !366

if.then77:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ts, align 4
  %dev79 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug290, ptr noundef %dev79, ptr noundef nonnull @.str.34, ptr noundef %fw_name) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %if.end60
  %41 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %cmd, align 1
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 113, ptr %2, align 1
  %ic_name = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 6
  %call89 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd, ptr noundef %ic_name, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body98, label %do.end94

do.end94:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ts, align 4
  %dev96 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev96, ptr noundef nonnull @.str.36, i32 noundef %call89) #12
  br label %if.end118

do.body98:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then110)) #9
          to label %if.end118 [label %if.then110], !srcloc !366

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ts, align 4
  %dev112 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug291, ptr noundef %dev112, ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef %ic_name) #9
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %do.body98, %do.end94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #9
  %47 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 288, ptr %cmd.i, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf.i) #9
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %buf.i, align 8
  %call.i = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd.i, ptr noundef nonnull %buf.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %fw_version3.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15
  br i1 %tobool.not.i, label %do.body128, label %do.end124

do.end124:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %fw_version3.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 -1, ptr %fw_version3.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #9
  %50 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ts, align 4
  %dev126 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev126, ptr noundef nonnull @.str.40, i32 noundef %call.i) #12
  br label %if.end153

do.body128:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %52 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 6
  %53 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 4
  %54 = getelementptr inbounds [8 x i8], ptr %buf.i, i32 0, i32 2
  %55 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %buf.i, align 8
  %57 = call i16 @llvm.bswap.i16(i16 %56) #9
  %58 = ptrtoint ptr %fw_version3.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %fw_version3.i, align 2
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %54, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %60) #9
  %core.i.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 1
  %62 = ptrtoint ptr %core.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %core.i.i, align 2
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %53, align 4
  %65 = call i16 @llvm.bswap.i16(i16 %64) #9
  %app.i.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 2
  %66 = ptrtoint ptr %app.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %app.i.i, align 2
  %67 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %52, align 2
  %69 = call i16 @llvm.bswap.i16(i16 %68) #9
  %param.i.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 3
  %70 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %param.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then140)) #9
          to label %if.end153 [label %if.then140], !srcloc !366

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ts, align 4
  %dev142 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %fw_version3.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %fw_version3.i, align 4
  %conv143 = zext i16 %74 to i32
  %75 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %core.i.i, align 2
  %conv145 = zext i16 %76 to i32
  %77 = ptrtoint ptr %app.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %app.i.i, align 4
  %conv147 = zext i16 %78 to i32
  %79 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %param.i.i, align 2
  %conv149 = zext i16 %80 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug292, ptr noundef %dev142, ptr noundef nonnull @.str.42, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %conv147, i32 noundef %conv149) #9
  br label %if.end153

if.end153:                                        ; preds = %if.then140, %do.body128, %do.end124
  %81 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %cmd, align 1
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 16, ptr %2, align 1
  %call158 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd, ptr noundef nonnull %buf, i32 noundef 14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.else166, label %do.end163

do.end163:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ts, align 4
  %dev165 = getelementptr inbounds %struct.i2c_client, ptr %84, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev165, ptr noundef nonnull @.str.44, i32 noundef %call158) #12
  br label %if.end252

if.else166:                                       ; preds = %if.end153
  %85 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %buf, align 2
  %87 = call i16 @llvm.bswap.i16(i16 %86) #9
  %conv169 = zext i16 %87 to i32
  %max_x = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 8
  %88 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv169, ptr %max_x, align 4
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %4, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #9
  %conv172 = zext i16 %91 to i32
  %max_y = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 9
  %92 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv172, ptr %max_y, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then185)) #9
          to label %do.end192 [label %if.then185], !srcloc !366

if.then185:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ts, align 4
  %dev187 = getelementptr inbounds %struct.i2c_client, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %max_x, align 4
  %97 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_y, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug293, ptr noundef %dev187, ptr noundef nonnull @.str.46, i32 noundef %96, i32 noundef %98) #9
  br label %do.end192

do.end192:                                        ; preds = %if.then185, %if.else166
  %99 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %5, align 2
  %node_x = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 10
  %101 = ptrtoint ptr %node_x to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %node_x, align 4
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %6, align 1
  %node_y = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 11
  %104 = ptrtoint ptr %node_y to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %node_y, align 1
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %7, align 2
  %node_key = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 12
  %107 = ptrtoint ptr %node_key to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %node_key, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then208)) #9
          to label %do.end219 [label %if.then208], !srcloc !366

if.then208:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ts, align 4
  %dev210 = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %node_x to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %node_x, align 4
  %conv212 = zext i8 %111 to i32
  %112 = ptrtoint ptr %node_y to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %node_y, align 1
  %conv214 = zext i8 %113 to i32
  %114 = ptrtoint ptr %node_key to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %node_key, align 2
  %conv216 = zext i8 %115 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug294, ptr noundef %dev210, ptr noundef nonnull @.str.47, i32 noundef %conv212, i32 noundef %conv214, i32 noundef %conv216) #9
  br label %do.end219

do.end219:                                        ; preds = %if.then208, %do.end192
  %116 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %8, align 2
  %conv221 = zext i8 %117 to i32
  %ppm_x = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 13
  %118 = ptrtoint ptr %ppm_x to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv221, ptr %ppm_x, align 4
  %119 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %9, align 1
  %conv223 = zext i8 %120 to i32
  %ppm_y = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 14
  %121 = ptrtoint ptr %ppm_y to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %conv223, ptr %ppm_y, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then236)) #9
          to label %do.end243 [label %if.then236], !srcloc !366

if.then236:                                       ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ts, align 4
  %dev238 = getelementptr inbounds %struct.i2c_client, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ppm_x to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ppm_x, align 4
  %126 = ptrtoint ptr %ppm_y to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ppm_y, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug295, ptr noundef %dev238, ptr noundef nonnull @.str.48, i32 noundef %125, i32 noundef %127) #9
  br label %do.end243

do.end243:                                        ; preds = %if.then236, %do.end219
  %128 = ptrtoint ptr %node_key to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %node_key, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp246.not = icmp eq i8 %129, 0
  br i1 %cmp246.not, label %do.end243.if.end252_crit_edge, label %if.then248

do.end243.if.end252_crit_edge:                    ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end252

if.then248:                                       ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #11
  %conv245 = zext i8 %129 to i32
  %key_num = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 18
  %130 = ptrtoint ptr %key_num to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv245, ptr %key_num, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %do.end243.if.end252_crit_edge, %do.end163
  %131 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 2, ptr %cmd, align 1
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %2, align 1
  %call257 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %ts, ptr noundef nonnull %cmd, ptr noundef nonnull %buf, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.else265, label %do.end262

do.end262:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ts, align 4
  %dev264 = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev264, ptr noundef nonnull @.str.50, i32 noundef %call257) #12
  %event_format = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 17
  %135 = ptrtoint ptr %event_format to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 255, ptr %event_format, align 4
  br label %cleanup

if.else265:                                       ; preds = %if.end252
  %136 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %5, align 2
  %138 = call i16 @llvm.bswap.i16(i16 %137) #9
  %conv268 = zext i16 %138 to i32
  %event_format269 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 17
  %139 = ptrtoint ptr %event_format269 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv268, ptr %event_format269, align 4
  %140 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %7, align 2
  %conv271 = zext i8 %141 to i32
  %event_size = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 16
  %142 = ptrtoint ptr %event_size to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv271, ptr %event_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_query_device.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_query_device, %if.then284)) #9
          to label %do.end291 [label %if.then284], !srcloc !366

if.then284:                                       ; preds = %if.else265
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ts, align 4
  %dev286 = getelementptr inbounds %struct.i2c_client, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %event_format269 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %event_format269, align 4
  %147 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %event_size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_query_device.__UNIQUE_ID_ddebug296, ptr noundef %dev286, ptr noundef nonnull @.str.52, i32 noundef %146, i32 noundef %148) #9
  br label %do.end291

do.end291:                                        ; preds = %if.then284, %if.else265
  %149 = ptrtoint ptr %event_format269 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %event_format269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp293 = icmp eq i32 %150, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %150)
  %cmp296 = icmp ugt i32 %150, 3
  %or.cond = or i1 %cmp293, %cmp296
  br i1 %or.cond, label %do.end301, label %do.end291.cleanup_crit_edge

do.end291.cleanup_crit_edge:                      ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end301:                                        ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ts, align 4
  %dev303 = getelementptr inbounds %struct.i2c_client, ptr %152, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev303, ptr noundef nonnull @.str.54, i32 noundef %150) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end301, %do.end291.cleanup_crit_edge, %do.end262, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %do.end291.cleanup_crit_edge ], [ 0, %do.end301 ], [ 0, %do.end262 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %dummy) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_input_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_ce.i.i = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gpio_ce.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_ce.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.mip4_enable.exit_crit_edge, label %if.then.i.i

entry.mip4_enable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_enable.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %3, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 300000, i32 noundef 2) #9
  br label %mip4_enable.exit

mip4_enable.exit:                                 ; preds = %if.then.i.i, %entry.mip4_enable.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mip4_input_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @mip4_disable(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %2 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %cmd, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %2, align 1
  %buf = getelementptr inbounds %struct.mip4_ts, ptr %dev_id, i32 0, i32 21
  %call = call fastcc i32 @mip4_i2c_xfer(ptr noundef %dev_id, ptr noundef nonnull %cmd, ptr noundef %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call) #12
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %and = and i8 %6, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11 = icmp slt i8 %6, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_interrupt.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_interrupt, %if.then18)) #9
          to label %do.end25 [label %if.then18], !srcloc !366

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv20 = zext i8 %and to i32
  %.lobit = lshr i8 %6, 7
  %7 = zext i8 %.lobit to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_interrupt.__UNIQUE_ID_ddebug300, ptr noundef %dev19, ptr noundef nonnull @.str.60, i32 noundef %conv20, i32 noundef %7) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then18, %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and)
  %tobool26.not = icmp eq i8 %and, 0
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.62) #12
  br label %out

if.end32:                                         ; preds = %do.end25
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %cmd, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %2, align 1
  %conv38 = zext i8 %and to i32
  %call39 = call fastcc i32 @mip4_i2c_xfer(ptr noundef %dev_id, ptr noundef nonnull %cmd, ptr noundef %buf, i32 noundef %conv38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.65, i32 noundef %call39) #12
  br label %out

if.end46:                                         ; preds = %if.end32
  br i1 %tobool11, label %do.body49, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end46
  %event_size = getelementptr inbounds %struct.mip4_ts, ptr %dev_id, i32 0, i32 16
  br label %for.body

do.body49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_interrupt.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_interrupt, %if.then61)) #9
          to label %out [label %if.then61], !srcloc !366

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %conv65 = zext i8 %11 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_interrupt.__UNIQUE_ID_ddebug301, ptr noundef %dev62, ptr noundef nonnull @.str.67, i32 noundef %conv65) #9
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0108 = phi i32 [ 0, %for.cond.preheader ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx72 = getelementptr %struct.mip4_ts, ptr %dev_id, i32 0, i32 21, i32 %i.0108
  %call73 = call fastcc i32 @mip4_handle_packet(ptr noundef %dev_id, ptr noundef %arrayidx72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %12 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %event_size, align 4
  %add = add i32 %13, %i.0108
  %cmp = icmp ult i32 %add, %conv38
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %input = getelementptr inbounds %struct.mip4_ts, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %out

out:                                              ; preds = %for.end, %if.then61, %do.body49, %do.end44, %do.end30, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_i2c_xfer(ptr nocapture noundef readonly %ts, ptr noundef %write_buf, ptr noundef %read_buf, i32 noundef %read_len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %write_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = load i16, ptr %addr1, align 2
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv7 = trunc i32 %read_len to i16
  %13 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %len6, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %14 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %read_buf, ptr %buf8, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp11, i32 %call, i32 -5
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %spec.select, i32 noundef %call) #12
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ts, align 4
  %adapter.1 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.1, align 8
  %call.1 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1)
  %cmp.1 = icmp eq i32 %call.1, 2
  br i1 %cmp.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp11.1 = icmp slt i32 %call.1, 0
  %spec.select.1 = select i1 %cmp11.1, i32 %call.1, i32 -5
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 4
  %dev.1 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.1, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %spec.select.1, i32 noundef %call.1) #12
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ts, align 4
  %adapter.2 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.2, align 8
  %call.2 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2)
  %cmp.2 = icmp eq i32 %call.2, 2
  br i1 %cmp.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp11.2 = icmp slt i32 %call.2, 0
  %spec.select.2 = select i1 %cmp11.2, i32 %call.2, i32 -5
  %29 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ts, align 4
  %dev.2 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %spec.select.2, i32 noundef %call.2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ %spec.select.2, %if.end.2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mip4_disable(ptr noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #9
  %gpio_ce.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 2
  %4 = ptrtoint ptr %gpio_ce.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_ce.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mip4_power_off.exit_crit_edge, label %if.then.i

entry.mip4_power_off.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_power_off.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #9
  br label %mip4_power_off.exit

mip4_power_off.exit:                              ; preds = %if.then.i, %entry.mip4_power_off.exit_crit_edge
  %input.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 1
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %7, i32 noundef 3, i32 noundef 47, i32 noundef 0) #9
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input.i, align 4
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %9, i32 noundef 0, i1 noundef zeroext false) #9
  %10 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 47, i32 noundef 1) #9
  %12 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input.i, align 4
  %call.i.1.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %13, i32 noundef 0, i1 noundef zeroext false) #9
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 3, i32 noundef 47, i32 noundef 2) #9
  %16 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input.i, align 4
  %call.i.2.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %17, i32 noundef 0, i1 noundef zeroext false) #9
  %18 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 47, i32 noundef 3) #9
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input.i, align 4
  %call.i.3.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %21, i32 noundef 0, i1 noundef zeroext false) #9
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 47, i32 noundef 4) #9
  %24 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input.i, align 4
  %call.i.4.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %25, i32 noundef 0, i1 noundef zeroext false) #9
  %26 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %27, i32 noundef 3, i32 noundef 47, i32 noundef 5) #9
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input.i, align 4
  %call.i.5.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %29, i32 noundef 0, i1 noundef zeroext false) #9
  %30 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %31, i32 noundef 3, i32 noundef 47, i32 noundef 6) #9
  %32 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input.i, align 4
  %call.i.6.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %33, i32 noundef 0, i1 noundef zeroext false) #9
  %34 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 47, i32 noundef 7) #9
  %36 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input.i, align 4
  %call.i.7.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %37, i32 noundef 0, i1 noundef zeroext false) #9
  %38 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %39, i32 noundef 3, i32 noundef 47, i32 noundef 8) #9
  %40 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input.i, align 4
  %call.i.8.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %41, i32 noundef 0, i1 noundef zeroext false) #9
  %42 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 47, i32 noundef 9) #9
  %44 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input.i, align 4
  %call.i.9.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %45, i32 noundef 0, i1 noundef zeroext false) #9
  %key_num.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 18
  %46 = ptrtoint ptr %key_num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp321.not.i = icmp eq i32 %47, 0
  br i1 %cmp321.not.i, label %mip4_power_off.exit.mip4_clear_input.exit_crit_edge, label %mip4_power_off.exit.for.body4.i_crit_edge

mip4_power_off.exit.for.body4.i_crit_edge:        ; preds = %mip4_power_off.exit
  br label %for.body4.i

mip4_power_off.exit.mip4_clear_input.exit_crit_edge: ; preds = %mip4_power_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_clear_input.exit

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %mip4_power_off.exit.for.body4.i_crit_edge
  %i.122.i = phi i32 [ %inc7.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %mip4_power_off.exit.for.body4.i_crit_edge ]
  %48 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.mip4_ts, ptr %ts, i32 0, i32 19, i32 %i.122.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %51 to i32
  tail call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef %conv.i, i32 noundef 0) #9
  %inc7.i = add nuw i32 %i.122.i, 1
  %52 = ptrtoint ptr %key_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %key_num.i, align 4
  %cmp3.i = icmp ult i32 %inc7.i, %53
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.mip4_clear_input.exit_crit_edge

for.body4.i.mip4_clear_input.exit_crit_edge:      ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_clear_input.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

mip4_clear_input.exit:                            ; preds = %for.body4.i.mip4_clear_input.exit_crit_edge, %mip4_power_off.exit.mip4_clear_input.exit_crit_edge
  %54 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %55, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_handle_packet(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_format = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 17
  %0 = ptrtoint ptr %event_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge32
    i32 3, label %sw.bb2
  ]

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32
  %3 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %packet, align 1
  %5 = lshr i8 %4, 6
  %6 = and i8 %5, 1
  br label %do.body

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %packet, align 1
  %9 = lshr i8 %8, 4
  br label %do.body

do.body:                                          ; preds = %sw.bb2, %sw.bb
  %type.0 = phi i8 [ %9, %sw.bb2 ], [ %6, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_handle_packet.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_handle_packet, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %conv10 = zext i8 %type.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_handle_packet.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %conv10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %trunc = trunc i8 %type.0 to i4
  %12 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.174)
  switch i4 %trunc, label %do.end17 [
    i4 0, label %sw.bb12
    i4 1, label %sw.bb13
  ]

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mip4_report_keys(ptr noundef %ts, ptr noundef %packet)
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mip4_report_touch(ptr noundef %ts, ptr noundef %packet)
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = zext i8 %type.0 to i32
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ts, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.70, i32 noundef %conv11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %sw.bb13, %sw.bb12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end17 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mip4_report_keys(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_format = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 17
  %0 = ptrtoint ptr %event_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %extract.t59 = icmp slt i8 %3, 0
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10 = getelementptr i8, ptr %packet, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx10, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13 = icmp ne i8 %6, 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %down.0.off0 = phi i1 [ %tobool13, %sw.default ], [ %extract.t59, %sw.bb ]
  %key.0 = and i8 %3, 15
  %conv15 = zext i8 %key.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %key.0)
  %cmp.not = icmp eq i8 %key.0, 0
  br i1 %cmp.not, label %sw.epilog.do.end38_crit_edge, label %land.lhs.true

sw.epilog.do.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

land.lhs.true:                                    ; preds = %sw.epilog
  %key_num = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 18
  %7 = ptrtoint ptr %key_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv15)
  %cmp18.not = icmp ult i32 %8, %conv15
  br i1 %cmp18.not, label %land.lhs.true.do.end38_crit_edge, label %if.then

land.lhs.true.do.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end38

if.then:                                          ; preds = %land.lhs.true
  %sub = add nsw i32 %conv15, -1
  %arrayidx21 = getelementptr %struct.mip4_ts, ptr %ts, i32 0, i32 19, i32 %sub
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx21, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_report_keys.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_report_keys, %if.then26)) #9
          to label %do.end [label %if.then26], !srcloc !366

if.then26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %conv28 = zext i16 %10 to i32
  %conv30 = zext i1 %down.0.off0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_report_keys.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv15, i32 noundef %conv28, i32 noundef %conv30) #9
  br label %do.end

do.end:                                           ; preds = %if.then26, %if.then
  %input = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 1
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input, align 4
  %conv31 = zext i16 %10 to i32
  tail call void @input_event(ptr noundef %14, i32 noundef 4, i32 noundef 4, i32 noundef %conv31) #9
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %lnot.ext.i = zext i1 %down.0.off0 to i32
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef %conv31, i32 noundef %lnot.ext.i) #9
  br label %if.end42

do.end38:                                         ; preds = %land.lhs.true.do.end38_crit_edge, %sw.epilog.do.end38_crit_edge
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.73, i32 noundef %conv15) #12
  br label %if.end42

if.end42:                                         ; preds = %do.end38, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mip4_report_touch(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %packet) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event_format = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 17
  %0 = ptrtoint ptr %event_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  %2 = ptrtoint ptr %packet to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %packet, align 1
  %arrayidx14 = getelementptr i8, ptr %packet, i32 1
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx14, align 1
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %conv15 = zext i8 %5 to i32
  %and16 = shl nuw nsw i32 %conv15, 8
  %shl = and i32 %and16, 3840
  %arrayidx17 = getelementptr i8, ptr %packet, i32 2
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %or = or i32 %shl, %conv18
  %8 = shl nuw nsw i32 %conv15, 4
  %shl23 = and i32 %8, 3840
  %arrayidx24 = getelementptr i8, ptr %packet, i32 3
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %10 to i32
  %or26 = or i32 %shl23, %conv25
  %arrayidx28 = getelementptr i8, ptr %packet, i32 4
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29 = getelementptr i8, ptr %packet, i32 5
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %extract.t186 = icmp slt i8 %3, 0
  br label %do.body

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx34 = getelementptr i8, ptr %packet, i32 6
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr i8, ptr %packet, i32 7
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %extract.t187 = icmp slt i8 %3, 0
  br label %do.body

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %19 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool54 = icmp ne i8 %19, 0
  %arrayidx56 = getelementptr i8, ptr %packet, i32 2
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %21 to i32
  %and58 = shl nuw nsw i32 %conv57, 8
  %shl59 = and i32 %and58, 3840
  %arrayidx60 = getelementptr i8, ptr %packet, i32 3
  %22 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %23 to i32
  %or62 = or i32 %shl59, %conv61
  %24 = shl nuw nsw i32 %conv57, 4
  %shl68 = and i32 %24, 3840
  %arrayidx69 = getelementptr i8, ptr %packet, i32 4
  %25 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %26 to i32
  %or71 = or i32 %shl68, %conv70
  %arrayidx83 = getelementptr i8, ptr %packet, i32 8
  %27 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx83, align 1
  %arrayidx87 = getelementptr i8, ptr %packet, i32 9
  %29 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx87, align 1
  %arrayidx88 = getelementptr i8, ptr %packet, i32 10
  %31 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx88, align 1
  br label %do.body

do.body:                                          ; preds = %sw.default, %if.else, %if.then
  %state.0.off0 = phi i1 [ %tobool54, %sw.default ], [ %extract.t186, %if.then ], [ %extract.t187, %if.else ]
  %x.0.in = phi i32 [ %or62, %sw.default ], [ %or, %if.then ], [ %or, %if.else ]
  %y.0.in = phi i32 [ %or71, %sw.default ], [ %or26, %if.then ], [ %or26, %if.else ]
  %pressure.0 = phi i8 [ %28, %sw.default ], [ %12, %if.then ], [ %12, %if.else ]
  %touch_major.0 = phi i8 [ %30, %sw.default ], [ %14, %if.then ], [ %16, %if.else ]
  %touch_minor.0 = phi i8 [ %32, %sw.default ], [ %14, %if.then ], [ %18, %if.else ]
  %id.0.in.in = and i8 %3, 15
  %id.0.in = zext i8 %id.0.in.in to i32
  %id.0 = add nsw i32 %id.0.in, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_report_touch.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_report_touch, %if.then93)) #9
          to label %do.end [label %if.then93], !srcloc !366

if.then93:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %conv95 = zext i1 %state.0.off0 to i32
  %conv96 = and i32 %x.0.in, 65535
  %conv97 = and i32 %y.0.in, 65535
  %conv98 = zext i8 %pressure.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_report_touch.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %id.0, i32 noundef %conv95, i32 noundef %conv96, i32 noundef %conv97, i32 noundef %conv98) #9
  br label %do.end

do.end:                                           ; preds = %if.then93, %do.body
  %35 = add nsw i8 %id.0.in.in, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %35)
  %36 = icmp ult i8 %35, -10
  br i1 %36, label %do.end113, label %if.else116, !prof !367

do.end113:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts, align 4
  %dev115 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev115, ptr noundef nonnull @.str.76, i32 noundef %id.0) #12
  br label %if.end135

if.else116:                                       ; preds = %do.end
  %input = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 1
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 47, i32 noundef %id.0) #9
  %41 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input, align 4
  br i1 %state.0.off0, label %if.then118, label %if.else131

if.then118:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #11
  %call120 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %42, i32 noundef 0, i1 noundef zeroext true) #9
  %43 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input, align 4
  %conv122 = and i32 %x.0.in, 65535
  tail call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 53, i32 noundef %conv122) #9
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input, align 4
  %conv124 = and i32 %y.0.in, 65535
  tail call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 54, i32 noundef %conv124) #9
  %47 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input, align 4
  %conv126 = zext i8 %pressure.0 to i32
  tail call void @input_event(ptr noundef %48, i32 noundef 3, i32 noundef 58, i32 noundef %conv126) #9
  %49 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input, align 4
  %conv128 = zext i8 %touch_major.0 to i32
  tail call void @input_event(ptr noundef %50, i32 noundef 3, i32 noundef 48, i32 noundef %conv128) #9
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %conv130 = zext i8 %touch_minor.0 to i32
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 49, i32 noundef %conv130) #9
  br label %if.end135

if.else131:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %42, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end135

if.end135:                                        ; preds = %if.else131, %if.then118, %do.end113
  %input136 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 1
  %53 = ptrtoint ptr %input136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input136, align 4
  tail call void @input_mt_sync_frame(ptr noundef %54) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_sysfs_read_fw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %fw_version = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %fw_version to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fw_version, align 4
  %conv = zext i16 %5 to i32
  %core = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %core, align 2
  %conv2 = zext i16 %7 to i32
  %app = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %app to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %app, align 4
  %conv4 = zext i16 %9 to i32
  %param = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 15, i32 3
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %param, align 2
  %conv6 = zext i16 %11 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6)
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %mutex9 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex9) #9
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_sysfs_read_hw_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %product_name = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.80, i32 noundef 16, ptr noundef %product_name)
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %mutex3 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_sysfs_read_product_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %product_id = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %product_id, align 4
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.82, i32 noundef %conv)
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %mutex3 = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_sysfs_read_ic_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %ic_name = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.80, i32 noundef 4, ptr noundef %ic_name)
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %mutex3 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %mutex3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_sysfs_fw_update(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %fw_start_offset.i = alloca i32, align 4
  %fw_size.i = alloca i32, align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !365
  %fw_name = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 7
  %call1 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.85, ptr noundef %fw_name, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 37
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_start_offset.i) #9
  %9 = ptrtoint ptr %fw_start_offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %fw_start_offset.i, align 4, !annotation !365
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_size.i) #9
  %10 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %fw_size.i, align 4, !annotation !365
  %call.i = call fastcc i32 @mip4_parse_firmware(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %fw_start_offset.i, ptr noundef nonnull %fw_size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.mip4_execute_fw_update.exit_crit_edge

if.end.mip4_execute_fw_update.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_execute_fw_update.exit

if.end.i:                                         ; preds = %if.end
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %call1.i = call zeroext i1 @input_device_enabled(ptr noundef %12) #9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %16) #9
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  %gpio_ce.i.i = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %gpio_ce.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_ce.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.else.i.if.end7.i_crit_edge, label %if.then.i.i

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %18, i32 noundef 1) #9
  call void @usleep_range_state(i32 noundef 200000, i32 noundef 300000, i32 noundef 2) #9
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.i, %if.else.i.if.end7.i_crit_edge, %if.then2.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %fw_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_size.i, align 4
  %21 = ptrtoint ptr %fw_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_start_offset.i, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %call8.i = call fastcc i32 @mip4_flash_fw(ptr noundef %1, ptr noundef %24, i32 noundef %20, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.do.end.i_crit_edge, label %do.body.i.1

if.end7.i.do.end.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end7.i
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %call8.i.1 = call fastcc i32 @mip4_flash_fw(ptr noundef %1, ptr noundef %26, i32 noundef %20, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1, label %do.body.i.1.do.end.i_crit_edge, label %do.body.i.2

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %call8.i.2 = call fastcc i32 @mip4_flash_fw(ptr noundef %1, ptr noundef %28, i32 noundef %20, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool9.not.i.2 = icmp eq i32 %call8.i.2, 0
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.2, %do.body.i.1.do.end.i_crit_edge, %if.end7.i.do.end.i_crit_edge
  %call8.i.lcssa = phi i32 [ %call8.i, %if.end7.i.do.end.i_crit_edge ], [ %call8.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call8.i.2, %do.body.i.2 ]
  %tobool9.not.i.lcssa = phi i1 [ %tobool9.not.i, %if.end7.i.do.end.i_crit_edge ], [ %tobool9.not.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %tobool9.not.i.2, %do.body.i.2 ]
  br i1 %tobool9.not.i.lcssa, label %do.end.i.if.end19.i_crit_edge, label %do.end17.i

do.end.i.if.end19.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.90, i32 noundef %call8.i.lcssa) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end17.i, %do.end.i.if.end19.i_crit_edge
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %call21.i = call zeroext i1 @input_device_enabled(ptr noundef %32) #9
  br i1 %call21.i, label %if.then22.i, label %if.else25.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %irq24.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %irq24.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq24.i, align 4
  call void @enable_irq(i32 noundef %36) #9
  br label %mip4_execute_fw_update.exit

if.else25.i:                                      ; preds = %if.end19.i
  %gpio_ce.i49.i = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %gpio_ce.i49.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gpio_ce.i49.i, align 4
  %tobool.not.i50.i = icmp eq ptr %38, null
  br i1 %tobool.not.i50.i, label %if.else25.i.mip4_execute_fw_update.exit_crit_edge, label %if.then.i51.i

if.else25.i.mip4_execute_fw_update.exit_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_execute_fw_update.exit

if.then.i51.i:                                    ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %38, i32 noundef 0) #9
  br label %mip4_execute_fw_update.exit

mip4_execute_fw_update.exit:                      ; preds = %if.then.i51.i, %if.else25.i.mip4_execute_fw_update.exit_crit_edge, %if.then22.i, %if.end.mip4_execute_fw_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.mip4_execute_fw_update.exit_crit_edge ], [ %call8.i.lcssa, %if.then.i51.i ], [ %call8.i.lcssa, %if.else25.i.mip4_execute_fw_update.exit_crit_edge ], [ %call8.i.lcssa, %if.then22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_size.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_start_offset.i) #9
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  %mutex8 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %mutex8) #9
  %41 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool9.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool9.not, label %mip4_execute_fw_update.exit.cleanup_crit_edge, label %do.end13

mip4_execute_fw_update.exit.cleanup_crit_edge:    ; preds = %mip4_execute_fw_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %mip4_execute_fw_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.88, i32 noundef %retval.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %mip4_execute_fw_update.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %retval.0.i, %do.end13 ], [ %count, %mip4_execute_fw_update.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_parse_firmware(ptr nocapture noundef readonly %ts, ptr nocapture noundef readonly %fw, ptr nocapture noundef %fw_offset_start, ptr nocapture noundef %fw_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef 64, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %sub = add i32 %1, -64
  %arrayidx = getelementptr i8, ptr %5, i32 %sub
  %tail_size3 = getelementptr inbounds %struct.mip4_bin_tail, ptr %arrayidx, i32 0, i32 25
  %6 = ptrtoint ptr %tail_size3 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %tail_size3, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp4.not = icmp eq i16 %7, 16384
  br i1 %cmp4.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.95, i32 noundef %conv, i32 noundef 64) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %arrayidx, ptr noundef nonnull dereferenceable(4) @.str.97, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 4
  %dev20 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.99, i32 noundef 4, ptr noundef %arrayidx, i32 noundef 4, ptr noundef nonnull @.str.97) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %bin_start_addr = getelementptr inbounds %struct.mip4_bin_tail, ptr %arrayidx, i32 0, i32 2
  %13 = ptrtoint ptr %bin_start_addr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %bin_start_addr, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %16 = ptrtoint ptr %fw_offset_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %fw_offset_start, align 4
  %bin_length = getelementptr inbounds %struct.mip4_bin_tail, ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %bin_length to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %bin_length, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fw_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_parse_firmware, %if.then31)) #9
          to label %do.end36 [label %if.then31], !srcloc !366

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ts, align 4
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %fw_offset_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_offset_start, align 4
  %25 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fw_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_parse_firmware.__UNIQUE_ID_ddebug314, ptr noundef %dev33, ptr noundef nonnull @.str.101, i32 noundef %24, i32 noundef %26) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %if.end23
  %27 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_size, align 4
  %rem = and i32 %28, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool37.not = icmp eq i32 %rem, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ts, align 4
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.103, i32 noundef %28, i32 noundef 512) #12
  br label %cleanup

if.end44:                                         ; preds = %do.end36
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw, align 4
  %33 = ptrtoint ptr %fw_offset_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_offset_start, align 4
  %add = add i32 %34, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add)
  %cmp46.not = icmp eq i32 %32, %add
  br i1 %cmp46.not, label %if.end56, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ts, align 4
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.106, i32 noundef %add, i32 noundef %32) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %ver_boot = getelementptr inbounds %struct.mip4_bin_tail, ptr %arrayidx, i32 0, i32 4
  %37 = ptrtoint ptr %ver_boot to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %ver_boot, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #9
  %add.ptr1.i = getelementptr i8, ptr %ver_boot, i32 2
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr1.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #9
  %add.ptr3.i = getelementptr i8, ptr %ver_boot, i32 4
  %43 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %add.ptr3.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #9
  %add.ptr5.i = getelementptr i8, ptr %ver_boot, i32 6
  %46 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr5.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_parse_firmware, %if.then69)) #9
          to label %do.body79 [label %if.then69], !srcloc !366

if.then69:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ts, align 4
  %dev71 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %conv72 = zext i16 %39 to i32
  %conv73 = zext i16 %42 to i32
  %conv74 = zext i16 %45 to i32
  %conv75 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_parse_firmware.__UNIQUE_ID_ddebug315, ptr noundef %dev71, ptr noundef nonnull @.str.108, i32 noundef %conv72, i32 noundef %conv73, i32 noundef %conv74, i32 noundef %conv75) #9
  br label %do.body79

do.body79:                                        ; preds = %if.then69, %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_parse_firmware, %if.then91)) #9
          to label %do.end108 [label %if.then91], !srcloc !366

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ts, align 4
  %dev93 = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 4
  %fw_version94 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15
  %53 = ptrtoint ptr %fw_version94 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %fw_version94, align 4
  %conv96 = zext i16 %54 to i32
  %core98 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 1
  %55 = ptrtoint ptr %core98 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %core98, align 2
  %conv99 = zext i16 %56 to i32
  %app101 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 2
  %57 = ptrtoint ptr %app101 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %app101, align 4
  %conv102 = zext i16 %58 to i32
  %param104 = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 15, i32 3
  %59 = ptrtoint ptr %param104 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %param104, align 2
  %conv105 = zext i16 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_parse_firmware.__UNIQUE_ID_ddebug316, ptr noundef %dev93, ptr noundef nonnull @.str.109, i32 noundef %conv96, i32 noundef %conv99, i32 noundef %conv102, i32 noundef %conv105) #9
  br label %do.end108

do.end108:                                        ; preds = %if.then91, %do.body79
  %61 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.175)
  switch i16 %39, label %land.lhs.true117 [
    i16 -4370, label %do.end108.land.lhs.true155_crit_edge
    i16 -1, label %do.end108.do.end207_crit_edge
  ]

do.end108.do.end207_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

do.end108.land.lhs.true155_crit_edge:             ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true155

land.lhs.true117:                                 ; preds = %do.end108
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4370, i16 %41)
  %cmp120 = icmp eq i16 %41, -4370
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4370, i16 %44)
  %cmp125 = icmp eq i16 %44, -4370
  %or.cond = select i1 %cmp120, i1 %cmp125, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4370, i16 %47)
  %cmp130 = icmp eq i16 %47, -4370
  %or.cond26 = select i1 %or.cond, i1 %cmp130, i1 false
  br i1 %or.cond26, label %do.body133, label %if.else

do.body133:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_parse_firmware, %if.then145)) #9
          to label %cleanup [label %if.then145], !srcloc !366

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ts, align 4
  %dev147 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_parse_firmware.__UNIQUE_ID_ddebug317, ptr noundef %dev147, ptr noundef nonnull @.str.110) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4370, i16 %38)
  %cmp153 = icmp eq i16 %38, -4370
  br i1 %cmp153, label %if.else.land.lhs.true155_crit_edge, label %if.else.do.end207_crit_edge

if.else.do.end207_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

if.else.land.lhs.true155_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true155

land.lhs.true155:                                 ; preds = %if.else.land.lhs.true155_crit_edge, %do.end108.land.lhs.true155_crit_edge
  %64 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %42, label %land.lhs.true165 [
    i16 -4370, label %land.lhs.true155.do.end207_crit_edge
    i16 -1, label %land.lhs.true155.do.end207_crit_edge27
  ]

land.lhs.true155.do.end207_crit_edge27:           ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

land.lhs.true155.do.end207_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

land.lhs.true165:                                 ; preds = %land.lhs.true155
  %65 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %45, label %land.lhs.true175 [
    i16 -4370, label %land.lhs.true165.do.end207_crit_edge
    i16 -1, label %land.lhs.true165.do.end207_crit_edge28
  ]

land.lhs.true165.do.end207_crit_edge28:           ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

land.lhs.true165.do.end207_crit_edge:             ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

land.lhs.true175:                                 ; preds = %land.lhs.true165
  %66 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %48, label %do.body186 [
    i16 -4370, label %land.lhs.true175.do.end207_crit_edge
    i16 -1, label %land.lhs.true175.do.end207_crit_edge29
  ]

land.lhs.true175.do.end207_crit_edge29:           ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

land.lhs.true175.do.end207_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end207

do.body186:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_parse_firmware, %if.then198)) #9
          to label %cleanup [label %if.then198], !srcloc !366

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ts, align 4
  %dev200 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_parse_firmware.__UNIQUE_ID_ddebug318, ptr noundef %dev200, ptr noundef nonnull @.str.111) #9
  br label %cleanup

do.end207:                                        ; preds = %land.lhs.true175.do.end207_crit_edge, %land.lhs.true175.do.end207_crit_edge29, %land.lhs.true165.do.end207_crit_edge, %land.lhs.true165.do.end207_crit_edge28, %land.lhs.true155.do.end207_crit_edge, %land.lhs.true155.do.end207_crit_edge27, %if.else.do.end207_crit_edge, %do.end108.do.end207_crit_edge
  %69 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ts, align 4
  %dev209 = getelementptr inbounds %struct.i2c_client, ptr %70, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev209, ptr noundef nonnull @.str.113) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end207, %if.then198, %do.body186, %if.then145, %do.body133, %do.end51, %do.end41, %do.end18, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %do.end18 ], [ -22, %do.end41 ], [ -22, %do.end51 ], [ -22, %do.end207 ], [ 0, %if.then198 ], [ 0, %if.then145 ], [ 0, %do.body133 ], [ 0, %do.body186 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_flash_fw(ptr noundef %ts, ptr nocapture noundef readonly %fw_data, i32 noundef %fw_size, i32 noundef %fw_offset) unnamed_addr #2 align 64 {
entry:
  %buf_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ts, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf_addr) #9
  %2 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf_addr, align 2, !annotation !365
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_flash_fw.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_flash_fw, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_flash_fw.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.116) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call fastcc i32 @mip4_bl_change_mode(ptr noundef %ts, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.117, i32 noundef %call.i) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = call fastcc i32 @mip4_bl_get_address(ptr noundef %ts, ptr noundef nonnull %buf_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body16, label %if.end11.do.body43_crit_edge

if.end11.do.body43_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.body16:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_flash_fw.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_flash_fw, %if.then28)) #9
          to label %do.end32 [label %if.then28], !srcloc !366

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_flash_fw.__UNIQUE_ID_ddebug312, ptr noundef %dev29, ptr noundef nonnull @.str.118, i32 noundef 512, i32 noundef 512) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %add = add i32 %fw_offset, %fw_size
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %fw_offset)
  %cmp166 = icmp ugt i32 %add, %fw_offset
  br i1 %cmp166, label %for.body.lr.ph, label %do.end32.do.body43_crit_edge

do.end32.do.body43_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

for.body.lr.ph:                                   ; preds = %do.end32
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %buf_addr, align 2
  %conv = zext i16 %4 to i32
  br label %for.body

for.cond:                                         ; preds = %if.end36
  %add42 = add i32 %offset.0167, 512
  %cmp = icmp ult i32 %add42, %add
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.do.body43_crit_edge

for.cond.do.body43_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %offset.0167 = phi i32 [ %fw_offset, %for.body.lr.ph ], [ %add42, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %fw_data, i32 %offset.0167
  %call33 = tail call fastcc i32 @mip4_bl_program_page(ptr noundef %ts, i32 noundef %offset.0167, ptr noundef %add.ptr, i16 noundef zeroext %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.do.body43_crit_edge

for.body.do.body43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.end36:                                         ; preds = %for.body
  %call38 = tail call fastcc i32 @mip4_bl_verify_page(ptr noundef %ts, i32 noundef %offset.0167, ptr noundef %add.ptr, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.cond, label %if.end36.do.body43_crit_edge

if.end36.do.body43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

do.body43:                                        ; preds = %if.end36.do.body43_crit_edge, %for.body.do.body43_crit_edge, %for.cond.do.body43_crit_edge, %do.end32.do.body43_crit_edge, %if.end11.do.body43_crit_edge
  %error.1 = phi i32 [ %call12, %if.end11.do.body43_crit_edge ], [ 0, %do.end32.do.body43_crit_edge ], [ 0, %for.cond.do.body43_crit_edge ], [ %call33, %for.body.do.body43_crit_edge ], [ %call38, %if.end36.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_flash_fw.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_flash_fw, %if.then55)) #9
          to label %do.end59 [label %if.then55], !srcloc !366

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_flash_fw.__UNIQUE_ID_ddebug313, ptr noundef %dev56, ptr noundef nonnull @.str.119) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  %call.i141 = tail call fastcc i32 @mip4_bl_change_mode(ptr noundef %ts, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool61.not = icmp eq i32 %call.i141, 0
  br i1 %tobool61.not, label %do.end59.if.end70_crit_edge, label %do.end65

do.end59.if.end70_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end65:                                         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.121, i32 noundef %call.i141) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool67.not = icmp eq i32 %error.1, 0
  %spec.select = select i1 %tobool67.not, i32 %call.i141, i32 %error.1
  br label %if.end70

if.end70:                                         ; preds = %do.end65, %do.end59.if.end70_crit_edge
  %error.2 = phi i32 [ %error.1, %do.end59.if.end70_crit_edge ], [ %spec.select, %do.end65 ]
  %gpio_ce.i = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 2
  %5 = ptrtoint ptr %gpio_ce.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_ce.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end70.mip4_power_on.exit_crit_edge, label %mip4_power_off.exit

if.end70.mip4_power_on.exit_crit_edge:            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_power_on.exit

mip4_power_off.exit:                              ; preds = %if.end70
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef 0) #9
  %7 = ptrtoint ptr %gpio_ce.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %gpio_ce.i, align 4
  %tobool.not.i143 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i143, label %mip4_power_off.exit.mip4_power_on.exit_crit_edge, label %if.then.i144

mip4_power_off.exit.mip4_power_on.exit_crit_edge: ; preds = %mip4_power_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_power_on.exit

if.then.i144:                                     ; preds = %mip4_power_off.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %.pr, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 300000, i32 noundef 2) #9
  br label %mip4_power_on.exit

mip4_power_on.exit:                               ; preds = %if.then.i144, %mip4_power_off.exit.mip4_power_on.exit_crit_edge, %if.end70.mip4_power_on.exit_crit_edge
  %call72 = tail call fastcc i32 @mip4_query_device(ptr noundef %ts)
  %input = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 1
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %max_x = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 8
  %10 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef %9, i32 noundef 53, i32 noundef 0, i32 noundef %11, i32 noundef 0, i32 noundef 0) #9
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  %max_y = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 9
  %14 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef %13, i32 noundef 54, i32 noundef 0, i32 noundef %15, i32 noundef 0, i32 noundef 0) #9
  %16 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input, align 4
  %18 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_x, align 4
  tail call void @input_set_abs_params(ptr noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef %19, i32 noundef 0, i32 noundef 0) #9
  %20 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input, align 4
  %22 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_y, align 4
  tail call void @input_set_abs_params(ptr noundef %21, i32 noundef 1, i32 noundef 0, i32 noundef %23, i32 noundef 0, i32 noundef 0) #9
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  %ppm_x = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 13
  %26 = ptrtoint ptr %ppm_x to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ppm_x, align 4
  tail call void @input_alloc_absinfo(ptr noundef %25) #9
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 26
  %28 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i145 = icmp eq ptr %29, null
  br i1 %tobool.not.i145, label %mip4_power_on.exit.input_abs_set_res.exit_crit_edge, label %if.then.i146

mip4_power_on.exit.input_abs_set_res.exit_crit_edge: ; preds = %mip4_power_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit

if.then.i146:                                     ; preds = %mip4_power_on.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i = getelementptr %struct.input_absinfo, ptr %29, i32 53, i32 5
  %30 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %resolution.i, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i146, %mip4_power_on.exit.input_abs_set_res.exit_crit_edge
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %ppm_y = getelementptr inbounds %struct.mip4_ts, ptr %ts, i32 0, i32 14
  %33 = ptrtoint ptr %ppm_y to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ppm_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef %32) #9
  %absinfo.i147 = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 26
  %35 = ptrtoint ptr %absinfo.i147 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %absinfo.i147, align 8
  %tobool.not.i148 = icmp eq ptr %36, null
  br i1 %tobool.not.i148, label %input_abs_set_res.exit.input_abs_set_res.exit151_crit_edge, label %if.then.i150

input_abs_set_res.exit.input_abs_set_res.exit151_crit_edge: ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit151

if.then.i150:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i149 = getelementptr %struct.input_absinfo, ptr %36, i32 54, i32 5
  %37 = ptrtoint ptr %resolution.i149 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %resolution.i149, align 4
  br label %input_abs_set_res.exit151

input_abs_set_res.exit151:                        ; preds = %if.then.i150, %input_abs_set_res.exit.input_abs_set_res.exit151_crit_edge
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input, align 4
  %40 = ptrtoint ptr %ppm_x to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ppm_x, align 4
  tail call void @input_alloc_absinfo(ptr noundef %39) #9
  %absinfo.i152 = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 26
  %42 = ptrtoint ptr %absinfo.i152 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %absinfo.i152, align 8
  %tobool.not.i153 = icmp eq ptr %43, null
  br i1 %tobool.not.i153, label %input_abs_set_res.exit151.input_abs_set_res.exit156_crit_edge, label %if.then.i155

input_abs_set_res.exit151.input_abs_set_res.exit156_crit_edge: ; preds = %input_abs_set_res.exit151
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_res.exit156

if.then.i155:                                     ; preds = %input_abs_set_res.exit151
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i154 = getelementptr %struct.input_absinfo, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %resolution.i154 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %41, ptr %resolution.i154, align 4
  br label %input_abs_set_res.exit156

input_abs_set_res.exit156:                        ; preds = %if.then.i155, %input_abs_set_res.exit151.input_abs_set_res.exit156_crit_edge
  %45 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input, align 4
  %47 = ptrtoint ptr %ppm_y to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ppm_y, align 4
  tail call void @input_alloc_absinfo(ptr noundef %46) #9
  %absinfo.i157 = getelementptr inbounds %struct.input_dev, ptr %46, i32 0, i32 26
  %49 = ptrtoint ptr %absinfo.i157 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i157, align 8
  %tobool.not.i158 = icmp eq ptr %50, null
  br i1 %tobool.not.i158, label %input_abs_set_res.exit156.cleanup_crit_edge, label %if.then.i160

input_abs_set_res.exit156.cleanup_crit_edge:      ; preds = %input_abs_set_res.exit156
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i160:                                     ; preds = %input_abs_set_res.exit156
  call void @__sanitizer_cov_trace_pc() #11
  %resolution.i159 = getelementptr %struct.input_absinfo, ptr %50, i32 1, i32 5
  %51 = ptrtoint ptr %resolution.i159 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %resolution.i159, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i160, %input_abs_set_res.exit156.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %call.i, %do.end9 ], [ %error.2, %input_abs_set_res.exit156.cleanup_crit_edge ], [ %error.2, %if.then.i160 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_bl_get_address(ptr nocapture noundef readonly %ts, ptr nocapture noundef %buf_addr) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [2 x i8], align 2
  %result = alloca [2 x i8], align 2
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 16, ptr %cmd, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %result) #9
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result, align 2, !annotation !365
  %2 = getelementptr inbounds [2 x i8], ptr %result, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !365
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ts, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1, align 2
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %14 = load i16, ptr %addr1, align 2
  %15 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %16 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %17 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %18 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %result, ptr %buf7, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp11, i32 %call, i32 -5
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.130, i32 noundef %spec.select) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %result to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %result, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %26 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %buf_addr, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_get_address.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_get_address, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !366

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ts, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %buf_addr, align 2
  %conv = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_get_address.__UNIQUE_ID_ddebug306, ptr noundef %dev21, ptr noundef nonnull @.str.132, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.then19 ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %result) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_bl_program_page(ptr nocapture noundef readonly %ts, i32 noundef %offset, ptr nocapture noundef readonly %data, i16 noundef zeroext %buf_addr) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_program_page.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_program_page, %if.then)) #9
          to label %if.end10 [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_program_page.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.134, i32 noundef %offset, i32 noundef 512) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 514) #14
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cmd, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %0, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %offset) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %1, align 1
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %cmd, i32 noundef 6, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp19.not = icmp eq i32 %call.i, 6
  br i1 %cmp19.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp21, i32 %call.i, i32 -5
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ts, align 4
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.137, i32 noundef %spec.select) #12
  br label %out

if.end27:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cmd, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 68, ptr %0, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 131072, ptr %1, align 1
  %16 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ts, align 4
  %call.i8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %cmd, i32 noundef 6, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i8)
  %cmp34.not = icmp eq i32 %call.i8, 6
  br i1 %cmp34.not, label %for.cond.preheader, label %if.then35

for.cond.preheader:                               ; preds = %if.end27
  %arrayidx71 = getelementptr i8, ptr %call7.i, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_program_page.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_program_page, %if.then61)) #9
          to label %do.end67 [label %if.then61], !srcloc !366

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp36 = icmp slt i32 %call.i8, 0
  %spec.select1 = select i1 %cmp36, i32 %call.i8, i32 -5
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ts, align 4
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.140, i32 noundef %spec.select1) #12
  br label %out

if.then61:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ts, align 4
  %dev63 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_program_page.__UNIQUE_ID_ddebug308, ptr noundef %dev63, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef 512) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %for.cond.preheader
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %buf_addr, ptr %call7.i, align 8
  %23 = call ptr @memcpy(ptr %arrayidx71, ptr %data, i32 512)
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 4
  %call.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %call7.i, i32 noundef 514, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %call.i9)
  %cmp75.not = icmp eq i32 %call.i9, 514
  br i1 %cmp75.not, label %for.inc, label %if.then77

if.then77:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp78 = icmp slt i32 %call.i9, 0
  %spec.select2 = select i1 %cmp78, i32 %call.i9, i32 -5
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts, align 4
  %dev88 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.144, i32 noundef 0, i32 noundef 512, i32 noundef %spec.select2) #12
  br label %out

for.inc:                                          ; preds = %do.end67
  %28 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %cmd, align 1
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 48, ptr %0, align 1
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 84, ptr %1, align 1
  %31 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ts, align 4
  %call.i10 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %cmd, i32 noundef 3, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i10)
  %cmp100.not = icmp eq i32 %call.i10, 3
  br i1 %cmp100.not, label %if.end114, label %if.then102

if.then102:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp103 = icmp slt i32 %call.i10, 0
  %spec.select3 = select i1 %cmp103, i32 %call.i10, i32 -5
  %33 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ts, align 4
  %dev113 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.147, i32 noundef %spec.select3) #12
  br label %out

if.end114:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call115 = call fastcc i32 @mip4_bl_read_status(ptr noundef %ts)
  br label %out

out:                                              ; preds = %if.end114, %if.then102, %if.then77, %if.then35, %if.then20
  %error.0 = phi i32 [ %spec.select, %if.then20 ], [ %spec.select1, %if.then35 ], [ %spec.select2, %if.then77 ], [ %spec.select3, %if.then102 ], [ %call115, %if.end114 ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_bl_verify_page(ptr nocapture noundef readonly %ts, i32 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %buf_addr) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [8 x i8], align 8
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %cmd, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 20)
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ts, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %13 = load i16, ptr %addr1, align 2
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %16 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 512, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_verify_page.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_verify_page, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_verify_page.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %offset, i32 noundef 512) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %cmd, align 8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %0, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %offset) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %1, align 2
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %cmd, i32 noundef 6, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 6
  br i1 %cmp.not, label %if.end23, label %if.then16

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp17, i32 %call.i, i32 -5
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ts, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.161, i32 noundef %spec.select) #12
  br label %cleanup

if.end23:                                         ; preds = %do.end
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %cmd, align 8
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 68, ptr %0, align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 131072, ptr %1, align 2
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts, align 4
  %call.i8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef nonnull %cmd, i32 noundef 6, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i8)
  %cmp30.not = icmp eq i32 %call.i8, 6
  br i1 %cmp30.not, label %if.end42, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp32 = icmp slt i32 %call.i8, 0
  %spec.select1 = select i1 %cmp32, i32 %call.i8, i32 -5
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts, align 4
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.163, i32 noundef %spec.select1) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end23
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %cmd, align 8
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 48, ptr %0, align 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -62, ptr %1, align 2
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ts, align 4
  %call.i9 = call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef nonnull %cmd, i32 noundef 3, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i9)
  %cmp49.not = icmp eq i32 %call.i9, 3
  br i1 %cmp49.not, label %if.end61, label %if.then50

if.then50:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp51 = icmp slt i32 %call.i9, 0
  %spec.select2 = select i1 %cmp51, i32 %call.i9, i32 -5
  %39 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ts, align 4
  %dev60 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.166, i32 noundef %spec.select2) #12
  br label %cleanup

if.end61:                                         ; preds = %if.end42
  %call62 = call fastcc i32 @mip4_bl_read_status(ptr noundef %ts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 512) #14
  %42 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i, ptr %buf7, align 4
  %tobool69.not = icmp eq ptr %call7.i, null
  br i1 %tobool69.not, label %if.end65.cleanup_crit_edge, label %do.body73.preheader

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body73.preheader:                              ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_verify_page.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_verify_page, %if.then85)) #9
          to label %do.end90 [label %if.then85], !srcloc !366

if.then85:                                        ; preds = %do.body73.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ts, align 4
  %dev87 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_verify_page.__UNIQUE_ID_ddebug310, ptr noundef %dev87, ptr noundef nonnull @.str.168, i32 noundef 0, i32 noundef 512) #9
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73.preheader
  %conv = trunc i32 %buf_addr to i16
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %cmd, align 8
  %46 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ts, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter, align 8
  %call94 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 2
  br i1 %cmp95.not, label %if.end109, label %if.then97

if.then97:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp98 = icmp slt i32 %call94, 0
  %spec.select3 = select i1 %cmp98, i32 %call94, i32 -5
  %50 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ts, align 4
  %dev108 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.144, i32 noundef 0, i32 noundef 512, i32 noundef %spec.select3) #12
  br label %for.end

if.end109:                                        ; preds = %do.end90
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(512) %data, ptr noundef nonnull dereferenceable(512) %call7.i, i32 512) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool112.not = icmp eq i32 %bcmp, 0
  br i1 %tobool112.not, label %if.end109.for.end_crit_edge, label %do.end116

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end116:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ts, align 4
  %dev118 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.172, i32 noundef 0, i32 noundef 512) #12
  br label %for.end

for.end:                                          ; preds = %do.end116, %if.end109.for.end_crit_edge, %if.then97
  %error.0 = phi i32 [ %spec.select3, %if.then97 ], [ -22, %do.end116 ], [ 0, %if.end109.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end65.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then50, %if.then31, %if.then16
  %retval.0 = phi i32 [ %spec.select, %if.then16 ], [ %spec.select1, %if.then31 ], [ %spec.select2, %if.then50 ], [ %error.0, %for.end ], [ %call62, %if.end61.cleanup_crit_edge ], [ -12, %if.end65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_bl_change_mode(ptr nocapture noundef readonly %ts, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %mode_chg_cmd = alloca [3 x i8], align 1
  %mode_read_cmd = alloca [2 x i8], align 2
  %result = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %mode_chg_cmd) #9
  %0 = getelementptr inbounds [3 x i8], ptr %mode_chg_cmd, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %mode_chg_cmd, i32 0, i32 2
  %2 = ptrtoint ptr %mode_chg_cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mode_chg_cmd, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mode, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode_read_cmd) #9
  %5 = ptrtoint ptr %mode_read_cmd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %mode_read_cmd, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result) #9
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %result, align 1, !annotation !365
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ts, align 4
  %addr3 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr3, align 2
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mode_read_cmd, ptr %buf, align 4
  %arrayinit.element4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %17 = load i16, ptr %addr3, align 2
  %18 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayinit.element4, align 4
  %flags8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags8, align 2
  %len9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %20 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len9, align 4
  %buf10 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %21 = ptrtoint ptr %buf10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %result, ptr %buf10, align 4
  %conv23 = zext i8 %mode to i32
  br label %do.body

do.body:                                          ; preds = %do.cond71.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 10, %entry ], [ %dec, %do.cond71.do.body_crit_edge ]
  %22 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ts, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %mode_chg_cmd, i32 noundef 3, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 3
  br i1 %cmp.not, label %do.body16, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp13, i32 %call.i, i32 -5
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.123, i32 noundef %conv23, i32 noundef %spec.select, i32 noundef %call.i) #12
  br label %cleanup

do.body16:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_change_mode.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_change_mode, %if.then20)) #9
          to label %do.end26 [label %if.then20], !srcloc !366

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts, align 4
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_change_mode.__UNIQUE_ID_ddebug304, ptr noundef %dev22, ptr noundef nonnull @.str.125, i32 noundef %conv23) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body16
  call void @msleep(i32 noundef 1000) #9
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call29 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 2
  br i1 %cmp30.not, label %do.body45, label %if.then32

if.then32:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp33 = icmp slt i32 %call29, 0
  %spec.select100 = select i1 %cmp33, i32 %call29, i32 -5
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts, align 4
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.127, i32 noundef %spec.select100) #12
  br label %cleanup

do.body45:                                        ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_change_mode.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_change_mode, %if.then57)) #9
          to label %do.end64 [label %if.then57], !srcloc !366

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ts, align 4
  %dev59 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %result, align 1
  %conv60 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_change_mode.__UNIQUE_ID_ddebug305, ptr noundef %dev59, ptr noundef nonnull @.str.129, i32 noundef %conv60, i32 noundef %conv23) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %38 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %result, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %mode)
  %cmp67 = icmp eq i8 %39, %mode
  br i1 %cmp67, label %do.end64.cleanup_crit_edge, label %do.cond71

do.end64.cleanup_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.cond71:                                        ; preds = %do.end64
  %dec = add nsw i32 %retry.0, -1
  %tobool72.not = icmp eq i32 %dec, 0
  br i1 %tobool72.not, label %do.cond71.cleanup_crit_edge, label %do.cond71.do.body_crit_edge

do.cond71.do.body_crit_edge:                      ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond71.cleanup_crit_edge:                      ; preds = %do.cond71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.cond71.cleanup_crit_edge, %do.end64.cleanup_crit_edge, %if.then32, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select100, %if.then32 ], [ -5, %do.cond71.cleanup_crit_edge ], [ 0, %do.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode_read_cmd) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %mode_chg_cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mip4_bl_read_status(ptr nocapture noundef readonly %ts) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [2 x i8], align 2
  %result = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #9
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 32, ptr %cmd, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result) #9
  %1 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result, align 1, !annotation !365
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ts, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1, align 2
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i16, ptr %addr1, align 2
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %result, ptr %buf7, align 4
  br label %do.body

do.body:                                          ; preds = %sw.epilog.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 1000, %entry ], [ %dec, %sw.epilog.do.body_crit_edge ]
  %17 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ts, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp10, i32 %call, i32 -5
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ts, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.149, i32 noundef %spec.select) #12
  br label %cleanup

if.end:                                           ; preds = %do.body
  %23 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %result, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %24, label %do.end50 [
    i8 -96, label %do.body13
    i8 14, label %do.end26
    i8 5, label %do.body30
  ]

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_read_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_read_status, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !366

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ts, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_read_status.__UNIQUE_ID_ddebug302, ptr noundef %dev19, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150) #9
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ts, align 4
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.153) #12
  br label %cleanup

do.body30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mip4_bl_read_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mip4_bl_read_status, %if.then42)) #9
          to label %sw.epilog [label %if.then42], !srcloc !366

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ts, align 4
  %dev44 = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mip4_bl_read_status.__UNIQUE_ID_ddebug303, ptr noundef %dev44, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.150) #9
  br label %sw.epilog

do.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %24 to i32
  %32 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ts, align 4
  %dev52 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.157, i32 noundef %conv) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end50, %if.then42, %do.body30
  %error.0 = phi i32 [ -22, %do.end50 ], [ -16, %if.then42 ], [ -16, %do.body30 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  %dec = add nsw i32 %retry.0, -1
  %tobool55.not = icmp eq i32 %dec, 0
  br i1 %tobool55.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end26, %if.then17, %do.body13, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ -5, %do.end26 ], [ 0, %if.then17 ], [ 0, %do.body13 ], [ %error.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  %wake_irq_enabled = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 20
  %frombool = zext i1 %cmp to i8
  %9 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %wake_irq_enabled, align 4
  br label %if.end6

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call4 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #9
  br i1 %call4, label %if.then5, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mip4_disable(ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else.if.end6_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mip4_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %wake_irq_enabled = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %wake_irq_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wake_irq_enabled, align 4, !range !368
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr i8, ptr %dev, i32 932
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #9
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #9
  br i1 %call3, label %if.then4, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.else
  %gpio_ce.i.i = getelementptr inbounds %struct.mip4_ts, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gpio_ce.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_ce.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then4.mip4_enable.exit_crit_edge, label %if.then.i.i

if.then4.mip4_enable.exit_crit_edge:              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %mip4_enable.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 200000, i32 noundef 300000, i32 noundef 2) #9
  br label %mip4_enable.exit

mip4_enable.exit:                                 ; preds = %if.then.i.i, %if.then4.mip4_enable.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %13) #9
  br label %if.end6

if.end6:                                          ; preds = %mip4_enable.exit, %if.else.if.end6_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !162, !163, !165, !167, !168, !170, !172, !173, !175, !177, !178, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !208, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !265, !266, !267, !269, !270, !272, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !315, !316, !317, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !345, !346, !348, !349, !350, !352, !354}
!llvm.module.flags = !{!356, !357, !358, !359, !360, !361, !362, !363}
!llvm.ident = !{!364}

!0 = !{ptr @__initcall__kmod_melfas_mip4__319_1601_mip4_driver_init6, !1, !"__initcall__kmod_melfas_mip4__319_1601_mip4_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1601, i32 1}
!2 = !{ptr @__exitcall_mip4_driver_exit, !1, !"__exitcall_mip4_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description320, !4, !"__UNIQUE_ID_description320", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1603, i32 1}
!5 = !{ptr @__UNIQUE_ID_author321, !6, !"__UNIQUE_ID_author321", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1604, i32 1}
!7 = !{ptr @__UNIQUE_ID_file322, !8, !"__UNIQUE_ID_file322", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1605, i32 1}
!9 = !{ptr @__UNIQUE_ID_license323, !8, !"__UNIQUE_ID_license323", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1595, i32 11}
!12 = !{ptr @mip4_driver, !13, !"mip4_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1591, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1434, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mip4_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mip4_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1450, i32 4}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1453, i32 12}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1457, i32 4}
!28 = !{ptr @mip4_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mip4_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1470, i32 16}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1508, i32 3}
!34 = !{ptr @mip4_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mip4_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1516, i32 3}
!38 = !{ptr @mip4_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mip4_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1523, i32 3}
!42 = !{ptr @mip4_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mip4_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 258, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mip4_query_device._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mip4_query_device._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 268, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mip4_query_device._entry.23, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mip4_query_device._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 271, i32 3}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug288, !55, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 279, i32 3}
!60 = !{ptr @mip4_query_device._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mip4_query_device._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 283, i32 3}
!64 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug289, !63, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 288, i32 3}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 289, i32 2}
!69 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug290, !68, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 297, i32 3}
!72 = !{ptr @mip4_query_device._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mip4_query_device._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 300, i32 3}
!76 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug291, !75, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 306, i32 3}
!79 = !{ptr @mip4_query_device._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mip4_query_device._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 309, i32 3}
!83 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug292, !82, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 318, i32 3}
!86 = !{ptr @mip4_query_device._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mip4_query_device._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 324, i32 3}
!90 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug293, !89, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 330, i32 3}
!93 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug294, !92, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 336, i32 3}
!96 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug295, !95, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 349, i32 3}
!99 = !{ptr @mip4_query_device._entry.49, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mip4_query_device._entry_ptr.51, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 355, i32 3}
!103 = !{ptr @mip4_query_device.__UNIQUE_ID_ddebug296, !102, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 359, i32 4}
!106 = !{ptr @mip4_query_device._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mip4_query_device._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 206, i32 3}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mip4_i2c_xfer._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @mip4_i2c_xfer._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 597, i32 3}
!115 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mip4_interrupt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mip4_interrupt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 604, i32 2}
!120 = !{ptr @mip4_interrupt.__UNIQUE_ID_ddebug300, !119, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 608, i32 3}
!123 = !{ptr @mip4_interrupt._entry.61, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mip4_interrupt._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 617, i32 3}
!127 = !{ptr @mip4_interrupt._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @mip4_interrupt._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 623, i32 3}
!131 = !{ptr @mip4_interrupt.__UNIQUE_ID_ddebug301, !130, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 562, i32 2}
!134 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mip4_handle_packet.__UNIQUE_ID_ddebug299, !133, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 575, i32 3}
!138 = !{ptr @mip4_handle_packet._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @mip4_handle_packet._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 453, i32 3}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mip4_report_keys.__UNIQUE_ID_ddebug297, !141, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 461, i32 3}
!146 = !{ptr @mip4_report_keys._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @mip4_report_keys._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 519, i32 2}
!150 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @mip4_report_touch.__UNIQUE_ID_ddebug298, !149, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 524, i32 3}
!154 = !{ptr @mip4_report_touch._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mip4_report_touch._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @mip4_attr_group, !157, !"mip4_attr_group", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1423, i32 37}
!158 = !{ptr @mip4_attrs, !159, !"mip4_attrs", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1414, i32 26}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1348, i32 8}
!162 = !{ptr @dev_attr_fw_version, !161, !"dev_attr_fw_version", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1339, i32 35}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1373, i32 8}
!167 = !{ptr @dev_attr_hw_version, !166, !"dev_attr_hw_version", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1365, i32 35}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1392, i32 8}
!172 = !{ptr @dev_attr_product_id, !171, !"dev_attr_product_id", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1385, i32 35}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1412, i32 8}
!177 = !{ptr @dev_attr_ic_name, !176, !"dev_attr_ic_name", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1326, i32 8}
!180 = !{ptr @dev_attr_update_fw, !179, !"dev_attr_update_fw", i1 false, i1 false}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1298, i32 3}
!183 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mip4_sysfs_fw_update._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mip4_sysfs_fw_update._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1318, i32 3}
!188 = !{ptr @mip4_sysfs_fw_update._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @mip4_sysfs_fw_update._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1275, i32 3}
!192 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mip4_execute_fw_update._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mip4_execute_fw_update._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1164, i32 3}
!197 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @mip4_parse_firmware._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @mip4_parse_firmware._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1179, i32 3}
!202 = !{ptr @mip4_parse_firmware._entry.94, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @mip4_parse_firmware._entry_ptr.96, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1186, i32 33}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1188, i32 3}
!208 = !{ptr @mip4_parse_firmware._entry.98, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @mip4_parse_firmware._entry_ptr.100, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1198, i32 2}
!212 = !{ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug314, !211, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1203, i32 3}
!215 = !{ptr @mip4_parse_firmware._entry.102, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @mip4_parse_firmware._entry_ptr.104, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.106, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1210, i32 3}
!219 = !{ptr @mip4_parse_firmware._entry.105, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @mip4_parse_firmware._entry_ptr.107, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1218, i32 2}
!223 = !{ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug315, !222, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1223, i32 2}
!226 = !{ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug316, !225, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1232, i32 3}
!229 = !{ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug317, !228, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1237, i32 3}
!232 = !{ptr @mip4_parse_firmware.__UNIQUE_ID_ddebug318, !231, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1239, i32 3}
!235 = !{ptr @mip4_parse_firmware._entry.112, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @mip4_parse_firmware._entry_ptr.114, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1088, i32 2}
!239 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @mip4_flash_fw.__UNIQUE_ID_ddebug311, !238, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1092, i32 3}
!243 = !{ptr @mip4_flash_fw._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @mip4_flash_fw._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.118, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1104, i32 2}
!247 = !{ptr @mip4_flash_fw.__UNIQUE_ID_ddebug312, !246, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1126, i32 2}
!250 = !{ptr @mip4_flash_fw.__UNIQUE_ID_ddebug313, !249, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!251 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1130, i32 3}
!253 = !{ptr @mip4_flash_fw._entry.120, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @mip4_flash_fw._entry_ptr.122, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.123, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 796, i32 4}
!257 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @mip4_bl_change_mode._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @mip4_bl_change_mode._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 802, i32 3}
!262 = !{ptr @mip4_bl_change_mode.__UNIQUE_ID_ddebug304, !261, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!263 = !{ptr @.str.127, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 812, i32 4}
!265 = !{ptr @mip4_bl_change_mode._entry.126, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @mip4_bl_change_mode._entry_ptr.128, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.129, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 817, i32 3}
!269 = !{ptr @mip4_bl_change_mode.__UNIQUE_ID_ddebug305, !268, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 867, i32 3}
!272 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @mip4_bl_get_address._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @mip4_bl_get_address._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.132, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 874, i32 2}
!277 = !{ptr @mip4_bl_get_address.__UNIQUE_ID_ddebug306, !276, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 889, i32 2}
!280 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @mip4_bl_program_page.__UNIQUE_ID_ddebug307, !279, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 893, i32 3}
!284 = !{ptr @mip4_bl_program_page._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @mip4_bl_program_page._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 909, i32 3}
!288 = !{ptr @mip4_bl_program_page._entry.136, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @mip4_bl_program_page._entry_ptr.138, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.140, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 921, i32 3}
!292 = !{ptr @mip4_bl_program_page._entry.139, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @mip4_bl_program_page._entry_ptr.141, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 930, i32 3}
!296 = !{ptr @mip4_bl_program_page.__UNIQUE_ID_ddebug308, !295, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 939, i32 4}
!299 = !{ptr @mip4_bl_program_page._entry.143, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @mip4_bl_program_page._entry_ptr.145, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 953, i32 3}
!303 = !{ptr @mip4_bl_program_page._entry.146, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @mip4_bl_program_page._entry_ptr.148, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 731, i32 4}
!307 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @mip4_bl_read_status._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @mip4_bl_read_status._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.151, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 739, i32 4}
!312 = !{ptr @mip4_bl_read_status.__UNIQUE_ID_ddebug302, !311, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 743, i32 4}
!315 = !{ptr @mip4_bl_read_status._entry.152, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @mip4_bl_read_status._entry_ptr.154, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 747, i32 4}
!319 = !{ptr @mip4_bl_read_status.__UNIQUE_ID_ddebug303, !318, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!320 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 752, i32 4}
!322 = !{ptr @mip4_bl_read_status._entry.156, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @mip4_bl_read_status._entry_ptr.158, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.159, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 987, i32 2}
!326 = !{ptr @.str.160, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @mip4_bl_verify_page.__UNIQUE_ID_ddebug309, !325, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!328 = !{ptr @.str.161, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 997, i32 3}
!330 = !{ptr @mip4_bl_verify_page._entry, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @mip4_bl_verify_page._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.163, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1009, i32 3}
!334 = !{ptr @mip4_bl_verify_page._entry.162, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @mip4_bl_verify_page._entry_ptr.164, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.166, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1021, i32 3}
!338 = !{ptr @mip4_bl_verify_page._entry.165, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @mip4_bl_verify_page._entry_ptr.167, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.168, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1039, i32 3}
!342 = !{ptr @mip4_bl_verify_page.__UNIQUE_ID_ddebug310, !341, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!343 = !{ptr @mip4_bl_verify_page._entry.169, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1046, i32 4}
!345 = !{ptr @mip4_bl_verify_page._entry_ptr.170, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.172, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1053, i32 4}
!348 = !{ptr @mip4_bl_verify_page._entry.171, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @mip4_bl_verify_page._entry_ptr.173, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @mip4_of_match, !351, !"mip4_of_match", i1 false, i1 false}
!351 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1570, i32 34}
!352 = !{ptr @mip4_pm_ops, !353, !"mip4_pm_ops", i1 false, i1 false}
!353 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1567, i32 8}
!354 = !{ptr @mip4_i2c_ids, !355, !"mip4_i2c_ids", i1 false, i1 false}
!355 = !{!"../drivers/input/touchscreen/melfas_mip4.c", i32 1585, i32 35}
!356 = !{i32 1, !"wchar_size", i32 2}
!357 = !{i32 1, !"min_enum_size", i32 4}
!358 = !{i32 8, !"branch-target-enforcement", i32 0}
!359 = !{i32 8, !"sign-return-address", i32 0}
!360 = !{i32 8, !"sign-return-address-all", i32 0}
!361 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!362 = !{i32 7, !"uwtable", i32 1}
!363 = !{i32 7, !"frame-pointer", i32 2}
!364 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!365 = !{!"auto-init"}
!366 = !{i64 2148984321, i64 2148984326, i64 2148984339, i64 2148984383, i64 2148984417, i64 2148984438}
!367 = !{!"branch_weights", i32 1, i32 2000}
!368 = !{i8 0, i8 2}
