; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/isl29501.c_pt.bc'
source_filename = "../drivers/iio/proximity/isl29501.c"
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.isl29501_register_desc = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.isl29501_private = type { ptr, %struct.mutex, [4 x i32] }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_isl29501__291_1014_isl29501_driver_init6 = internal global ptr @isl29501_driver_init, section ".initcall6.init", align 4
@isl29501_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @isl29501_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @isl29501_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_isl29501_driver_exit = internal global ptr @isl29501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [56 x i8] c"isl29501.author=Mathieu Othacehe <m.othacehe@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [59 x i8] c"isl29501.description=ISL29501 Time of Flight sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [45 x i8] c"isl29501.file=drivers/iio/proximity/isl29501\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"isl29501.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"isl29501\00", [23 x i8] zeroinitializer }, align 32
@isl29501_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"isl29501\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@isl29501_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&isl29501->lock\00", [16 x i8] zeroinitializer }, align 32
@isl29501_channels = internal constant { [6 x %struct.iio_chan_spec], [144 x i8] } { [6 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 266240, i32 0, ptr null, i32 0, ptr @isl29501_ext_info, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 33, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 1, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 32 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 37, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 16, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@isl29501_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @isl29501_attribute_group, ptr @isl29501_read_raw, ptr null, ptr null, ptr @isl29501_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@isl29501_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 985, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to setup iio triggered buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl29501_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/proximity/isl29501.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl29501_probe._entry_ptr = internal global ptr @isl29501_probe._entry, section ".printk_index", align 4
@isl29501_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 917, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reading device id\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl29501_init_chip\00", [45 x i8] zeroinitializer }, align 32
@isl29501_init_chip._entry_ptr = internal global ptr @isl29501_init_chip._entry, section ".printk_index", align 4
@isl29501_init_chip._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.4, i32 924, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", [61 x i8] zeroinitializer }, align 32
@isl29501_init_chip._entry_ptr.11 = internal global ptr @isl29501_init_chip._entry.9, section ".printk_index", align 4
@isl29501_reset_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot reset registers %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"isl29501_reset_registers\00", [39 x i8] zeroinitializer }, align 32
@isl29501_reset_registers._entry_ptr = internal global ptr @isl29501_reset_registers._entry, section ".printk_index", align 4
@isl29501_reset_registers._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot reset state machine %d\0A\00", [33 x i8] zeroinitializer }, align 32
@isl29501_reset_registers._entry_ptr.16 = internal global ptr @isl29501_reset_registers._entry.14, section ".printk_index", align 4
@isl29501_begin_acquisition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot begin acquisition %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"isl29501_begin_acquisition\00", [37 x i8] zeroinitializer }, align 32
@isl29501_begin_acquisition._entry_ptr = internal global ptr @isl29501_begin_acquisition._entry, section ".printk_index", align 4
@isl29501_ext_info = internal constant { [7 x %struct.iio_chan_spec_ext_info], [52 x i8] } { [7 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.19, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 4 }, %struct.iio_chan_spec_ext_info { ptr @.str.20, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 5 }, %struct.iio_chan_spec_ext_info { ptr @.str.21, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 7 }, %struct.iio_chan_spec_ext_info { ptr @.str.22, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 8 }, %struct.iio_chan_spec_ext_info { ptr @.str.23, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 9 }, %struct.iio_chan_spec_ext_info { ptr @.str.24, i32 0, ptr @isl29501_read_ext, ptr @isl29501_write_ext, i32 10 }, %struct.iio_chan_spec_ext_info zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"agc_gain\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agc_gain_bias\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calib_phase_temp_a\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calib_phase_temp_b\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calib_phase_light_a\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calib_phase_light_b\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@isl29501_registers = internal constant { [17 x %struct.isl29501_register_desc], [62 x i8] } { [17 x %struct.isl29501_register_desc] [%struct.isl29501_register_desc { i8 -47, i8 -46 }, %struct.isl29501_register_desc { i8 -40, i8 -39 }, %struct.isl29501_register_desc { i8 0, i8 -30 }, %struct.isl29501_register_desc { i8 0, i8 -29 }, %struct.isl29501_register_desc { i8 -26, i8 -25 }, %struct.isl29501_register_desc { i8 42, i8 43 }, %struct.isl29501_register_desc { i8 0, i8 51 }, %struct.isl29501_register_desc { i8 0, i8 52 }, %struct.isl29501_register_desc { i8 0, i8 57 }, %struct.isl29501_register_desc { i8 0, i8 54 }, %struct.isl29501_register_desc { i8 0, i8 59 }, %struct.isl29501_register_desc { i8 47, i8 48 }, %struct.isl29501_register_desc { i8 0, i8 49 }, %struct.isl29501_register_desc { i8 0, i8 16 }, %struct.isl29501_register_desc { i8 0, i8 17 }, %struct.isl29501_register_desc { i8 0, i8 -112 }, %struct.isl29501_register_desc { i8 0, i8 -111 }], [62 x i8] zeroinitializer }, align 32
@isl29501_write_ext.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"isl29501_write_ext\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found exp of corr(%d) = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@isl29501_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @isl29501_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@isl29501_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_out_current_scale_available, i64 4), ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.28, %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_out_current_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.30, %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"0.00007 0.00014 0.00028 0.00057 0.00114 0.00228 0.00455 0.00910 0.01820 0.03640 0.07281 0.14561\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"0.0039 0.0078 0.0118 0.0157 0.0196 0.0235 0.0275 0.0314 0.0352 0.0392 0.0431 0.0471 0.0510 0.0549 0.0588\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"out_current_scale_available\00", [36 x i8] zeroinitializer }, align 32
@isl29501_current_scale_table = internal constant { [15 x [2 x i32]], [40 x i8] } { [15 x [2 x i32]] [[2 x i32] [i32 0, i32 3900], [2 x i32] [i32 0, i32 7800], [2 x i32] [i32 0, i32 11800], [2 x i32] [i32 0, i32 15700], [2 x i32] [i32 0, i32 19600], [2 x i32] [i32 0, i32 23500], [2 x i32] [i32 0, i32 27500], [2 x i32] [i32 0, i32 31400], [2 x i32] [i32 0, i32 35200], [2 x i32] [i32 0, i32 39200], [2 x i32] [i32 0, i32 43100], [2 x i32] [i32 0, i32 47100], [2 x i32] [i32 0, i32 51000], [2 x i32] [i32 0, i32 54900], [2 x i32] [i32 0, i32 58800]], [40 x i8] zeroinitializer }, align 32
@isl29501_int_time = internal constant { [12 x [2 x i32]], [32 x i8] } { [12 x [2 x i32]] [[2 x i32] [i32 0, i32 70], [2 x i32] [i32 0, i32 140], [2 x i32] [i32 0, i32 280], [2 x i32] [i32 0, i32 570], [2 x i32] [i32 0, i32 1140], [2 x i32] [i32 0, i32 2280], [2 x i32] [i32 0, i32 4550], [2 x i32] [i32 0, i32 9100], [2 x i32] [i32 0, i32 18200], [2 x i32] [i32 0, i32 36400], [2 x i32] [i32 0, i32 72810], [2 x i32] [i32 0, i32 145610]], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 5, i64 12, i64 18]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 7, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 7, i64 8, i64 9, i64 33]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 5, i64 12, i64 18]
@__sancov_gen_cov_switch_values.38 = internal global [14 x i64] [i64 12, i64 32, i64 70, i64 140, i64 280, i64 570, i64 1140, i64 2280, i64 4550, i64 9100, i64 18200, i64 36400, i64 72810, i64 145610]
@__sancov_gen_cov_switch_values.39 = internal global [17 x i64] [i64 15, i64 32, i64 3900, i64 7800, i64 11800, i64 15700, i64 19600, i64 23500, i64 27500, i64 31400, i64 35200, i64 39200, i64 43100, i64 47100, i64 51000, i64 54900, i64 58800]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"isl29501_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1007, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1009, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"isl29501_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 992, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 968, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"isl29501_channels\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 490, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"isl29501_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 905, i32 30 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 985, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 917, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 922, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 547, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 556, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 570, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"isl29501_ext_info\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 477, i32 44 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 478, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 479, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 480, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 481, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 482, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 483, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 295, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"isl29501_registers\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 138, i32 44 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 431, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"isl29501_attribute_group\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 586, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c"isl29501_attributes\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 580, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [43 x i8] c"iio_const_attr_out_current_scale_available\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 576, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 577, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [29 x i8] c"isl29501_current_scale_table\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 590, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"isl29501_int_time\00", align 1
@___asan_gen_.180 = private constant [36 x i8] c"../drivers/iio/proximity/isl29501.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 597, i32 18 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_isl29501_driver_exit, ptr @__initcall__kmod_isl29501__291_1014_isl29501_driver_init6, ptr @isl29501_begin_acquisition._entry, ptr @isl29501_begin_acquisition._entry_ptr, ptr @isl29501_driver_exit, ptr @isl29501_init_chip._entry, ptr @isl29501_init_chip._entry.9, ptr @isl29501_init_chip._entry_ptr, ptr @isl29501_init_chip._entry_ptr.11, ptr @isl29501_probe._entry, ptr @isl29501_probe._entry_ptr, ptr @isl29501_reset_registers._entry, ptr @isl29501_reset_registers._entry.14, ptr @isl29501_reset_registers._entry_ptr, ptr @isl29501_reset_registers._entry_ptr.16, ptr @isl29501_driver, ptr @.str, ptr @isl29501_id, ptr @isl29501_probe.__key, ptr @.str.1, ptr @isl29501_channels, ptr @isl29501_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @isl29501_ext_info, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @isl29501_registers, ptr @.str.26, ptr @.str.27, ptr @isl29501_attribute_group, ptr @isl29501_attributes, ptr @iio_const_attr_integration_time_available, ptr @iio_const_attr_out_current_scale_available, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @isl29501_current_scale_table, ptr @isl29501_int_time], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_channels to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_init_chip._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_reset_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_reset_registers._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_begin_acquisition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_ext_info to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_registers to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_out_current_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_current_scale_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl29501_int_time to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @isl29501_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isl29501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @isl29501_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 112) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  store ptr %client, ptr %1, align 4
  %lock = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @isl29501_probe.__key) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br i1 %cmp2.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.10, i32 noundef %call.i, i32 noundef 0) #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -80, i8 noundef zeroext -41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.12, i32 noundef %call.i.i) #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end9.i
  %call3.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -80, i8 noundef zeroext -47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  br i1 %cmp4.i.i, label %do.end8.i.i, label %if.end13.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev10.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.15, i32 noundef %call3.i.i) #10
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i.i
  %call.i24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -80, i8 noundef zeroext 73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp.i25.i = icmp slt i32 %call.i24.i, 0
  br i1 %cmp.i25.i, label %do.end.i27.i, label %if.end5

do.end.i27.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev.i26.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26.i, ptr noundef nonnull @.str.17, i32 noundef %call.i24.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end13.i
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @isl29501_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name6 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %name6, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @isl29501_info, ptr %info, align 8
  %call8 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @isl29501_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end13, %do.end.i27.i, %do.end8.i.i, %do.end.i.i, %do.end6.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ %call17, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end.i.i ], [ %call3.i.i, %do.end8.i.i ], [ %call.i24.i, %do.end.i27.i ], [ -19, %do.end6.i ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %buffer = alloca [4 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #7
  %6 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %5, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.isl29501_private, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.err.i_crit_edge, label %if.end.i

if.then.err.i_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end.i:                                         ; preds = %if.then
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call10.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext -46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end.i.err.i_crit_edge, label %if.end14.i

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i = shl i32 %call.i, 8
  %phi.bo.i = and i32 %phi.cast.i, 65280
  %phi.cast36.i = and i32 %call10.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %add.i = or i32 %phi.cast36.i, %phi.bo.i
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %buffer, align 8
  br label %if.end

err.i:                                            ; preds = %if.end.i.err.i_crit_edge, %if.then.err.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %if.end

if.end:                                           ; preds = %err.i, %if.end14.i, %entry.if.end_crit_edge
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scan_timestamp.i, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %p, i32 0, i32 6
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %19, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i10 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %buffer) #7
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_read_ext(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %gain = alloca i32, align 4
  %coeff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain) #7
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gain, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coeff) #7
  %3 = ptrtoint ptr %coeff to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %coeff, align 4, !annotation !102
  %4 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %private, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge30
    i32 7, label %entry.sw.bb2_crit_edge
    i32 8, label %entry.sw.bb2_crit_edge31
    i32 9, label %entry.sw.bb2_crit_edge32
    i32 10, label %entry.sw.bb2_crit_edge33
  ]

entry.sw.bb2_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge30
  %call1 = call fastcc i32 @isl29501_register_read(ptr noundef %1, i32 noundef %private, ptr noundef nonnull %gain)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gain, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge31, %entry.sw.bb2_crit_edge32, %entry.sw.bb2_crit_edge33
  %lock.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call10.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br i1 %cmp11.i, label %sw.bb2.cleanup_crit_edge, label %if.end6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  %call7 = call fastcc i32 @isl29501_register_read(ptr noundef %1, i32 noundef %private, ptr noundef nonnull %coeff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i = and i32 %call10.i, 255
  %9 = ptrtoint ptr %coeff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coeff, align 4
  %shl = shl i32 %10, %phi.cast36.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %if.end
  %value.0 = phi i32 [ %shl, %if.end10 ], [ %6, %if.end ]
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %value.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %sw.epilog ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call10.i, %sw.bb2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coeff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_write_ext(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !102
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup47_crit_edge

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end:                                           ; preds = %entry
  %3 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %private, label %if.end.cleanup47_crit_edge [
    i32 5, label %sw.bb
    i32 7, label %if.end.sw.bb8_crit_edge
    i32 8, label %if.end.sw.bb8_crit_edge128
    i32 9, label %if.end.sw.bb8_crit_edge129
    i32 10, label %if.end.sw.bb8_crit_edge130
  ]

if.end.sw.bb8_crit_edge130:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end.sw.bb8_crit_edge129:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end.sw.bb8_crit_edge128:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

sw.bb:                                            ; preds = %if.end
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp = icmp ugt i32 %5, 65535
  br i1 %cmp, label %sw.bb.cleanup47_crit_edge, label %if.end3.i

sw.bb.cleanup47_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end3.i:                                        ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %shr.i = lshr i32 %5, 8
  %conv.i = trunc i32 %shr.i to i8
  %call.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 42, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %isl29501_register_write.exit.thread, label %isl29501_register_write.exit

isl29501_register_write.exit.thread:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup47

isl29501_register_write.exit:                     ; preds = %if.end3.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv14.i = trunc i32 %5 to i8
  %call15.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 43, i8 noundef zeroext %conv14.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp5 = icmp slt i32 %call15.i, 0
  br i1 %cmp5, label %isl29501_register_write.exit.cleanup47_crit_edge, label %isl29501_register_write.exit.sw.epilog_crit_edge

isl29501_register_write.exit.sw.epilog_crit_edge: ; preds = %isl29501_register_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

isl29501_register_write.exit.cleanup47_crit_edge: ; preds = %isl29501_register_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

sw.bb8:                                           ; preds = %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge128, %if.end.sw.bb8_crit_edge129, %if.end.sw.bb8_crit_edge130
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8355840, i32 %11)
  %cmp9 = icmp ugt i32 %11, 8355840
  br i1 %cmp9, label %sw.bb8.cleanup47_crit_edge, label %if.end11

sw.bb8.cleanup47_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end11:                                         ; preds = %sw.bb8
  %switch.tableidx = add i32 %private, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 4
  br i1 %12, label %isl29501_set_shadow_coeff.exit, label %if.end11.cleanup47_crit_edge

if.end11.cleanup47_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

isl29501_set_shadow_coeff.exit:                   ; preds = %if.end11
  %arrayidx.i = getelementptr %struct.isl29501_private, ptr %1, i32 0, i32 2, i32 %switch.tableidx
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %arrayidx.i, align 4
  br label %for.body

for.cond26.preheader:                             ; preds = %do.end
  %lock.i.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  br label %for.body28

for.body:                                         ; preds = %do.end.for.body_crit_edge, %isl29501_set_shadow_coeff.exit
  %i.0124 = phi i32 [ 0, %isl29501_set_shadow_coeff.exit ], [ %inc, %do.end.for.body_crit_edge ]
  %max_exp.0123 = phi i32 [ 0, %isl29501_set_shadow_coeff.exit ], [ %18, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.isl29501_private, ptr %1, i32 0, i32 2, i32 %i.0124
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp.i87 = icmp ult i32 %15, 128
  br i1 %cmp.i87, label %for.body.isl29501_find_corr_exp.exit_crit_edge, label %while.cond.preheader.i

for.body.isl29501_find_corr_exp.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.cond.preheader.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %cmp1.i88 = icmp ugt i32 %15, 255
  br i1 %cmp1.i88, label %while.body.i, label %while.cond.preheader.i.isl29501_find_corr_exp.exit_crit_edge

while.cond.preheader.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.i:                                     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %15)
  %cmp1.1.i = icmp ugt i32 %15, 511
  br i1 %cmp1.1.i, label %while.body.1.i, label %while.body.i.isl29501_find_corr_exp.exit_crit_edge

while.body.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.1.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %15)
  %cmp1.2.i = icmp ugt i32 %15, 1023
  br i1 %cmp1.2.i, label %while.body.2.i, label %while.body.1.i.isl29501_find_corr_exp.exit_crit_edge

while.body.1.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %15)
  %cmp1.3.i = icmp ugt i32 %15, 2047
  br i1 %cmp1.3.i, label %while.body.3.i, label %while.body.2.i.isl29501_find_corr_exp.exit_crit_edge

while.body.2.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %15)
  %cmp1.4.i = icmp ugt i32 %15, 4095
  br i1 %cmp1.4.i, label %while.body.4.i, label %while.body.3.i.isl29501_find_corr_exp.exit_crit_edge

while.body.3.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %15)
  %cmp1.5.i = icmp ugt i32 %15, 8191
  br i1 %cmp1.5.i, label %while.body.5.i, label %while.body.4.i.isl29501_find_corr_exp.exit_crit_edge

while.body.4.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %15)
  %cmp1.6.i = icmp ugt i32 %15, 16383
  br i1 %cmp1.6.i, label %while.body.6.i, label %while.body.5.i.isl29501_find_corr_exp.exit_crit_edge

while.body.5.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %15)
  %cmp1.7.i = icmp ugt i32 %15, 32767
  br i1 %cmp1.7.i, label %while.body.7.i, label %while.body.6.i.isl29501_find_corr_exp.exit_crit_edge

while.body.6.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.7.i:                                   ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %cmp1.8.i = icmp ugt i32 %15, 65535
  br i1 %cmp1.8.i, label %while.body.8.i, label %while.body.7.i.isl29501_find_corr_exp.exit_crit_edge

while.body.7.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.8.i:                                   ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %15)
  %cmp1.9.i = icmp ugt i32 %15, 131071
  br i1 %cmp1.9.i, label %while.body.9.i, label %while.body.8.i.isl29501_find_corr_exp.exit_crit_edge

while.body.8.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.9.i:                                   ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %15)
  %cmp1.10.i = icmp ugt i32 %15, 262143
  br i1 %cmp1.10.i, label %while.body.10.i, label %while.body.9.i.isl29501_find_corr_exp.exit_crit_edge

while.body.9.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.10.i:                                  ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %15)
  %cmp1.11.i = icmp ugt i32 %15, 524287
  br i1 %cmp1.11.i, label %while.body.11.i, label %while.body.10.i.isl29501_find_corr_exp.exit_crit_edge

while.body.10.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.11.i:                                  ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %15)
  %cmp1.12.i = icmp ugt i32 %15, 1048575
  br i1 %cmp1.12.i, label %while.body.12.i, label %while.body.11.i.isl29501_find_corr_exp.exit_crit_edge

while.body.11.i.isl29501_find_corr_exp.exit_crit_edge: ; preds = %while.body.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_find_corr_exp.exit

while.body.12.i:                                  ; preds = %while.body.11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %15)
  %cmp1.13.i = icmp ugt i32 %15, 2097151
  %spec.select.i = select i1 %cmp1.13.i, i32 15, i32 14
  br label %isl29501_find_corr_exp.exit

isl29501_find_corr_exp.exit:                      ; preds = %while.body.12.i, %while.body.11.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.10.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.9.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.8.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.7.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.6.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.5.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.4.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.3.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.2.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.1.i.isl29501_find_corr_exp.exit_crit_edge, %while.body.i.isl29501_find_corr_exp.exit_crit_edge, %while.cond.preheader.i.isl29501_find_corr_exp.exit_crit_edge, %for.body.isl29501_find_corr_exp.exit_crit_edge
  %retval.0.i89 = phi i32 [ 0, %for.body.isl29501_find_corr_exp.exit_crit_edge ], [ 1, %while.cond.preheader.i.isl29501_find_corr_exp.exit_crit_edge ], [ 2, %while.body.i.isl29501_find_corr_exp.exit_crit_edge ], [ 3, %while.body.1.i.isl29501_find_corr_exp.exit_crit_edge ], [ 4, %while.body.2.i.isl29501_find_corr_exp.exit_crit_edge ], [ 5, %while.body.3.i.isl29501_find_corr_exp.exit_crit_edge ], [ 6, %while.body.4.i.isl29501_find_corr_exp.exit_crit_edge ], [ 7, %while.body.5.i.isl29501_find_corr_exp.exit_crit_edge ], [ 8, %while.body.6.i.isl29501_find_corr_exp.exit_crit_edge ], [ 9, %while.body.7.i.isl29501_find_corr_exp.exit_crit_edge ], [ 10, %while.body.8.i.isl29501_find_corr_exp.exit_crit_edge ], [ 11, %while.body.9.i.isl29501_find_corr_exp.exit_crit_edge ], [ 12, %while.body.10.i.isl29501_find_corr_exp.exit_crit_edge ], [ 13, %while.body.11.i.isl29501_find_corr_exp.exit_crit_edge ], [ %spec.select.i, %while.body.12.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @isl29501_write_ext.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@isl29501_write_ext, %if.then22)) #7
          to label %do.end [label %if.then22], !srcloc !103

if.then22:                                        ; preds = %isl29501_find_corr_exp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @isl29501_write_ext.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %15, i32 noundef %retval.0.i89) #7
  br label %do.end

do.end:                                           ; preds = %if.then22, %isl29501_find_corr_exp.exit
  %18 = call i32 @llvm.smax.i32(i32 %max_exp.0123, i32 %retval.0.i89)
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond26.preheader, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body28:                                       ; preds = %for.inc40.for.body28_crit_edge, %for.cond26.preheader
  %i.1125 = phi i32 [ 0, %for.cond26.preheader ], [ %inc41, %for.inc40.for.body28_crit_edge ]
  %arrayidx31 = getelementptr %struct.isl29501_private, ptr %1, i32 0, i32 2, i32 %i.1125
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool32.not = icmp eq i32 %20, 0
  br i1 %tobool32.not, label %for.body28.for.inc40_crit_edge, label %if.end34

for.body28.for.inc40_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40

if.end34:                                         ; preds = %for.body28
  %shr = ashr i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1125)
  %21 = icmp ult i32 %i.1125, 4
  br i1 %21, label %switch.lookup, label %if.end34.cleanup47_crit_edge

if.end34.cleanup47_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

switch.lookup:                                    ; preds = %if.end34
  %switch.offset = add nuw i32 %i.1125, 7
  %arrayidx.i.i = getelementptr [17 x %struct.isl29501_register_desc], ptr @isl29501_registers, i32 0, i32 %switch.offset
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shr)
  %cmp.i.i = icmp ugt i32 %shr, 255
  %or.cond.i.i = and i1 %cmp.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %shr)
  %cmp1.i.i = icmp ugt i32 %shr, 65535
  %or.cond28.i.i = or i1 %cmp1.i.i, %or.cond.i.i
  br i1 %or.cond28.i.i, label %switch.lookup.cleanup47_crit_edge, label %if.end3.i.i

switch.lookup.cleanup47_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end3.i.i:                                      ; preds = %switch.lookup
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  br i1 %tobool.not.i.i, label %if.end3.i.i.isl29501_write_coeff.exit_crit_edge, label %if.then6.i.i

if.end3.i.i.isl29501_write_coeff.exit_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_write_coeff.exit

if.then6.i.i:                                     ; preds = %if.end3.i.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %shr.i.i = lshr i32 %shr, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %23, i8 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %isl29501_write_coeff.exit.thread119, label %if.then6.i.i.isl29501_write_coeff.exit_crit_edge

if.then6.i.i.isl29501_write_coeff.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_write_coeff.exit

isl29501_write_coeff.exit.thread119:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %cleanup47

isl29501_write_coeff.exit:                        ; preds = %if.then6.i.i.isl29501_write_coeff.exit_crit_edge, %if.end3.i.i.isl29501_write_coeff.exit_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %lsb.i.i = getelementptr [17 x %struct.isl29501_register_desc], ptr @isl29501_registers, i32 0, i32 %switch.offset, i32 1
  %28 = ptrtoint ptr %lsb.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lsb.i.i, align 1
  %conv14.i.i = trunc i32 %shr to i8
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext %29, i8 noundef zeroext %conv14.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp36 = icmp slt i32 %call15.i.i, 0
  br i1 %cmp36, label %isl29501_write_coeff.exit.cleanup47_crit_edge, label %isl29501_write_coeff.exit.for.inc40_crit_edge

isl29501_write_coeff.exit.for.inc40_crit_edge:    ; preds = %isl29501_write_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc40

isl29501_write_coeff.exit.cleanup47_crit_edge:    ; preds = %isl29501_write_coeff.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.inc40:                                        ; preds = %isl29501_write_coeff.exit.for.inc40_crit_edge, %for.body28.for.inc40_crit_edge
  %inc41 = add nuw nsw i32 %i.1125, 1
  %exitcond127.not = icmp eq i32 %inc41, 4
  br i1 %exitcond127.not, label %isl29501_register_write.exit105, label %for.inc40.for.body28_crit_edge

for.inc40.for.body28_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

isl29501_register_write.exit105:                  ; preds = %for.inc40
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %conv14.i99 = trunc i32 %18 to i8
  %call15.i100 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 51, i8 noundef zeroext %conv14.i99) #7
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i100)
  %cmp44 = icmp slt i32 %call15.i100, 0
  br i1 %cmp44, label %isl29501_register_write.exit105.cleanup47_crit_edge, label %isl29501_register_write.exit105.sw.epilog_crit_edge

isl29501_register_write.exit105.sw.epilog_crit_edge: ; preds = %isl29501_register_write.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

isl29501_register_write.exit105.cleanup47_crit_edge: ; preds = %isl29501_register_write.exit105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

sw.epilog:                                        ; preds = %isl29501_register_write.exit105.sw.epilog_crit_edge, %isl29501_register_write.exit.sw.epilog_crit_edge
  br label %cleanup47

cleanup47:                                        ; preds = %sw.epilog, %isl29501_register_write.exit105.cleanup47_crit_edge, %isl29501_write_coeff.exit.cleanup47_crit_edge, %isl29501_write_coeff.exit.thread119, %switch.lookup.cleanup47_crit_edge, %if.end34.cleanup47_crit_edge, %if.end11.cleanup47_crit_edge, %sw.bb8.cleanup47_crit_edge, %isl29501_register_write.exit.cleanup47_crit_edge, %isl29501_register_write.exit.thread, %sw.bb.cleanup47_crit_edge, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  %retval.2 = phi i32 [ %len, %sw.epilog ], [ %call1, %entry.cleanup47_crit_edge ], [ -34, %sw.bb.cleanup47_crit_edge ], [ %call15.i, %isl29501_register_write.exit.cleanup47_crit_edge ], [ -34, %sw.bb8.cleanup47_crit_edge ], [ %call15.i100, %isl29501_register_write.exit105.cleanup47_crit_edge ], [ -22, %if.end.cleanup47_crit_edge ], [ %call.i, %isl29501_register_write.exit.thread ], [ -22, %if.end11.cleanup47_crit_edge ], [ %call.i.i, %isl29501_write_coeff.exit.thread119 ], [ -22, %if.end34.cleanup47_crit_edge ], [ -34, %switch.lookup.cleanup47_crit_edge ], [ %call15.i.i, %isl29501_write_coeff.exit.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isl29501_register_read(ptr noundef %isl29501, i32 noundef %name, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [17 x %struct.isl29501_register_desc], ptr @isl29501_registers, i32 0, i32 %name
  %lock = getelementptr inbounds %struct.isl29501_private, ptr %isl29501, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then7_crit_edge, label %if.then

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %isl29501 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isl29501, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.err_crit_edge, label %if.end

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = shl i32 %call, 8
  %phi.bo = and i32 %phi.cast, 65280
  br label %if.then7

if.then7:                                         ; preds = %if.end, %entry.if.then7_crit_edge
  %msb.0 = phi i32 [ %phi.bo, %if.end ], [ 0, %entry.if.then7_crit_edge ]
  %lsb5 = getelementptr [17 x %struct.isl29501_register_desc], ptr @isl29501_registers, i32 0, i32 %name, i32 1
  %4 = ptrtoint ptr %lsb5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lsb5, align 1
  %6 = ptrtoint ptr %isl29501 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isl29501, align 4
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.err_crit_edge, label %if.end14

if.then7.err_crit_edge:                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36 = and i32 %call10, 255
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %add = or i32 %phi.cast36, %msb.0
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %val, align 4
  br label %cleanup

err:                                              ; preds = %if.then7.err_crit_edge, %if.then.err_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.err_crit_edge ], [ %call10, %if.then7.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end14
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 18, label %sw.bb4
    i32 12, label %sw.bb6
    i32 5, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 8, label %sw.bb.i
    i32 7, label %sw.bb1.i
    i32 33, label %sw.bb6.i
    i32 1, label %sw.bb11.i
    i32 9, label %sw.bb16.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  %lock.i.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i._crit_edge, label %if.end.i.i

sw.bb.i._crit_edge:                               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

if.end.i.i:                                       ; preds = %sw.bb.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call10.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.end.i.i._crit_edge, label %isl29501_register_read.exit.i

if.end.i.i._crit_edge:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

isl29501_register_read.exit.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i = shl i32 %call.i.i, 8
  %phi.bo.i.i = and i32 %phi.cast.i.i, 65280
  %phi.cast36.i.i = and i32 %call10.i.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  %add.i.i = or i32 %phi.cast36.i.i, %phi.bo.i.i
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i.i, ptr %val, align 4
  br label %cleanup

11:                                               ; preds = %if.end.i.i._crit_edge, %sw.bb.i._crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %sw.bb.i._crit_edge ], [ %call10.i.i, %if.end.i.i._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  %lock.i38.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i38.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call10.i39.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i39.i)
  %cmp11.i40.i = icmp slt i32 %call10.i39.i, 0
  br i1 %cmp11.i40.i, label %15, label %isl29501_register_read.exit47.i

isl29501_register_read.exit47.i:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i41.i = and i32 %call10.i39.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i38.i) #7
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %phi.cast36.i41.i, ptr %val, align 4
  br label %cleanup

15:                                               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i38.i) #7
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb
  %lock.i48.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i48.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i49.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext -40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %cmp.i50.i = icmp slt i32 %call.i49.i, 0
  br i1 %cmp.i50.i, label %sw.bb6.i._crit_edge, label %if.end.i53.i

sw.bb6.i._crit_edge:                              ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %21

if.end.i53.i:                                     ; preds = %sw.bb6.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call10.i54.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext -39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i54.i)
  %cmp11.i55.i = icmp slt i32 %call10.i54.i, 0
  br i1 %cmp11.i55.i, label %if.end.i53.i._crit_edge, label %isl29501_register_read.exit62.i

if.end.i53.i._crit_edge:                          ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %21

isl29501_register_read.exit62.i:                  ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i51.i = shl i32 %call.i49.i, 8
  %phi.bo.i52.i = and i32 %phi.cast.i51.i, 65280
  %phi.cast36.i56.i = and i32 %call10.i54.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i48.i) #7
  %add.i57.i = or i32 %phi.cast36.i56.i, %phi.bo.i52.i
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i57.i, ptr %val, align 4
  br label %cleanup

21:                                               ; preds = %if.end.i53.i._crit_edge, %sw.bb6.i._crit_edge
  %ret.0.i59.i = phi i32 [ %call.i49.i, %sw.bb6.i._crit_edge ], [ %call10.i54.i, %if.end.i53.i._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i48.i) #7
  br label %cleanup

sw.bb11.i:                                        ; preds = %sw.bb
  %lock.i63.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i63.i, i32 noundef 0) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call10.i64.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext -111) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i64.i)
  %cmp11.i65.i = icmp slt i32 %call10.i64.i, 0
  br i1 %cmp11.i65.i, label %25, label %isl29501_register_read.exit72.i

isl29501_register_read.exit72.i:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i66.i = and i32 %call10.i64.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i63.i) #7
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %phi.cast36.i66.i, ptr %val, align 4
  br label %cleanup

25:                                               ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i63.i) #7
  br label %cleanup

sw.bb16.i:                                        ; preds = %sw.bb
  %lock.i73.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i73.i, i32 noundef 0) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call10.i74.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext -30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i74.i)
  %cmp11.i75.i = icmp slt i32 %call10.i74.i, 0
  br i1 %cmp11.i75.i, label %29, label %isl29501_register_read.exit82.i

isl29501_register_read.exit82.i:                  ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i76.i = and i32 %call10.i74.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i73.i) #7
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %phi.cast36.i76.i, ptr %val, align 4
  br label %cleanup

29:                                               ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i73.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %31, label %sw.bb2.cleanup_crit_edge [
    i32 8, label %sw.bb.i22
    i32 33, label %sw.bb1.i23
    i32 7, label %sw.bb2.i
    i32 1, label %sw.bb3.i
    i32 9, label %sw.bb13.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i22:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3331, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6553600, ptr %val2, align 4
  br label %cleanup

sw.bb1.i23:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 95874, ptr %val2, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 35, ptr %val, align 4
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10000, ptr %val2, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb2
  %lock.i.i24 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i24, i32 noundef 0) #7
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call10.i.i25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext -112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i25)
  %cmp11.i.i26 = icmp slt i32 %call10.i.i25, 0
  br i1 %cmp11.i.i26, label %isl29501_register_read.exit.thread.i, label %if.end.i

isl29501_register_read.exit.thread.i:             ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i24) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3.i
  %phi.cast36.i.i27 = and i32 %call10.i.i25, 255
  tail call void @mutex_unlock(ptr noundef %lock.i.i24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %phi.cast36.i.i27)
  %cmp4.i = icmp ugt i32 %phi.cast36.i.i27, 15
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.cast36.i.i27)
  %tobool.not.i = icmp eq i32 %phi.cast36.i.i27, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val, align 4
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val2, align 4
  br label %cleanup

if.end8.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %phi.cast36.i.i27, -1
  %arrayidx.i = getelementptr [15 x [2 x i32]], ptr @isl29501_current_scale_table, i32 0, i32 %sub.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  %arrayidx12.i = getelementptr [15 x [2 x i32]], ptr @isl29501_current_scale_table, i32 0, i32 %sub.i, i32 1
  %46 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx12.i, align 4
  %48 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %val2, align 4
  br label %cleanup

sw.bb13.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 125, ptr %val, align 4
  %50 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 100000, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %lock.i.i29 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i29, i32 noundef 0) #7
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call10.i.i30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i30)
  %cmp11.i.i31 = icmp slt i32 %call10.i.i30, 0
  br i1 %cmp11.i.i31, label %isl29501_register_read.exit.thread.i32, label %if.end.i34

isl29501_register_read.exit.thread.i32:           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i29) #7
  br label %cleanup

if.end.i34:                                       ; preds = %sw.bb4
  %phi.cast36.i.i33 = and i32 %call10.i.i30, 255
  tail call void @mutex_unlock(ptr noundef %lock.i.i29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %phi.cast36.i.i33)
  %cmp1.i = icmp ugt i32 %phi.cast36.i.i33, 11
  br i1 %cmp1.i, label %if.end.i34.cleanup_crit_edge, label %if.end3.i

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i35 = getelementptr [12 x [2 x i32]], ptr @isl29501_int_time, i32 0, i32 %phi.cast36.i.i33
  %53 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i35, align 4
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  %arrayidx6.i = getelementptr [12 x [2 x i32]], ptr @isl29501_int_time, i32 0, i32 %phi.cast36.i.i33, i32 1
  %56 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx6.i, align 4
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %lock.i.i37 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i37, i32 noundef 0) #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call10.i.i38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %60, i8 noundef zeroext 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i38)
  %cmp11.i.i39 = icmp slt i32 %call10.i.i38, 0
  tail call void @mutex_unlock(ptr noundef %lock.i.i37) #7
  br i1 %cmp11.i.i39, label %sw.bb6.cleanup_crit_edge, label %if.else180.i

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else180.i:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i.i41 = and i32 %call10.i.i38, 255
  %61 = mul nuw nsw i32 %phi.cast36.i.i41, 450
  %mul.i = add nuw nsw i32 %61, 450
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i, i64 1000000000000) #11, !srcloc !104
  %asmresult1.i.i = extractvalue { i64, i64 } %62, 1
  %conv219.i = trunc i64 %asmresult1.i.i to i32
  %63 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %asmresult1.i.i) #11, !srcloc !105
  %64 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %asmresult1.i.i, i64 %63, i32 0) #11, !srcloc !106
  %asmresult10.i577.i = extractvalue { i64, i32 } %64, 0
  %div381570.i = lshr i64 %asmresult10.i577.i, 18
  %conv382.i = trunc i64 %div381570.i to i32
  %mul383.neg.i = mul i32 %conv382.i, -1000000
  %sub384.i = add i32 %mul383.neg.i, %conv219.i
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv382.i, ptr %val, align 4
  %66 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub384.i, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %67 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chan, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %68, label %sw.bb8.cleanup_crit_edge [
    i32 8, label %sw.bb.i48
    i32 9, label %sw.bb1.i57
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i48:                                        ; preds = %sw.bb8
  %lock.i.i45 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i45, i32 noundef 0) #7
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i.i46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp.i.i47, label %sw.bb.i48.err.i.i_crit_edge, label %if.end.i.i51

sw.bb.i48.err.i.i_crit_edge:                      ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i.i

if.end.i.i51:                                     ; preds = %sw.bb.i48
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call10.i.i49 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %73, i8 noundef zeroext 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i49)
  %cmp11.i.i50 = icmp slt i32 %call10.i.i49, 0
  br i1 %cmp11.i.i50, label %if.end.i.i51.err.i.i_crit_edge, label %if.end14.i.i

if.end.i.i51.err.i.i_crit_edge:                   ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i.i52 = shl i32 %call.i.i46, 8
  %phi.bo.i.i53 = and i32 %phi.cast.i.i52, 65280
  %phi.cast36.i.i54 = and i32 %call10.i.i49, 255
  tail call void @mutex_unlock(ptr noundef %lock.i.i45) #7
  %add.i.i55 = or i32 %phi.cast36.i.i54, %phi.bo.i.i53
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i.i55, ptr %val, align 4
  br label %cleanup

err.i.i:                                          ; preds = %if.end.i.i51.err.i.i_crit_edge, %sw.bb.i48.err.i.i_crit_edge
  %ret.0.i.i56 = phi i32 [ %call.i.i46, %sw.bb.i48.err.i.i_crit_edge ], [ %call10.i.i49, %if.end.i.i51.err.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i45) #7
  br label %cleanup

sw.bb1.i57:                                       ; preds = %sw.bb8
  %lock.i5.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i5.i, i32 noundef 0) #7
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call10.i6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext 49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i6.i)
  %cmp11.i7.i = icmp slt i32 %call10.i6.i, 0
  br i1 %cmp11.i7.i, label %err.i12.i, label %if.end14.i10.i

if.end14.i10.i:                                   ; preds = %sw.bb1.i57
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast36.i8.i = and i32 %call10.i6.i, 255
  tail call void @mutex_unlock(ptr noundef %lock.i5.i) #7
  %77 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %phi.cast36.i8.i, ptr %val, align 4
  br label %cleanup

err.i12.i:                                        ; preds = %sw.bb1.i57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock.i5.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err.i12.i, %if.end14.i10.i, %err.i.i, %if.end14.i.i, %sw.bb8.cleanup_crit_edge, %if.else180.i, %sw.bb6.cleanup_crit_edge, %if.end3.i, %if.end.i34.cleanup_crit_edge, %isl29501_register_read.exit.thread.i32, %sw.bb13.i, %if.end8.i, %if.then7.i, %if.end.i.cleanup_crit_edge, %isl29501_register_read.exit.thread.i, %sw.bb2.i, %sw.bb1.i23, %sw.bb.i22, %sw.bb2.cleanup_crit_edge, %29, %isl29501_register_read.exit82.i, %25, %isl29501_register_read.exit72.i, %21, %isl29501_register_read.exit62.i, %15, %isl29501_register_read.exit47.i, %11, %isl29501_register_read.exit.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %ret.0.i.i, %11 ], [ 1, %isl29501_register_read.exit.i ], [ %call10.i39.i, %15 ], [ 1, %isl29501_register_read.exit47.i ], [ %ret.0.i59.i, %21 ], [ 1, %isl29501_register_read.exit62.i ], [ %call10.i64.i, %25 ], [ 1, %isl29501_register_read.exit72.i ], [ %call10.i74.i, %29 ], [ 1, %isl29501_register_read.exit82.i ], [ 10, %sw.bb13.i ], [ 2, %if.end8.i ], [ 1, %if.then7.i ], [ 10, %sw.bb2.i ], [ 3, %sw.bb1.i23 ], [ 10, %sw.bb.i22 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ %call10.i.i25, %isl29501_register_read.exit.thread.i ], [ 2, %if.end3.i ], [ -22, %if.end.i34.cleanup_crit_edge ], [ %call10.i.i30, %isl29501_register_read.exit.thread.i32 ], [ 2, %if.else180.i ], [ -22, %sw.bb8.cleanup_crit_edge ], [ %ret.0.i.i56, %err.i.i ], [ 0, %if.end14.i.i ], [ %call10.i6.i, %err.i12.i ], [ 0, %if.end14.i10.i ], [ %call10.i.i38, %sw.bb6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl29501_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 18, label %sw.bb2
    i32 12, label %if.end181.i
    i32 2, label %sw.bb6
    i32 5, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cond.i = icmp eq i32 %4, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %cmp.i.i = icmp ugt i32 %val, 255
  br i1 %cmp.i.i, label %sw.bb.i.cleanup_crit_edge, label %if.end3.i.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %conv14.i.i = trunc i32 %val to i8
  %call15.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -111, i8 noundef zeroext %conv14.i.i) #7
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.i = icmp eq i32 %val, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb2
  %7 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %val2, label %land.lhs.true.i.cleanup_crit_edge [
    i32 70, label %land.lhs.true.i.isl29501_register_write.exit.i_crit_edge
    i32 140, label %isl29501_register_write.exit.fold.split.i
    i32 280, label %isl29501_register_write.exit.fold.split14.i
    i32 570, label %isl29501_register_write.exit.fold.split15.i
    i32 1140, label %isl29501_register_write.exit.fold.split16.i
    i32 2280, label %isl29501_register_write.exit.fold.split17.i
    i32 4550, label %isl29501_register_write.exit.fold.split18.i
    i32 9100, label %isl29501_register_write.exit.fold.split19.i
    i32 18200, label %isl29501_register_write.exit.fold.split20.i
    i32 36400, label %isl29501_register_write.exit.fold.split21.i
    i32 72810, label %isl29501_register_write.exit.fold.split22.i
    i32 145610, label %isl29501_register_write.exit.fold.split23.i
  ]

land.lhs.true.i.isl29501_register_write.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

isl29501_register_write.exit.fold.split.i:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split14.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split15.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split16.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split17.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split18.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split19.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split20.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split21.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split22.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.fold.split23.i:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i

isl29501_register_write.exit.i:                   ; preds = %isl29501_register_write.exit.fold.split23.i, %isl29501_register_write.exit.fold.split22.i, %isl29501_register_write.exit.fold.split21.i, %isl29501_register_write.exit.fold.split20.i, %isl29501_register_write.exit.fold.split19.i, %isl29501_register_write.exit.fold.split18.i, %isl29501_register_write.exit.fold.split17.i, %isl29501_register_write.exit.fold.split16.i, %isl29501_register_write.exit.fold.split15.i, %isl29501_register_write.exit.fold.split14.i, %isl29501_register_write.exit.fold.split.i, %land.lhs.true.i.isl29501_register_write.exit.i_crit_edge
  %i.011.lcssa.i = phi i8 [ 0, %land.lhs.true.i.isl29501_register_write.exit.i_crit_edge ], [ 1, %isl29501_register_write.exit.fold.split.i ], [ 2, %isl29501_register_write.exit.fold.split14.i ], [ 3, %isl29501_register_write.exit.fold.split15.i ], [ 4, %isl29501_register_write.exit.fold.split16.i ], [ 5, %isl29501_register_write.exit.fold.split17.i ], [ 6, %isl29501_register_write.exit.fold.split18.i ], [ 7, %isl29501_register_write.exit.fold.split19.i ], [ 8, %isl29501_register_write.exit.fold.split20.i ], [ 9, %isl29501_register_write.exit.fold.split21.i ], [ 10, %isl29501_register_write.exit.fold.split22.i ], [ 11, %isl29501_register_write.exit.fold.split23.i ]
  %lock.i.i22 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i22, i32 noundef 0) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call15.i.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 16, i8 noundef zeroext %i.011.lcssa.i) #7
  br label %cleanup.sink.split

if.end181.i:                                      ; preds = %entry
  %rem.i = srem i32 %val2, 1000000
  %mul.i = mul i32 %val, 1000000
  %add.i = add i32 %rem.i, %mul.i
  %div175.i = udiv i32 -2072967296, %add.i
  %conv176.i = zext i32 %div175.i to i64
  %sub183.i = add nsw i64 %conv176.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %sub183.i)
  %cmp184.i = icmp ugt i64 %sub183.i, 255
  br i1 %cmp184.i, label %if.end181.i.cleanup_crit_edge, label %if.end187.i

if.end181.i.cleanup_crit_edge:                    ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end187.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i.i25 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i25, i32 noundef 0) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv14.i.i26 = trunc i64 %sub183.i to i8
  %call15.i.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 17, i8 noundef zeroext %conv14.i.i26) #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp3.i = icmp eq i32 %val, 0
  %or.cond.i = and i1 %cmp3.i, %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i29, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i29:                                ; preds = %sw.bb6
  %14 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %val2, label %land.lhs.true.i29.cleanup_crit_edge [
    i32 3900, label %land.lhs.true.i29.isl29501_register_write.exit.i40_crit_edge
    i32 7800, label %isl29501_register_write.exit.fold.split.i30
    i32 11800, label %isl29501_register_write.exit.fold.split17.i31
    i32 15700, label %isl29501_register_write.exit.fold.split18.i32
    i32 19600, label %isl29501_register_write.exit.fold.split19.i33
    i32 23500, label %isl29501_register_write.exit.fold.split20.i34
    i32 27500, label %isl29501_register_write.exit.fold.split21.i35
    i32 31400, label %isl29501_register_write.exit.fold.split22.i36
    i32 35200, label %isl29501_register_write.exit.fold.split23.i37
    i32 39200, label %isl29501_register_write.exit.fold.split24.i
    i32 43100, label %isl29501_register_write.exit.fold.split25.i
    i32 47100, label %isl29501_register_write.exit.fold.split26.i
    i32 51000, label %isl29501_register_write.exit.fold.split27.i
    i32 54900, label %isl29501_register_write.exit.fold.split28.i
    i32 58800, label %isl29501_register_write.exit.fold.split29.i
  ]

land.lhs.true.i29.isl29501_register_write.exit.i40_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

land.lhs.true.i29.cleanup_crit_edge:              ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

isl29501_register_write.exit.fold.split.i30:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split17.i31:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split18.i32:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split19.i33:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split20.i34:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split21.i35:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split22.i36:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split23.i37:    ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split24.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split25.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split26.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split27.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split28.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.fold.split29.i:      ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %isl29501_register_write.exit.i40

isl29501_register_write.exit.i40:                 ; preds = %isl29501_register_write.exit.fold.split29.i, %isl29501_register_write.exit.fold.split28.i, %isl29501_register_write.exit.fold.split27.i, %isl29501_register_write.exit.fold.split26.i, %isl29501_register_write.exit.fold.split25.i, %isl29501_register_write.exit.fold.split24.i, %isl29501_register_write.exit.fold.split23.i37, %isl29501_register_write.exit.fold.split22.i36, %isl29501_register_write.exit.fold.split21.i35, %isl29501_register_write.exit.fold.split20.i34, %isl29501_register_write.exit.fold.split19.i33, %isl29501_register_write.exit.fold.split18.i32, %isl29501_register_write.exit.fold.split17.i31, %isl29501_register_write.exit.fold.split.i30, %land.lhs.true.i29.isl29501_register_write.exit.i40_crit_edge
  %i.014.lcssa.i = phi i8 [ 1, %land.lhs.true.i29.isl29501_register_write.exit.i40_crit_edge ], [ 2, %isl29501_register_write.exit.fold.split.i30 ], [ 3, %isl29501_register_write.exit.fold.split17.i31 ], [ 4, %isl29501_register_write.exit.fold.split18.i32 ], [ 5, %isl29501_register_write.exit.fold.split19.i33 ], [ 6, %isl29501_register_write.exit.fold.split20.i34 ], [ 7, %isl29501_register_write.exit.fold.split21.i35 ], [ 8, %isl29501_register_write.exit.fold.split22.i36 ], [ 9, %isl29501_register_write.exit.fold.split23.i37 ], [ 10, %isl29501_register_write.exit.fold.split24.i ], [ 11, %isl29501_register_write.exit.fold.split25.i ], [ 12, %isl29501_register_write.exit.fold.split26.i ], [ 13, %isl29501_register_write.exit.fold.split27.i ], [ 14, %isl29501_register_write.exit.fold.split28.i ], [ 15, %isl29501_register_write.exit.fold.split29.i ]
  %lock.i.i38 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i38, i32 noundef 0) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call15.i.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -112, i8 noundef zeroext %i.014.lcssa.i) #7
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %18, label %sw.bb8.cleanup_crit_edge [
    i32 8, label %sw.bb.i43
    i32 9, label %sw.bb1.i
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i43:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp1.i.i42 = icmp ugt i32 %val, 65535
  br i1 %cmp1.i.i42, label %sw.bb.i43.cleanup_crit_edge, label %if.end3.i.i45

sw.bb.i43.cleanup_crit_edge:                      ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i.i45:                                    ; preds = %sw.bb.i43
  %lock.i.i44 = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i44, i32 noundef 0) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %shr.i.i = lshr i32 %val, 8
  %conv.i.i = trunc i32 %shr.i.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 47, i8 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %if.end3.i.i45.cleanup.sink.split_crit_edge, label %if.end3.i.i45.return.sink.split.sink.split.i_crit_edge

if.end3.i.i45.return.sink.split.sink.split.i_crit_edge: ; preds = %if.end3.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.sink.split.i

if.end3.i.i45.cleanup.sink.split_crit_edge:       ; preds = %if.end3.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb1.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %cmp.i5.i = icmp ugt i32 %val, 255
  br i1 %cmp.i5.i, label %sw.bb1.i.cleanup_crit_edge, label %if.end3.i8.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i8.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i7.i = getelementptr inbounds %struct.isl29501_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i7.i, i32 noundef 0) #7
  br label %return.sink.split.sink.split.i

return.sink.split.sink.split.i:                   ; preds = %if.end3.i8.i, %if.end3.i.i45.return.sink.split.sink.split.i_crit_edge
  %.sink16.i = phi i8 [ 49, %if.end3.i8.i ], [ 48, %if.end3.i.i45.return.sink.split.sink.split.i_crit_edge ]
  %lock.i7.sink.ph.i = phi ptr [ %lock.i7.i, %if.end3.i8.i ], [ %lock.i.i44, %if.end3.i.i45.return.sink.split.sink.split.i_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %conv14.i.i46 = trunc i32 %val to i8
  %call15.i.i47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext %.sink16.i, i8 noundef zeroext %conv14.i.i46) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %return.sink.split.sink.split.i, %if.end3.i.i45.cleanup.sink.split_crit_edge, %isl29501_register_write.exit.i40, %if.end187.i, %isl29501_register_write.exit.i, %if.end3.i.i
  %lock.i7.sink.i.sink = phi ptr [ %lock.i.i38, %isl29501_register_write.exit.i40 ], [ %lock.i.i25, %if.end187.i ], [ %lock.i.i22, %isl29501_register_write.exit.i ], [ %lock.i.i, %if.end3.i.i ], [ %lock.i.i44, %if.end3.i.i45.cleanup.sink.split_crit_edge ], [ %lock.i7.sink.ph.i, %return.sink.split.sink.split.i ]
  %retval.0.ph = phi i32 [ %call15.i.i39, %isl29501_register_write.exit.i40 ], [ %call15.i.i27, %if.end187.i ], [ %call15.i.i23, %isl29501_register_write.exit.i ], [ %call15.i.i, %if.end3.i.i ], [ %call.i.i, %if.end3.i.i45.cleanup.sink.split_crit_edge ], [ %call15.i.i47, %return.sink.split.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i7.sink.i.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb1.i.cleanup_crit_edge, %sw.bb.i43.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %land.lhs.true.i29.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end181.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -34, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -34, %if.end181.i.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %land.lhs.true.i29.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -34, %sw.bb.i43.cleanup_crit_edge ], [ -34, %sw.bb1.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_isl29501__291_1014_isl29501_driver_init6, !1, !"__initcall__kmod_isl29501__291_1014_isl29501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/isl29501.c", i32 1014, i32 1}
!2 = !{ptr @__exitcall_isl29501_driver_exit, !1, !"__exitcall_isl29501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/isl29501.c", i32 1016, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/isl29501.c", i32 1017, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/isl29501.c", i32 1018, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/isl29501.c", i32 1009, i32 11}
!12 = !{ptr @isl29501_driver, !13, !"isl29501_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/isl29501.c", i32 1007, i32 26}
!14 = !{ptr @isl29501_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/isl29501.c", i32 968, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/proximity/isl29501.c", i32 985, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @isl29501_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @isl29501_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/proximity/isl29501.c", i32 917, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @isl29501_init_chip._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @isl29501_init_chip._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/proximity/isl29501.c", i32 922, i32 3}
!32 = !{ptr @isl29501_init_chip._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @isl29501_init_chip._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/proximity/isl29501.c", i32 547, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @isl29501_reset_registers._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @isl29501_reset_registers._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/proximity/isl29501.c", i32 556, i32 3}
!41 = !{ptr @isl29501_reset_registers._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @isl29501_reset_registers._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/proximity/isl29501.c", i32 570, i32 3}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @isl29501_begin_acquisition._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @isl29501_begin_acquisition._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @isl29501_channels, !49, !"isl29501_channels", i1 false, i1 false}
!49 = !{!"../drivers/iio/proximity/isl29501.c", i32 490, i32 35}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/proximity/isl29501.c", i32 478, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/proximity/isl29501.c", i32 479, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/proximity/isl29501.c", i32 480, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/proximity/isl29501.c", i32 481, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/proximity/isl29501.c", i32 482, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/proximity/isl29501.c", i32 483, i32 2}
!62 = !{ptr @isl29501_ext_info, !63, !"isl29501_ext_info", i1 false, i1 false}
!63 = !{!"../drivers/iio/proximity/isl29501.c", i32 477, i32 44}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/proximity/isl29501.c", i32 295, i32 22}
!66 = !{ptr @isl29501_registers, !67, !"isl29501_registers", i1 false, i1 false}
!67 = !{!"../drivers/iio/proximity/isl29501.c", i32 138, i32 44}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/iio/proximity/isl29501.c", i32 431, i32 4}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @isl29501_write_ext.__UNIQUE_ID_ddebug288, !69, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!72 = !{ptr @isl29501_info, !73, !"isl29501_info", i1 false, i1 false}
!73 = !{!"../drivers/iio/proximity/isl29501.c", i32 905, i32 30}
!74 = !{ptr @isl29501_attribute_group, !75, !"isl29501_attribute_group", i1 false, i1 false}
!75 = !{!"../drivers/iio/proximity/isl29501.c", i32 586, i32 37}
!76 = !{ptr @isl29501_attributes, !77, !"isl29501_attributes", i1 false, i1 false}
!77 = !{!"../drivers/iio/proximity/isl29501.c", i32 580, i32 26}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/proximity/isl29501.c", i32 576, i32 8}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @iio_const_attr_integration_time_available, !79, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/proximity/isl29501.c", i32 577, i32 8}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @iio_const_attr_out_current_scale_available, !83, !"iio_const_attr_out_current_scale_available", i1 false, i1 false}
!86 = !{ptr @isl29501_current_scale_table, !87, !"isl29501_current_scale_table", i1 false, i1 false}
!87 = !{!"../drivers/iio/proximity/isl29501.c", i32 590, i32 18}
!88 = !{ptr @isl29501_int_time, !89, !"isl29501_int_time", i1 false, i1 false}
!89 = !{!"../drivers/iio/proximity/isl29501.c", i32 597, i32 18}
!90 = !{ptr @isl29501_id, !91, !"isl29501_id", i1 false, i1 false}
!91 = !{!"../drivers/iio/proximity/isl29501.c", i32 992, i32 35}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i8 0, i8 2}
!102 = !{!"auto-init"}
!103 = !{i64 2148713478, i64 2148713483, i64 2148713496, i64 2148713540, i64 2148713574, i64 2148713595}
!104 = !{i64 2148622197, i64 2148622477, i64 2148622811, i64 2148623145}
!105 = !{i64 1136366, i64 1136393}
!106 = !{i64 1137061, i64 1137088, i64 1137121, i64 1137142, i64 1137169, i64 1137195}
