; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/mmc35240.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/mmc35240.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.87 = type { i32, i32 }
%struct.anon.88 = type { [3 x i32], i32 }
%struct.atomic_t = type { i32 }
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
%struct.mmc35240_data = type { ptr, %struct.mutex, ptr, i32, [3 x i32], [3 x i32] }

@__initcall__kmod_mmc35240__289_586_mmc35240_driver_init6 = internal global ptr @mmc35240_driver_init, section ".initcall6.init", align 4
@mmc35240_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mmc35240_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmc35240_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc35240_pm_ops, ptr null, ptr null }, ptr @mmc35240_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mmc35240_driver_exit = internal global ptr @mmc35240_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"mmc35240.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"mmc35240.description=MEMSIC MMC35240 magnetic sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [48 x i8] c"mmc35240.file=drivers/iio/magnetometer/mmc35240\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"mmc35240.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc35240\00", [23 x i8] zeroinitializer }, align 32
@mmc35240_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"memsic,mmc35240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmc35240_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mmc35240_suspend, ptr @mmc35240_resume, ptr @mmc35240_suspend, ptr @mmc35240_resume, ptr @mmc35240_suspend, ptr @mmc35240_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mmc35240_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mmc35240\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mmc35240_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mmc35240_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.11, i32 8, i32 0, i32 0, i32 8, ptr @mmc35240_is_writeable_reg, ptr @mmc35240_is_readable_reg, ptr @mmc35240_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc35240_reg_defaults, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mmc35240:496:(&mmc35240_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@mmc35240_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regmap initialization failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc35240_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/magnetometer/mmc35240.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc35240_probe._entry_ptr = internal global ptr @mmc35240_probe._entry, section ".printk_index", align 4
@mmc35240_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&data->mutex\00", [19 x i8] zeroinitializer }, align 32
@mmc35240_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mmc35240_attribute_group, ptr @mmc35240_read_raw, ptr null, ptr null, ptr @mmc35240_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mmc35240_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 1, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }], [88 x i8] zeroinitializer }, align 32
@mmc35240_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mmc35240 chip init failed\0A\00", [37 x i8] zeroinitializer }, align 32
@mmc35240_probe._entry_ptr.10 = internal global ptr @mmc35240_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc35240_regmap\00", [16 x i8] zeroinitializer }, align 32
@mmc35240_reg_defaults = internal constant { [2 x %struct.reg_default], [16 x i8] } { [2 x %struct.reg_default] [%struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }], [16 x i8] zeroinitializer }, align 32
@mmc35240_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mmc35240_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mmc35240_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.12, %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1.5 13 25 50\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@mmc35240_samp_freq = internal constant { [4 x %struct.anon.87], [32 x i8] } { [4 x %struct.anon.87] [%struct.anon.87 { i32 1, i32 500000 }, %struct.anon.87 { i32 13, i32 0 }, %struct.anon.87 { i32 25, i32 0 }, %struct.anon.87 { i32 50, i32 0 }], [32 x i8] zeroinitializer }, align 32
@mmc35240_take_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmc35240_take_measurement\00", [38 x i8] zeroinitializer }, align 32
@mmc35240_take_measurement._entry_ptr = internal global ptr @mmc35240_take_measurement._entry, section ".printk_index", align 4
@mmc35240_props_table = internal constant { [4 x %struct.anon.88], [32 x i8] } { [4 x %struct.anon.88] [%struct.anon.88 { [3 x i32] [i32 1024, i32 1024, i32 1024], i32 32768 }, %struct.anon.88 { [3 x i32] [i32 1024, i32 1024, i32 770], i32 32768 }, %struct.anon.88 { [3 x i32] [i32 256, i32 256, i32 193], i32 8192 }, %struct.anon.88 { [3 x i32] [i32 64, i32 64, i32 48], i32 2048 }], [32 x i8] zeroinitializer }, align 32
@mmc35240_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading product id\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc35240_init\00", [18 x i8] zeroinitializer }, align 32
@mmc35240_init._entry_ptr = internal global ptr @mmc35240_init._entry, section ".printk_index", align 4
@mmc35240_init.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MMC35240 chip id %x\0A\00", [43 x i8] zeroinitializer }, align 32
@mmc35240_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 545, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to restore control registers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc35240_resume\00", [16 x i8] zeroinitializer }, align 32
@mmc35240_resume._entry_ptr = internal global ptr @mmc35240_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 13, i64 25, i64 50]
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"mmc35240_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 575, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 577, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"mmc35240_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 557, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"mmc35240_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 553, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"mmc35240_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 569, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"mmc35240_regmap_config\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 467, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 496, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 498, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 508, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"mmc35240_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 417, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"mmc35240_channels\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 153, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 518, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 468, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"mmc35240_reg_defaults\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 462, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"mmc35240_attribute_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 164, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"mmc35240_attributes\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 159, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 141, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"mmc35240_samp_freq\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 136, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 283, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"mmc35240_props_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 99, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 214, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 218, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [39 x i8] c"../drivers/iio/magnetometer/mmc35240.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 545, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_mmc35240_driver_exit, ptr @__initcall__kmod_mmc35240__289_586_mmc35240_driver_init6, ptr @mmc35240_driver_exit, ptr @mmc35240_init._entry, ptr @mmc35240_init._entry_ptr, ptr @mmc35240_probe._entry, ptr @mmc35240_probe._entry.8, ptr @mmc35240_probe._entry_ptr, ptr @mmc35240_probe._entry_ptr.10, ptr @mmc35240_resume._entry, ptr @mmc35240_resume._entry_ptr, ptr @mmc35240_take_measurement._entry, ptr @mmc35240_take_measurement._entry_ptr, ptr @mmc35240_driver, ptr @.str, ptr @mmc35240_of_match, ptr @mmc35240_pm_ops, ptr @mmc35240_id, ptr @mmc35240_probe._key, ptr @mmc35240_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mmc35240_probe.__key, ptr @.str.7, ptr @mmc35240_info, ptr @mmc35240_channels, ptr @.str.9, ptr @.str.11, ptr @mmc35240_reg_defaults, ptr @mmc35240_attribute_group, ptr @mmc35240_attributes, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.12, ptr @.str.13, ptr @mmc35240_samp_freq, ptr @.str.14, ptr @.str.15, ptr @mmc35240_props_table, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_reg_defaults to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_samp_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_take_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_props_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc35240_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mmc35240_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc35240_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mmc35240_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 128) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mmc35240_regmap_config, ptr noundef nonnull @mmc35240_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
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
  store ptr %client, ptr %2, align 4
  %regmap9 = getelementptr inbounds %struct.mmc35240_data, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %regmap9, align 4
  %res = getelementptr inbounds %struct.mmc35240_data, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %res, align 4
  %mutex = getelementptr inbounds %struct.mmc35240_data, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @mmc35240_probe.__key) #7
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mmc35240_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mmc35240_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %num_channels, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call, align 8
  %call13 = tail call fastcc i32 @mmc35240_init(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %call13, %do.end17 ], [ %call21, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc35240_init(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %reg_id = alloca i32, align 4
  %otp_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_id) #7
  %0 = ptrtoint ptr %reg_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_id, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %otp_data) #7
  %1 = getelementptr inbounds [6 x i8], ptr %otp_data, i32 0, i32 1
  %2 = getelementptr inbounds [6 x i8], ptr %otp_data, i32 0, i32 2
  %3 = getelementptr inbounds [6 x i8], ptr %otp_data, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.mmc35240_data, ptr %data, i32 0, i32 2
  %4 = call ptr @memset(ptr %otp_data, i32 255, i32 6)
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %reg_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc35240_init.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc35240_init, %if.then5)) #7
          to label %do.end10 [label %if.then5], !srcloc !88

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %reg_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc35240_init.__UNIQUE_ID_ddebug288, ptr noundef %dev7, ptr noundef nonnull @.str.18, i32 noundef %12) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 7, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end10.cleanup_crit_edge, label %mmc35240_hw_set.exit

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mmc35240_hw_set.exit:                             ; preds = %do.end10
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 50001, i32 noundef 2) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 7, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp12 = icmp slt i32 %call.i10.i, 0
  br i1 %cmp12, label %mmc35240_hw_set.exit.cleanup_crit_edge, label %if.end14

mmc35240_hw_set.exit.cleanup_crit_edge:           ; preds = %mmc35240_hw_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %mmc35240_hw_set.exit
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1001, i32 noundef 2) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i.i107 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 7, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp.i108 = icmp slt i32 %call.i.i107, 0
  br i1 %cmp.i108, label %if.end14.cleanup_crit_edge, label %mmc35240_hw_set.exit112

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mmc35240_hw_set.exit112:                          ; preds = %if.end14
  call void @usleep_range_state(i32 noundef 50000, i32 noundef 50001, i32 noundef 2) #7
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i10.i109 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 7, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i109)
  %cmp16 = icmp slt i32 %call.i10.i109, 0
  br i1 %cmp16, label %mmc35240_hw_set.exit112.cleanup_crit_edge, label %if.end18

mmc35240_hw_set.exit112.cleanup_crit_edge:        ; preds = %mmc35240_hw_set.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %mmc35240_hw_set.exit112
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %res = getelementptr inbounds %struct.mmc35240_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 8, i32 noundef 3, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 27, ptr noundef nonnull %otp_data, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %29 = shl i8 %28, 4
  %30 = and i8 %29, 48
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %33 = lshr i8 %32, 4
  %or104 = or i8 %30, %33
  %or = zext i8 %or104 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %or104)
  %cmp32 = icmp ugt i8 %or104, 31
  %sub = sub nsw i32 32, %or
  %cond = select i1 %cmp32, i32 %sub, i32 %or
  %mul = mul nsw i32 %cond, 6
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  %36 = and i8 %35, 63
  %and52 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %36)
  %cmp53 = icmp ugt i8 %36, 31
  %sub59 = sub nsw i32 32, %and52
  %cond65 = select i1 %cmp53, i32 %sub59, i32 %and52
  %mul66 = mul nsw i32 %cond65, 81
  %axis_coef = getelementptr inbounds %struct.mmc35240_data, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %axis_coef to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %axis_coef, align 4
  %add = add nsw i32 %mul, 1000
  %arrayidx69 = getelementptr %struct.mmc35240_data, ptr %data, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %arrayidx69, align 4
  %add70 = add nsw i32 %mul66, 13500
  %arrayidx72 = getelementptr %struct.mmc35240_data, ptr %data, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add70, ptr %arrayidx72, align 4
  %axis_scale = getelementptr inbounds %struct.mmc35240_data, ptr %data, i32 0, i32 5
  %40 = ptrtoint ptr %axis_scale to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %axis_scale, align 4
  %arrayidx75 = getelementptr %struct.mmc35240_data, ptr %data, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1000, ptr %arrayidx75, align 4
  %arrayidx77 = getelementptr %struct.mmc35240_data, ptr %data, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 10000, ptr %arrayidx77, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %mmc35240_hw_set.exit112.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %mmc35240_hw_set.exit.cleanup_crit_edge, %do.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end28 ], [ %call.i10.i, %mmc35240_hw_set.exit.cleanup_crit_edge ], [ %call.i10.i109, %mmc35240_hw_set.exit112.cleanup_crit_edge ], [ %call.i, %if.end18.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call.i.i, %do.end10.cleanup_crit_edge ], [ %call.i.i107, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %otp_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_id) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mmc35240_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mmc35240_is_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 32, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mmc35240_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %switch = icmp ult i32 %0, -2
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg_status.i.i = alloca i32, align 4
  %reg = alloca i32, align 4
  %buf = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %buf, align 2, !annotation !87
  %4 = getelementptr inbounds [3 x i16], ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %4, align 2, !annotation !87
  %6 = getelementptr inbounds [3 x i16], ptr %buf, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %6, align 2, !annotation !87
  %8 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 12, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mutex = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_status.i.i) #7
  %9 = ptrtoint ptr %reg_status.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg_status.i.i, align 4, !annotation !87
  %regmap.i.i = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.mmc35240_read_measurement.exit.thread_crit_edge, label %sw.bb.while.body.i.i_crit_edge

sw.bb.while.body.i.i_crit_edge:                   ; preds = %sw.bb
  br label %while.body.i.i

sw.bb.mmc35240_read_measurement.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc35240_read_measurement.exit.thread

while.body.i.i:                                   ; preds = %if.end8.i.i.while.body.i.i_crit_edge, %sw.bb.while.body.i.i_crit_edge
  %dec22.i.i = phi i32 [ %dec.i.i, %if.end8.i.i.while.body.i.i_crit_edge ], [ 99, %sw.bb.while.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call3.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 6, ptr noundef nonnull %reg_status.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %while.body.i.i.mmc35240_read_measurement.exit.thread_crit_edge, label %if.end6.i.i

while.body.i.i.mmc35240_read_measurement.exit.thread_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc35240_read_measurement.exit.thread

if.end6.i.i:                                      ; preds = %while.body.i.i
  %14 = ptrtoint ptr %reg_status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_status.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.i.i, label %mmc35240_read_measurement.exit

if.end8.i.i:                                      ; preds = %if.end6.i.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #7
  %dec.i.i = add nsw i32 %dec22.i.i, -1
  %cmp1.not.i.i = icmp eq i32 %dec22.i.i, 0
  br i1 %cmp1.not.i.i, label %do.end.i.i, label %if.end8.i.i.while.body.i.i_crit_edge

if.end8.i.i.while.body.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14) #10
  br label %mmc35240_read_measurement.exit.thread

mmc35240_read_measurement.exit.thread:            ; preds = %do.end.i.i, %while.body.i.i.mmc35240_read_measurement.exit.thread_crit_edge, %sw.bb.mmc35240_read_measurement.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %sw.bb.mmc35240_read_measurement.exit.thread_crit_edge ], [ -5, %do.end.i.i ], [ %call3.i.i, %while.body.i.i.mmc35240_read_measurement.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_status.i.i) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

mmc35240_read_measurement.exit:                   ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_status.i.i) #7
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 6) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %mmc35240_read_measurement.exit.cleanup_crit_edge, label %if.end

mmc35240_read_measurement.exit.cleanup_crit_edge: ; preds = %mmc35240_read_measurement.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mmc35240_read_measurement.exit
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %20 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %address, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %4, align 2
  %24 = call i16 @llvm.bswap.i16(i16 %23) #7
  %conv3.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %6, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #7
  %conv6.i = zext i16 %27 to i32
  %res.i = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %res.i, align 4
  %arrayidx8.i = getelementptr [4 x %struct.anon.88], ptr @mmc35240_props_table, i32 0, i32 %29
  %arrayidx15.i = getelementptr [3 x i32], ptr %arrayidx8.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx20.i = getelementptr [3 x i32], ptr %arrayidx8.i, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20.i, align 4
  %nfo24.i = getelementptr [4 x %struct.anon.88], ptr @mmc35240_props_table, i32 0, i32 %29, i32 1
  %34 = ptrtoint ptr %nfo24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nfo24.i, align 4
  %36 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %21, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb27.i
    i32 2, label %sw.bb39.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx8.i, align 4
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %buf, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #7
  %conv.i = zext i16 %41 to i32
  %sub.i = sub i32 %conv.i, %35
  %mul.i = mul i32 %sub.i, 1000
  %div.i = sdiv i32 %mul.i, %38
  br label %mmc35240_raw_to_mgauss.exit

sw.bb27.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub29.i = sub i32 %conv3.i, %35
  %mul30.i = mul i32 %sub29.i, 1000
  %div32.i = sdiv i32 %mul30.i, %31
  %sub34.i = sub i32 %conv6.i, %35
  %mul35.i = mul i32 %sub34.i, 1000
  %div37.i = sdiv i32 %mul35.i, %33
  %sub38.i = sub i32 %div32.i, %div37.i
  br label %mmc35240_raw_to_mgauss.exit

sw.bb39.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub41.i = sub i32 %conv3.i, %35
  %mul42.i = mul i32 %sub41.i, 1000
  %div44.i = sdiv i32 %mul42.i, %31
  %sub46.i = sub i32 %conv6.i, %35
  %mul47.i = mul i32 %sub46.i, 1000
  %div49.i = sdiv i32 %mul47.i, %33
  %add.i = add i32 %div49.i, %div44.i
  br label %mmc35240_raw_to_mgauss.exit

mmc35240_raw_to_mgauss.exit:                      ; preds = %sw.bb39.i, %sw.bb27.i, %sw.bb.i
  %add.sink.i = phi i32 [ %add.i, %sw.bb39.i ], [ %sub38.i, %sw.bb27.i ], [ %div.i, %sw.bb.i ]
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.sink.i, ptr %val, align 4
  %arrayidx50.i = getelementptr %struct.mmc35240_data, ptr %1, i32 0, i32 4, i32 %21
  %43 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50.i, align 4
  %mul51.i = mul i32 %44, %add.sink.i
  %arrayidx52.i = getelementptr %struct.mmc35240_data, ptr %1, i32 0, i32 5, i32 %21
  %45 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx52.i, align 4
  %div53.i = sdiv i32 %mul51.i, %46
  store i32 %div53.i, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val, align 4
  %48 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %mutex10 = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex10, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %50, i32 noundef 8, ptr noundef nonnull %reg) #7
  call void @mutex_unlock(ptr noundef %mutex10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %sw.bb9.cleanup_crit_edge, label %if.end15

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg, align 4
  %and = and i32 %52, 3
  %arrayidx = getelementptr [4 x %struct.anon.87], ptr @mmc35240_samp_freq, i32 0, i32 %and
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  %val222 = getelementptr [4 x %struct.anon.87], ptr @mmc35240_samp_freq, i32 0, i32 %and, i32 1
  %56 = ptrtoint ptr %val222 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val222, align 4
  %58 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %sw.bb9.cleanup_crit_edge, %sw.bb8, %mmc35240_raw_to_mgauss.exit, %if.end.cleanup_crit_edge, %mmc35240_read_measurement.exit.cleanup_crit_edge, %mmc35240_read_measurement.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end15 ], [ 2, %sw.bb8 ], [ %call1.i, %mmc35240_read_measurement.exit.cleanup_crit_edge ], [ %call11, %sw.bb9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i, %mmc35240_read_measurement.exit.thread ], [ 1, %mmc35240_raw_to_mgauss.exit ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %val, label %sw.bb.cleanup_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 13, label %land.lhs.true.1.i
    i32 25, label %land.lhs.true.2.i
    i32 50, label %land.lhs.true.3.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.1.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 0
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.if.end_crit_edge, label %land.lhs.true.1.i.cleanup_crit_edge

land.lhs.true.1.i.cleanup_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1.i.if.end_crit_edge:               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.2.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.if.end_crit_edge, label %land.lhs.true.2.i.cleanup_crit_edge

land.lhs.true.2.i.cleanup_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.i.if.end_crit_edge:               ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.3.i:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.if.end_crit_edge, label %land.lhs.true.3.i.cleanup_crit_edge

land.lhs.true.3.i.cleanup_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.3.i.if.end_crit_edge:               ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.3.i.if.end_crit_edge, %land.lhs.true.2.i.if.end_crit_edge, %land.lhs.true.1.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %land.lhs.true.3.i.if.end_crit_edge ], [ 2, %land.lhs.true.2.i.if.end_crit_edge ], [ 1, %land.lhs.true.1.i.if.end_crit_edge ], [ 0, %land.lhs.true.i.if.end_crit_edge ]
  %mutex = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %regmap = getelementptr inbounds %struct.mmc35240_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 8, i32 noundef 3, i32 noundef %retval.0.i.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.3.i.cleanup_crit_edge, %land.lhs.true.2.i.cleanup_crit_edge, %land.lhs.true.1.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.mmc35240_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc35240_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.mmc35240_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync_region(ptr noundef %7, i32 noundef 7, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !69, !71, !73, !74, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_mmc35240__289_586_mmc35240_driver_init6, !1, !"__initcall__kmod_mmc35240__289_586_mmc35240_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 586, i32 1}
!2 = !{ptr @__exitcall_mmc35240_driver_exit, !1, !"__exitcall_mmc35240_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 588, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 589, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 590, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 577, i32 11}
!12 = !{ptr @mmc35240_driver, !13, !"mmc35240_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 575, i32 26}
!14 = !{ptr @mmc35240_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 496, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 498, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mmc35240_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mmc35240_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mmc35240_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 508, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 518, i32 3}
!30 = !{ptr @mmc35240_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mmc35240_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 468, i32 10}
!34 = !{ptr @mmc35240_regmap_config, !35, !"mmc35240_regmap_config", i1 false, i1 false}
!35 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 467, i32 35}
!36 = !{ptr @mmc35240_reg_defaults, !37, !"mmc35240_reg_defaults", i1 false, i1 false}
!37 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 462, i32 33}
!38 = !{ptr @mmc35240_info, !39, !"mmc35240_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 417, i32 30}
!40 = !{ptr @mmc35240_attribute_group, !41, !"mmc35240_attribute_group", i1 false, i1 false}
!41 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 164, i32 37}
!42 = !{ptr @mmc35240_attributes, !43, !"mmc35240_attributes", i1 false, i1 false}
!43 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 159, i32 26}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 141, i32 8}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @iio_const_attr_sampling_frequency_available, !45, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 283, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mmc35240_take_measurement._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mmc35240_take_measurement._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mmc35240_props_table, !54, !"mmc35240_props_table", i1 false, i1 false}
!54 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 99, i32 3}
!55 = !{ptr @mmc35240_samp_freq, !56, !"mmc35240_samp_freq", i1 false, i1 false}
!56 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 136, i32 3}
!57 = !{ptr @mmc35240_channels, !58, !"mmc35240_channels", i1 false, i1 false}
!58 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 153, i32 35}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 214, i32 3}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mmc35240_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mmc35240_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 218, i32 2}
!66 = !{ptr @mmc35240_init.__UNIQUE_ID_ddebug288, !65, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!67 = !{ptr @mmc35240_of_match, !68, !"mmc35240_of_match", i1 false, i1 false}
!68 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 557, i32 34}
!69 = !{ptr @mmc35240_pm_ops, !70, !"mmc35240_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 553, i32 32}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 545, i32 3}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mmc35240_resume._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mmc35240_resume._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mmc35240_id, !77, !"mmc35240_id", i1 false, i1 false}
!77 = !{!"../drivers/iio/magnetometer/mmc35240.c", i32 569, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i64 2148965883, i64 2148965888, i64 2148965901, i64 2148965945, i64 2148965979, i64 2148966000}
