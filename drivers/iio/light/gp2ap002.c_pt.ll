; ModuleID = '/llk/IR_all_yes/drivers/iio/light/gp2ap002.c_pt.bc'
source_filename = "../drivers/iio/light/gp2ap002.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.gp2ap002 = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, i8 }

@__initcall__kmod_gp2ap002__299_724_gp2ap002_driver_init6 = internal global ptr @gp2ap002_driver_init, section ".initcall6.init", align 4
@gp2ap002_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @gp2ap002_probe, ptr @gp2ap002_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gp2ap002_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp2ap002_dev_pm_ops, ptr null, ptr null }, ptr @gp2ap002_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gp2ap002_driver_exit = internal global ptr @gp2ap002_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [57 x i8] c"gp2ap002.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [72 x i8] c"gp2ap002.description=GP2AP002 ambient light and proximity sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [41 x i8] c"gp2ap002.file=drivers/iio/light/gp2ap002\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [24 x i8] c"gp2ap002.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gp2ap002\00", [23 x i8] zeroinitializer }, align 32
@gp2ap002_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,gp2ap002a00f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,gp2ap002s00f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@gp2ap002_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp2ap002_runtime_suspend, ptr @gp2ap002_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@gp2ap002_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"gp2ap002\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gp2ap002_probe.config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot check compatible\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gp2ap002_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/light/gp2ap002.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr = internal global ptr @gp2ap002_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sharp,gp2ap002s00f\00", [45 x i8] zeroinitializer }, align 32
@gp2ap002_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gp2ap002_regmap_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @gp2ap002_regmap_i2c_write, ptr null, ptr null, ptr @gp2ap002_regmap_i2c_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gp2ap002:466:(&config)->lock\00", [35 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register i2c regmap %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.11 = internal global ptr @gp2ap002_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sharp,proximity-far-hysteresis\00", [33 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to obtain proximity far setting\0A\00", [56 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.15 = internal global ptr @gp2ap002_probe._entry.13, section ".printk_index", align 4
@gp2ap002_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"proximity far setting %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sharp,proximity-close-hysteresis\00", [63 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to obtain proximity close setting\0A\00", [54 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.20 = internal global ptr @gp2ap002_probe._entry.18, section ".printk_index", align 4
@gp2ap002_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.21, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"proximity close setting %02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alsout\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get ALSOUT ADC channel\0A\00", [62 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"wrong type of IIO channel specified for ALSOUT\0A\00", [48 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.26 = internal global ptr @gp2ap002_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get VDD regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get VIO regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to sett VDD voltage\0A\00", [36 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.33 = internal global ptr @gp2ap002_probe._entry.31, section ".printk_index", align 4
@gp2ap002_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 540, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get VDD voltage\0A\00", [37 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.36 = internal global ptr @gp2ap002_probe._entry.34, section ".printk_index", align 4
@gp2ap002_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to set VIO voltage\0A\00", [37 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.39 = internal global ptr @gp2ap002_probe._entry.37, section ".printk_index", align 4
@gp2ap002_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VDD regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.42 = internal global ptr @gp2ap002_probe._entry.40, section ".printk_index", align 4
@gp2ap002_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VIO regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.45 = internal global ptr @gp2ap002_probe._entry.43, section ".printk_index", align 4
@gp2ap002_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"initialization failed\0A\00", [41 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.48 = internal global ptr @gp2ap002_probe._entry.46, section ".printk_index", align 4
@gp2ap002_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@gp2ap002_probe._entry_ptr.51 = internal global ptr @gp2ap002_probe._entry.49, section ".printk_index", align 4
@gp2ap002_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @gp2ap002_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp2ap002_read_event_config, ptr @gp2ap002_write_event_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gp2ap002_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @gp2ap002_events, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 6, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@gp2ap002_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.52, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sharp GP2AP002 probed successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error setting up LED gain\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gp2ap002_init\00", [18 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry_ptr = internal global ptr @gp2ap002_init._entry, section ".printk_index", align 4
@gp2ap002_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error setting up proximity hysteresis\0A\00", [57 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry_ptr.57 = internal global ptr @gp2ap002_init._entry.55, section ".printk_index", align 4
@gp2ap002_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error setting up internal frequency hopping\0A\00", [51 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry_ptr.60 = internal global ptr @gp2ap002_init._entry.58, section ".printk_index", align 4
@gp2ap002_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.4, i32 312, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error setting up operation mode\0A\00", [63 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry_ptr.63 = internal global ptr @gp2ap002_init._entry.61, section ".printk_index", align 4
@gp2ap002_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error setting up VOUT control\0A\00", [33 x i8] zeroinitializer }, align 32
@gp2ap002_init._entry_ptr.66 = internal global ptr @gp2ap002_init._entry.64, section ".printk_index", align 4
@gp2ap002_prox_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading proximity\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gp2ap002_prox_irq\00", [46 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry_ptr = internal global ptr @gp2ap002_prox_irq._entry, section ".printk_index", align 4
@gp2ap002_prox_irq.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"close\0A\00", [25 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.68, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry_ptr.71 = internal global ptr @gp2ap002_prox_irq._entry.70, section ".printk_index", align 4
@gp2ap002_prox_irq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.4, ptr @.str.72, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"far\0A\00", [27 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.68, ptr @.str.4, i32 187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry_ptr.74 = internal global ptr @gp2ap002_prox_irq._entry.73, section ".printk_index", align 4
@gp2ap002_prox_irq._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.68, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@gp2ap002_prox_irq._entry_ptr.76 = internal global ptr @gp2ap002_prox_irq._entry.75, section ".printk_index", align 4
@gp2ap002_get_lux.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.4, ptr @.str.78, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gp2ap002_get_lux\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read %d mA from ADC\0A\00", [43 x i8] zeroinitializer }, align 32
@gp2ap002_illuminance_table = internal constant { [48 x i16], [32 x i8] } { [48 x i16] [i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 4, i16 5, i16 6, i16 8, i16 10, i16 12, i16 16, i16 20, i16 25, i16 32, i16 40, i16 50, i16 63, i16 79, i16 100, i16 126, i16 158, i16 200, i16 251, i16 316, i16 398, i16 501, i16 631, i16 794, i16 1000, i16 1259, i16 1585, i16 1995, i16 2512, i16 3162, i16 3981, i16 5012, i16 6310, i16 7943, i16 10000, i16 12589, i16 15849, i16 19953, i16 25119, i16 31623, i16 -25725, i16 -15417], [32 x i8] zeroinitializer }, align 32
@gp2ap002_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@gp2ap002_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.79, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gp2ap002_runtime_suspend\00", [39 x i8] zeroinitializer }, align 32
@gp2ap002_runtime_suspend._entry_ptr = internal global ptr @gp2ap002_runtime_suspend._entry, section ".printk_index", align 4
@gp2ap002_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to enable VDD regulator in resume path\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gp2ap002_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@gp2ap002_runtime_resume._entry_ptr = internal global ptr @gp2ap002_runtime_resume._entry, section ".printk_index", align 4
@gp2ap002_runtime_resume._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 676, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to enable VIO regulator in resume path\0A\00", [49 x i8] zeroinitializer }, align 32
@gp2ap002_runtime_resume._entry_ptr.84 = internal global ptr @gp2ap002_runtime_resume._entry.82, section ".printk_index", align 4
@gp2ap002_runtime_resume._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.4, i32 684, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"re-initialization failed\0A\00", [38 x i8] zeroinitializer }, align 32
@gp2ap002_runtime_resume._entry_ptr.87 = internal global ptr @gp2ap002_runtime_resume._entry.85, section ".printk_index", align 4
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"gp2ap002_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 714, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 716, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"gp2ap002_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 707, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"gp2ap002_dev_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 694, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"gp2ap002_id_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 701, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 435, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 459, i32 41 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 461, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 464, i32 46 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"gp2ap002_regmap_bus\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 423, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 466, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 468, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 484, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 487, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 490, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 493, i32 37 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 496, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 499, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 504, i32 48 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 508, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 514, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 520, i32 42 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 523, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 525, i32 42 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 528, i32 10 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 533, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 540, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 545, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 551, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 556, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 568, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 580, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [14 x i8] c"gp2ap002_info\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 364, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"gp2ap002_channels\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 378, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 607, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 288, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 293, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 302, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 312, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 320, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 166, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 172, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 176, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 182, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 186, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 206, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 237, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [27 x i8] c"gp2ap002_illuminance_table\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 221, i32 18 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"gp2ap002_events\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 370, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 650, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 671, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 676, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [32 x i8] c"../drivers/iio/light/gp2ap002.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 684, i32 3 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_gp2ap002_driver_exit, ptr @__initcall__kmod_gp2ap002__299_724_gp2ap002_driver_init6, ptr @gp2ap002_driver_exit, ptr @gp2ap002_init._entry, ptr @gp2ap002_init._entry.55, ptr @gp2ap002_init._entry.58, ptr @gp2ap002_init._entry.61, ptr @gp2ap002_init._entry.64, ptr @gp2ap002_init._entry_ptr, ptr @gp2ap002_init._entry_ptr.57, ptr @gp2ap002_init._entry_ptr.60, ptr @gp2ap002_init._entry_ptr.63, ptr @gp2ap002_init._entry_ptr.66, ptr @gp2ap002_probe._entry, ptr @gp2ap002_probe._entry.13, ptr @gp2ap002_probe._entry.18, ptr @gp2ap002_probe._entry.24, ptr @gp2ap002_probe._entry.31, ptr @gp2ap002_probe._entry.34, ptr @gp2ap002_probe._entry.37, ptr @gp2ap002_probe._entry.40, ptr @gp2ap002_probe._entry.43, ptr @gp2ap002_probe._entry.46, ptr @gp2ap002_probe._entry.49, ptr @gp2ap002_probe._entry.9, ptr @gp2ap002_probe._entry_ptr, ptr @gp2ap002_probe._entry_ptr.11, ptr @gp2ap002_probe._entry_ptr.15, ptr @gp2ap002_probe._entry_ptr.20, ptr @gp2ap002_probe._entry_ptr.26, ptr @gp2ap002_probe._entry_ptr.33, ptr @gp2ap002_probe._entry_ptr.36, ptr @gp2ap002_probe._entry_ptr.39, ptr @gp2ap002_probe._entry_ptr.42, ptr @gp2ap002_probe._entry_ptr.45, ptr @gp2ap002_probe._entry_ptr.48, ptr @gp2ap002_probe._entry_ptr.51, ptr @gp2ap002_prox_irq._entry, ptr @gp2ap002_prox_irq._entry.70, ptr @gp2ap002_prox_irq._entry.73, ptr @gp2ap002_prox_irq._entry.75, ptr @gp2ap002_prox_irq._entry_ptr, ptr @gp2ap002_prox_irq._entry_ptr.71, ptr @gp2ap002_prox_irq._entry_ptr.74, ptr @gp2ap002_prox_irq._entry_ptr.76, ptr @gp2ap002_runtime_resume._entry, ptr @gp2ap002_runtime_resume._entry.82, ptr @gp2ap002_runtime_resume._entry.85, ptr @gp2ap002_runtime_resume._entry_ptr, ptr @gp2ap002_runtime_resume._entry_ptr.84, ptr @gp2ap002_runtime_resume._entry_ptr.87, ptr @gp2ap002_runtime_suspend._entry, ptr @gp2ap002_runtime_suspend._entry_ptr, ptr @gp2ap002_driver, ptr @.str, ptr @gp2ap002_of_match, ptr @gp2ap002_dev_pm_ops, ptr @gp2ap002_id_table, ptr @gp2ap002_probe.config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gp2ap002_probe._key, ptr @gp2ap002_regmap_bus, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @gp2ap002_info, ptr @gp2ap002_channels, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.78, ptr @gp2ap002_illuminance_table, ptr @gp2ap002_events, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe.config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_prox_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_prox_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_prox_irq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_prox_irq._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_illuminance_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_runtime_resume._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp2ap002_runtime_resume._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @gp2ap002_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gp2ap002_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @gp2ap002_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ch_type = alloca i32, align 4
  %compat = alloca ptr, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_type) #10
  %0 = ptrtoint ptr %ch_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ch_type, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %compat) #10
  %1 = ptrtoint ptr %compat to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %compat, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !187
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 32) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %dev3 = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %compat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %compat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %compat, align 4
  %call8 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(19) @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %is_gp2ap002s00f = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 7
  %frombool = zext i1 %tobool9.not to i8
  %9 = ptrtoint ptr %is_gp2ap002s00f to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %is_gp2ap002s00f, align 2
  %call10 = call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef nonnull @gp2ap002_regmap_bus, ptr noundef %dev1, ptr noundef nonnull @gp2ap002_probe.config, ptr noundef nonnull @gp2ap002_probe._key, ptr noundef nonnull @.str.8) #10
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %10) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %5, align 4
  %call.i = call i32 @device_property_read_u8_array(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef nonnull %val, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %do.body26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #13
  br label %cleanup

do.body26:                                        ; preds = %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_probe, %if.then34)) #10
          to label %do.end37 [label %if.then34], !srcloc !188

if.then34:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %conv = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body26
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  %hys_far = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %hys_far to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %hys_far, align 4
  %call.i308 = call i32 @device_property_read_u8_array(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %val, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool39.not = icmp eq i32 %call.i308, 0
  br i1 %tobool39.not, label %do.body45, label %do.end43

do.end43:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #13
  br label %cleanup

do.body45:                                        ; preds = %do.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_probe, %if.then57)) #10
          to label %do.end61 [label %if.then57], !srcloc !188

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val, align 1
  %conv58 = zext i8 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %conv58) #10
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %do.body45
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val, align 1
  %hys_close = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %hys_close to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %hys_close, align 1
  %22 = ptrtoint ptr %is_gp2ap002s00f to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_gp2ap002s00f, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool63.not = icmp eq i8 %23, 0
  br i1 %tobool63.not, label %if.then64, label %do.end61.if.end87_crit_edge

do.end61.if.end87_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then64:                                        ; preds = %do.end61
  %call65 = call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  %alsout = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %alsout to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call65, ptr %alsout, align 4
  %cmp.i309 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i309, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call65 to i32
  %cmp = icmp eq ptr %call65, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %25
  %call72 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %spec.select, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end73:                                         ; preds = %if.then64
  %call75 = call i32 @iio_get_channel_type(ptr noundef %call65, ptr noundef nonnull %ch_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end73.cleanup_crit_edge, label %if.end79

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end79:                                         ; preds = %if.end73
  %26 = ptrtoint ptr %ch_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ch_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp80.not = icmp eq i32 %27, 1
  br i1 %cmp80.not, label %if.end79.if.end87_crit_edge, label %do.end85

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end87:                                         ; preds = %if.end79.if.end87_crit_edge, %do.end61.if.end87_crit_edge
  %call88 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  %vdd = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call88, ptr %vdd, align 4
  %cmp.i310 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %if.then91, label %if.end95

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call88 to i32
  %call94 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %29, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end87
  %call96 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.29) #10
  %vio = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %vio to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call96, ptr %vio, align 4
  %cmp.i311 = icmp ugt ptr %call96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %if.then99, label %if.end103

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call96 to i32
  %call102 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %31, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end103:                                        ; preds = %if.end95
  %32 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdd, align 4
  %call105 = call i32 @regulator_set_voltage(ptr noundef %33, i32 noundef 2400000, i32 noundef 3600000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end111, label %do.end110

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end111:                                        ; preds = %if.end103
  %34 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdd, align 4
  %call113 = call i32 @regulator_get_voltage(ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end119, label %if.end120

do.end119:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end120:                                        ; preds = %if.end111
  %36 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vio, align 4
  %call122 = call i32 @regulator_set_voltage(ptr noundef %37, i32 noundef 1650000, i32 noundef %call113) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end128, label %do.end127

do.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #13
  br label %cleanup

if.end128:                                        ; preds = %if.end120
  %38 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdd, align 4
  %call130 = call i32 @regulator_enable(ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end136, label %do.end135

do.end135:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end136:                                        ; preds = %if.end128
  %40 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vio, align 4
  %call138 = call i32 @regulator_enable(ptr noundef %41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end144, label %do.end143

do.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #13
  br label %out_disable_vdd

if.end144:                                        ; preds = %if.end136
  call void @msleep(i32 noundef 20) #10
  %call145 = call fastcc i32 @gp2ap002_init(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end151, label %do.end150

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47) #13
  br label %out_disable_vio

if.end151:                                        ; preds = %if.end144
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !190
  %call.i312 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #10
  call void @pm_runtime_enable(ptr noundef %dev1) #10
  %enabled = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 9
  %43 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %enabled, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call153 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %45, ptr noundef null, ptr noundef nonnull @gp2ap002_prox_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end159, label %do.end158

do.end158:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50) #13
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  br label %out_disable_pm

if.end159:                                        ; preds = %if.end151
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %irq161 = getelementptr inbounds %struct.gp2ap002, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %irq161 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %irq161, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #10
  %call.i313 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #10
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %49 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @gp2ap002_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %50 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %51 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @gp2ap002_channels, ptr %channels, align 8
  %52 = ptrtoint ptr %is_gp2ap002s00f to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_gp2ap002s00f, align 2, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool164.not = icmp eq i8 %53, 0
  %spec.select301 = select i1 %tobool164.not, i32 2, i32 1
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %54 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.select301, ptr %num_channels, align 4
  %55 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %call, align 8
  %call167 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %do.body171, label %if.end159.out_disable_pm_crit_edge

if.end159.out_disable_pm_crit_edge:               ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_disable_pm

do.body171:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_probe, %if.then183)) #10
          to label %cleanup [label %if.then183], !srcloc !188

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.52) #10
  br label %cleanup

out_disable_pm:                                   ; preds = %if.end159.out_disable_pm_crit_edge, %do.end158
  %ret.0 = phi i32 [ %call153, %do.end158 ], [ %call167, %if.end159.out_disable_pm_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  br label %out_disable_vio

out_disable_vio:                                  ; preds = %out_disable_pm, %do.end150
  %ret.1 = phi i32 [ %call145, %do.end150 ], [ %ret.0, %out_disable_pm ]
  %56 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vio, align 4
  %call188 = call i32 @regulator_disable(ptr noundef %57) #10
  br label %out_disable_vdd

out_disable_vdd:                                  ; preds = %out_disable_vio, %do.end143
  %ret.2 = phi i32 [ %call138, %do.end143 ], [ %ret.1, %out_disable_vio ]
  %58 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vdd, align 4
  %call190 = call i32 @regulator_disable(ptr noundef %59) #10
  br label %cleanup

cleanup:                                          ; preds = %out_disable_vdd, %if.then183, %do.body171, %do.end135, %do.end127, %do.end119, %do.end110, %if.then99, %if.then91, %do.end85, %if.end73.cleanup_crit_edge, %if.then68, %do.end43, %do.end24, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %10, %do.end15 ], [ %call.i, %do.end24 ], [ %call.i308, %do.end43 ], [ %call94, %if.then91 ], [ %call102, %if.then99 ], [ %call105, %do.end110 ], [ %call113, %do.end119 ], [ %call122, %do.end127 ], [ %call130, %do.end135 ], [ %ret.2, %out_disable_vdd ], [ %call72, %if.then68 ], [ -22, %do.end85 ], [ -12, %entry.cleanup_crit_edge ], [ %call75, %if.end73.cleanup_crit_edge ], [ 0, %if.then183 ], [ 0, %do.body171 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %compat) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_type) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_remove(ptr noundef %client) #2 align 64 {
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
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #10
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !192
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !193
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #10
  tail call void @iio_device_unregister(ptr noundef %1) #10
  %vio = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vio, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %6) #10
  %vdd = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %8) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp2ap002_init(ptr nocapture noundef readonly %gp2ap002) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gp2ap002 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gp2ap002, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %gp2ap002 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gp2ap002, align 4
  %hys_far = getelementptr inbounds %struct.gp2ap002, ptr %gp2ap002, i32 0, i32 5
  %4 = ptrtoint ptr %hys_far to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hys_far, align 4
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %gp2ap002 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gp2ap002, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %gp2ap002 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gp2ap002, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %gp2ap002 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gp2ap002, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 6, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end27.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.53, %entry.cleanup.sink.split_crit_edge ], [ @.str.56, %if.end.cleanup.sink.split_crit_edge ], [ @.str.59, %if.end9.cleanup.sink.split_crit_edge ], [ @.str.62, %if.end18.cleanup.sink.split_crit_edge ], [ @.str.65, %if.end27.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ], [ %call11, %if.end9.cleanup.sink.split_crit_edge ], [ %call20, %if.end18.cleanup.sink.split_crit_edge ], [ %call29, %if.end27.cleanup.sink.split_crit_edge ]
  %dev35 = getelementptr inbounds %struct.gp2ap002, ptr %gp2ap002, i32 0, i32 1
  %12 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.65.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_prox_irq(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !187
  %enabled = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.err_retrig_crit_edge, label %if.end

entry.err_retrig_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_retrig

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.67) #13
  br label %err_retrig

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body26, label %do.body7

do.body7:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_prox_irq.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_prox_irq, %if.then12)) #10
          to label %do.end16 [label %if.then12], !srcloc !188

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %dev13 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_prox_irq.__UNIQUE_ID_ddebug289, ptr noundef %12, ptr noundef nonnull @.str.69) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.body7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %hys_far = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %hys_far to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hys_far, align 4
  %conv = zext i8 %16 to i32
  %call18 = call i32 @regmap_write(ptr noundef %14, i32 noundef 2, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end16.if.end53_crit_edge, label %do.end16.if.end53.sink.split_crit_edge

do.end16.if.end53.sink.split_crit_edge:           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

do.end16.if.end53_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body26:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_prox_irq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_prox_irq, %if.then38)) #10
          to label %do.end42 [label %if.then38], !srcloc !188

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %dev39 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_prox_irq.__UNIQUE_ID_ddebug290, ptr noundef %18, ptr noundef nonnull @.str.72) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %hys_close = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %hys_close to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hys_close, align 1
  %conv44 = zext i8 %22 to i32
  %call45 = call i32 @regmap_write(ptr noundef %20, i32 noundef 2, i32 noundef %conv44) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.end42.if.end53_crit_edge, label %do.end42.if.end53.sink.split_crit_edge

do.end42.if.end53.sink.split_crit_edge:           ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

do.end42.if.end53_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end53.sink.split:                              ; preds = %do.end42.if.end53.sink.split_crit_edge, %do.end16.if.end53.sink.split_crit_edge
  %ev.0.ph = phi i64 [ 281509336449024, %do.end16.if.end53.sink.split_crit_edge ], [ 562984313159680, %do.end42.if.end53.sink.split_crit_edge ]
  %dev51 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.56) #13
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %do.end42.if.end53_crit_edge, %do.end16.if.end53_crit_edge
  %ev.0 = phi i64 [ 281509336449024, %do.end16.if.end53_crit_edge ], [ 562984313159680, %do.end42.if.end53_crit_edge ], [ %ev.0.ph, %if.end53.sink.split ]
  %call54 = call i64 @iio_get_time_ns(ptr noundef %d) #10
  %call55 = call i32 @iio_push_event(ptr noundef %d, i64 noundef %ev.0, i64 noundef %call54) #10
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #10
  br label %err_retrig

err_retrig:                                       ; preds = %if.end53, %do.end, %entry.err_retrig_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call57 = call i32 @regmap_write(ptr noundef %26, i32 noundef 6, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %err_retrig.if.end64_crit_edge, label %do.end62

err_retrig.if.end64_crit_edge:                    ; preds = %err_retrig
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end62:                                         ; preds = %err_retrig
  call void @__sanitizer_cov_trace_pc() #12
  %dev63 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev63, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.65) #13
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %err_retrig.if.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #10, !srcloc !192
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !193
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_regmap_i2c_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %val to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_regmap_i2c_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = lshr i32 %call, 8
  %and = and i32 %0, 255
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  %res.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cond9 = icmp eq i32 %5, 6
  br i1 %cond9, label %sw.bb2, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb2:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #10
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %res.i, align 4, !annotation !187
  %alsout.i = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %alsout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alsout.i, align 4
  %call.i16 = call i32 @iio_read_channel_processed(ptr noundef %8, ptr noundef nonnull %res.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i = icmp slt i32 %call.i16, 0
  br i1 %cmp.i, label %gp2ap002_get_lux.exit.thread, label %do.body.i

gp2ap002_get_lux.exit.thread:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gp2ap002_get_lux.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gp2ap002_read_raw, %if.then4.i)) #10
          to label %gp2ap002_get_lux.exit [label %if.then4.i], !srcloc !188

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gp2ap002_get_lux.__UNIQUE_ID_ddebug291, ptr noundef %10, ptr noundef nonnull @.str.78, i32 noundef %12) #10
  br label %gp2ap002_get_lux.exit

gp2ap002_get_lux.exit:                            ; preds = %if.then4.i, %do.body.i
  %13 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res.i, align 4
  %15 = call i32 @llvm.smax.i32(i32 %14, i32 0) #10
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 47) #10
  %arrayidx.i = getelementptr [48 x i16], ptr @gp2ap002_illuminance_table, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %18 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %val, align 4
  br label %out

out:                                              ; preds = %gp2ap002_get_lux.exit, %sw.bb.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %gp2ap002_get_lux.exit ], [ -22, %sw.bb.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i17 = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 22
  %22 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store volatile i64 %call.i17, ptr %last_busy.i, align 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %call.i18 = call i32 @__pm_runtime_suspend(ptr noundef %24, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %gp2ap002_get_lux.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i16, %gp2ap002_get_lux.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gp2ap002_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %enabled = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !189
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %dev2 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i10 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i10, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then ]
  %7 = getelementptr inbounds %struct.gp2ap002, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %irq = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev3 = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.62) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vio = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vio, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %11) #10
  %vdd = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdd, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp2ap002_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vdd = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vio = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vio, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end9, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.83) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #10
  %call10 = tail call fastcc i32 @gp2ap002_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.86) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %irq = getelementptr inbounds %struct.gp2ap002, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end15, %do.end8, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call3, %do.end8 ], [ %call10, %do.end15 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !48, !49, !50, !52, !53, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !147, !148, !149, !151, !153, !155, !157, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_gp2ap002__299_724_gp2ap002_driver_init6, !1, !"__initcall__kmod_gp2ap002__299_724_gp2ap002_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/gp2ap002.c", i32 724, i32 1}
!2 = !{ptr @__exitcall_gp2ap002_driver_exit, !1, !"__exitcall_gp2ap002_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/gp2ap002.c", i32 726, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/gp2ap002.c", i32 727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/gp2ap002.c", i32 728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/gp2ap002.c", i32 716, i32 11}
!12 = !{ptr @gp2ap002_driver, !13, !"gp2ap002_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/gp2ap002.c", i32 714, i32 26}
!14 = !{ptr @gp2ap002_probe.config, !15, !"config", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/gp2ap002.c", i32 435, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/gp2ap002.c", i32 459, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/light/gp2ap002.c", i32 461, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gp2ap002_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @gp2ap002_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/gp2ap002.c", i32 464, i32 46}
!28 = !{ptr @gp2ap002_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/gp2ap002.c", i32 466, i32 11}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/gp2ap002.c", i32 468, i32 3}
!33 = !{ptr @gp2ap002_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @gp2ap002_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/gp2ap002.c", i32 484, i32 37}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/gp2ap002.c", i32 487, i32 3}
!39 = !{ptr @gp2ap002_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @gp2ap002_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/gp2ap002.c", i32 490, i32 2}
!43 = !{ptr @gp2ap002_probe.__UNIQUE_ID_ddebug296, !42, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/gp2ap002.c", i32 493, i32 37}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/gp2ap002.c", i32 496, i32 3}
!48 = !{ptr @gp2ap002_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gp2ap002_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/gp2ap002.c", i32 499, i32 2}
!52 = !{ptr @gp2ap002_probe.__UNIQUE_ID_ddebug297, !51, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/gp2ap002.c", i32 504, i32 48}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/gp2ap002.c", i32 508, i32 35}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/gp2ap002.c", i32 514, i32 4}
!59 = !{ptr @gp2ap002_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gp2ap002_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/gp2ap002.c", i32 520, i32 42}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/gp2ap002.c", i32 523, i32 10}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/gp2ap002.c", i32 525, i32 42}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/gp2ap002.c", i32 528, i32 10}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/gp2ap002.c", i32 533, i32 3}
!71 = !{ptr @gp2ap002_probe._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gp2ap002_probe._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/light/gp2ap002.c", i32 540, i32 3}
!75 = !{ptr @gp2ap002_probe._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @gp2ap002_probe._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/gp2ap002.c", i32 545, i32 3}
!79 = !{ptr @gp2ap002_probe._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @gp2ap002_probe._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/gp2ap002.c", i32 551, i32 3}
!83 = !{ptr @gp2ap002_probe._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gp2ap002_probe._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/gp2ap002.c", i32 556, i32 3}
!87 = !{ptr @gp2ap002_probe._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gp2ap002_probe._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/light/gp2ap002.c", i32 568, i32 3}
!91 = !{ptr @gp2ap002_probe._entry.46, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gp2ap002_probe._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/light/gp2ap002.c", i32 580, i32 3}
!95 = !{ptr @gp2ap002_probe._entry.49, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @gp2ap002_probe._entry_ptr.51, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/light/gp2ap002.c", i32 607, i32 2}
!99 = !{ptr @gp2ap002_probe.__UNIQUE_ID_ddebug298, !98, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!100 = !{ptr @gp2ap002_regmap_bus, !101, !"gp2ap002_regmap_bus", i1 false, i1 false}
!101 = !{!"../drivers/iio/light/gp2ap002.c", i32 423, i32 26}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/light/gp2ap002.c", i32 288, i32 3}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @gp2ap002_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @gp2ap002_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/gp2ap002.c", i32 293, i32 3}
!109 = !{ptr @gp2ap002_init._entry.55, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @gp2ap002_init._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/gp2ap002.c", i32 302, i32 3}
!113 = !{ptr @gp2ap002_init._entry.58, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @gp2ap002_init._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/gp2ap002.c", i32 312, i32 3}
!117 = !{ptr @gp2ap002_init._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @gp2ap002_init._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/light/gp2ap002.c", i32 320, i32 3}
!121 = !{ptr @gp2ap002_init._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @gp2ap002_init._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/gp2ap002.c", i32 166, i32 3}
!125 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @gp2ap002_prox_irq._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @gp2ap002_prox_irq._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/light/gp2ap002.c", i32 172, i32 3}
!130 = !{ptr @gp2ap002_prox_irq.__UNIQUE_ID_ddebug289, !129, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!131 = !{ptr @gp2ap002_prox_irq._entry.70, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/iio/light/gp2ap002.c", i32 176, i32 4}
!133 = !{ptr @gp2ap002_prox_irq._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/light/gp2ap002.c", i32 182, i32 3}
!136 = !{ptr @gp2ap002_prox_irq.__UNIQUE_ID_ddebug290, !135, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!137 = !{ptr @gp2ap002_prox_irq._entry.73, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/iio/light/gp2ap002.c", i32 186, i32 4}
!139 = !{ptr @gp2ap002_prox_irq._entry_ptr.74, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @gp2ap002_prox_irq._entry.75, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/iio/light/gp2ap002.c", i32 206, i32 3}
!142 = !{ptr @gp2ap002_prox_irq._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @gp2ap002_info, !144, !"gp2ap002_info", i1 false, i1 false}
!144 = !{!"../drivers/iio/light/gp2ap002.c", i32 364, i32 30}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/light/gp2ap002.c", i32 237, i32 2}
!147 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @gp2ap002_get_lux.__UNIQUE_ID_ddebug291, !146, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!149 = !{ptr @gp2ap002_illuminance_table, !150, !"gp2ap002_illuminance_table", i1 false, i1 false}
!150 = !{!"../drivers/iio/light/gp2ap002.c", i32 221, i32 18}
!151 = !{ptr @gp2ap002_channels, !152, !"gp2ap002_channels", i1 false, i1 false}
!152 = !{!"../drivers/iio/light/gp2ap002.c", i32 378, i32 35}
!153 = !{ptr @gp2ap002_events, !154, !"gp2ap002_events", i1 false, i1 false}
!154 = !{!"../drivers/iio/light/gp2ap002.c", i32 370, i32 36}
!155 = !{ptr @gp2ap002_of_match, !156, !"gp2ap002_of_match", i1 false, i1 false}
!156 = !{!"../drivers/iio/light/gp2ap002.c", i32 707, i32 34}
!157 = !{ptr @gp2ap002_dev_pm_ops, !158, !"gp2ap002_dev_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/iio/light/gp2ap002.c", i32 694, i32 32}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/iio/light/gp2ap002.c", i32 650, i32 3}
!161 = !{ptr @gp2ap002_runtime_suspend._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @gp2ap002_runtime_suspend._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/iio/light/gp2ap002.c", i32 671, i32 3}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @gp2ap002_runtime_resume._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @gp2ap002_runtime_resume._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/light/gp2ap002.c", i32 676, i32 3}
!170 = !{ptr @gp2ap002_runtime_resume._entry.82, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @gp2ap002_runtime_resume._entry_ptr.84, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/light/gp2ap002.c", i32 684, i32 3}
!174 = !{ptr @gp2ap002_runtime_resume._entry.85, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @gp2ap002_runtime_resume._entry_ptr.87, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @gp2ap002_id_table, !177, !"gp2ap002_id_table", i1 false, i1 false}
!177 = !{!"../drivers/iio/light/gp2ap002.c", i32 701, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i64 2148972370, i64 2148972375, i64 2148972388, i64 2148972432, i64 2148972466, i64 2148972487}
!189 = !{i8 0, i8 2}
!190 = !{i64 2148358993, i64 2148359019, i64 2148359048, i64 2148359082, i64 2148359113, i64 2148359136}
!191 = !{i64 2148358412}
!192 = !{i64 844032, i64 844057, i64 844079, i64 844095, i64 844107, i64 844127, i64 844151, i64 844167, i64 844179}
!193 = !{i64 2148358600}
