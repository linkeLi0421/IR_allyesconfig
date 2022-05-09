; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/mxc4005.c_pt.bc'
source_filename = "../drivers/iio/accel/mxc4005.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.89 = type { i8, i32 }
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
%struct.mxc4005_data = type { ptr, %struct.mutex, ptr, ptr, %struct.anon.87, i8 }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_mxc4005__289_496_mxc4005_driver_init6 = internal global ptr @mxc4005_driver_init, section ".initcall6.init", align 4
@mxc4005_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mxc4005_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mxc4005_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mxc4005_driver_exit = internal global ptr @mxc4005_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"mxc4005.author=Teodora Baluta <teodora.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"mxc4005.file=drivers/iio/accel/mxc4005\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"mxc4005.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [56 x i8] c"mxc4005.description=MXC4005 3-axis accelerometer driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxc4005\00", [24 x i8] zeroinitializer }, align 32
@mxc4005_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mxc4005\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mxc6655\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mxc4005_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mxc4005_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.22, i32 8, i32 0, i32 0, i32 8, ptr @mxc4005_is_writeable_reg, ptr @mxc4005_is_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mxc4005:400:(&mxc4005_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc4005_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/mxc4005.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry_ptr = internal global ptr @mxc4005_probe._entry, section ".printk_index", align 4
@mxc4005_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 413, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize chip\0A\00", [37 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry_ptr.9 = internal global ptr @mxc4005_probe._entry.7, section ".printk_index", align 4
@mxc4005_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@mxc4005_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 3, i32 0, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 5, i32 1, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 7, i32 2, %struct.anon.86 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@mxc4005_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@mxc4005_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mxc4005_attrs_group, ptr @mxc4005_read_raw, ptr null, ptr null, ptr @mxc4005_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to setup iio triggered buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry_ptr.13 = internal global ptr @mxc4005_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxc4005_event\00", [18 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init threaded irq\0A\00", [35 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry_ptr.18 = internal global ptr @mxc4005_probe._entry.16, section ".printk_index", align 4
@mxc4005_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @mxc4005_set_trigger_state, ptr @mxc4005_trigger_reen, ptr null }, [20 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@mxc4005_probe._entry_ptr.21 = internal global ptr @mxc4005_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxc4005_regmap\00", [17 x i8] zeroinitializer }, align 32
@mxc4005_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to read chip id\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxc4005_chip_init\00", [46 x i8] zeroinitializer }, align 32
@mxc4005_chip_init._entry_ptr = internal global ptr @mxc4005_chip_init._entry, section ".printk_index", align 4
@mxc4005_chip_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MXC4005 chip id %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@mxc4005_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mxc4005_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mxc4005_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.26, %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0.009582 0.019164 0.038329\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@mxc4005_read_axis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read reg %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxc4005_read_axis\00", [46 x i8] zeroinitializer }, align 32
@mxc4005_read_axis._entry_ptr = internal global ptr @mxc4005_read_axis._entry, section ".printk_index", align 4
@mxc4005_read_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 174, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to read reg_control\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxc4005_read_scale\00", [45 x i8] zeroinitializer }, align 32
@mxc4005_read_scale._entry_ptr = internal global ptr @mxc4005_read_scale._entry, section ".printk_index", align 4
@mxc4005_scale_table = internal constant { [3 x %struct.anon.89], [40 x i8] } { [3 x %struct.anon.89] [%struct.anon.89 { i8 0, i32 9582 }, %struct.anon.89 { i8 1, i32 19164 }, %struct.anon.89 { i8 2, i32 38329 }], [40 x i8] zeroinitializer }, align 32
@mxc4005_set_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to write reg_control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxc4005_set_scale\00", [46 x i8] zeroinitializer }, align 32
@mxc4005_set_scale._entry_ptr = internal global ptr @mxc4005_set_scale._entry, section ".printk_index", align 4
@mxc4005_read_xyz._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to read axes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxc4005_read_xyz\00", [47 x i8] zeroinitializer }, align 32
@mxc4005_read_xyz._entry_ptr = internal global ptr @mxc4005_read_xyz._entry, section ".printk_index", align 4
@mxc4005_set_trigger_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to update reg_int_mask1\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxc4005_set_trigger_state\00", [38 x i8] zeroinitializer }, align 32
@mxc4005_set_trigger_state._entry_ptr = internal global ptr @mxc4005_set_trigger_state._entry, section ".printk_index", align 4
@mxc4005_clr_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write to reg_int_clr1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxc4005_clr_intr\00", [47 x i8] zeroinitializer }, align 32
@mxc4005_clr_intr._entry_ptr = internal global ptr @mxc4005_clr_intr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 9582, i64 19164, i64 38329]
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"mxc4005_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 487, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 489, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"mxc4005_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 480, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"mxc4005_regmap_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 125, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 400, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 402, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 413, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 417, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"mxc4005_channels\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 290, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"mxc4005_scan_masks\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 268, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"mxc4005_info\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 262, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 431, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 438, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 449, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 452, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"mxc4005_trigger_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 367, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 464, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 126, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 379, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 383, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c"mxc4005_attrs_group\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 92, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"mxc4005_attributes\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 87, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 85, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 159, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 174, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"mxc4005_scale_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 78, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 200, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 144, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 346, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [31 x i8] c"../drivers/iio/accel/mxc4005.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 325, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mxc4005_driver_exit, ptr @__initcall__kmod_mxc4005__289_496_mxc4005_driver_init6, ptr @mxc4005_chip_init._entry, ptr @mxc4005_chip_init._entry_ptr, ptr @mxc4005_clr_intr._entry, ptr @mxc4005_clr_intr._entry_ptr, ptr @mxc4005_driver_exit, ptr @mxc4005_probe._entry, ptr @mxc4005_probe._entry.11, ptr @mxc4005_probe._entry.16, ptr @mxc4005_probe._entry.19, ptr @mxc4005_probe._entry.7, ptr @mxc4005_probe._entry_ptr, ptr @mxc4005_probe._entry_ptr.13, ptr @mxc4005_probe._entry_ptr.18, ptr @mxc4005_probe._entry_ptr.21, ptr @mxc4005_probe._entry_ptr.9, ptr @mxc4005_read_axis._entry, ptr @mxc4005_read_axis._entry_ptr, ptr @mxc4005_read_scale._entry, ptr @mxc4005_read_scale._entry_ptr, ptr @mxc4005_read_xyz._entry, ptr @mxc4005_read_xyz._entry_ptr, ptr @mxc4005_set_scale._entry, ptr @mxc4005_set_scale._entry_ptr, ptr @mxc4005_set_trigger_state._entry, ptr @mxc4005_set_trigger_state._entry_ptr, ptr @mxc4005_driver, ptr @.str, ptr @mxc4005_id, ptr @mxc4005_probe._key, ptr @mxc4005_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mxc4005_probe.__key, ptr @.str.10, ptr @mxc4005_channels, ptr @mxc4005_scan_masks, ptr @mxc4005_info, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @mxc4005_trigger_ops, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mxc4005_attrs_group, ptr @mxc4005_attributes, ptr @iio_const_attr_in_accel_scale_available, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @mxc4005_scale_table, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_read_axis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_read_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_scale_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_set_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_read_xyz._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_set_trigger_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxc4005_clr_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mxc4005_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxc4005_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @mxc4005_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 128) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mxc4005_regmap_config, ptr noundef nonnull @mxc4005_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %2, align 8
  %regmap10 = getelementptr inbounds %struct.mxc4005_data, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %regmap10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %regmap10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i, align 4, !annotation !119
  %call.i = call i32 @regmap_read(ptr noundef %call1, i32 noundef 14, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i121 = icmp slt i32 %call.i, 0
  br i1 %cmp.i121, label %do.end15, label %do.body1.i

do.body1.i:                                       ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc4005_chip_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc4005_probe, %if.then5.i)) #6
          to label %do.body18 [label %if.then5.i], !srcloc !120

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc4005_chip_init.__UNIQUE_ID_ddebug288, ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %10) #6
  br label %do.body18

do.end15:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.23) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

do.body18:                                        ; preds = %if.then5.i, %do.body1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %mutex = getelementptr inbounds %struct.mxc4005_data, ptr %2, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @mxc4005_probe.__key) #6
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mxc4005_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mxc4005_scan_masks, ptr %available_scan_masks, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %name, align 8
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mxc4005_info, ptr %info, align 8
  %call22 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @mxc4005_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end29:                                         ; preds = %do.body18
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp30 = icmp sgt i32 %20, 0
  br i1 %cmp30, label %if.then31, label %if.end29.if.end66_crit_edge

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then31:                                        ; preds = %if.end29
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 8
  %call34 = call i32 @iio_device_id(ptr noundef nonnull %call) #6
  %call35 = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %22, i32 noundef %call34) #6
  %dready_trig = getelementptr inbounds %struct.mxc4005_data, ptr %2, i32 0, i32 3
  %23 = ptrtoint ptr %dready_trig to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call35, ptr %dready_trig, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %if.then31.cleanup_crit_edge, label %if.end39

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.then31
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call43 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %25, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8194, ptr noundef nonnull @.str.15, ptr noundef nonnull %call35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dready_trig, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mxc4005_trigger_ops, ptr %27, align 8
  %29 = load ptr, ptr %dready_trig, align 4
  %driver_data.i.i122 = getelementptr inbounds %struct.iio_trigger, ptr %29, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i122 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %driver_data.i.i122, align 4
  %31 = load ptr, ptr %dready_trig, align 4
  %trig = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %32 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %31, i32 0, i32 4
  %call.i123 = call ptr @get_device(ptr noundef %dev.i) #6
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %owner.i, align 4
  call void @__module_get(ptr noundef %34) #6
  %35 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dready_trig, align 4
  %call58 = call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %36, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end50.if.end66_crit_edge, label %do.end63

if.end50.if.end66_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end50.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  %call68 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end63, %do.end48, %if.then31.cleanup_crit_edge, %do.end27, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %call.i, %do.end15 ], [ %call22, %do.end27 ], [ %call43, %do.end48 ], [ %call58, %do.end63 ], [ %call68, %if.end66 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %scan.i = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 3, ptr noundef %scan.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mxc4005_read_xyz.exit.thread, label %if.end

mxc4005_read_xyz.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #9
  br label %err

if.end:                                           ; preds = %entry
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scan_timestamp.i, align 8, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %private, i32 0, i32 6
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %13, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan.i, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %11, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i8 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan.i) #6
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %mxc4005_read_xyz.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %16) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mxc4005_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  %switch.cast = trunc i32 %switch.tableidx to i13
  %switch.downshift = lshr i13 -3071, %switch.cast
  %1 = and i13 %switch.downshift, 1
  %2 = sext i13 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i13 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mxc4005_is_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 12
  %switch.cast = trunc i32 %switch.tableidx to i12
  %switch.downshift = lshr i12 -961, %switch.cast
  %1 = and i12 %switch.downshift, 1
  %2 = sext i12 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i12 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.i29 = alloca i32, align 4
  %reg.i = alloca i16, align 2
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
    i32 2, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cond = icmp eq i32 %4, 3
  br i1 %cond, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %5 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %6, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %reg.i, align 2, !annotation !119
  %regmap.i = getelementptr inbounds %struct.mxc4005_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %8, ptr noundef nonnull %reg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mxc4005_read_axis.exit.thread, label %mxc4005_read_axis.exit

mxc4005_read_axis.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  br label %cleanup

mxc4005_read_axis.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg.i, align 2
  %conv.i28 = zext i16 %15 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift, align 1
  %conv = zext i8 %17 to i32
  %shr41 = lshr i32 %conv.i28, %conv
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %realbits, align 1
  %20 = sub i8 32, %19
  %conv1.i = zext i8 %20 to i32
  %shl.i = shl i32 %shr41, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i29) #6
  %22 = ptrtoint ptr %reg.i29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg.i29, align 4, !annotation !119
  %regmap.i30 = getelementptr inbounds %struct.mxc4005_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i30, align 8
  %call.i31 = call i32 @regmap_read(ptr noundef %24, i32 noundef 13, ptr noundef nonnull %reg.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i32 = icmp slt i32 %call.i31, 0
  br i1 %cmp.i32, label %do.end.i33, label %if.end.i34

do.end.i33:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.30) #9
  br label %mxc4005_read_scale.exit.thread

if.end.i34:                                       ; preds = %sw.bb9
  %27 = ptrtoint ptr %reg.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %28)
  %cmp2.i = icmp ugt i32 %28, 95
  br i1 %cmp2.i, label %if.end.i34.mxc4005_read_scale.exit.thread_crit_edge, label %mxc4005_read_scale.exit

if.end.i34.mxc4005_read_scale.exit.thread_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %mxc4005_read_scale.exit.thread

mxc4005_read_scale.exit.thread:                   ; preds = %if.end.i34.mxc4005_read_scale.exit.thread_crit_edge, %do.end.i33
  %retval.0.i36.ph = phi i32 [ -22, %if.end.i34.mxc4005_read_scale.exit.thread_crit_edge ], [ %call.i31, %do.end.i33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i29) #6
  br label %cleanup

mxc4005_read_scale.exit:                          ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i35 = lshr i32 %28, 5
  %scale.i = getelementptr [3 x %struct.anon.89], ptr @mxc4005_scale_table, i32 0, i32 %shr.i35, i32 1
  %29 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scale.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i29) #6
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %mxc4005_read_scale.exit, %mxc4005_read_scale.exit.thread, %mxc4005_read_axis.exit, %mxc4005_read_axis.exit.thread, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %mxc4005_read_scale.exit ], [ 1, %mxc4005_read_axis.exit ], [ -16, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %mxc4005_read_axis.exit.thread ], [ %retval.0.i36.ph, %mxc4005_read_scale.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp.not, %cond
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %val2, label %if.end.cleanup_crit_edge [
    i32 9582, label %if.end.if.then.i_crit_edge
    i32 19164, label %if.then.fold.split.i
    i32 38329, label %if.then.fold.split15.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split15.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %i.013.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 32, %if.then.fold.split.i ], [ 64, %if.then.fold.split15.i ]
  %regmap.i = getelementptr inbounds %struct.mxc4005_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 13, i32 noundef 96, i32 noundef %i.013.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i ], [ %call.i.i, %if.then.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxc4005_set_trigger_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %mutex = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %. = select i1 %state, i32 1, i32 -2
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 11, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %frombool = zext i1 %state to i8
  %trigger_enabled = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %trigger_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %trigger_enabled, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5
  %retval.0 = phi i32 [ %call4, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxc4005_trigger_reen(ptr nocapture noundef readonly %trig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dready_trig = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dready_trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dready_trig, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.mxc4005_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !101, !102, !103, !105, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_mxc4005__289_496_mxc4005_driver_init6, !1, !"__initcall__kmod_mxc4005__289_496_mxc4005_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/mxc4005.c", i32 496, i32 1}
!2 = !{ptr @__exitcall_mxc4005_driver_exit, !1, !"__exitcall_mxc4005_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/mxc4005.c", i32 498, i32 1}
!5 = !{ptr @__UNIQUE_ID_file291, !6, !"__UNIQUE_ID_file291", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/mxc4005.c", i32 499, i32 1}
!7 = !{ptr @__UNIQUE_ID_license292, !6, !"__UNIQUE_ID_license292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/mxc4005.c", i32 500, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/mxc4005.c", i32 489, i32 11}
!12 = !{ptr @mxc4005_driver, !13, !"mxc4005_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/mxc4005.c", i32 487, i32 26}
!14 = !{ptr @mxc4005_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/mxc4005.c", i32 400, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/accel/mxc4005.c", i32 402, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mxc4005_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mxc4005_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/mxc4005.c", i32 413, i32 3}
!27 = !{ptr @mxc4005_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mxc4005_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mxc4005_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/iio/accel/mxc4005.c", i32 417, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/mxc4005.c", i32 431, i32 3}
!34 = !{ptr @mxc4005_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxc4005_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/mxc4005.c", i32 438, i32 11}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/accel/mxc4005.c", i32 449, i32 7}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/accel/mxc4005.c", i32 452, i32 4}
!42 = !{ptr @mxc4005_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mxc4005_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/accel/mxc4005.c", i32 464, i32 4}
!46 = !{ptr @mxc4005_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mxc4005_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/accel/mxc4005.c", i32 126, i32 10}
!50 = !{ptr @mxc4005_regmap_config, !51, !"mxc4005_regmap_config", i1 false, i1 false}
!51 = !{!"../drivers/iio/accel/mxc4005.c", i32 125, i32 35}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/accel/mxc4005.c", i32 379, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxc4005_chip_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxc4005_chip_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/accel/mxc4005.c", i32 383, i32 2}
!59 = !{ptr @mxc4005_chip_init.__UNIQUE_ID_ddebug288, !58, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!60 = !{ptr @mxc4005_channels, !61, !"mxc4005_channels", i1 false, i1 false}
!61 = !{!"../drivers/iio/accel/mxc4005.c", i32 290, i32 35}
!62 = !{ptr @mxc4005_scan_masks, !63, !"mxc4005_scan_masks", i1 false, i1 false}
!63 = !{!"../drivers/iio/accel/mxc4005.c", i32 268, i32 28}
!64 = !{ptr @mxc4005_info, !65, !"mxc4005_info", i1 false, i1 false}
!65 = !{!"../drivers/iio/accel/mxc4005.c", i32 262, i32 30}
!66 = !{ptr @mxc4005_attrs_group, !67, !"mxc4005_attrs_group", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/mxc4005.c", i32 92, i32 37}
!68 = !{ptr @mxc4005_attributes, !69, !"mxc4005_attributes", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/mxc4005.c", i32 87, i32 26}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/mxc4005.c", i32 85, i32 8}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @iio_const_attr_in_accel_scale_available, !71, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/accel/mxc4005.c", i32 159, i32 3}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mxc4005_read_axis._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mxc4005_read_axis._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/accel/mxc4005.c", i32 174, i32 3}
!81 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mxc4005_read_scale._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mxc4005_read_scale._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mxc4005_scale_table, !85, !"mxc4005_scale_table", i1 false, i1 false}
!85 = !{!"../drivers/iio/accel/mxc4005.c", i32 78, i32 3}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/accel/mxc4005.c", i32 200, i32 5}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mxc4005_set_scale._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mxc4005_set_scale._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/accel/mxc4005.c", i32 144, i32 3}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mxc4005_read_xyz._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mxc4005_read_xyz._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mxc4005_trigger_ops, !97, !"mxc4005_trigger_ops", i1 false, i1 false}
!97 = !{!"../drivers/iio/accel/mxc4005.c", i32 367, i32 37}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/accel/mxc4005.c", i32 346, i32 3}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mxc4005_set_trigger_state._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @mxc4005_set_trigger_state._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/accel/mxc4005.c", i32 325, i32 3}
!105 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mxc4005_clr_intr._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mxc4005_clr_intr._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @mxc4005_id, !109, !"mxc4005_id", i1 false, i1 false}
!109 = !{!"../drivers/iio/accel/mxc4005.c", i32 480, i32 35}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{!"auto-init"}
!120 = !{i64 2148962861, i64 2148962866, i64 2148962879, i64 2148962923, i64 2148962957, i64 2148962978}
!121 = !{i8 0, i8 2}
