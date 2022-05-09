; ModuleID = '/llk/IR_all_yes/drivers/iio/light/gp2ap020a00f.c_pt.bc'
source_filename = "../drivers/iio/light/gp2ap020a00f.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.gp2ap020a00f_mutable_config_regs = type { i8, i8, i8, i8 }
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
%struct.gp2ap020a00f_data = type { ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, ptr, ptr, [4 x i32], i8, %struct.irq_work, %struct.wait_queue_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_gp2ap020a00f__289_1619_gp2ap020a00f_driver_init6 = internal global ptr @gp2ap020a00f_driver_init, section ".initcall6.init", align 4
@gp2ap020a00f_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @gp2ap020a00f_probe, ptr @gp2ap020a00f_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gp2ap020a00f_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gp2ap020a00f_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gp2ap020a00f_driver_exit = internal global ptr @gp2ap020a00f_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"gp2ap020a00f.author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [72 x i8] c"gp2ap020a00f.description=Sharp GP2AP020A00F Proximity/ALS sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"gp2ap020a00f.file=drivers/iio/light/gp2ap020a00f\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [28 x i8] c"gp2ap020a00f.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gp2ap020a00f\00", [19 x i8] zeroinitializer }, align 32
@gp2ap020a00f_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,gp2ap020a00f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gp2ap020a00f_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gp2ap020a00f\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vled\00", [27 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gp2ap020a00f_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @gp2ap020a00f_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"gp2ap020a00f:1492:(&gp2ap020a00f_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1494, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gp2ap020a00f_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/iio/light/gp2ap020a00f.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry_ptr = internal global ptr @gp2ap020a00f_probe._entry, section ".printk_index", align 4
@gp2ap020a00f_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry_ptr.10 = internal global ptr @gp2ap020a00f_probe._entry.8, section ".printk_index", align 4
@gp2ap020a00f_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data->data_ready_queue\00", [40 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@gp2ap020a00f_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 16, i32 12, i32 0, %struct.anon.86 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @gp2ap020a00f_event_spec_light, i32 2, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 6, i32 0, i32 13, i32 14, i32 1, %struct.anon.86 { i8 117, i8 24, i8 32, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 16, i32 2, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @gp2ap020a00f_event_spec_prox, i32 2, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@gp2ap020a00f_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @gp2ap020a00f_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp2ap020a00f_read_event_config, ptr @gp2ap020a00f_write_event_config, ptr @gp2ap020a00f_read_event_val, ptr @gp2ap020a00f_write_event_val, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gp2ap020a00f_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @gp2ap020a00f_buffer_postenable, ptr @gp2ap020a00f_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-trigger\00", [21 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1534, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate iio trigger.\0A\00", [63 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry_ptr.17 = internal global ptr @gp2ap020a00f_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gp2ap020a00f_als_event\00", [41 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1546, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Irq request failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry_ptr.21 = internal global ptr @gp2ap020a00f_probe._entry.19, section ".printk_index", align 4
@gp2ap020a00f_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1554, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register iio trigger.\0A\00", [63 x i8] zeroinitializer }, align 32
@gp2ap020a00f_probe._entry_ptr.24 = internal global ptr @gp2ap020a00f_probe._entry.22, section ".printk_index", align 4
@gp2ap020a00f_reg_init_tab = internal constant { <{ i8, i8, i8, i8, [8 x i8] }>, [20 x i8] } { <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 0, i8 35, i8 -78, i8 48, [8 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@gp2ap020a00f_event_spec_light = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@gp2ap020a00f_event_spec_prox = internal constant { [2 x %struct.iio_event_spec], [48 x i8] } { [2 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 2, i32 1, i32 3, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 2, i32 2, i32 3, i32 0, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@gp2ap020a00f_read_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 1256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gp2ap020a00f_exec_cmd failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gp2ap020a00f_read_channel\00", [38 x i8] zeroinitializer }, align 32
@gp2ap020a00f_read_channel._entry_ptr = internal global ptr @gp2ap020a00f_read_channel._entry, section ".printk_index", align 4
@gp2ap020a00f_read_channel._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 1263, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gp2ap020a00f_read_output failed\0A\00", [63 x i8] zeroinitializer }, align 32
@gp2ap020a00f_read_channel._entry_ptr.30 = internal global ptr @gp2ap020a00f_read_channel._entry.28, section ".printk_index", align 4
@gp2ap020a00f_read_channel._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 1269, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to shut down the device.\0A\00", [63 x i8] zeroinitializer }, align 32
@gp2ap020a00f_read_channel._entry_ptr.33 = internal global ptr @gp2ap020a00f_read_channel._entry.31, section ".printk_index", align 4
@gp2ap020a00f_read_output.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gp2ap020a00f_read_output\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"data ready timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@opmode_regs_settings = internal constant { [8 x %struct.gp2ap020a00f_mutable_config_regs], [32 x i8] } { [8 x %struct.gp2ap020a00f_mutable_config_regs] [%struct.gp2ap020a00f_mutable_config_regs { i8 -47, i8 0, i8 0, i8 4 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -48, i8 0, i8 0, i8 4 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -32, i8 0, i8 0, i8 8 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -47, i8 0, i8 0, i8 4 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -32, i8 64, i8 0, i8 8 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -63, i8 64, i8 0, i8 0 }, %struct.gp2ap020a00f_mutable_config_regs { i8 -32, i8 64, i8 64, i8 12 }, %struct.gp2ap020a00f_mutable_config_regs zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gp2ap020a00f_prox_sensing\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gp2ap020a00f_thresh_event\00", [38 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 743, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Clearing als threshold register failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gp2ap020a00f_adjust_lux_mode\00", [35 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 751, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.41 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.40, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.5, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Shutting down the device failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.44 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.42, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.5, i32 774, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Adjusting device lux mode failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.47 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.45, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.39, ptr @.str.5, i32 785, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Powering up the device failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.50 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.48, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.39, ptr @.str.5, i32 795, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adjusting als threshold value failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.53 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.51, section ".printk_index", align 4
@gp2ap020a00f_adjust_lux_mode._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.39, ptr @.str.5, i32 805, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@gp2ap020a00f_adjust_lux_mode._entry_ptr.55 = internal global ptr @gp2ap020a00f_adjust_lux_mode._entry.54, section ".printk_index", align 4
@gp2ap020a00f_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 1585, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to power off the device.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gp2ap020a00f_remove\00", [44 x i8] zeroinitializer }, align 32
@gp2ap020a00f_remove._entry_ptr = internal global ptr @gp2ap020a00f_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 3, i64 0, i64 1, i64 6, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"gp2ap020a00f_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1609, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1611, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"gp2ap020a00f_of_match\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1603, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"gp2ap020a00f_id\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1596, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1484, i32 52 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"gp2ap020a00f_regmap_config\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 291, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1492, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1494, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1505, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1514, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1516, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"gp2ap020a00f_channels\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1326, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"gp2ap020a00f_info\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1378, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"gp2ap020a00f_buffer_setup_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1465, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1530, i32 52 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1534, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1543, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1546, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1554, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"gp2ap020a00f_reg_init_tab\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 255, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"gp2ap020a00f_event_spec_light\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1298, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant [29 x i8] c"gp2ap020a00f_event_spec_prox\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1312, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1255, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1262, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1268, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 706, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"opmode_regs_settings\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 306, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1146, i32 9 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1153, i32 9 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 742, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 750, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 762, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 773, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 784, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 794, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 804, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [36 x i8] c"../drivers/iio/light/gp2ap020a00f.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1585, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_gp2ap020a00f_driver_exit, ptr @__initcall__kmod_gp2ap020a00f__289_1619_gp2ap020a00f_driver_init6, ptr @gp2ap020a00f_adjust_lux_mode._entry, ptr @gp2ap020a00f_adjust_lux_mode._entry.40, ptr @gp2ap020a00f_adjust_lux_mode._entry.42, ptr @gp2ap020a00f_adjust_lux_mode._entry.45, ptr @gp2ap020a00f_adjust_lux_mode._entry.48, ptr @gp2ap020a00f_adjust_lux_mode._entry.51, ptr @gp2ap020a00f_adjust_lux_mode._entry.54, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.41, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.44, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.47, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.50, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.53, ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.55, ptr @gp2ap020a00f_driver_exit, ptr @gp2ap020a00f_probe._entry, ptr @gp2ap020a00f_probe._entry.15, ptr @gp2ap020a00f_probe._entry.19, ptr @gp2ap020a00f_probe._entry.22, ptr @gp2ap020a00f_probe._entry.8, ptr @gp2ap020a00f_probe._entry_ptr, ptr @gp2ap020a00f_probe._entry_ptr.10, ptr @gp2ap020a00f_probe._entry_ptr.17, ptr @gp2ap020a00f_probe._entry_ptr.21, ptr @gp2ap020a00f_probe._entry_ptr.24, ptr @gp2ap020a00f_read_channel._entry, ptr @gp2ap020a00f_read_channel._entry.28, ptr @gp2ap020a00f_read_channel._entry.31, ptr @gp2ap020a00f_read_channel._entry_ptr, ptr @gp2ap020a00f_read_channel._entry_ptr.30, ptr @gp2ap020a00f_read_channel._entry_ptr.33, ptr @gp2ap020a00f_remove._entry, ptr @gp2ap020a00f_remove._entry_ptr, ptr @gp2ap020a00f_driver, ptr @.str, ptr @gp2ap020a00f_of_match, ptr @gp2ap020a00f_id, ptr @.str.1, ptr @gp2ap020a00f_probe._key, ptr @gp2ap020a00f_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @gp2ap020a00f_probe.__key, ptr @.str.11, ptr @gp2ap020a00f_probe.__key.12, ptr @.str.13, ptr @gp2ap020a00f_channels, ptr @gp2ap020a00f_info, ptr @gp2ap020a00f_buffer_setup_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @gp2ap020a00f_reg_init_tab, ptr @gp2ap020a00f_event_spec_light, ptr @gp2ap020a00f_event_spec_prox, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @opmode_regs_settings, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_reg_init_tab to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_event_spec_light to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_event_spec_prox to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_read_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_read_channel._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_read_channel._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opmode_regs_settings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_adjust_lux_mode._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap020a00f_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @gp2ap020a00f_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gp2ap020a00f_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @gp2ap020a00f_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 212) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %vled_reg = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vled_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %vled_reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call i32 @regulator_enable(ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @gp2ap020a00f_regmap_config, ptr noundef nonnull @gp2ap020a00f_probe._key, ptr noundef nonnull @.str.2) #8
  %cmp.i130 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %4 = ptrtoint ptr %call15 to i32
  br label %error_regulator_disable

if.end20:                                         ; preds = %if.end14
  %call21 = tail call i32 @regmap_bulk_write(ptr noundef %call15, i32 noundef 0, ptr noundef nonnull @gp2ap020a00f_reg_init_tab, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %error_regulator_disable

if.end27:                                         ; preds = %if.end20
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client28 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client28, align 4
  %cur_opmode = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %cur_opmode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %cur_opmode, align 4
  %regmap29 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %regmap29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %regmap29, align 4
  %data_ready_queue = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %data_ready_queue, ptr noundef nonnull @.str.11, ptr noundef nonnull @gp2ap020a00f_probe.__key) #8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @gp2ap020a00f_probe.__key.12) #8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gp2ap020a00f_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gp2ap020a00f_info, ptr %info, align 8
  %name36 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %12 = ptrtoint ptr %name36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %name36, align 8
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %call37 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @gp2ap020a00f_trigger_handler, i32 noundef 0, ptr noundef nonnull @gp2ap020a00f_buffer_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end27.error_regulator_disable_crit_edge, label %if.end40

if.end27.error_regulator_disable_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_regulator_disable

if.end40:                                         ; preds = %if.end27
  %14 = ptrtoint ptr %name36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name36, align 8
  %call43 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef %15) #8
  %trig = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call43, ptr %trig, align 4
  %cmp45 = icmp eq ptr %call43, null
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.16) #11
  br label %error_uninit_buffer

if.end51:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call52 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef null, ptr noundef nonnull @gp2ap020a00f_thresh_event_handler, i32 noundef 8194, ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %error_uninit_buffer

if.end59:                                         ; preds = %if.end51
  %work = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %work, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 11, i32 0, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gp2ap020a00f_iio_trigger_work, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 11, i32 2
  %22 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %23 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %trig, align 4
  %call61 = tail call i32 @__iio_trigger_register(ptr noundef %24, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #11
  br label %error_free_irq

if.end68:                                         ; preds = %if.end59
  %call69 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %error_trigger_unregister, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_trigger_unregister:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %26) #8
  br label %error_free_irq

error_free_irq:                                   ; preds = %error_trigger_unregister, %do.end66
  %err.0 = phi i32 [ %call61, %do.end66 ], [ %call69, %error_trigger_unregister ]
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %call75 = tail call ptr @free_irq(i32 noundef %28, ptr noundef nonnull %call) #8
  br label %error_uninit_buffer

error_uninit_buffer:                              ; preds = %error_free_irq, %do.end57, %if.then46
  %err.1 = phi i32 [ -12, %if.then46 ], [ %call52, %do.end57 ], [ %err.0, %error_free_irq ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #8
  br label %error_regulator_disable

error_regulator_disable:                          ; preds = %error_uninit_buffer, %if.end27.error_regulator_disable_crit_edge, %do.end25, %do.end
  %err.2 = phi i32 [ %4, %do.end ], [ %call21, %do.end25 ], [ %call37, %if.end27.error_regulator_disable_crit_edge ], [ %err.1, %error_uninit_buffer ]
  %29 = ptrtoint ptr %vled_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vled_reg, align 4
  %call77 = tail call i32 @regulator_disable(ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %error_regulator_disable, %if.end68.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %err.2, %error_regulator_disable ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap39.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %regmap39.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap39.i, align 4
  %call.i75.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 241, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp44.i = icmp slt i32 %call.i75.i, 0
  br i1 %cmp44.i, label %do.end, label %gp2ap020a00f_set_operation_mode.exit

gp2ap020a00f_set_operation_mode.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %cur_opmode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %cur_opmode.i, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %gp2ap020a00f_set_operation_mode.exit
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %trig = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_unregister(ptr noundef %8) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %1) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #8
  %vled_reg = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %vled_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vled_reg, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %12) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef 0) #8
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %9)
  %cmp47 = icmp ult i32 %call2, %9
  br i1 %cmp47, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 8
  %buffer = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 3
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ %call2, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %d_size.048 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %i.049, 1
  %add = add i32 %mul, 12
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr i8, ptr %13, i32 %d_size.048
  %call4 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %add, ptr noundef %arrayidx, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.body.done_crit_edge, label %if.end

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.049)
  %switch = icmp ult i32 %i.049, 2
  br i1 %switch, label %if.then8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %arrayidx10 = getelementptr i8, ptr %15, i32 %d_size.048
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx10, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #8
  %conv = zext i16 %18 to i32
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %mul.i = shl nuw nsw i32 %conv, 4
  %spec.select = select i1 %tobool.not.i, i32 %conv, i32 %mul.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #8
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %.sink = phi i32 [ 4, %if.then8 ], [ 2, %if.end.for.inc_crit_edge ]
  %add14 = add i32 %d_size.048, %.sink
  %24 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %active_scan_mask, align 4
  %26 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %masklength, align 8
  %add19 = add nuw i32 %i.049, 1
  %call20 = tail call i32 @_find_next_bit_be(ptr noundef %25, i32 noundef %27, i32 noundef %add19) #8
  %28 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call20, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer21 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %buffer21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer21, align 4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scan_timestamp.i, align 8, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i44 = icmp eq i8 %33, 0
  br i1 %tobool.not.i44, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i45

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i45:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %data, i32 0, i32 6
  %34 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %37, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %31, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %35, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i45, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %31) #8
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %39 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %40) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_thresh_event_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %thresh_buf.i129.i = alloca i16, align 2
  %thresh_buf.i126.i = alloca i16, align 2
  %thresh_buf.i121.i = alloca i16, align 2
  %thresh_buf.i.i = alloca i16, align 2
  %d0_reg_buf = alloca [2 x i8], align 2
  %op_reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d0_reg_buf) #8
  %2 = ptrtoint ptr %d0_reg_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %d0_reg_buf, align 2, !annotation !136
  %3 = getelementptr inbounds [2 x i8], ptr %d0_reg_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op_reg_val) #8
  %5 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %op_reg_val, align 4, !annotation !136
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %op_reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %op_reg_val, align 4
  %and2 = and i32 %9, -15
  store i32 %and2, ptr %op_reg_val, align 4
  %cur_opmode = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %cur_opmode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp3.not = icmp eq i32 %11, 6
  br i1 %cmp3.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_write(ptr noundef %13, i32 noundef 0, i32 noundef %and2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then5.done_crit_edge, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %and14 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.end12.if.end51_crit_edge, label %if.then15

if.end12.if.end51_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then15:                                        ; preds = %if.end12
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 12, ptr noundef nonnull %d0_reg_buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then15.done_crit_edge, label %if.end21

if.then15.done_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end21:                                         ; preds = %if.then15
  %16 = ptrtoint ptr %d0_reg_buf to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %d0_reg_buf, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #8
  %conv24 = zext i16 %18 to i32
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 16000, i16 %18)
  %cmp.i = icmp ugt i16 %18, 16000
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.end27_crit_edge

if.then.i.if.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 7, ptr noundef %flags.i) #8
  br label %if.then10.i

if.else.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %18)
  %cmp3.i = icmp ult i16 %18, 1000
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.if.end27_crit_edge

if.else.i.if.end27_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 7, ptr noundef %flags.i) #8
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then4.i, %if.then1.i
  %new_range.0.i = phi i32 [ 3, %if.then4.i ], [ 7, %if.then1.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i.i) #8
  %22 = ptrtoint ptr %thresh_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %thresh_buf.i.i, align 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call12.i.i = call i32 @regmap_bulk_write(ptr noundef %24, i32 noundef 6, ptr noundef nonnull %thresh_buf.i.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp12.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp12.i, label %if.then10.i.cleanup.sink.split.i_crit_edge, label %if.end15.i

if.then10.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.then10.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i121.i) #8
  %25 = ptrtoint ptr %thresh_buf.i121.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %thresh_buf.i121.i, align 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call12.i123.i = call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %thresh_buf.i121.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i121.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i123.i)
  %cmp17.i = icmp slt i32 %call12.i123.i, 0
  br i1 %cmp17.i, label %if.end15.i.cleanup.sink.split.i_crit_edge, label %if.end25.i

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end25.i:                                       ; preds = %if.end15.i
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp27.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp27.i, label %if.end25.i.cleanup.sink.split.i_crit_edge, label %if.end35.i

if.end25.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end35.i:                                       ; preds = %if.end25.i
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i124.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 1, i32 noundef 7, i32 noundef %new_range.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.i)
  %cmp39.i = icmp slt i32 %call.i124.i, 0
  br i1 %cmp39.i, label %if.end35.i.cleanup.sink.split.i_crit_edge, label %if.end47.i

if.end35.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end47.i:                                       ; preds = %if.end35.i
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i125.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %cmp50.i = icmp slt i32 %call.i125.i, 0
  br i1 %cmp50.i, label %if.end47.i.cleanup.sink.split.i_crit_edge, label %if.end58.i

if.end47.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end58.i:                                       ; preds = %if.end47.i
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool61.not.i = icmp eq i32 %36, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end73.i_crit_edge, label %if.then62.i

if.end58.i.if.end73.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then62.i:                                      ; preds = %if.end58.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i126.i) #8
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i, align 4
  %39 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool1.not.i.i = icmp eq i32 %39, 0
  %arrayidx7.i.i = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.i.i, align 4
  %div22.i.i = lshr i32 %41, 4
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 16000) #8
  %thresh_reg_val.0.i.i = select i1 %tobool1.not.i.i, i32 %42, i32 %div22.i.i
  %conv.i.i = trunc i32 %thresh_reg_val.0.i.i to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  %44 = ptrtoint ptr %thresh_buf.i126.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %thresh_buf.i126.i, align 2
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call12.i128.i = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 6, ptr noundef nonnull %thresh_buf.i126.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i126.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i128.i)
  %cmp64.i = icmp slt i32 %call12.i128.i, 0
  br i1 %cmp64.i, label %if.then62.i.cleanup.sink.split.i_crit_edge, label %if.then62.i.if.end73.i_crit_edge

if.then62.i.if.end73.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i

if.then62.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end73.i:                                       ; preds = %if.then62.i.if.end73.i_crit_edge, %if.end58.i.if.end73.i_crit_edge
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags.i, align 4
  %49 = and i32 %48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool76.not.i = icmp eq i32 %49, 0
  br i1 %tobool76.not.i, label %if.end73.i.done_crit_edge, label %if.then77.i

if.end73.i.done_crit_edge:                        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then77.i:                                      ; preds = %if.end73.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i129.i) #8
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i, align 4
  %52 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool1.not.i131.i = icmp eq i32 %52, 0
  %arrayidx7.i132.i = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 0
  %53 = ptrtoint ptr %arrayidx7.i132.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i132.i, align 4
  %div22.i133.i = lshr i32 %54, 4
  %55 = call i32 @llvm.umin.i32(i32 %54, i32 16000) #8
  %thresh_reg_val.0.i136.i = select i1 %tobool1.not.i131.i, i32 %55, i32 %div22.i133.i
  %conv.i137.i = trunc i32 %thresh_reg_val.0.i136.i to i16
  %56 = call i16 @llvm.bswap.i16(i16 %conv.i137.i) #8
  %57 = ptrtoint ptr %thresh_buf.i129.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %thresh_buf.i129.i, align 2
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call12.i139.i = call i32 @regmap_bulk_write(ptr noundef %59, i32 noundef 4, ptr noundef nonnull %thresh_buf.i129.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i129.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i139.i)
  %cmp79.i = icmp slt i32 %call12.i139.i, 0
  br i1 %cmp79.i, label %if.then77.i.cleanup.sink.split.i_crit_edge, label %if.then77.i.done_crit_edge

if.then77.i.done_crit_edge:                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then77.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then77.i.cleanup.sink.split.i_crit_edge, %if.then62.i.cleanup.sink.split.i_crit_edge, %if.end47.i.cleanup.sink.split.i_crit_edge, %if.end35.i.cleanup.sink.split.i_crit_edge, %if.end25.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge, %if.then10.i.cleanup.sink.split.i_crit_edge
  %.str.52.sink.i = phi ptr [ @.str.38, %if.then10.i.cleanup.sink.split.i_crit_edge ], [ @.str.38, %if.end15.i.cleanup.sink.split.i_crit_edge ], [ @.str.43, %if.end25.i.cleanup.sink.split.i_crit_edge ], [ @.str.46, %if.end35.i.cleanup.sink.split.i_crit_edge ], [ @.str.49, %if.end47.i.cleanup.sink.split.i_crit_edge ], [ @.str.52, %if.then62.i.cleanup.sink.split.i_crit_edge ], [ @.str.52, %if.then77.i.cleanup.sink.split.i_crit_edge ]
  %client85.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %client85.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client85.i, align 4
  %dev86.i = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86.i, ptr noundef nonnull %.str.52.sink.i) #11
  br label %if.end27

if.end27:                                         ; preds = %cleanup.sink.split.i, %if.else.i.if.end27_crit_edge, %if.then.i.if.end27_crit_edge
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i, align 4
  %64 = and i32 %63, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i112 = icmp eq i32 %64, 0
  %mul.i = shl nuw nsw i32 %conv24, 4
  %spec.select = select i1 %tobool.not.i112, i32 %conv24, i32 %mul.i
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %flags.i, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool29.not = icmp eq i32 %67, 0
  br i1 %tobool29.not, label %if.end27.if.end37_crit_edge, label %if.then30

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then30:                                        ; preds = %if.end27
  %arrayidx = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %69)
  %cmp31 = icmp ugt i32 %spec.select, %69
  br i1 %cmp31, label %if.then33, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call i64 @iio_get_time_ns(ptr noundef %data) #8
  %call35 = call i32 @iio_push_event(ptr noundef %data, i64 noundef 299092932558848, i64 noundef %call34) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.then30.if.end37_crit_edge, %if.end27.if.end37_crit_edge
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i, align 4
  %72 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool40.not = icmp eq i32 %72, 0
  br i1 %tobool40.not, label %if.end37.if.end51_crit_edge, label %if.then41

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then41:                                        ; preds = %if.end37
  %thresh_val42 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9
  %73 = ptrtoint ptr %thresh_val42 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %thresh_val42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %74)
  %cmp44 = icmp ult i32 %spec.select, %74
  br i1 %cmp44, label %if.then46, label %if.then41.if.end51_crit_edge

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i64 @iio_get_time_ns(ptr noundef %data) #8
  %call48 = call i32 @iio_push_event(ptr noundef %data, i64 noundef 580567909269504, i64 noundef %call47) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then41.if.end51_crit_edge, %if.end37.if.end51_crit_edge, %if.end12.if.end51_crit_edge
  %75 = ptrtoint ptr %cur_opmode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur_opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %switch = icmp ult i32 %76, 3
  %flags63 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  br i1 %switch, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 8, ptr noundef %flags63) #8
  %data_ready_queue = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 12
  call void @__wake_up(ptr noundef %data_ready_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %done

if.end64:                                         ; preds = %if.end51
  %77 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %flags63, align 4
  %and1.i106 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i106)
  %tobool67.not = icmp eq i32 %and1.i106, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.end64.if.then76_crit_edge

if.end64.if.then76_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false68:                                  ; preds = %if.end64
  %79 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags63, align 4
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool71.not = icmp eq i32 %81, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %lor.lhs.false68.if.then76_crit_edge

lor.lhs.false68.if.then76_crit_edge:              ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %82 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags63, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool75.not = icmp eq i32 %84, 0
  br i1 %tobool75.not, label %lor.lhs.false72.done_crit_edge, label %lor.lhs.false72.if.then76_crit_edge

lor.lhs.false72.if.then76_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

lor.lhs.false72.done_crit_edge:                   ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then76:                                        ; preds = %lor.lhs.false72.if.then76_crit_edge, %lor.lhs.false68.if.then76_crit_edge, %if.end64.if.then76_crit_edge
  %work = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 11
  %call77 = call zeroext i1 @irq_work_queue(ptr noundef %work) #8
  br label %done

done:                                             ; preds = %if.then76, %lor.lhs.false72.done_crit_edge, %if.then62, %if.then77.i.done_crit_edge, %if.end73.i.done_crit_edge, %if.then15.done_crit_edge, %if.then5.done_crit_edge, %entry.done_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op_reg_val) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d0_reg_buf) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gp2ap020a00f_iio_trigger_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trig = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_poll(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gp2ap020a00f_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %reg)
  %0 = icmp ult i32 %reg, 18
  %switch.cast = trunc i32 %reg to i18
  %switch.downshift = lshr i18 -4095, %switch.cast
  %1 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cmp = icmp eq i32 %mask, 0
  br i1 %cmp, label %if.then, label %entry.if.end4.thread_crit_edge

entry.if.end4.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %scan_index.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %scan_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.i = icmp ult i32 %3, 3
  br i1 %switch.i, label %sw.epilog.i, label %if.end.if.end4.thread15_crit_edge

if.end.if.end4.thread15_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread15

sw.epilog.i:                                      ; preds = %if.end
  %call.i = tail call fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %1, i32 noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %client.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26) #11
  br label %if.end4.thread15

if.end.i:                                         ; preds = %sw.epilog.i
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address.i, align 4
  %call3.i = tail call fastcc i32 @gp2ap020a00f_read_output(ptr noundef %1, i32 noundef %7, ptr noundef %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %client9.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %client9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client9.i, align 4
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.29) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end8.i, %if.end.i.if.end11.i_crit_edge
  %regmap39.i.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %regmap39.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap39.i.i, align 4
  %call.i75.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 241, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i)
  %cmp44.i.i = icmp slt i32 %call.i75.i.i, 0
  br i1 %cmp44.i.i, label %do.end17.i, label %gp2ap020a00f_set_operation_mode.exit.i

gp2ap020a00f_set_operation_mode.exit.i:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %cur_opmode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %cur_opmode.i.i, align 4
  br label %if.end20.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %client18.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %client18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client18.i, align 4
  %dev19.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19.i, ptr noundef nonnull @.str.32) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end17.i, %gp2ap020a00f_set_operation_mode.exit.i
  %retval.0.i42.i = phi i32 [ %call.i75.i.i, %do.end17.i ], [ 0, %gp2ap020a00f_set_operation_mode.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch39.i = icmp ult i32 %3, 2
  br i1 %switch39.i, label %if.then23.i, label %if.end20.i.if.end4_crit_edge

if.end20.i.if.end4_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then23.i:                                      ; preds = %if.end20.i
  %flags.i.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i, align 4
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.then23.i.if.end4_crit_edge, label %if.then.i.i

if.then23.i.if.end4_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %mul.i.i = shl i32 %19, 4
  store i32 %mul.i.i, ptr %val, align 4
  br label %if.end4

if.end4.thread15:                                 ; preds = %do.end.i, %if.end.if.end4.thread15_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %do.end.i ], [ -22, %if.end.if.end4.thread15_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %if.end4.thread

if.end4:                                          ; preds = %if.then.i.i, %if.then23.i.if.end4_crit_edge, %if.end20.i.if.end4_crit_edge
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i42.i)
  %cmp5 = icmp slt i32 %retval.0.i42.i, 0
  br i1 %cmp5, label %if.end4.if.end4.thread_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.if.end4.thread_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread

if.end4.thread:                                   ; preds = %if.end4.if.end4.thread_crit_edge, %if.end4.thread15, %entry.if.end4.thread_crit_edge
  %err.014 = phi i32 [ %retval.0.i42.i, %if.end4.if.end4.thread_crit_edge ], [ %retval.0.i.ph, %if.end4.thread15 ], [ -22, %entry.if.end4.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end4.thread, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ %err.014, %if.end4.thread ], [ 1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 6, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %flags = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %6, 3
  %and1.i = and i32 %shr.i, 1
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i21 = lshr i32 %6, 4
  %and1.i22 = and i32 %shr.i21, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp6 = icmp eq i32 %dir, 1
  %flags8 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags8, align 4
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i23 = lshr i32 %8, 5
  %and1.i24 = and i32 %shr.i23, 1
  br label %sw.epilog

if.else10:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i25 = lshr i32 %8, 6
  %and1.i26 = and i32 %shr.i25, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else10, %if.then7, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %event_en.0 = phi i32 [ %and1.i24, %if.then7 ], [ %and1.i26, %if.else10 ], [ %and1.i, %if.then ], [ %and1.i22, %if.else ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %event_en.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 6, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  %cond.i = select i1 %tobool.not.i, i32 14, i32 13
  %cond2.i = select i1 %tobool.not.i, i32 16, i32 15
  br i1 %tobool.not.i, label %sw.bb.if.end10.i_crit_edge, label %if.then.i

sw.bb.if.end10.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i:                                        ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.gp2ap020a00f_data, ptr %6, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i.sw.epilog_crit_edge, label %if.end.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  %arrayidx6.i = getelementptr %struct.gp2ap020a00f_data, ptr %6, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.i = icmp eq i32 %10, 0
  br i1 %cmp7.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end.i.if.end10.i_crit_edge, %sw.bb.if.end10.i_crit_edge
  %call11.i = tail call fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %6, i32 noundef %cond.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.sw.epilog_crit_edge, label %if.end14.i

if.end10.i.sw.epilog_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end14.i:                                       ; preds = %if.end10.i
  %call15.i = tail call fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %6, i32 noundef %cond2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.sw.epilog_crit_edge, label %if.end18.i

if.end14.i.sw.epilog_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end18.i:                                       ; preds = %if.end14.i
  %client.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  %call19.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %indio_dev) #8
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %irq26.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq26.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef null, ptr noundef nonnull @gp2ap020a00f_prox_sensing_handler, i32 noundef 8195, ptr noundef nonnull @.str.36, ptr noundef %indio_dev) #8
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef null, ptr noundef nonnull @gp2ap020a00f_thresh_event_handler, i32 noundef 8194, ptr noundef nonnull @.str.37, ptr noundef %indio_dev) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool.not, i32 10, i32 9
  %call4 = tail call fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %1, i32 noundef %cond)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %cond6 = select i1 %tobool.not, i32 12, i32 11
  %call7 = tail call fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %1, i32 noundef %cond6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %if.else.i, %if.then21.i, %if.end14.i.sw.epilog_crit_edge, %if.end10.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ %call4, %if.then ], [ %call7, %if.else ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %if.then.i.sw.epilog_crit_edge ], [ -22, %if.end.i.sw.epilog_crit_edge ], [ %call11.i, %if.end10.i.sw.epilog_crit_edge ], [ %call15.i, %if.end14.i.sw.epilog_crit_edge ], [ %call24.i, %if.then21.i ], [ %call27.i, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_read_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %3, label %entry.error_unlock_crit_edge [
    i32 8, label %sw.bb.i
    i32 6, label %sw.bb1.i
  ]

entry.error_unlock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %..i = select i1 %cmp.i, i32 10, i32 8
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2.i = icmp eq i32 %dir, 1
  %.6.i = select i1 %cmp2.i, i32 6, i32 4
  br label %if.end

if.end:                                           ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i.ph = phi i32 [ %.6.i, %sw.bb1.i ], [ %..i, %sw.bb.i ]
  %sub = add nuw nsw i32 %retval.0.i.ph, 252
  %div111213 = lshr exact i32 %sub, 1
  %div11.zext = and i32 %div111213, 127
  %arrayidx = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div11.zext
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %error_unlock

error_unlock:                                     ; preds = %if.end, %entry.error_unlock_crit_edge
  %err.0 = phi i32 [ 1, %if.end ], [ -22, %entry.error_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_write_event_val(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %thresh_buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %3, label %entry.error_unlock_crit_edge [
    i32 8, label %sw.bb.i
    i32 6, label %sw.bb1.i
  ]

entry.error_unlock_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 1
  %..i = select i1 %cmp.i, i8 10, i8 8
  br label %gp2ap020a00f_get_thresh_reg.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp2.i = icmp eq i32 %dir, 1
  %.6.i = select i1 %cmp2.i, i8 6, i8 4
  br label %gp2ap020a00f_get_thresh_reg.exit

gp2ap020a00f_get_thresh_reg.exit:                 ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi i8 [ %..i, %sw.bb.i ], [ %.6.i, %sw.bb1.i ]
  %sub = add nsw i8 %retval.0.i, -4
  %div636465 = lshr exact i8 %sub, 1
  %div63.zext = zext i8 %div636465 to i32
  %5 = lshr exact i8 %retval.0.i, 1
  %6 = trunc i8 %5 to i3
  %trunc66 = xor i3 %6, -4
  %7 = zext i3 %trunc66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.61)
  switch i3 %trunc66, label %sw.epilog.thread [
    i3 -1, label %sw.epilog
    i3 -2, label %sw.bb7
    i3 1, label %sw.bb12
    i3 0, label %sw.bb21
  ]

sw.epilog.thread:                                 ; preds = %gp2ap020a00f_get_thresh_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx59 = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div63.zext
  %8 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %val, ptr %arrayidx59, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br label %gp2ap020a00f_write_event_threshold.exit

sw.bb7:                                           ; preds = %gp2ap020a00f_get_thresh_reg.exit
  %flags8 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags8, align 4
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  %arrayidx62 = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div63.zext
  %12 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %val, ptr %arrayidx62, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br i1 %tobool10.not, label %sw.bb7.gp2ap020a00f_write_event_threshold.exit_crit_edge, label %sw.bb7.if.else.i_crit_edge

sw.bb7.if.else.i_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

sw.bb7.gp2ap020a00f_write_event_threshold.exit_crit_edge: ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %gp2ap020a00f_write_event_threshold.exit

sw.bb12:                                          ; preds = %gp2ap020a00f_get_thresh_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp13 = icmp eq i32 %val, 0
  br i1 %cmp13, label %sw.bb12.error_unlock_crit_edge, label %if.end16

sw.bb12.error_unlock_crit_edge:                   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

if.end16:                                         ; preds = %sw.bb12
  %flags17 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags17, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  %arrayidx61 = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div63.zext
  %16 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %val, ptr %arrayidx61, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br i1 %tobool19.not, label %if.end16.gp2ap020a00f_write_event_threshold.exit_crit_edge, label %if.end16.if.else.i_crit_edge

if.end16.if.else.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end16.gp2ap020a00f_write_event_threshold.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %gp2ap020a00f_write_event_threshold.exit

sw.bb21:                                          ; preds = %gp2ap020a00f_get_thresh_reg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp22 = icmp eq i32 %val, 0
  br i1 %cmp22, label %sw.bb21.error_unlock_crit_edge, label %if.end25

sw.bb21.error_unlock_crit_edge:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

if.end25:                                         ; preds = %sw.bb21
  %flags26 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags26, align 4
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  %arrayidx60 = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div63.zext
  %20 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val, ptr %arrayidx60, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br i1 %tobool28.not, label %if.end25.gp2ap020a00f_write_event_threshold.exit_crit_edge, label %if.end25.if.else.i_crit_edge

if.end25.if.else.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end25.gp2ap020a00f_write_event_threshold.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %gp2ap020a00f_write_event_threshold.exit

sw.epilog:                                        ; preds = %gp2ap020a00f_get_thresh_reg.exit
  %flags = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  %arrayidx = getelementptr %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 9, i32 %div63.zext
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %val, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br i1 %tobool.not, label %sw.epilog.gp2ap020a00f_write_event_threshold.exit_crit_edge, label %sw.epilog.if.else.i_crit_edge

sw.epilog.if.else.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

sw.epilog.gp2ap020a00f_write_event_threshold.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %gp2ap020a00f_write_event_threshold.exit

if.else.i:                                        ; preds = %sw.epilog.if.else.i_crit_edge, %if.end25.if.else.i_crit_edge, %if.end16.if.else.i_crit_edge, %sw.bb7.if.else.i_crit_edge
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  %28 = and i32 %div63.zext, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp eq i32 %28, 2
  %30 = or i1 %29, %tobool1.not.i
  br i1 %30, label %if.else5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %div22.i = lshr i32 %val, 4
  br label %gp2ap020a00f_write_event_threshold.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call i32 @llvm.umin.i32(i32 %val, i32 16000) #8
  br label %gp2ap020a00f_write_event_threshold.exit

gp2ap020a00f_write_event_threshold.exit:          ; preds = %if.else5.i, %if.then4.i, %sw.epilog.gp2ap020a00f_write_event_threshold.exit_crit_edge, %if.end25.gp2ap020a00f_write_event_threshold.exit_crit_edge, %if.end16.gp2ap020a00f_write_event_threshold.exit_crit_edge, %sw.bb7.gp2ap020a00f_write_event_threshold.exit_crit_edge, %sw.epilog.thread
  %thresh_reg_val.0.i = phi i32 [ %div22.i, %if.then4.i ], [ %31, %if.else5.i ], [ 0, %sw.epilog.gp2ap020a00f_write_event_threshold.exit_crit_edge ], [ 0, %sw.epilog.thread ], [ 0, %if.end25.gp2ap020a00f_write_event_threshold.exit_crit_edge ], [ 0, %if.end16.gp2ap020a00f_write_event_threshold.exit_crit_edge ], [ 0, %sw.bb7.gp2ap020a00f_write_event_threshold.exit_crit_edge ]
  %conv.i = trunc i32 %thresh_reg_val.0.i to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %33 = ptrtoint ptr %thresh_buf.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %thresh_buf.i, align 2
  %regmap.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl nuw nsw i32 %div63.zext, 1
  %add.i = add nuw nsw i32 %mul.i, 4
  %call12.i = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef %add.i, ptr noundef nonnull %thresh_buf.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br label %error_unlock

error_unlock:                                     ; preds = %gp2ap020a00f_write_event_threshold.exit, %sw.bb21.error_unlock_crit_edge, %sw.bb12.error_unlock_crit_edge, %entry.error_unlock_crit_edge
  %err.0 = phi i32 [ %call12.i, %gp2ap020a00f_write_event_threshold.exit ], [ -22, %sw.bb12.error_unlock_crit_edge ], [ -22, %sw.bb21.error_unlock_crit_edge ], [ -22, %entry.error_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp2ap020a00f_exec_cmd(ptr noundef %data, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %thresh_buf.i443 = alloca i16, align 2
  %thresh_buf.i417 = alloca i16, align 2
  %thresh_buf.i400 = alloca i16, align 2
  %thresh_buf.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb7
    i32 3, label %sw.bb13
    i32 4, label %sw.bb22
    i32 5, label %sw.bb28
    i32 6, label %sw.bb38
    i32 7, label %sw.bb44
    i32 8, label %sw.bb51
    i32 9, label %sw.bb54
    i32 10, label %sw.bb72
    i32 11, label %sw.bb87
    i32 12, label %sw.bb106
    i32 13, label %sw.bb121
    i32 14, label %sw.bb141
    i32 15, label %sw.bb153
    i32 16, label %sw.bb174
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %cur_opmode = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %1 = ptrtoint ptr %cur_opmode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %cmp.not = icmp eq i32 %2, 7
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef 0)
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %cur_opmode2 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %3 = ptrtoint ptr %cur_opmode2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_opmode2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp3.not = icmp eq i32 %4, 7
  br i1 %cmp3.not, label %if.end5, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef 1)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %cur_opmode8 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %cur_opmode8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_opmode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp9.not = icmp eq i32 %6, 7
  br i1 %cmp9.not, label %if.end11, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef 2)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %cur_opmode14 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %7 = ptrtoint ptr %cur_opmode14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_opmode14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp15 = icmp eq i32 %8, 6
  br i1 %cmp15, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

lor.lhs.false.i:                                  ; preds = %if.end17
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.end21_crit_edge

lor.lhs.false.i.if.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %gp2ap020a00f_als_enabled.exit, label %lor.lhs.false4.i.if.end21_crit_edge

lor.lhs.false4.i.if.end21_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

gp2ap020a00f_als_enabled.exit:                    ; preds = %lor.lhs.false4.i
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags.i, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.i.not = icmp eq i32 %19, 0
  br i1 %tobool10.i.not, label %if.then19, label %gp2ap020a00f_als_enabled.exit.if.end21_crit_edge

gp2ap020a00f_als_enabled.exit.if.end21_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %gp2ap020a00f_als_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp4.i = icmp eq i32 %8, 7
  %diff_mode..i = select i1 %cmp4.i, i32 3, i32 5
  %call.i = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %diff_mode..i) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %gp2ap020a00f_als_enabled.exit.if.end21_crit_edge, %lor.lhs.false4.i.if.end21_crit_edge, %lor.lhs.false.i.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %err.0 = phi i32 [ 0, %gp2ap020a00f_als_enabled.exit.if.end21_crit_edge ], [ %call.i, %if.then19 ], [ 0, %lor.lhs.false4.i.if.end21_crit_edge ], [ 0, %lor.lhs.false.i.if.end21_crit_edge ], [ 0, %if.end17.if.end21_crit_edge ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %flags23 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags23) #8
  %20 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags23, align 4
  %and1.i.i285 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i285)
  %tobool.not.i286 = icmp eq i32 %and1.i.i285, 0
  br i1 %tobool.not.i286, label %lor.lhs.false.i288, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i288:                               ; preds = %sw.bb22
  %22 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags23, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not.i287 = icmp eq i32 %24, 0
  br i1 %tobool3.not.i287, label %lor.lhs.false4.i290, label %lor.lhs.false.i288.cleanup_crit_edge

lor.lhs.false.i288.cleanup_crit_edge:             ; preds = %lor.lhs.false.i288
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4.i290:                              ; preds = %lor.lhs.false.i288
  %25 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags23, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.i289 = icmp eq i32 %27, 0
  br i1 %tobool7.not.i289, label %gp2ap020a00f_als_enabled.exit293, label %lor.lhs.false4.i290.cleanup_crit_edge

lor.lhs.false4.i290.cleanup_crit_edge:            ; preds = %lor.lhs.false4.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gp2ap020a00f_als_enabled.exit293:                 ; preds = %lor.lhs.false4.i290
  %28 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags23, align 4
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.i291.not = icmp eq i32 %30, 0
  br i1 %tobool10.i291.not, label %if.end26, label %gp2ap020a00f_als_enabled.exit293.cleanup_crit_edge

gp2ap020a00f_als_enabled.exit293.cleanup_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit293
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %gp2ap020a00f_als_enabled.exit293
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i294 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %31 = ptrtoint ptr %cur_opmode.i294 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_opmode.i294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp9.i = icmp eq i32 %32, 5
  %spec.select = select i1 %cmp9.i, i32 4, i32 7
  %call.i295 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %spec.select) #8
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  %cur_opmode29 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %33 = ptrtoint ptr %cur_opmode29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_opmode29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %cmp30 = icmp eq i32 %34, 6
  br i1 %cmp30, label %sw.bb28.cleanup_crit_edge, label %if.end32

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %sw.bb28
  %flags.i296 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i296 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags.i296, align 4
  %and1.i.i297 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i297)
  %tobool.not.i298 = icmp eq i32 %and1.i.i297, 0
  br i1 %tobool.not.i298, label %lor.lhs.false.i300, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

lor.lhs.false.i300:                               ; preds = %if.end32
  %37 = ptrtoint ptr %flags.i296 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags.i296, align 4
  %39 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool3.not.i299 = icmp eq i32 %39, 0
  br i1 %tobool3.not.i299, label %lor.lhs.false4.i302, label %lor.lhs.false.i300.if.end36_crit_edge

lor.lhs.false.i300.if.end36_crit_edge:            ; preds = %lor.lhs.false.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

lor.lhs.false4.i302:                              ; preds = %lor.lhs.false.i300
  %40 = ptrtoint ptr %flags.i296 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags.i296, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not.i301 = icmp eq i32 %42, 0
  br i1 %tobool7.not.i301, label %gp2ap020a00f_als_enabled.exit305, label %lor.lhs.false4.i302.if.end36_crit_edge

lor.lhs.false4.i302.if.end36_crit_edge:           ; preds = %lor.lhs.false4.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

gp2ap020a00f_als_enabled.exit305:                 ; preds = %lor.lhs.false4.i302
  %43 = ptrtoint ptr %flags.i296 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %flags.i296, align 4
  %45 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool10.i303.not = icmp eq i32 %45, 0
  br i1 %tobool10.i303.not, label %if.then34, label %gp2ap020a00f_als_enabled.exit305.if.end36_crit_edge

gp2ap020a00f_als_enabled.exit305.if.end36_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit305
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %gp2ap020a00f_als_enabled.exit305
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp4.i307 = icmp eq i32 %34, 7
  %diff_mode..i308 = select i1 %cmp4.i307, i32 3, i32 5
  %call.i310 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %diff_mode..i308) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %gp2ap020a00f_als_enabled.exit305.if.end36_crit_edge, %lor.lhs.false4.i302.if.end36_crit_edge, %lor.lhs.false.i300.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %err.1 = phi i32 [ 0, %gp2ap020a00f_als_enabled.exit305.if.end36_crit_edge ], [ %call.i310, %if.then34 ], [ 0, %lor.lhs.false4.i302.if.end36_crit_edge ], [ 0, %lor.lhs.false.i300.if.end36_crit_edge ], [ 0, %if.end32.if.end36_crit_edge ]
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i296) #8
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %flags39 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags39) #8
  %46 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags39, align 4
  %and1.i.i312 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i312)
  %tobool.not.i313 = icmp eq i32 %and1.i.i312, 0
  br i1 %tobool.not.i313, label %lor.lhs.false.i315, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i315:                               ; preds = %sw.bb38
  %48 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags39, align 4
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool3.not.i314 = icmp eq i32 %50, 0
  br i1 %tobool3.not.i314, label %lor.lhs.false4.i317, label %lor.lhs.false.i315.cleanup_crit_edge

lor.lhs.false.i315.cleanup_crit_edge:             ; preds = %lor.lhs.false.i315
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4.i317:                              ; preds = %lor.lhs.false.i315
  %51 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags39, align 4
  %53 = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i316 = icmp eq i32 %53, 0
  br i1 %tobool7.not.i316, label %gp2ap020a00f_als_enabled.exit320, label %lor.lhs.false4.i317.cleanup_crit_edge

lor.lhs.false4.i317.cleanup_crit_edge:            ; preds = %lor.lhs.false4.i317
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gp2ap020a00f_als_enabled.exit320:                 ; preds = %lor.lhs.false4.i317
  %54 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags39, align 4
  %56 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.i318.not = icmp eq i32 %56, 0
  br i1 %tobool10.i318.not, label %if.end42, label %gp2ap020a00f_als_enabled.exit320.cleanup_crit_edge

gp2ap020a00f_als_enabled.exit320.cleanup_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit320
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %gp2ap020a00f_als_enabled.exit320
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i321 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %57 = ptrtoint ptr %cur_opmode.i321 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cur_opmode.i321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp9.i322 = icmp eq i32 %58, 5
  %spec.select450 = select i1 %cmp9.i322, i32 4, i32 7
  %call.i325 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %spec.select450) #8
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %cur_opmode45 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %59 = ptrtoint ptr %cur_opmode45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_opmode45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %60)
  %cmp46 = icmp eq i32 %60, 6
  br i1 %cmp46, label %sw.bb44.cleanup_crit_edge, label %if.end48

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %60)
  %cmp4.i328 = icmp eq i32 %60, 7
  %diff_mode..i329 = select i1 %cmp4.i328, i32 4, i32 5
  %call.i331 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %diff_mode..i329) #8
  %flags50 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags50) #8
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags52 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags52) #8
  %cur_opmode.i332 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %61 = ptrtoint ptr %cur_opmode.i332 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_opmode.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %62)
  %cmp9.i333 = icmp eq i32 %62, 5
  %spec.select451 = select i1 %cmp9.i333, i32 3, i32 7
  %call.i336 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %spec.select451) #8
  br label %cleanup

sw.bb54:                                          ; preds = %entry
  %flags55 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %63 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags55, align 4
  %65 = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not = icmp eq i32 %65, 0
  br i1 %tobool.not, label %if.end58, label %sw.bb54.cleanup_crit_edge

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %sw.bb54
  %cur_opmode59 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %66 = ptrtoint ptr %cur_opmode59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_opmode59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp60 = icmp eq i32 %67, 6
  br i1 %cmp60, label %if.end58.cleanup_crit_edge, label %if.end62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %68 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags55, align 4
  %and1.i.i339 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i339)
  %tobool.not.i340 = icmp eq i32 %and1.i.i339, 0
  br i1 %tobool.not.i340, label %lor.lhs.false.i342, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

lor.lhs.false.i342:                               ; preds = %if.end62
  %70 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags55, align 4
  %72 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool3.not.i341 = icmp eq i32 %72, 0
  br i1 %tobool3.not.i341, label %lor.lhs.false4.i344, label %lor.lhs.false.i342.if.end69_crit_edge

lor.lhs.false.i342.if.end69_crit_edge:            ; preds = %lor.lhs.false.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

lor.lhs.false4.i344:                              ; preds = %lor.lhs.false.i342
  %73 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags55, align 4
  %75 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool7.not.i343 = icmp eq i32 %75, 0
  br i1 %tobool7.not.i343, label %gp2ap020a00f_als_enabled.exit347, label %lor.lhs.false4.i344.if.end69_crit_edge

lor.lhs.false4.i344.if.end69_crit_edge:           ; preds = %lor.lhs.false4.i344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

gp2ap020a00f_als_enabled.exit347:                 ; preds = %lor.lhs.false4.i344
  %76 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %flags55, align 4
  %78 = and i32 %77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool10.i345.not = icmp eq i32 %78, 0
  br i1 %tobool10.i345.not, label %if.then64, label %gp2ap020a00f_als_enabled.exit347.if.end69_crit_edge

gp2ap020a00f_als_enabled.exit347.if.end69_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64:                                        ; preds = %gp2ap020a00f_als_enabled.exit347
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %67)
  %cmp4.i349 = icmp eq i32 %67, 7
  %diff_mode..i350 = select i1 %cmp4.i349, i32 3, i32 5
  %call.i352 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %diff_mode..i350) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %cmp66 = icmp slt i32 %call.i352, 0
  br i1 %cmp66, label %if.then64.cleanup_crit_edge, label %if.then64.if.end69_crit_edge

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %gp2ap020a00f_als_enabled.exit347.if.end69_crit_edge, %lor.lhs.false4.i344.if.end69_crit_edge, %lor.lhs.false.i342.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags55) #8
  %call71 = tail call fastcc i32 @gp2ap020a00f_write_event_threshold(ptr noundef %data, i32 noundef 1, i1 noundef zeroext true)
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  %flags73 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %79 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags73, align 4
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool75.not = icmp eq i32 %81, 0
  br i1 %tobool75.not, label %sw.bb72.cleanup_crit_edge, label %if.end77

sw.bb72.cleanup_crit_edge:                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %sw.bb72
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags73) #8
  %82 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags73, align 4
  %and1.i.i354 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i354)
  %tobool.not.i355 = icmp eq i32 %and1.i.i354, 0
  br i1 %tobool.not.i355, label %lor.lhs.false.i357, label %if.end77.if.end85_crit_edge

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

lor.lhs.false.i357:                               ; preds = %if.end77
  %84 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %flags73, align 4
  %86 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool3.not.i356 = icmp eq i32 %86, 0
  br i1 %tobool3.not.i356, label %lor.lhs.false4.i359, label %lor.lhs.false.i357.if.end85_crit_edge

lor.lhs.false.i357.if.end85_crit_edge:            ; preds = %lor.lhs.false.i357
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

lor.lhs.false4.i359:                              ; preds = %lor.lhs.false.i357
  %87 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags73, align 4
  %89 = and i32 %88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool7.not.i358 = icmp eq i32 %89, 0
  br i1 %tobool7.not.i358, label %gp2ap020a00f_als_enabled.exit362, label %lor.lhs.false4.i359.if.end85_crit_edge

lor.lhs.false4.i359.if.end85_crit_edge:           ; preds = %lor.lhs.false4.i359
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

gp2ap020a00f_als_enabled.exit362:                 ; preds = %lor.lhs.false4.i359
  %90 = ptrtoint ptr %flags73 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %flags73, align 4
  %92 = and i32 %91, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool10.i360.not = icmp eq i32 %92, 0
  br i1 %tobool10.i360.not, label %if.then80, label %gp2ap020a00f_als_enabled.exit362.if.end85_crit_edge

gp2ap020a00f_als_enabled.exit362.if.end85_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then80:                                        ; preds = %gp2ap020a00f_als_enabled.exit362
  %cur_opmode.i363 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %93 = ptrtoint ptr %cur_opmode.i363 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_opmode.i363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %94)
  %cmp9.i364 = icmp eq i32 %94, 5
  %spec.select452 = select i1 %cmp9.i364, i32 4, i32 7
  %call.i367 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %spec.select452) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i367)
  %cmp82 = icmp slt i32 %call.i367, 0
  br i1 %cmp82, label %if.then80.cleanup_crit_edge, label %if.then80.if.end85_crit_edge

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %if.then80.if.end85_crit_edge, %gp2ap020a00f_als_enabled.exit362.if.end85_crit_edge, %lor.lhs.false4.i359.if.end85_crit_edge, %lor.lhs.false.i357.if.end85_crit_edge, %if.end77.if.end85_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  %95 = ptrtoint ptr %thresh_buf.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %thresh_buf.i, align 2
  %regmap.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %96 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i, align 4
  %call12.i = call i32 @regmap_bulk_write(ptr noundef %97, i32 noundef 6, ptr noundef nonnull %thresh_buf.i, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i) #8
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  %flags88 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %98 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags88, align 4
  %100 = and i32 %99, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool90.not = icmp eq i32 %100, 0
  br i1 %tobool90.not, label %if.end92, label %sw.bb87.cleanup_crit_edge

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end92:                                         ; preds = %sw.bb87
  %cur_opmode93 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %101 = ptrtoint ptr %cur_opmode93 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cur_opmode93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %102)
  %cmp94 = icmp eq i32 %102, 6
  br i1 %cmp94, label %if.end92.cleanup_crit_edge, label %if.end96

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  %103 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %flags88, align 4
  %and1.i.i370 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i370)
  %tobool.not.i371 = icmp eq i32 %and1.i.i370, 0
  br i1 %tobool.not.i371, label %lor.lhs.false.i373, label %if.end96.if.end103_crit_edge

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

lor.lhs.false.i373:                               ; preds = %if.end96
  %105 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %flags88, align 4
  %107 = and i32 %106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool3.not.i372 = icmp eq i32 %107, 0
  br i1 %tobool3.not.i372, label %lor.lhs.false4.i375, label %lor.lhs.false.i373.if.end103_crit_edge

lor.lhs.false.i373.if.end103_crit_edge:           ; preds = %lor.lhs.false.i373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

lor.lhs.false4.i375:                              ; preds = %lor.lhs.false.i373
  %108 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %flags88, align 4
  %110 = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool7.not.i374 = icmp eq i32 %110, 0
  br i1 %tobool7.not.i374, label %gp2ap020a00f_als_enabled.exit378, label %lor.lhs.false4.i375.if.end103_crit_edge

lor.lhs.false4.i375.if.end103_crit_edge:          ; preds = %lor.lhs.false4.i375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

gp2ap020a00f_als_enabled.exit378:                 ; preds = %lor.lhs.false4.i375
  %111 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %flags88, align 4
  %113 = and i32 %112, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool10.i376.not = icmp eq i32 %113, 0
  br i1 %tobool10.i376.not, label %if.then98, label %gp2ap020a00f_als_enabled.exit378.if.end103_crit_edge

gp2ap020a00f_als_enabled.exit378.if.end103_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit378
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then98:                                        ; preds = %gp2ap020a00f_als_enabled.exit378
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %102)
  %cmp4.i380 = icmp eq i32 %102, 7
  %diff_mode..i381 = select i1 %cmp4.i380, i32 3, i32 5
  %call.i383 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %diff_mode..i381) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %cmp100 = icmp slt i32 %call.i383, 0
  br i1 %cmp100, label %if.then98.cleanup_crit_edge, label %if.then98.if.end103_crit_edge

if.then98.if.end103_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %if.then98.if.end103_crit_edge, %gp2ap020a00f_als_enabled.exit378.if.end103_crit_edge, %lor.lhs.false4.i375.if.end103_crit_edge, %lor.lhs.false.i373.if.end103_crit_edge, %if.end96.if.end103_crit_edge
  tail call void @_set_bit(i32 noundef 6, ptr noundef %flags88) #8
  %call105 = tail call fastcc i32 @gp2ap020a00f_write_event_threshold(ptr noundef %data, i32 noundef 0, i1 noundef zeroext true)
  br label %cleanup

sw.bb106:                                         ; preds = %entry
  %flags107 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %114 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %flags107, align 4
  %116 = and i32 %115, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool109.not = icmp eq i32 %116, 0
  br i1 %tobool109.not, label %sw.bb106.cleanup_crit_edge, label %if.end111

sw.bb106.cleanup_crit_edge:                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end111:                                        ; preds = %sw.bb106
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags107) #8
  %117 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %flags107, align 4
  %and1.i.i385 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i385)
  %tobool.not.i386 = icmp eq i32 %and1.i.i385, 0
  br i1 %tobool.not.i386, label %lor.lhs.false.i388, label %if.end111.if.end119_crit_edge

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

lor.lhs.false.i388:                               ; preds = %if.end111
  %119 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %flags107, align 4
  %121 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool3.not.i387 = icmp eq i32 %121, 0
  br i1 %tobool3.not.i387, label %lor.lhs.false4.i390, label %lor.lhs.false.i388.if.end119_crit_edge

lor.lhs.false.i388.if.end119_crit_edge:           ; preds = %lor.lhs.false.i388
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

lor.lhs.false4.i390:                              ; preds = %lor.lhs.false.i388
  %122 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %flags107, align 4
  %124 = and i32 %123, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool7.not.i389 = icmp eq i32 %124, 0
  br i1 %tobool7.not.i389, label %gp2ap020a00f_als_enabled.exit393, label %lor.lhs.false4.i390.if.end119_crit_edge

lor.lhs.false4.i390.if.end119_crit_edge:          ; preds = %lor.lhs.false4.i390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

gp2ap020a00f_als_enabled.exit393:                 ; preds = %lor.lhs.false4.i390
  %125 = ptrtoint ptr %flags107 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %flags107, align 4
  %127 = and i32 %126, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool10.i391.not = icmp eq i32 %127, 0
  br i1 %tobool10.i391.not, label %if.then114, label %gp2ap020a00f_als_enabled.exit393.if.end119_crit_edge

gp2ap020a00f_als_enabled.exit393.if.end119_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit393
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then114:                                       ; preds = %gp2ap020a00f_als_enabled.exit393
  %cur_opmode.i394 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %128 = ptrtoint ptr %cur_opmode.i394 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cur_opmode.i394, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %129)
  %cmp9.i395 = icmp eq i32 %129, 5
  %spec.select453 = select i1 %cmp9.i395, i32 4, i32 7
  %call.i398 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef %spec.select453) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i398)
  %cmp116 = icmp slt i32 %call.i398, 0
  br i1 %cmp116, label %if.then114.cleanup_crit_edge, label %if.then114.if.end119_crit_edge

if.then114.if.end119_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then114.cleanup_crit_edge:                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %if.then114.if.end119_crit_edge, %gp2ap020a00f_als_enabled.exit393.if.end119_crit_edge, %lor.lhs.false4.i390.if.end119_crit_edge, %lor.lhs.false.i388.if.end119_crit_edge, %if.end111.if.end119_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i400) #8
  %130 = ptrtoint ptr %thresh_buf.i400 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %thresh_buf.i400, align 2
  %regmap.i401 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %131 = ptrtoint ptr %regmap.i401 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i401, align 4
  %call12.i402 = call i32 @regmap_bulk_write(ptr noundef %132, i32 noundef 4, ptr noundef nonnull %thresh_buf.i400, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i400) #8
  br label %cleanup

sw.bb121:                                         ; preds = %entry
  %flags122 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %133 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %flags122, align 4
  %135 = and i32 %134, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool124.not = icmp eq i32 %135, 0
  br i1 %tobool124.not, label %if.end126, label %sw.bb121.cleanup_crit_edge

sw.bb121.cleanup_crit_edge:                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end126:                                        ; preds = %sw.bb121
  %136 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %flags122, align 4
  %and1.i.i404 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i404)
  %tobool.not.i405 = icmp eq i32 %and1.i.i404, 0
  br i1 %tobool.not.i405, label %lor.lhs.false.i407, label %if.end126.cleanup_crit_edge

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i407:                               ; preds = %if.end126
  %138 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %flags122, align 4
  %140 = and i32 %139, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool3.not.i406 = icmp eq i32 %140, 0
  br i1 %tobool3.not.i406, label %lor.lhs.false4.i409, label %lor.lhs.false.i407.cleanup_crit_edge

lor.lhs.false.i407.cleanup_crit_edge:             ; preds = %lor.lhs.false.i407
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4.i409:                              ; preds = %lor.lhs.false.i407
  %141 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %flags122, align 4
  %143 = and i32 %142, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool7.not.i408 = icmp eq i32 %143, 0
  br i1 %tobool7.not.i408, label %gp2ap020a00f_als_enabled.exit412, label %lor.lhs.false4.i409.cleanup_crit_edge

lor.lhs.false4.i409.cleanup_crit_edge:            ; preds = %lor.lhs.false4.i409
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gp2ap020a00f_als_enabled.exit412:                 ; preds = %lor.lhs.false4.i409
  %144 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %flags122, align 4
  %146 = and i32 %145, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool10.i410.not = icmp eq i32 %146, 0
  br i1 %tobool10.i410.not, label %lor.lhs.false, label %gp2ap020a00f_als_enabled.exit412.cleanup_crit_edge

gp2ap020a00f_als_enabled.exit412.cleanup_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit412
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %gp2ap020a00f_als_enabled.exit412
  %cur_opmode128 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %147 = ptrtoint ptr %cur_opmode128 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %cur_opmode128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %148)
  %cmp129 = icmp eq i32 %148, 4
  br i1 %cmp129, label %lor.lhs.false.cleanup_crit_edge, label %if.end131

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end131:                                        ; preds = %lor.lhs.false
  %149 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %flags122, align 4
  %151 = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i414 = icmp eq i32 %151, 0
  br i1 %tobool.not.i414, label %gp2ap020a00f_prox_detect_enabled.exit, label %if.end131.if.end138_crit_edge

if.end131.if.end138_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

gp2ap020a00f_prox_detect_enabled.exit:            ; preds = %if.end131
  %152 = ptrtoint ptr %flags122 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %flags122, align 4
  %154 = and i32 %153, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool3.i.not = icmp eq i32 %154, 0
  br i1 %tobool3.i.not, label %if.then133, label %gp2ap020a00f_prox_detect_enabled.exit.if.end138_crit_edge

gp2ap020a00f_prox_detect_enabled.exit.if.end138_crit_edge: ; preds = %gp2ap020a00f_prox_detect_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then133:                                       ; preds = %gp2ap020a00f_prox_detect_enabled.exit
  %call134 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %if.then133.cleanup_crit_edge, label %if.then133.if.end138_crit_edge

if.then133.if.end138_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end138:                                        ; preds = %if.then133.if.end138_crit_edge, %gp2ap020a00f_prox_detect_enabled.exit.if.end138_crit_edge, %if.end131.if.end138_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags122) #8
  %call140 = tail call fastcc i32 @gp2ap020a00f_write_event_threshold(ptr noundef %data, i32 noundef 3, i1 noundef zeroext true)
  br label %cleanup

sw.bb141:                                         ; preds = %entry
  %flags142 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %155 = ptrtoint ptr %flags142 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %flags142, align 4
  %157 = and i32 %156, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool144.not = icmp eq i32 %157, 0
  br i1 %tobool144.not, label %sw.bb141.cleanup_crit_edge, label %if.end146

sw.bb141.cleanup_crit_edge:                       ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end146:                                        ; preds = %sw.bb141
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags142) #8
  %regmap39.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %158 = ptrtoint ptr %regmap39.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap39.i, align 4
  %call.i75.i = tail call i32 @regmap_update_bits_base(ptr noundef %159, i32 noundef 0, i32 noundef 241, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp44.i = icmp slt i32 %call.i75.i, 0
  br i1 %cmp44.i, label %if.end146.cleanup_crit_edge, label %if.end151

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end151:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i416 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %160 = ptrtoint ptr %cur_opmode.i416 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 7, ptr %cur_opmode.i416, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i417) #8
  %161 = ptrtoint ptr %thresh_buf.i417 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %thresh_buf.i417, align 2
  %162 = ptrtoint ptr %regmap39.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap39.i, align 4
  %call12.i419 = call i32 @regmap_bulk_write(ptr noundef %163, i32 noundef 10, ptr noundef nonnull %thresh_buf.i417, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i417) #8
  br label %cleanup

sw.bb153:                                         ; preds = %entry
  %flags154 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %164 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %flags154, align 4
  %166 = and i32 %165, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool156.not = icmp eq i32 %166, 0
  br i1 %tobool156.not, label %if.end158, label %sw.bb153.cleanup_crit_edge

sw.bb153.cleanup_crit_edge:                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end158:                                        ; preds = %sw.bb153
  %167 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %flags154, align 4
  %and1.i.i421 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i421)
  %tobool.not.i422 = icmp eq i32 %and1.i.i421, 0
  br i1 %tobool.not.i422, label %lor.lhs.false.i424, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i424:                               ; preds = %if.end158
  %169 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %flags154, align 4
  %171 = and i32 %170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool3.not.i423 = icmp eq i32 %171, 0
  br i1 %tobool3.not.i423, label %lor.lhs.false4.i426, label %lor.lhs.false.i424.cleanup_crit_edge

lor.lhs.false.i424.cleanup_crit_edge:             ; preds = %lor.lhs.false.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false4.i426:                              ; preds = %lor.lhs.false.i424
  %172 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %flags154, align 4
  %174 = and i32 %173, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool7.not.i425 = icmp eq i32 %174, 0
  br i1 %tobool7.not.i425, label %gp2ap020a00f_als_enabled.exit429, label %lor.lhs.false4.i426.cleanup_crit_edge

lor.lhs.false4.i426.cleanup_crit_edge:            ; preds = %lor.lhs.false4.i426
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gp2ap020a00f_als_enabled.exit429:                 ; preds = %lor.lhs.false4.i426
  %175 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %flags154, align 4
  %177 = and i32 %176, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool10.i427.not = icmp eq i32 %177, 0
  br i1 %tobool10.i427.not, label %lor.lhs.false160, label %gp2ap020a00f_als_enabled.exit429.cleanup_crit_edge

gp2ap020a00f_als_enabled.exit429.cleanup_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit429
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false160:                                 ; preds = %gp2ap020a00f_als_enabled.exit429
  %cur_opmode161 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %178 = ptrtoint ptr %cur_opmode161 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cur_opmode161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %179)
  %cmp162 = icmp eq i32 %179, 4
  br i1 %cmp162, label %lor.lhs.false160.cleanup_crit_edge, label %if.end164

lor.lhs.false160.cleanup_crit_edge:               ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end164:                                        ; preds = %lor.lhs.false160
  %180 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %flags154, align 4
  %182 = and i32 %181, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i431 = icmp eq i32 %182, 0
  br i1 %tobool.not.i431, label %gp2ap020a00f_prox_detect_enabled.exit434, label %if.end164.if.end171_crit_edge

if.end164.if.end171_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

gp2ap020a00f_prox_detect_enabled.exit434:         ; preds = %if.end164
  %183 = ptrtoint ptr %flags154 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags154, align 4
  %185 = and i32 %184, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool3.i432.not = icmp eq i32 %185, 0
  br i1 %tobool3.i432.not, label %if.then166, label %gp2ap020a00f_prox_detect_enabled.exit434.if.end171_crit_edge

gp2ap020a00f_prox_detect_enabled.exit434.if.end171_crit_edge: ; preds = %gp2ap020a00f_prox_detect_enabled.exit434
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then166:                                       ; preds = %gp2ap020a00f_prox_detect_enabled.exit434
  %call167 = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %data, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then166.cleanup_crit_edge, label %if.then166.if.end171_crit_edge

if.then166.if.end171_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then166.cleanup_crit_edge:                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end171:                                        ; preds = %if.then166.if.end171_crit_edge, %gp2ap020a00f_prox_detect_enabled.exit434.if.end171_crit_edge, %if.end164.if.end171_crit_edge
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags154) #8
  %call173 = tail call fastcc i32 @gp2ap020a00f_write_event_threshold(ptr noundef %data, i32 noundef 2, i1 noundef zeroext true)
  br label %cleanup

sw.bb174:                                         ; preds = %entry
  %flags175 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %186 = ptrtoint ptr %flags175 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %flags175, align 4
  %188 = and i32 %187, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool177.not = icmp eq i32 %188, 0
  br i1 %tobool177.not, label %sw.bb174.cleanup_crit_edge, label %if.end179

sw.bb174.cleanup_crit_edge:                       ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end179:                                        ; preds = %sw.bb174
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags175) #8
  %regmap39.i436 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %189 = ptrtoint ptr %regmap39.i436 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regmap39.i436, align 4
  %call.i75.i437 = tail call i32 @regmap_update_bits_base(ptr noundef %190, i32 noundef 0, i32 noundef 241, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i437)
  %cmp44.i438 = icmp slt i32 %call.i75.i437, 0
  br i1 %cmp44.i438, label %if.end179.cleanup_crit_edge, label %if.end184

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end184:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode.i439 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %191 = ptrtoint ptr %cur_opmode.i439 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 7, ptr %cur_opmode.i439, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf.i443) #8
  %192 = ptrtoint ptr %thresh_buf.i443 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %thresh_buf.i443, align 2
  %193 = ptrtoint ptr %regmap39.i436 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regmap39.i436, align 4
  %call12.i445 = call i32 @regmap_bulk_write(ptr noundef %194, i32 noundef 8, ptr noundef nonnull %thresh_buf.i443, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf.i443) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %if.end179.cleanup_crit_edge, %sw.bb174.cleanup_crit_edge, %if.end171, %if.then166.cleanup_crit_edge, %lor.lhs.false160.cleanup_crit_edge, %gp2ap020a00f_als_enabled.exit429.cleanup_crit_edge, %lor.lhs.false4.i426.cleanup_crit_edge, %lor.lhs.false.i424.cleanup_crit_edge, %if.end158.cleanup_crit_edge, %sw.bb153.cleanup_crit_edge, %if.end151, %if.end146.cleanup_crit_edge, %sw.bb141.cleanup_crit_edge, %if.end138, %if.then133.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %gp2ap020a00f_als_enabled.exit412.cleanup_crit_edge, %lor.lhs.false4.i409.cleanup_crit_edge, %lor.lhs.false.i407.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %sw.bb121.cleanup_crit_edge, %if.end119, %if.then114.cleanup_crit_edge, %sw.bb106.cleanup_crit_edge, %if.end103, %if.then98.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %sw.bb87.cleanup_crit_edge, %if.end85, %if.then80.cleanup_crit_edge, %sw.bb72.cleanup_crit_edge, %if.end69, %if.then64.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb51, %if.end48, %sw.bb44.cleanup_crit_edge, %if.end42, %gp2ap020a00f_als_enabled.exit320.cleanup_crit_edge, %lor.lhs.false4.i317.cleanup_crit_edge, %lor.lhs.false.i315.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.end36, %sw.bb28.cleanup_crit_edge, %if.end26, %gp2ap020a00f_als_enabled.exit293.cleanup_crit_edge, %lor.lhs.false4.i290.cleanup_crit_edge, %lor.lhs.false.i288.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %if.end21, %sw.bb13.cleanup_crit_edge, %if.end11, %sw.bb7.cleanup_crit_edge, %if.end5, %sw.bb1.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.bb.cleanup_crit_edge ], [ -16, %sw.bb1.cleanup_crit_edge ], [ -16, %sw.bb7.cleanup_crit_edge ], [ -16, %sw.bb13.cleanup_crit_edge ], [ -16, %sw.bb28.cleanup_crit_edge ], [ -16, %sw.bb44.cleanup_crit_edge ], [ 0, %sw.bb54.cleanup_crit_edge ], [ -16, %if.end58.cleanup_crit_edge ], [ %call.i352, %if.then64.cleanup_crit_edge ], [ 0, %sw.bb72.cleanup_crit_edge ], [ %call.i367, %if.then80.cleanup_crit_edge ], [ 0, %sw.bb87.cleanup_crit_edge ], [ -16, %if.end92.cleanup_crit_edge ], [ %call.i383, %if.then98.cleanup_crit_edge ], [ 0, %sw.bb106.cleanup_crit_edge ], [ %call.i398, %if.then114.cleanup_crit_edge ], [ 0, %sw.bb121.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %gp2ap020a00f_als_enabled.exit412.cleanup_crit_edge ], [ %call134, %if.then133.cleanup_crit_edge ], [ 0, %sw.bb141.cleanup_crit_edge ], [ 0, %sw.bb153.cleanup_crit_edge ], [ -16, %lor.lhs.false160.cleanup_crit_edge ], [ -16, %gp2ap020a00f_als_enabled.exit429.cleanup_crit_edge ], [ %call167, %if.then166.cleanup_crit_edge ], [ 0, %sw.bb174.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call12.i445, %if.end184 ], [ %call173, %if.end171 ], [ %call12.i419, %if.end151 ], [ %call140, %if.end138 ], [ %call12.i402, %if.end119 ], [ %call105, %if.end103 ], [ %call12.i, %if.end85 ], [ %call71, %if.end69 ], [ %call.i336, %sw.bb51 ], [ %call.i331, %if.end48 ], [ 0, %gp2ap020a00f_als_enabled.exit320.cleanup_crit_edge ], [ %call.i325, %if.end42 ], [ %err.1, %if.end36 ], [ 0, %gp2ap020a00f_als_enabled.exit293.cleanup_crit_edge ], [ %call.i295, %if.end26 ], [ %err.0, %if.end21 ], [ %call12, %if.end11 ], [ %call6, %if.end5 ], [ %call, %if.end ], [ 0, %lor.lhs.false4.i290.cleanup_crit_edge ], [ 0, %lor.lhs.false.i288.cleanup_crit_edge ], [ 0, %sw.bb22.cleanup_crit_edge ], [ 0, %lor.lhs.false4.i317.cleanup_crit_edge ], [ 0, %lor.lhs.false.i315.cleanup_crit_edge ], [ 0, %sw.bb38.cleanup_crit_edge ], [ -16, %lor.lhs.false4.i409.cleanup_crit_edge ], [ -16, %lor.lhs.false.i407.cleanup_crit_edge ], [ -16, %if.end126.cleanup_crit_edge ], [ %call.i75.i, %if.end146.cleanup_crit_edge ], [ -16, %lor.lhs.false4.i426.cleanup_crit_edge ], [ -16, %lor.lhs.false.i424.cleanup_crit_edge ], [ -16, %if.end158.cleanup_crit_edge ], [ %call.i75.i437, %if.end179.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp2ap020a00f_read_output(ptr noundef %data, i32 noundef %output_reg, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %reg_buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_buf) #8
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_buf, align 2, !annotation !136
  %1 = getelementptr inbounds [2 x i8], ptr %reg_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !136
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 692) #8
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then10.i, label %if.end37.thread.i

if.end37.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #8
  br label %if.end5

if.then10.i:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %6 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %data_ready_queue.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 12
  %call1361.i = call i32 @prepare_to_wait_event(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not62.not.i = icmp eq i32 %9, 0
  br i1 %tobool17.not62.not.i, label %if.then10.i.cleanup.i_crit_edge, label %.critedge.i

if.then10.i.cleanup.i_crit_edge:                  ; preds = %if.then10.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then10.i.cleanup.i_crit_edge
  %__ret11.164.i = phi i32 [ %__ret11.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then10.i.cleanup.i_crit_edge ]
  %call34.i = call i32 @schedule_timeout(i32 noundef %__ret11.164.i) #8
  %call13.i = call i32 @prepare_to_wait_event(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #8
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags.i, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not.i = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool21.not.i = icmp eq i32 %call34.i, 0
  %spec.store.select41.i = select i1 %tobool21.not.i, i32 1, i32 %call34.i
  %__ret11.1.i = select i1 %tobool17.not.i, i32 %call34.i, i32 %spec.store.select41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1.i)
  %tobool27.not.i = icmp eq i32 %__ret11.1.i, 0
  %not.tobool17.not.i = xor i1 %tobool17.not.i, true
  %13 = select i1 %not.tobool17.not.i, i1 true, i1 %tobool27.not.i
  br i1 %13, label %if.end37.loopexit.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end37.loopexit.i:                              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret11.1.i)
  %phi.cmp.i = icmp sgt i32 %__ret11.1.i, 0
  call void @finish_wait(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #8
  br i1 %phi.cmp.i, label %if.end37.loopexit.i.if.end5_crit_edge, label %do.body

if.end37.loopexit.i.if.end5_crit_edge:            ; preds = %if.end37.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

.critedge.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #8
  br label %if.end5

do.body:                                          ; preds = %if.end37.loopexit.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap020a00f_read_output.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap020a00f_read_output, %if.then4)) #8
          to label %if.end5 [label %if.then4], !srcloc !137

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap020a00f_read_output.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %.critedge.i, %if.end37.loopexit.i.if.end5_crit_edge, %if.end37.thread.i
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef %output_reg, ptr noundef nonnull %reg_buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg_buf, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19) #8
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_buf) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp2ap020a00f_set_operation_mode(ptr nocapture noundef %data, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  %op_reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op_reg_val) #8
  %0 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %op_reg_val, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %op)
  %cmp.not = icmp eq i32 %op, 7
  br i1 %cmp.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %op_reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx = getelementptr [8 x %struct.gp2ap020a00f_mutable_config_regs], ptr @opmode_regs_settings, i32 0, i32 %op
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 48
  %and = zext i8 %5 to i32
  %6 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_reg_val, align 4
  %and3 = and i32 %7, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %and)
  %cmp4.not = icmp eq i32 %and3, %and
  br i1 %cmp4.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %if.then6.cleanup_crit_edge, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %als_reg = getelementptr [8 x %struct.gp2ap020a00f_mutable_config_regs], ptr @opmode_regs_settings, i32 0, i32 %op, i32 1
  %12 = ptrtoint ptr %als_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %als_reg, align 1
  %conv16 = zext i8 %13 to i32
  %call.i72 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 1, i32 noundef 192, i32 noundef %conv16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp18 = icmp slt i32 %call.i72, 0
  br i1 %cmp18, label %if.end13.cleanup_crit_edge, label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %ps_reg = getelementptr [8 x %struct.gp2ap020a00f_mutable_config_regs], ptr @opmode_regs_settings, i32 0, i32 %op, i32 2
  %16 = ptrtoint ptr %ps_reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ps_reg, align 1
  %conv24 = zext i8 %17 to i32
  %call.i73 = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 2, i32 noundef 64, i32 noundef %conv24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp26 = icmp slt i32 %call.i73, 0
  br i1 %cmp26, label %if.end21.cleanup_crit_edge, label %if.end29

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %led_reg = getelementptr [8 x %struct.gp2ap020a00f_mutable_config_regs], ptr @opmode_regs_settings, i32 0, i32 %op, i32 3
  %20 = ptrtoint ptr %led_reg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %led_reg, align 1
  %conv32 = zext i8 %21 to i32
  %call.i74 = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3, i32 noundef 12, i32 noundef %conv32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp34 = icmp slt i32 %call.i74, 0
  br i1 %cmp34, label %if.end29.cleanup_crit_edge, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end29.if.end38_crit_edge, %entry.if.end38_crit_edge
  %regmap39 = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %22 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap39, align 4
  %arrayidx40 = getelementptr [8 x %struct.gp2ap020a00f_mutable_config_regs], ptr @opmode_regs_settings, i32 0, i32 %op
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx40, align 1
  %conv42 = zext i8 %25 to i32
  %call.i75 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 241, i32 noundef %conv42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp44 = icmp slt i32 %call.i75, 0
  br i1 %cmp44, label %if.end38.cleanup_crit_edge, label %if.end47

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %cur_opmode = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 6
  %26 = ptrtoint ptr %cur_opmode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %op, ptr %cur_opmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end38.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.then6.cleanup_crit_edge ], [ %call.i72, %if.end13.cleanup_crit_edge ], [ %call.i73, %if.end21.cleanup_crit_edge ], [ %call.i74, %if.end29.cleanup_crit_edge ], [ %call.i75, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op_reg_val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp2ap020a00f_write_event_threshold(ptr noundef %data, i32 noundef %th_val_id, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %thresh_buf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %thresh_buf) #8
  br i1 %enable, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  %3 = and i32 %th_val_id, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp eq i32 %3, 2
  %5 = or i1 %4, %tobool1.not
  %arrayidx7 = getelementptr %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 9, i32 %th_val_id
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  br i1 %5, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div22 = lshr i32 %7, 4
  br label %if.end11

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 16000)
  br label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then4, %entry.if.end11_crit_edge
  %thresh_reg_val.0 = phi i32 [ %div22, %if.then4 ], [ %8, %if.else5 ], [ 0, %entry.if.end11_crit_edge ]
  %conv = trunc i32 %thresh_reg_val.0 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %10 = ptrtoint ptr %thresh_buf to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %thresh_buf, align 2
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %data, i32 0, i32 8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %mul = shl i32 %th_val_id, 1
  %add = add i32 %mul, 4
  %call12 = call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef %add, ptr noundef nonnull %thresh_buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %thresh_buf) #8
  ret i32 %call12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_prox_sensing_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %op_reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op_reg_val) #8
  %2 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %op_reg_val, align 4, !annotation !136
  %regmap = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %op_reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %gp2ap020a00f_prox_detect_enabled.exit, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

gp2ap020a00f_prox_detect_enabled.exit:            ; preds = %if.end
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.i.not = icmp eq i32 %10, 0
  br i1 %tobool3.i.not, label %gp2ap020a00f_prox_detect_enabled.exit.cleanup_crit_edge, label %gp2ap020a00f_prox_detect_enabled.exit.if.then3_crit_edge

gp2ap020a00f_prox_detect_enabled.exit.if.then3_crit_edge: ; preds = %gp2ap020a00f_prox_detect_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

gp2ap020a00f_prox_detect_enabled.exit.cleanup_crit_edge: ; preds = %gp2ap020a00f_prox_detect_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %gp2ap020a00f_prox_detect_enabled.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %11 = ptrtoint ptr %op_reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %op_reg_val, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %call7 = call i64 @iio_get_time_ns(ptr noundef %data) #8
  %. = select i1 %tobool.not, i64 144678172389015554, i64 144396697412304898
  %call8 = call i32 @iio_push_event(ptr noundef %data, i64 noundef %., i64 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %gp2ap020a00f_prox_detect_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op_reg_val) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %4 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masklength, align 8
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %7)
  %cmp37 = icmp ult i32 %call1, %7
  br i1 %cmp37, label %for.body.lr.ph, label %entry.if.end8.i_crit_edge

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

for.body.lr.ph:                                   ; preds = %entry
  %cur_opmode45.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 6
  %flags50.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.039 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ %call1, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %8 = zext i32 %i.038 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %i.038, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %9 = ptrtoint ptr %cur_opmode45.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_opmode45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp15.i = icmp eq i32 %10, 6
  br i1 %cmp15.i, label %sw.bb.for.inc_crit_edge, label %if.end17.i

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17.i:                                       ; preds = %sw.bb
  %11 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags50.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i32 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i32, label %lor.lhs.false.i.i, label %if.end17.i.for.inc.sink.split_crit_edge

if.end17.i.for.inc.sink.split_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

lor.lhs.false.i.i:                                ; preds = %if.end17.i
  %13 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags50.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.for.inc.sink.split_crit_edge

lor.lhs.false.i.i.for.inc.sink.split_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %16 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags50.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i.i, label %gp2ap020a00f_als_enabled.exit.i, label %lor.lhs.false4.i.i.for.inc.sink.split_crit_edge

lor.lhs.false4.i.i.for.inc.sink.split_crit_edge:  ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

gp2ap020a00f_als_enabled.exit.i:                  ; preds = %lor.lhs.false4.i.i
  %19 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags50.i, align 4
  %21 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool10.i.not.i, label %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split.sink.split_crit_edge, label %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split_crit_edge

gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.sink.split

sw.bb4:                                           ; preds = %for.body
  %22 = ptrtoint ptr %cur_opmode45.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_opmode45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp30.i = icmp eq i32 %23, 6
  br i1 %cmp30.i, label %sw.bb4.for.inc_crit_edge, label %if.end32.i

sw.bb4.for.inc_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end32.i:                                       ; preds = %sw.bb4
  %24 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags50.i, align 4
  %and1.i.i297.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i297.i)
  %tobool.not.i298.i = icmp eq i32 %and1.i.i297.i, 0
  br i1 %tobool.not.i298.i, label %lor.lhs.false.i300.i, label %if.end32.i.for.inc.sink.split_crit_edge

if.end32.i.for.inc.sink.split_crit_edge:          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

lor.lhs.false.i300.i:                             ; preds = %if.end32.i
  %26 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags50.i, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i299.i = icmp eq i32 %28, 0
  br i1 %tobool3.not.i299.i, label %lor.lhs.false4.i302.i, label %lor.lhs.false.i300.i.for.inc.sink.split_crit_edge

lor.lhs.false.i300.i.for.inc.sink.split_crit_edge: ; preds = %lor.lhs.false.i300.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

lor.lhs.false4.i302.i:                            ; preds = %lor.lhs.false.i300.i
  %29 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags50.i, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool7.not.i301.i = icmp eq i32 %31, 0
  br i1 %tobool7.not.i301.i, label %gp2ap020a00f_als_enabled.exit305.i, label %lor.lhs.false4.i302.i.for.inc.sink.split_crit_edge

lor.lhs.false4.i302.i.for.inc.sink.split_crit_edge: ; preds = %lor.lhs.false4.i302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

gp2ap020a00f_als_enabled.exit305.i:               ; preds = %lor.lhs.false4.i302.i
  %32 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags50.i, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.i303.not.i = icmp eq i32 %34, 0
  br i1 %tobool10.i303.not.i, label %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split.sink.split_crit_edge, label %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split_crit_edge

gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.sink.split

sw.bb6:                                           ; preds = %for.body
  %35 = ptrtoint ptr %cur_opmode45.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_opmode45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %36)
  %cmp46.i = icmp eq i32 %36, 6
  br i1 %cmp46.i, label %sw.bb6.for.inc_crit_edge, label %sw.bb6.for.inc.sink.split.sink.split_crit_edge

sw.bb6.for.inc.sink.split.sink.split_crit_edge:   ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.sink.split

sw.bb6.for.inc_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc.sink.split.sink.split:                    ; preds = %sw.bb6.for.inc.sink.split.sink.split_crit_edge, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split.sink.split_crit_edge, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split.sink.split_crit_edge
  %.sink44 = phi i32 [ %10, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split.sink.split_crit_edge ], [ %23, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split.sink.split_crit_edge ], [ %36, %sw.bb6.for.inc.sink.split.sink.split_crit_edge ]
  %.sink43 = phi i32 [ 3, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split.sink.split_crit_edge ], [ 3, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split.sink.split_crit_edge ], [ 4, %sw.bb6.for.inc.sink.split.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.sink44)
  %cmp4.i307.i = icmp eq i32 %.sink44, 7
  %diff_mode..i308.i = select i1 %cmp4.i307.i, i32 %.sink43, i32 5
  %call.i310.i = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %1, i32 noundef %diff_mode..i308.i) #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.inc.sink.split.sink.split, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split_crit_edge, %lor.lhs.false4.i302.i.for.inc.sink.split_crit_edge, %lor.lhs.false.i300.i.for.inc.sink.split_crit_edge, %if.end32.i.for.inc.sink.split_crit_edge, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split_crit_edge, %lor.lhs.false4.i.i.for.inc.sink.split_crit_edge, %lor.lhs.false.i.i.for.inc.sink.split_crit_edge, %if.end17.i.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 0, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false4.i.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false.i.i.for.inc.sink.split_crit_edge ], [ 0, %if.end17.i.for.inc.sink.split_crit_edge ], [ 1, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split_crit_edge ], [ 1, %lor.lhs.false4.i302.i.for.inc.sink.split_crit_edge ], [ 1, %lor.lhs.false.i300.i.for.inc.sink.split_crit_edge ], [ 1, %if.end32.i.for.inc.sink.split_crit_edge ], [ %i.038, %for.inc.sink.split.sink.split ]
  %err.1.ph = phi i32 [ 0, %gp2ap020a00f_als_enabled.exit.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false4.i.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false.i.i.for.inc.sink.split_crit_edge ], [ 0, %if.end17.i.for.inc.sink.split_crit_edge ], [ 0, %gp2ap020a00f_als_enabled.exit305.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false4.i302.i.for.inc.sink.split_crit_edge ], [ 0, %lor.lhs.false.i300.i.for.inc.sink.split_crit_edge ], [ 0, %if.end32.i.for.inc.sink.split_crit_edge ], [ %call.i310.i, %for.inc.sink.split.sink.split ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %flags50.i) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %sw.bb6.for.inc_crit_edge, %sw.bb4.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.039, %for.body.for.inc_crit_edge ], [ -16, %sw.bb.for.inc_crit_edge ], [ -16, %sw.bb4.for.inc_crit_edge ], [ -16, %sw.bb6.for.inc_crit_edge ], [ %err.1.ph, %for.inc.sink.split ]
  %37 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %active_scan_mask, align 4
  %39 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %i.038, 1
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %38, i32 noundef %40, i32 noundef %add) #8
  %41 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call10, %42
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp11 = icmp slt i32 %err.1, 0
  br i1 %cmp11, label %for.end.error_unlock_crit_edge, label %for.end.if.end8.i_crit_edge

for.end.if.end8.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

for.end.error_unlock_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

if.end8.i:                                        ; preds = %for.end.if.end8.i_crit_edge, %entry.if.end8.i_crit_edge
  %err.0.lcssa42 = phi i32 [ %err.1, %for.end.if.end8.i_crit_edge ], [ 0, %entry.if.end8.i_crit_edge ]
  %scan_bytes = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 4
  %43 = ptrtoint ptr %scan_bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_bytes, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3264) #12
  %buffer = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  %spec.select = select i1 %tobool.not, i32 -12, i32 %err.0.lcssa42
  br label %error_unlock

error_unlock:                                     ; preds = %if.end8.i, %for.end.error_unlock_crit_edge
  %err.2 = phi i32 [ %err.1, %for.end.error_unlock_crit_edge ], [ %spec.select, %if.end8.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap020a00f_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 8
  %2 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 7
  %4 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masklength, align 8
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %3, i32 noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %7)
  %cmp29 = icmp ult i32 %call1, %7
  br i1 %cmp29, label %for.body.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph:                                   ; preds = %entry
  %flags52.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 5
  %cur_opmode.i332.i = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.031 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1, %for.inc.for.body_crit_edge ]
  %i.030 = phi i32 [ %call1, %for.body.lr.ph ], [ %call10, %for.inc.for.body_crit_edge ]
  %8 = zext i32 %i.030 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %i.030, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags52.i) #8
  %9 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags52.i, align 4
  %and1.i.i285.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i285.i)
  %tobool.not.i286.i = icmp eq i32 %and1.i.i285.i, 0
  br i1 %tobool.not.i286.i, label %lor.lhs.false.i288.i, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i288.i:                             ; preds = %sw.bb
  %11 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags52.i, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not.i287.i = icmp eq i32 %13, 0
  br i1 %tobool3.not.i287.i, label %lor.lhs.false4.i290.i, label %lor.lhs.false.i288.i.for.inc_crit_edge

lor.lhs.false.i288.i.for.inc_crit_edge:           ; preds = %lor.lhs.false.i288.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false4.i290.i:                            ; preds = %lor.lhs.false.i288.i
  %14 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags52.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i289.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i289.i, label %gp2ap020a00f_als_enabled.exit293.i, label %lor.lhs.false4.i290.i.for.inc_crit_edge

lor.lhs.false4.i290.i.for.inc_crit_edge:          ; preds = %lor.lhs.false4.i290.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

gp2ap020a00f_als_enabled.exit293.i:               ; preds = %lor.lhs.false4.i290.i
  %17 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags52.i, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.i291.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.i291.not.i, label %gp2ap020a00f_als_enabled.exit293.i.for.inc.sink.split_crit_edge, label %gp2ap020a00f_als_enabled.exit293.i.for.inc_crit_edge

gp2ap020a00f_als_enabled.exit293.i.for.inc_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

gp2ap020a00f_als_enabled.exit293.i.for.inc.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb4:                                           ; preds = %for.body
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags52.i) #8
  %20 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags52.i, align 4
  %and1.i.i312.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i312.i)
  %tobool.not.i313.i = icmp eq i32 %and1.i.i312.i, 0
  br i1 %tobool.not.i313.i, label %lor.lhs.false.i315.i, label %sw.bb4.for.inc_crit_edge

sw.bb4.for.inc_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i315.i:                             ; preds = %sw.bb4
  %22 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags52.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool3.not.i314.i = icmp eq i32 %24, 0
  br i1 %tobool3.not.i314.i, label %lor.lhs.false4.i317.i, label %lor.lhs.false.i315.i.for.inc_crit_edge

lor.lhs.false.i315.i.for.inc_crit_edge:           ; preds = %lor.lhs.false.i315.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false4.i317.i:                            ; preds = %lor.lhs.false.i315.i
  %25 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags52.i, align 4
  %27 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.i316.i = icmp eq i32 %27, 0
  br i1 %tobool7.not.i316.i, label %gp2ap020a00f_als_enabled.exit320.i, label %lor.lhs.false4.i317.i.for.inc_crit_edge

lor.lhs.false4.i317.i.for.inc_crit_edge:          ; preds = %lor.lhs.false4.i317.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

gp2ap020a00f_als_enabled.exit320.i:               ; preds = %lor.lhs.false4.i317.i
  %28 = ptrtoint ptr %flags52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags52.i, align 4
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool10.i318.not.i = icmp eq i32 %30, 0
  br i1 %tobool10.i318.not.i, label %gp2ap020a00f_als_enabled.exit320.i.for.inc.sink.split_crit_edge, label %gp2ap020a00f_als_enabled.exit320.i.for.inc_crit_edge

gp2ap020a00f_als_enabled.exit320.i.for.inc_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit320.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

gp2ap020a00f_als_enabled.exit320.i.for.inc.sink.split_crit_edge: ; preds = %gp2ap020a00f_als_enabled.exit320.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags52.i) #8
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %sw.bb6, %gp2ap020a00f_als_enabled.exit320.i.for.inc.sink.split_crit_edge, %gp2ap020a00f_als_enabled.exit293.i.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb6 ], [ 4, %gp2ap020a00f_als_enabled.exit293.i.for.inc.sink.split_crit_edge ], [ 4, %gp2ap020a00f_als_enabled.exit320.i.for.inc.sink.split_crit_edge ]
  %31 = ptrtoint ptr %cur_opmode.i332.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_opmode.i332.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp9.i322.i = icmp eq i32 %32, 5
  %spec.select450.i = select i1 %cmp9.i322.i, i32 %.sink, i32 7
  %call.i325.i = tail call fastcc i32 @gp2ap020a00f_set_operation_mode(ptr noundef %1, i32 noundef %spec.select450.i) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %gp2ap020a00f_als_enabled.exit320.i.for.inc_crit_edge, %lor.lhs.false4.i317.i.for.inc_crit_edge, %lor.lhs.false.i315.i.for.inc_crit_edge, %sw.bb4.for.inc_crit_edge, %gp2ap020a00f_als_enabled.exit293.i.for.inc_crit_edge, %lor.lhs.false4.i290.i.for.inc_crit_edge, %lor.lhs.false.i288.i.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.031, %for.body.for.inc_crit_edge ], [ 0, %gp2ap020a00f_als_enabled.exit293.i.for.inc_crit_edge ], [ 0, %lor.lhs.false4.i290.i.for.inc_crit_edge ], [ 0, %lor.lhs.false.i288.i.for.inc_crit_edge ], [ 0, %sw.bb.for.inc_crit_edge ], [ 0, %gp2ap020a00f_als_enabled.exit320.i.for.inc_crit_edge ], [ 0, %lor.lhs.false4.i317.i.for.inc_crit_edge ], [ 0, %lor.lhs.false.i315.i.for.inc_crit_edge ], [ 0, %sw.bb4.for.inc_crit_edge ], [ %call.i325.i, %for.inc.sink.split ]
  %33 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %active_scan_mask, align 4
  %35 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %i.030, 1
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %34, i32 noundef %36, i32 noundef %add) #8
  %37 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call10, %38
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp11 = icmp eq i32 %err.1, 0
  br i1 %cmp11, label %for.end.if.then_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %buffer = getelementptr inbounds %struct.gp2ap020a00f_data, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %40) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %err.0.lcssa34 = phi i32 [ 0, %if.then ], [ %err.1, %for.end.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %err.0.lcssa34
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_gp2ap020a00f__289_1619_gp2ap020a00f_driver_init6, !1, !"__initcall__kmod_gp2ap020a00f__289_1619_gp2ap020a00f_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1619, i32 1}
!2 = !{ptr @__exitcall_gp2ap020a00f_driver_exit, !1, !"__exitcall_gp2ap020a00f_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1621, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1622, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1623, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1611, i32 11}
!12 = !{ptr @gp2ap020a00f_driver, !13, !"gp2ap020a00f_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1609, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1484, i32 52}
!16 = !{ptr @gp2ap020a00f_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1492, i32 11}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1494, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gp2ap020a00f_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @gp2ap020a00f_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1505, i32 3}
!29 = !{ptr @gp2ap020a00f_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @gp2ap020a00f_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @gp2ap020a00f_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1514, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gp2ap020a00f_probe.__key.12, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1516, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1530, i32 52}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1534, i32 3}
!41 = !{ptr @gp2ap020a00f_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gp2ap020a00f_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1543, i32 8}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1546, i32 3}
!47 = !{ptr @gp2ap020a00f_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gp2ap020a00f_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1554, i32 3}
!51 = !{ptr @gp2ap020a00f_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @gp2ap020a00f_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @gp2ap020a00f_regmap_config, !54, !"gp2ap020a00f_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 291, i32 35}
!55 = !{ptr @gp2ap020a00f_reg_init_tab, !56, !"gp2ap020a00f_reg_init_tab", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 255, i32 17}
!57 = !{ptr @gp2ap020a00f_channels, !58, !"gp2ap020a00f_channels", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1326, i32 35}
!59 = !{ptr @gp2ap020a00f_event_spec_light, !60, !"gp2ap020a00f_event_spec_light", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1298, i32 36}
!61 = !{ptr @gp2ap020a00f_event_spec_prox, !62, !"gp2ap020a00f_event_spec_prox", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1312, i32 36}
!63 = !{ptr @gp2ap020a00f_info, !64, !"gp2ap020a00f_info", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1378, i32 30}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1255, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @gp2ap020a00f_read_channel._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @gp2ap020a00f_read_channel._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1262, i32 3}
!72 = !{ptr @gp2ap020a00f_read_channel._entry.28, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @gp2ap020a00f_read_channel._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1268, i32 3}
!76 = !{ptr @gp2ap020a00f_read_channel._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @gp2ap020a00f_read_channel._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 706, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @gp2ap020a00f_read_output.__UNIQUE_ID_ddebug288, !79, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!82 = !{ptr @opmode_regs_settings, !83, !"opmode_regs_settings", i1 false, i1 false}
!83 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 306, i32 3}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1146, i32 9}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1153, i32 9}
!88 = !{ptr @gp2ap020a00f_buffer_setup_ops, !89, !"gp2ap020a00f_buffer_setup_ops", i1 false, i1 false}
!89 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1465, i32 42}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 742, i32 4}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.40, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 750, i32 4}
!97 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.41, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 762, i32 4}
!100 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 773, i32 4}
!104 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 784, i32 4}
!108 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 794, i32 5}
!112 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.51, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.53, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry.54, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 804, i32 5}
!116 = !{ptr @gp2ap020a00f_adjust_lux_mode._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1585, i32 3}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @gp2ap020a00f_remove._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @gp2ap020a00f_remove._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @gp2ap020a00f_of_match, !123, !"gp2ap020a00f_of_match", i1 false, i1 false}
!123 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1603, i32 34}
!124 = !{ptr @gp2ap020a00f_id, !125, !"gp2ap020a00f_id", i1 false, i1 false}
!125 = !{!"../drivers/iio/light/gp2ap020a00f.c", i32 1596, i32 35}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{!"auto-init"}
!137 = !{i64 2148532617, i64 2148532622, i64 2148532635, i64 2148532679, i64 2148532713, i64 2148532734}
