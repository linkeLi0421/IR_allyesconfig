; ModuleID = '/llk/IR_all_yes/drivers/iio/light/ltr501.c_pt.bc'
source_filename = "../drivers/iio/light/ltr501.c"
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
%struct.ltr501_chip_info = type { i8, ptr, i32, ptr, i32, i8, i8, i8, ptr, i32, ptr, ptr }
%struct.ltr501_gain = type { i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.ltr501_samp_table = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ltr501_data = type { ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, %struct.mutex, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.87 = type { [3 x i16], i64 }

@__initcall__kmod_ltr501__288_1672_ltr501_driver_init6 = internal global ptr @ltr501_driver_init, section ".initcall6.init", align 4
@ltr501_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ltr501_probe, ptr @ltr501_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltr501_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ltr501_pm_ops, ptr null, ptr null }, ptr @ltr501_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltr501_driver_exit = internal global ptr @ltr501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [49 x i8] c"ltr501.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [76 x i8] c"ltr501.description=Lite-On LTR501 ambient light and proximity sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"ltr501.file=drivers/iio/light/ltr501\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"ltr501.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ltr501\00", [25 x i8] zeroinitializer }, align 32
@ltr501_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"liteon,ltr501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"liteon,ltr559\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"liteon,ltr301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"liteon,ltr303\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ltr501_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ltr501_suspend, ptr @ltr501_resume, ptr @ltr501_suspend, ptr @ltr501_resume, ptr @ltr501_suspend, ptr @ltr501_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ltr501_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltr501\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ltr559\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ltr301\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ltr303\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ltr501_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltr501_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.39, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @ltr501_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 159, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ltr501:1456:(&ltr501_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@ltr501_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ltr501_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/ltr501.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr = internal global ptr @ltr501_probe._entry, section ".printk_index", align 4
@ltr501_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->lock_als\00", [16 x i8] zeroinitializer }, align 32
@ltr501_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&data->lock_ps\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@ltr501_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Integ time reg field init failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.15 = internal global ptr @ltr501_probe._entry.13, section ".printk_index", align 4
@ltr501_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ALS intr mode reg field init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.18 = internal global ptr @ltr501_probe._entry.16, section ".printk_index", align 4
@ltr501_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 1505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PS intr mode reg field init failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.21 = internal global ptr @ltr501_probe._entry.19, section ".printk_index", align 4
@ltr501_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ALS samp rate field init failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.24 = internal global ptr @ltr501_probe._entry.22, section ".printk_index", align 4
@ltr501_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PS samp rate field init failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.27 = internal global ptr @ltr501_probe._entry.25, section ".printk_index", align 4
@ltr501_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1526, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ALS prst reg field init failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.30 = internal global ptr @ltr501_probe._entry.28, section ".printk_index", align 4
@ltr501_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1533, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PS prst reg field init failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.33 = internal global ptr @ltr501_probe._entry.31, section ".printk_index", align 4
@ltr501_chip_info_tbl = internal constant { [4 x %struct.ltr501_chip_info], [32 x i8] } { [4 x %struct.ltr501_chip_info] [%struct.ltr501_chip_info { i8 8, ptr @ltr501_als_gain_tbl, i32 2, ptr @ltr501_ps_gain_tbl, i32 4, i8 3, i8 8, i8 3, ptr @ltr501_channels, i32 5, ptr @ltr501_info, ptr @ltr501_info_no_irq }, %struct.ltr501_chip_info { i8 9, ptr @ltr559_als_gain_tbl, i32 8, ptr @ltr559_ps_gain_tbl, i32 4, i8 1, i8 28, i8 2, ptr @ltr501_channels, i32 5, ptr @ltr501_info, ptr @ltr501_info_no_irq }, %struct.ltr501_chip_info { i8 8, ptr @ltr501_als_gain_tbl, i32 2, ptr null, i32 0, i8 3, i8 8, i8 3, ptr @ltr301_channels, i32 4, ptr @ltr301_info, ptr @ltr301_info_no_irq }, %struct.ltr501_chip_info { i8 10, ptr @ltr559_als_gain_tbl, i32 8, ptr null, i32 0, i8 1, i8 28, i8 2, ptr @ltr301_channels, i32 4, ptr @ltr301_info, ptr @ltr301_info_no_irq }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"proximity-near-level\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltr501_thresh_event\00", [44 x i8] zeroinitializer }, align 32
@ltr501_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 1578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request irq (%d) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@ltr501_probe._entry_ptr.38 = internal global ptr @ltr501_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltr501_regmap\00", [18 x i8] zeroinitializer }, align 32
@ltr501_als_gain_tbl = internal constant { [2 x %struct.ltr501_gain], [16 x i8] } { [2 x %struct.ltr501_gain] [%struct.ltr501_gain { i32 1, i32 0 }, %struct.ltr501_gain { i32 0, i32 5000 }], [16 x i8] zeroinitializer }, align 32
@ltr501_ps_gain_tbl = internal constant { [4 x %struct.ltr501_gain], [32 x i8] } { [4 x %struct.ltr501_gain] [%struct.ltr501_gain { i32 1, i32 0 }, %struct.ltr501_gain { i32 0, i32 250000 }, %struct.ltr501_gain { i32 0, i32 125000 }, %struct.ltr501_gain { i32 0, i32 62500 }], [32 x i8] zeroinitializer }, align 32
@ltr501_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 138, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ltr501_als_event_spec, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 136, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 266244, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 141, i32 2, %struct.anon.86 { i8 117, i8 11, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ltr501_pxs_event_spec, i32 3, ptr @ltr501_ext_info, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@ltr501_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ltr501_attribute_group, ptr @ltr501_read_raw, ptr null, ptr null, ptr @ltr501_write_raw, ptr null, ptr null, ptr @ltr501_read_event_config, ptr @ltr501_write_event_config, ptr @ltr501_read_event, ptr @ltr501_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ltr501_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ltr501_attribute_group, ptr @ltr501_read_raw, ptr null, ptr null, ptr @ltr501_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ltr559_als_gain_tbl = internal constant { [8 x %struct.ltr501_gain], [32 x i8] } { [8 x %struct.ltr501_gain] [%struct.ltr501_gain { i32 1, i32 0 }, %struct.ltr501_gain { i32 0, i32 500000 }, %struct.ltr501_gain { i32 0, i32 250000 }, %struct.ltr501_gain { i32 0, i32 125000 }, %struct.ltr501_gain { i32 -1, i32 -1 }, %struct.ltr501_gain { i32 -1, i32 -1 }, %struct.ltr501_gain { i32 0, i32 20000 }, %struct.ltr501_gain { i32 0, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@ltr559_ps_gain_tbl = internal constant { [4 x %struct.ltr501_gain], [32 x i8] } { [4 x %struct.ltr501_gain] [%struct.ltr501_gain { i32 0, i32 62500 }, %struct.ltr501_gain { i32 0, i32 31250 }, %struct.ltr501_gain { i32 0, i32 15625 }, %struct.ltr501_gain { i32 0, i32 15624 }], [32 x i8] zeroinitializer }, align 32
@ltr301_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 12, i32 138, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ltr501_als_event_spec, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 136, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 266244, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ltr301_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ltr301_attribute_group, ptr @ltr501_read_raw, ptr null, ptr null, ptr @ltr501_write_raw, ptr null, ptr null, ptr @ltr501_read_event_config, ptr @ltr501_write_event_config, ptr @ltr501_read_event, ptr @ltr501_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ltr301_info_no_irq = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ltr301_attribute_group, ptr @ltr501_read_raw, ptr null, ptr null, ptr @ltr501_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ltr501_als_event_spec = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@ltr501_pxs_event_spec = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@ltr501_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.40, i32 0, ptr @ltr501_read_near_level, ptr null, i32 0 }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nearlevel\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@ltr501_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltr501_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltr501_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iio_dev_attr_in_proximity_scale_available, ptr @iio_dev_attr_in_intensity_scale_available, ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [44 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_proximity_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltr501_show_proximity_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_intensity_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltr501_show_intensity_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_integration_time_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.45, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.47, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_proximity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06d \00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"in_intensity_scale_available\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0.05 0.1 0.2 0.4\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"20 10 5 2 1 0.5\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@ltr501_drdy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ltr501_drdy() failed, data not ready\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ltr501_drdy\00", [20 x i8] zeroinitializer }, align 32
@ltr501_drdy._entry_ptr = internal global ptr @ltr501_drdy._entry, section ".printk_index", align 4
@int_time_mapping = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 100000, i32 50000, i32 200000, i32 400000], [16 x i8] zeroinitializer }, align 32
@ltr501_als_samp_table = internal constant { [8 x %struct.ltr501_samp_table], [32 x i8] } { [8 x %struct.ltr501_samp_table] [%struct.ltr501_samp_table { i32 20000000, i32 50000 }, %struct.ltr501_samp_table { i32 10000000, i32 100000 }, %struct.ltr501_samp_table { i32 5000000, i32 200000 }, %struct.ltr501_samp_table { i32 2000000, i32 500000 }, %struct.ltr501_samp_table { i32 1000000, i32 1000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }], [32 x i8] zeroinitializer }, align 32
@ltr501_ps_samp_table = internal constant { [9 x %struct.ltr501_samp_table], [56 x i8] } { [9 x %struct.ltr501_samp_table] [%struct.ltr501_samp_table { i32 20000000, i32 50000 }, %struct.ltr501_samp_table { i32 14285714, i32 70000 }, %struct.ltr501_samp_table { i32 10000000, i32 100000 }, %struct.ltr501_samp_table { i32 5000000, i32 200000 }, %struct.ltr501_samp_table { i32 2000000, i32 500000 }, %struct.ltr501_samp_table { i32 1000000, i32 1000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }, %struct.ltr501_samp_table { i32 500000, i32 2000000 }], [56 x i8] zeroinitializer }, align 32
@ltr301_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltr301_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltr301_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_in_intensity_scale_available, ptr getelementptr (i8, ptr @iio_const_attr_integration_time_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr null], [16 x i8] zeroinitializer }, align 32
@ltr501_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 1345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq read int reg failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltr501_interrupt_handler\00", [39 x i8] zeroinitializer }, align 32
@ltr501_interrupt_handler._entry_ptr = internal global ptr @ltr501_interrupt_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 12, i64 18]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 12, i64 18]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 50000, i64 100000, i64 200000, i64 400000]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 500000, i64 1000000, i64 2000000, i64 5000000, i64 10000000, i64 20000000]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 500000, i64 1000000, i64 2000000, i64 5000000, i64 10000000, i64 14285714, i64 20000000]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [8 x i64] [i64 6, i64 32, i64 500000, i64 1000000, i64 2000000, i64 5000000, i64 10000000, i64 20000000]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [9 x i64] [i64 7, i64 32, i64 500000, i64 1000000, i64 2000000, i64 5000000, i64 10000000, i64 14285714, i64 20000000]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"ltr501_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1660, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1662, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"ltr501_of_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1651, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"ltr501_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1632, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"ltr501_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1642, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"ltr501_regmap_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1409, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1456, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1458, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1466, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1467, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1469, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1470, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1476, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1491, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1498, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1505, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1512, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1519, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1526, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1533, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"ltr501_chip_info_tbl\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1215, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1555, i32 45 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1574, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1577, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1410, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c"ltr501_als_gain_tbl\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 109, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"ltr501_ps_gain_tbl\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 125, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"ltr501_channels\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 608, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"ltr501_info\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1189, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"ltr501_info_no_irq\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1183, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"ltr559_als_gain_tbl\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 114, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"ltr559_ps_gain_tbl\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 132, i32 33 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"ltr301_channels\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 637, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"ltr301_info\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1205, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"ltr301_info_no_irq\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1199, i32 30 }
@___asan_gen_.229 = private unnamed_addr constant [22 x i8] c"ltr501_als_event_spec\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 548, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"ltr501_pxs_event_spec\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 566, i32 36 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"ltr501_ext_info\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 539, i32 44 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 541, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 536, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant [23 x i8] c"ltr501_attribute_group\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1175, i32 37 }
@___asan_gen_.247 = private unnamed_addr constant [18 x i8] c"ltr501_attributes\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1160, i32 26 }
@___asan_gen_.250 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_proximity_scale_available\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_in_intensity_scale_available\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [42 x i8] c"iio_const_attr_integration_time_available\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1155, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1120, i32 48 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1157, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1152, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1153, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 345, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"int_time_mapping\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 73, i32 18 }
@___asan_gen_.295 = private unnamed_addr constant [22 x i8] c"ltr501_als_samp_table\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 172, i32 39 }
@___asan_gen_.298 = private unnamed_addr constant [21 x i8] c"ltr501_ps_samp_table\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 179, i32 39 }
@___asan_gen_.301 = private unnamed_addr constant [23 x i8] c"ltr301_attribute_group\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1179, i32 37 }
@___asan_gen_.304 = private unnamed_addr constant [18 x i8] c"ltr301_attributes\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1168, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [30 x i8] c"../drivers/iio/light/ltr501.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1344, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltr501_driver_exit, ptr @__initcall__kmod_ltr501__288_1672_ltr501_driver_init6, ptr @ltr501_drdy._entry, ptr @ltr501_drdy._entry_ptr, ptr @ltr501_driver_exit, ptr @ltr501_interrupt_handler._entry, ptr @ltr501_interrupt_handler._entry_ptr, ptr @ltr501_probe._entry, ptr @ltr501_probe._entry.13, ptr @ltr501_probe._entry.16, ptr @ltr501_probe._entry.19, ptr @ltr501_probe._entry.22, ptr @ltr501_probe._entry.25, ptr @ltr501_probe._entry.28, ptr @ltr501_probe._entry.31, ptr @ltr501_probe._entry.36, ptr @ltr501_probe._entry_ptr, ptr @ltr501_probe._entry_ptr.15, ptr @ltr501_probe._entry_ptr.18, ptr @ltr501_probe._entry_ptr.21, ptr @ltr501_probe._entry_ptr.24, ptr @ltr501_probe._entry_ptr.27, ptr @ltr501_probe._entry_ptr.30, ptr @ltr501_probe._entry_ptr.33, ptr @ltr501_probe._entry_ptr.38, ptr @ltr501_driver, ptr @.str, ptr @ltr501_of_match, ptr @ltr501_pm_ops, ptr @ltr501_id, ptr @ltr501_probe._key, ptr @ltr501_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ltr501_probe.__key, ptr @.str.7, ptr @ltr501_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @ltr501_chip_info_tbl, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @ltr501_als_gain_tbl, ptr @ltr501_ps_gain_tbl, ptr @ltr501_channels, ptr @ltr501_info, ptr @ltr501_info_no_irq, ptr @ltr559_als_gain_tbl, ptr @ltr559_ps_gain_tbl, ptr @ltr301_channels, ptr @ltr301_info, ptr @ltr301_info_no_irq, ptr @ltr501_als_event_spec, ptr @ltr501_pxs_event_spec, ptr @ltr501_ext_info, ptr @.str.40, ptr @.str.41, ptr @ltr501_attribute_group, ptr @ltr501_attributes, ptr @iio_dev_attr_in_proximity_scale_available, ptr @iio_dev_attr_in_intensity_scale_available, ptr @iio_const_attr_integration_time_available, ptr @iio_const_attr_sampling_frequency_available, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @int_time_mapping, ptr @ltr501_als_samp_table, ptr @ltr501_ps_samp_table, ptr @ltr301_attribute_group, ptr @ltr301_attributes, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_chip_info_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_als_gain_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_ps_gain_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr559_als_gain_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr559_ps_gain_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr301_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr301_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr301_info_no_irq to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_als_event_spec to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_pxs_event_spec to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_proximity_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_intensity_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_integration_time_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_drdy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_time_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_als_samp_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_ps_samp_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr301_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr301_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltr501_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltr501_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltr501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ltr501_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %partid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %partid) #9
  %0 = ptrtoint ptr %partid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %partid, align 4, !annotation !178
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltr501_regmap_config, ptr noundef nonnull @ltr501_probe._key, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %3, align 4
  %regmap9 = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %regmap9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %regmap9, align 4
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock_als, ptr noundef nonnull @.str.7, ptr noundef nonnull @ltr501_probe.__key) #9
  %lock_ps = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock_ps, ptr noundef nonnull @.str.9, ptr noundef nonnull @ltr501_probe.__key.8) #9
  %regulators = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regulators to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.10, ptr %regulators, align 4
  %arrayidx17 = getelementptr %struct.ltr501_data, ptr %3, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.11, ptr %arrayidx17, align 4
  %call21 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end6
  %call29 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ltr501_disable_regulators, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end37, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %call39 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 133, i32 3, i32 4, i32 0, i32 0]) #9
  %reg_it = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %reg_it to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call39, ptr %reg_it, align 4
  %cmp.i325 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i325, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  %10 = ptrtoint ptr %reg_it to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_it, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %call51 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 143, i32 1, i32 1, i32 0, i32 0]) #9
  %reg_als_intr = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %reg_als_intr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call51, ptr %reg_als_intr, align 4
  %cmp.i326 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %do.end57, label %if.end61

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  %14 = ptrtoint ptr %reg_als_intr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_als_intr, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end49
  %call63 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 143, i32 0, i32 0, i32 0, i32 0]) #9
  %reg_ps_intr = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %reg_ps_intr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call63, ptr %reg_ps_intr, align 4
  %cmp.i327 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %do.end69, label %if.end73

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #12
  %18 = ptrtoint ptr %reg_ps_intr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ps_intr, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %call75 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 133, i32 0, i32 2, i32 0, i32 0]) #9
  %reg_als_rate = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %reg_als_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call75, ptr %reg_als_rate, align 4
  %cmp.i328 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %do.end81, label %if.end85

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  %22 = ptrtoint ptr %reg_als_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_als_rate, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end73
  %call87 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 132, i32 0, i32 3, i32 0, i32 0]) #9
  %reg_ps_rate = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 14
  %25 = ptrtoint ptr %reg_ps_rate to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call87, ptr %reg_ps_rate, align 4
  %cmp.i329 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %do.end93, label %if.end97

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #12
  %26 = ptrtoint ptr %reg_ps_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_ps_rate, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end97:                                         ; preds = %if.end85
  %call99 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 158, i32 0, i32 3, i32 0, i32 0]) #9
  %reg_als_prst = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %reg_als_prst to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call99, ptr %reg_als_prst, align 4
  %cmp.i330 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %do.end105, label %if.end109

do.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  %30 = ptrtoint ptr %reg_als_prst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_als_prst, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end109:                                        ; preds = %if.end97
  %call111 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call1, [5 x i32] [i32 158, i32 4, i32 7, i32 0, i32 0]) #9
  %reg_ps_prst = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 16
  %33 = ptrtoint ptr %reg_ps_prst to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call111, ptr %reg_ps_prst, align 4
  %cmp.i331 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i331, label %do.end117, label %if.end121

do.end117:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  %34 = ptrtoint ptr %reg_ps_prst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_ps_prst, align 4
  %36 = ptrtoint ptr %35 to i32
  br label %cleanup

if.end121:                                        ; preds = %if.end109
  %37 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap9, align 4
  %call123 = call i32 @regmap_read(ptr noundef %38, i32 noundef 134, ptr noundef nonnull %partid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp = icmp slt i32 %call123, 0
  br i1 %cmp, label %if.end121.cleanup_crit_edge, label %if.end125

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end125:                                        ; preds = %if.end121
  %tobool126.not = icmp eq ptr %id, null
  br i1 %tobool126.not, label %if.end125.cleanup_crit_edge, label %if.then127

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then127:                                       ; preds = %if.end125
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %39 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %driver_data, align 4
  %arrayidx136 = getelementptr [4 x %struct.ltr501_chip_info], ptr @ltr501_chip_info_tbl, i32 0, i32 %40
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx136, ptr %chip_info, align 4
  %42 = ptrtoint ptr %partid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %partid, align 4
  %shr = ashr i32 %43, 4
  %44 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx136, align 4
  %conv = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp139.not = icmp eq i32 %shr, %conv
  br i1 %cmp139.not, label %if.end142, label %if.then127.cleanup_crit_edge

if.then127.cleanup_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end142:                                        ; preds = %if.then127
  %near_level = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 17
  %call.i332 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %near_level, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %tobool145.not = icmp eq i32 %call.i332, 0
  br i1 %tobool145.not, label %if.end142.if.end148_crit_edge, label %if.then146

if.end142.if.end148_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %near_level to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %near_level, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end142.if.end148_crit_edge
  %47 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip_info, align 4
  %info = getelementptr inbounds %struct.ltr501_chip_info, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %info, align 4
  %info150 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %51 = ptrtoint ptr %info150 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %info150, align 8
  %52 = load ptr, ptr %chip_info, align 4
  %channels = getelementptr inbounds %struct.ltr501_chip_info, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channels, align 4
  %channels152 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %55 = ptrtoint ptr %channels152 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %channels152, align 8
  %56 = load ptr, ptr %chip_info, align 4
  %no_channels = getelementptr inbounds %struct.ltr501_chip_info, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %no_channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %no_channels, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %59 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num_channels, align 4
  %name154 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %60 = ptrtoint ptr %name154 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %id, ptr %name154, align 8
  %61 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %call, align 8
  %call155 = call fastcc i32 @ltr501_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %if.end148.cleanup_crit_edge, label %if.end159

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end159:                                        ; preds = %if.end148
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp160 = icmp sgt i32 %63, 0
  br i1 %cmp160, label %if.then162, label %if.else174

if.then162:                                       ; preds = %if.end159
  %call165 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %63, ptr noundef null, ptr noundef nonnull @ltr501_interrupt_handler, i32 noundef 8194, ptr noundef nonnull @.str.35, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.then162.if.end177_crit_edge, label %do.end170

if.then162.if.end177_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end177

do.end170:                                        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %65) #12
  br label %cleanup

if.else174:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip_info, align 4
  %info_no_irq = getelementptr inbounds %struct.ltr501_chip_info, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %info_no_irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info_no_irq, align 4
  %70 = ptrtoint ptr %info150 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %info150, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.else174, %if.then162.if.end177_crit_edge
  %call178 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ltr501_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %if.end177.powerdown_on_error_crit_edge

if.end177.powerdown_on_error_crit_edge:           ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %powerdown_on_error

if.end181:                                        ; preds = %if.end177
  %call182 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end181.cleanup_crit_edge, label %error_unreg_buffer

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error_unreg_buffer:                               ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #9
  br label %powerdown_on_error

powerdown_on_error:                               ; preds = %error_unreg_buffer, %if.end177.powerdown_on_error_crit_edge
  %ret.0 = phi i32 [ %call178, %if.end177.powerdown_on_error_crit_edge ], [ %call182, %error_unreg_buffer ]
  %call186 = call fastcc i32 @ltr501_powerdown(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %powerdown_on_error, %if.end181.cleanup_crit_edge, %do.end170, %if.end148.cleanup_crit_edge, %if.then127.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %do.end117, %do.end105, %do.end93, %do.end81, %do.end69, %do.end57, %do.end45, %devm_add_action_or_reset.exit, %if.end26.cleanup_crit_edge, %if.then23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ %call25, %if.then23 ], [ %12, %do.end45 ], [ %16, %do.end57 ], [ %20, %do.end69 ], [ %24, %do.end81 ], [ %28, %do.end93 ], [ %32, %do.end105 ], [ %36, %do.end117 ], [ %call165, %do.end170 ], [ %ret.0, %powerdown_on_error ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call123, %if.end121.cleanup_crit_edge ], [ -19, %if.end125.cleanup_crit_edge ], [ -19, %if.then127.cleanup_crit_edge ], [ %call155, %if.end148.cleanup_crit_edge ], [ 0, %if.end181.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %partid) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %als_contr.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %als_contr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_contr.i, align 4
  %chip_info.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %als_mode_active.i = getelementptr inbounds %struct.ltr501_chip_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %als_mode_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %als_mode_active.i, align 4
  %neg.i = xor i8 %9, -1
  %and.i = and i8 %5, %neg.i
  %ps_contr.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %ps_contr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ps_contr.i, align 1
  %regmap.i.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %and.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 128, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.ltr501_powerdown.exit_crit_edge, label %if.end.i.i

entry.ltr501_powerdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_powerdown.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = and i8 %11, -3
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %conv3.i.i = zext i8 %14 to i32
  %call4.i.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 129, i32 noundef %conv3.i.i) #9
  br label %ltr501_powerdown.exit

ltr501_powerdown.exit:                            ; preds = %if.end.i.i, %entry.ltr501_powerdown.exit_crit_edge
  ret i32 0
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
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltr501_disable_regulators(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.ltr501_data, ptr %d, i32 0, i32 1
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_init(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %i.i28.i = alloca i32, align 4
  %prst.i43 = alloca i32, align 4
  %i.i.i = alloca i32, align 4
  %prst.i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !178
  %regmap = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 128, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info, align 4
  %als_mode_active = getelementptr inbounds %struct.ltr501_chip_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %als_mode_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %als_mode_active, align 4
  %9 = trunc i32 %4 to i8
  %conv1 = or i8 %8, %9
  %als_contr = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %als_contr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1, ptr %als_contr, align 4
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %12, i32 noundef 129, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %15 = trunc i32 %14 to i8
  %conv9 = or i8 %15, 2
  %ps_contr = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 6
  %16 = ptrtoint ptr %ps_contr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %ps_contr, align 1
  %als_period = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prst.i) #9
  %17 = ptrtoint ptr %prst.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %prst.i, align 4, !annotation !178
  %reg_als_prst.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 15
  %18 = ptrtoint ptr %reg_als_prst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_als_prst.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %prst.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.ltr501_read_intr_prst.exit.thread_crit_edge, label %if.end.i

if.end7.ltr501_read_intr_prst.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_intr_prst.exit.thread

if.end.i:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #9
  %20 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %i.i.i, align 4, !annotation !178
  %reg_als_rate.i.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 13
  %21 = ptrtoint ptr %reg_als_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_als_rate.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %23 = ptrtoint ptr %i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp2.i.i = icmp ugt i32 %24, 7
  br i1 %cmp2.i.i, label %if.end.i.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge, label %if.end14

if.end.i.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread.i

ltr501_als_read_samp_period.exit.thread.i:        ; preds = %if.end.i.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge, %if.end.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %if.end.i.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge ], [ %call.i.i, %if.end.i.ltr501_als_read_samp_period.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  br label %ltr501_read_intr_prst.exit.thread

ltr501_read_intr_prst.exit.thread:                ; preds = %ltr501_als_read_samp_period.exit.thread.i, %if.end7.ltr501_read_intr_prst.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %ltr501_als_read_samp_period.exit.thread.i ], [ %call.i, %if.end7.ltr501_read_intr_prst.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prst.i) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i
  %time_val.i.i = getelementptr [8 x %struct.ltr501_samp_table], ptr @ltr501_als_samp_table, i32 0, i32 %24, i32 1
  %25 = ptrtoint ptr %time_val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %time_val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  %27 = ptrtoint ptr %prst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %prst.i, align 4
  %mul.i = mul i32 %28, %26
  %29 = ptrtoint ptr %als_period to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.i, ptr %als_period, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prst.i) #9
  %ps_period = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prst.i43) #9
  %30 = ptrtoint ptr %prst.i43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %prst.i43, align 4, !annotation !178
  %reg_ps_prst.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 16
  %31 = ptrtoint ptr %reg_ps_prst.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_ps_prst.i, align 4
  %call6.i = call i32 @regmap_field_read(ptr noundef %32, ptr noundef nonnull %prst.i43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end14.ltr501_read_intr_prst.exit45.thread_crit_edge, label %if.end9.i

if.end14.ltr501_read_intr_prst.exit45.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_intr_prst.exit45.thread

if.end9.i:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i28.i) #9
  %33 = ptrtoint ptr %i.i28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %i.i28.i, align 4, !annotation !178
  %reg_ps_rate.i.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 14
  %34 = ptrtoint ptr %reg_ps_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_ps_rate.i.i, align 4
  %call.i29.i = call i32 @regmap_field_read(ptr noundef %35, ptr noundef nonnull %i.i28.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %cmp.i30.i = icmp slt i32 %call.i29.i, 0
  br i1 %cmp.i30.i, label %if.end9.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge, label %if.end.i32.i

if.end9.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread.i

if.end.i32.i:                                     ; preds = %if.end9.i
  %36 = ptrtoint ptr %i.i28.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp2.i31.i = icmp ugt i32 %37, 8
  br i1 %cmp2.i31.i, label %if.end.i32.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge, label %if.end19

if.end.i32.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge: ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread.i

ltr501_ps_read_samp_period.exit.thread.i:         ; preds = %if.end.i32.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge, %if.end9.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge
  %retval.0.i35.ph.i = phi i32 [ -22, %if.end.i32.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge ], [ %call.i29.i, %if.end9.i.ltr501_ps_read_samp_period.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i28.i) #9
  br label %ltr501_read_intr_prst.exit45.thread

ltr501_read_intr_prst.exit45.thread:              ; preds = %ltr501_ps_read_samp_period.exit.thread.i, %if.end14.ltr501_read_intr_prst.exit45.thread_crit_edge
  %retval.0.i44.ph = phi i32 [ %retval.0.i35.ph.i, %ltr501_ps_read_samp_period.exit.thread.i ], [ %call6.i, %if.end14.ltr501_read_intr_prst.exit45.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prst.i43) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end.i32.i
  %time_val.i33.i = getelementptr [9 x %struct.ltr501_samp_table], ptr @ltr501_ps_samp_table, i32 0, i32 %37, i32 1
  %38 = ptrtoint ptr %time_val.i33.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %time_val.i33.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i28.i) #9
  %40 = ptrtoint ptr %prst.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %prst.i43, align 4
  %mul14.i = mul i32 %41, %39
  %42 = ptrtoint ptr %ps_period to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul14.i, ptr %ps_period, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prst.i43) #9
  %43 = ptrtoint ptr %als_contr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %als_contr, align 4
  %45 = ptrtoint ptr %ps_contr to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ps_contr, align 1
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %conv.i = zext i8 %44 to i32
  %call.i46 = call i32 @regmap_write(ptr noundef %48, i32 noundef 128, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %if.end19.cleanup_crit_edge, label %if.end.i48

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i48:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %conv3.i = zext i8 %46 to i32
  %call4.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 129, i32 noundef %conv3.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i48, %if.end19.cleanup_crit_edge, %ltr501_read_intr_prst.exit45.thread, %ltr501_read_intr_prst.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %ltr501_read_intr_prst.exit.thread ], [ %retval.0.i44.ph, %ltr501_read_intr_prst.exit45.thread ], [ %call4.i, %if.end.i48 ], [ %call.i46, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_interrupt_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !178
  %regmap = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 140, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call4 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 30064771072, i64 noundef %call3) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and6 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i64 @iio_get_time_ns(ptr noundef %private) #9
  %call10 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 34359738368, i64 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  %scan = alloca %struct.anon.87, align 8
  %als_buf = alloca [2 x i16], align 2
  %psdata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %als_buf) #9
  %4 = ptrtoint ptr %als_buf to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %als_buf, align 2, !annotation !178
  %5 = getelementptr inbounds [2 x i16], ptr %als_buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %5, align 2, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psdata) #9
  %7 = ptrtoint ptr %psdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %psdata, align 4, !annotation !178
  %8 = call ptr @memset(ptr %scan, i32 0, i32 16)
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_scan_mask, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %10, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %tobool20.not = phi i1 [ false, %if.then ], [ true, %lor.lhs.false.if.end_crit_edge ]
  %mask.0 = phi i32 [ 4, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ]
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %18 = lshr i32 %17, 2
  %19 = and i32 %18, 1
  %20 = or i32 %19, %mask.0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %status.i, align 4, !annotation !178
  %regmap.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end
  %dec11.i = phi i32 [ 99, %if.end ], [ %dec.i, %if.end5.i.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 140, ptr noundef nonnull %status.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.ltr501_drdy.exit.thread_crit_edge, label %if.end.i

while.body.i.ltr501_drdy.exit.thread_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_drdy.exit.thread

if.end.i:                                         ; preds = %while.body.i
  %24 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status.i, align 4
  %and.i = and i32 %25, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %20)
  %cmp2.i = icmp eq i32 %and.i, %20
  br i1 %cmp2.i, label %if.end18, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 25) #9
  %dec.i = add nsw i32 %dec11.i, -1
  %tobool.not.i = icmp eq i32 %dec11.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49) #12
  br label %ltr501_drdy.exit.thread

ltr501_drdy.exit.thread:                          ; preds = %do.end.i, %while.body.i.ltr501_drdy.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br label %done

if.end18:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br i1 %tobool20.not, label %if.end18.if.end42_crit_edge, label %if.then21

if.end18.if.end42_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then21:                                        ; preds = %if.end18
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call22 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef 136, ptr noundef nonnull %als_buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.done_crit_edge, label %if.end26

if.then21.done_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end26:                                         ; preds = %if.then21
  %30 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %active_scan_mask, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and1.i82 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i82)
  %tobool29.not = icmp eq i32 %and1.i82, 0
  br i1 %tobool29.not, label %if.end26.if.end32_crit_edge, label %if.then30

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %5, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %scan to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %scan, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  %j.0 = phi i32 [ 1, %if.then30 ], [ 0, %if.end26.if.end32_crit_edge ]
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %31, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool35.not = icmp eq i32 %40, 0
  br i1 %tobool35.not, label %if.end32.if.end42_crit_edge, label %if.then36

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %als_buf to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %als_buf, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %inc39 = add nuw nsw i32 %j.0, 1
  %arrayidx40 = getelementptr [3 x i16], ptr %scan, i32 0, i32 %j.0
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx40, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end32.if.end42_crit_edge, %if.end18.if.end42_crit_edge
  %j.1 = phi i32 [ %inc39, %if.then36 ], [ %j.0, %if.end32.if.end42_crit_edge ], [ 0, %if.end18.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool45.not = icmp eq i32 %19, 0
  br i1 %tobool45.not, label %if.end42.if.end58_crit_edge, label %if.then46

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then46:                                        ; preds = %if.end42
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call48 = call i32 @regmap_bulk_read(ptr noundef %46, i32 noundef 141, ptr noundef nonnull %psdata, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then46.done_crit_edge, label %if.end52

if.then46.done_crit_edge:                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %psdata to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %psdata, align 4
  %49 = trunc i32 %48 to i16
  %conv54 = and i16 %49, 2047
  %arrayidx57 = getelementptr [3 x i16], ptr %scan, i32 0, i32 %j.1
  %50 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv54, ptr %arrayidx57, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.end52, %if.end42.if.end58_crit_edge
  %call59 = call i64 @iio_get_time_ns(ptr noundef %1) #9
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %scan_timestamp.i, align 8, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i85 = icmp eq i8 %52, 0
  br i1 %tobool.not.i85, label %if.end58.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end58.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %54, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call59, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end58.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i86 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #9
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.then46.done_crit_edge, %if.then21.done_crit_edge, %ltr501_drdy.exit.thread
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %56 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %57) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psdata) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %als_buf) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_powerdown(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %als_contr = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %als_contr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %als_contr, align 4
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %als_mode_active = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %als_mode_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_mode_active, align 4
  %neg = xor i8 %5, -1
  %and = and i8 %1, %neg
  %ps_contr = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 6
  %6 = ptrtoint ptr %ps_contr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ps_contr, align 1
  %regmap.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 9
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %and to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 128, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ltr501_write_contr.exit_crit_edge, label %if.end.i

entry.ltr501_write_contr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_contr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = and i8 %7, -3
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %10 to i32
  %call4.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 129, i32 noundef %conv3.i) #9
  br label %ltr501_write_contr.exit

ltr501_write_contr.exit:                          ; preds = %if.end.i, %entry.ltr501_write_contr.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %entry.ltr501_write_contr.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ltr501_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -136
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 7
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_read_near_level(ptr nocapture noundef readonly %indio_dev, i32 noundef %priv, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %near_level = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %near_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %near_level, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %i.i182 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %index.i = alloca i32, align 4
  %status.i.i152 = alloca i32, align 4
  %status.i = alloca i16, align 2
  %status.i.i132 = alloca i32, align 4
  %status.i.i = alloca i32, align 4
  %buf = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %buf, align 2, !annotation !178
  %3 = getelementptr inbounds [2 x i16], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !178
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb9
    i32 2, label %sw.bb37
    i32 18, label %sw.bb62
    i32 12, label %sw.bb67
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cond79 = icmp eq i32 %7, 6
  br i1 %cond79, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_als, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #9
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %status.i.i, align 4, !annotation !178
  %regmap.i.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %if.end
  %dec11.i.i = phi i32 [ 99, %if.end ], [ %dec.i.i, %if.end5.i.i.while.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 140, ptr noundef nonnull %status.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i.ltr501_drdy.exit.thread.i_crit_edge, label %if.end.i.i

while.body.i.i.ltr501_drdy.exit.thread.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_drdy.exit.thread.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %11 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i.i, align 4
  %and.i.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp2.i.not.i, label %if.end5.i.i, label %if.end.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @msleep(i32 noundef 25) #9
  %dec.i.i = add nsw i32 %dec11.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec11.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.49) #12
  br label %ltr501_drdy.exit.thread.i

ltr501_drdy.exit.thread.i:                        ; preds = %do.end.i.i, %while.body.i.i.ltr501_drdy.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %do.end.i.i ], [ %call.i.i, %while.body.i.i.ltr501_drdy.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  br label %ltr501_read_als.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #9
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %16, i32 noundef 136, ptr noundef nonnull %buf, i32 noundef 4) #9
  br label %ltr501_read_als.exit

ltr501_read_als.exit:                             ; preds = %if.end.i, %ltr501_drdy.exit.thread.i
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %retval.0.i.ph.i, %ltr501_drdy.exit.thread.i ]
  call void @mutex_unlock(ptr noundef %lock_als) #9
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ltr501_read_als.exit.cleanup_crit_edge, label %if.end6

ltr501_read_als.exit.cleanup_crit_edge:           ; preds = %ltr501_read_als.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %ltr501_read_als.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %buf, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %call8 = call fastcc i32 @ltr501_calculate_lux(i16 noundef zeroext %19, i16 noundef zeroext %22)
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call8, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %call10 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %25, label %if.end13.sw.epilog_crit_edge [
    i32 7, label %sw.bb15
    i32 8, label %sw.bb29
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  %lock_als16 = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_als16, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i132) #9
  %27 = ptrtoint ptr %status.i.i132 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %status.i.i132, align 4, !annotation !178
  %regmap.i.i133 = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  br label %while.body.i.i137

while.body.i.i137:                                ; preds = %if.end5.i.i143.while.body.i.i137_crit_edge, %sw.bb15
  %dec11.i.i134 = phi i32 [ 99, %sw.bb15 ], [ %dec.i.i141, %if.end5.i.i143.while.body.i.i137_crit_edge ]
  %28 = ptrtoint ptr %regmap.i.i133 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i133, align 4
  %call.i.i135 = call i32 @regmap_read(ptr noundef %29, i32 noundef 140, ptr noundef nonnull %status.i.i132) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %cmp.i.i136 = icmp slt i32 %call.i.i135, 0
  br i1 %cmp.i.i136, label %while.body.i.i137.ltr501_read_als.exit151.thread_crit_edge, label %if.end.i.i140

while.body.i.i137.ltr501_read_als.exit151.thread_crit_edge: ; preds = %while.body.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_als.exit151.thread

if.end.i.i140:                                    ; preds = %while.body.i.i137
  %30 = ptrtoint ptr %status.i.i132 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status.i.i132, align 4
  %and.i.i138 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i138)
  %cmp2.i.not.i139 = icmp eq i32 %and.i.i138, 0
  br i1 %cmp2.i.not.i139, label %if.end5.i.i143, label %ltr501_read_als.exit151

if.end5.i.i143:                                   ; preds = %if.end.i.i140
  call void @msleep(i32 noundef 25) #9
  %dec.i.i141 = add nsw i32 %dec11.i.i134, -1
  %tobool.not.i.i142 = icmp eq i32 %dec11.i.i134, 0
  br i1 %tobool.not.i.i142, label %do.end.i.i145, label %if.end5.i.i143.while.body.i.i137_crit_edge

if.end5.i.i143.while.body.i.i137_crit_edge:       ; preds = %if.end5.i.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i137

do.end.i.i145:                                    ; preds = %if.end5.i.i143
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev.i.i144 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i144, ptr noundef nonnull @.str.49) #12
  br label %ltr501_read_als.exit151.thread

ltr501_read_als.exit151.thread:                   ; preds = %do.end.i.i145, %while.body.i.i137.ltr501_read_als.exit151.thread_crit_edge
  %retval.0.i.ph.i146 = phi i32 [ -5, %do.end.i.i145 ], [ %call.i.i135, %while.body.i.i137.ltr501_read_als.exit151.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i132) #9
  call void @mutex_unlock(ptr noundef %lock_als16) #9
  br label %sw.epilog

ltr501_read_als.exit151:                          ; preds = %if.end.i.i140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i132) #9
  %34 = ptrtoint ptr %regmap.i.i133 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i.i133, align 4
  %call1.i148 = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef 136, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @mutex_unlock(ptr noundef %lock_als16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %cmp20 = icmp slt i32 %call1.i148, 0
  br i1 %cmp20, label %ltr501_read_als.exit151.sw.epilog_crit_edge, label %if.end22

ltr501_read_als.exit151.sw.epilog_crit_edge:      ; preds = %ltr501_read_als.exit151
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end22:                                         ; preds = %ltr501_read_als.exit151
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %36 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %37)
  %cmp23 = icmp eq i32 %37, 136
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %buf, align 2
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %3, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i16 [ %39, %cond.true ], [ %41, %cond.false ]
  %42 = call i16 @llvm.bswap.i16(i16 %cond.in)
  %conv28 = zext i16 %42 to i32
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv28, ptr %val, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end13
  %lock_ps = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock_ps, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #9
  %44 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %status.i, align 2, !annotation !178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i152) #9
  %45 = ptrtoint ptr %status.i.i152 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %status.i.i152, align 4, !annotation !178
  %regmap.i.i153 = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  br label %while.body.i.i157

while.body.i.i157:                                ; preds = %if.end5.i.i163.while.body.i.i157_crit_edge, %sw.bb29
  %dec11.i.i154 = phi i32 [ 99, %sw.bb29 ], [ %dec.i.i161, %if.end5.i.i163.while.body.i.i157_crit_edge ]
  %46 = ptrtoint ptr %regmap.i.i153 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i153, align 4
  %call.i.i155 = call i32 @regmap_read(ptr noundef %47, i32 noundef 140, ptr noundef nonnull %status.i.i152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i155)
  %cmp.i.i156 = icmp slt i32 %call.i.i155, 0
  br i1 %cmp.i.i156, label %while.body.i.i157.ltr501_drdy.exit.thread.i167_crit_edge, label %if.end.i.i160

while.body.i.i157.ltr501_drdy.exit.thread.i167_crit_edge: ; preds = %while.body.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_drdy.exit.thread.i167

if.end.i.i160:                                    ; preds = %while.body.i.i157
  %48 = ptrtoint ptr %status.i.i152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status.i.i152, align 4
  %and.i.i158 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158)
  %cmp2.i.not.i159 = icmp eq i32 %and.i.i158, 0
  br i1 %cmp2.i.not.i159, label %if.end5.i.i163, label %if.end.i169

if.end5.i.i163:                                   ; preds = %if.end.i.i160
  call void @msleep(i32 noundef 25) #9
  %dec.i.i161 = add nsw i32 %dec11.i.i154, -1
  %tobool.not.i.i162 = icmp eq i32 %dec11.i.i154, 0
  br i1 %tobool.not.i.i162, label %do.end.i.i165, label %if.end5.i.i163.while.body.i.i157_crit_edge

if.end5.i.i163.while.body.i.i157_crit_edge:       ; preds = %if.end5.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i157

do.end.i.i165:                                    ; preds = %if.end5.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i.i164 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i164, ptr noundef nonnull @.str.49) #12
  br label %ltr501_drdy.exit.thread.i167

ltr501_drdy.exit.thread.i167:                     ; preds = %do.end.i.i165, %while.body.i.i157.ltr501_drdy.exit.thread.i167_crit_edge
  %retval.0.i.ph.i166 = phi i32 [ -5, %do.end.i.i165 ], [ %call.i.i155, %while.body.i.i157.ltr501_drdy.exit.thread.i167_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i152) #9
  br label %ltr501_read_ps.exit.thread

if.end.i169:                                      ; preds = %if.end.i.i160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i152) #9
  %52 = ptrtoint ptr %regmap.i.i153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i153, align 4
  %call1.i168 = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 141, ptr noundef nonnull %status.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %cmp2.i = icmp slt i32 %call1.i168, 0
  br i1 %cmp2.i, label %if.end.i169.ltr501_read_ps.exit.thread_crit_edge, label %ltr501_read_ps.exit

if.end.i169.ltr501_read_ps.exit.thread_crit_edge: ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_ps.exit.thread

ltr501_read_ps.exit.thread:                       ; preds = %if.end.i169.ltr501_read_ps.exit.thread_crit_edge, %ltr501_drdy.exit.thread.i167
  %retval.0.i170.ph = phi i32 [ %retval.0.i.ph.i166, %ltr501_drdy.exit.thread.i167 ], [ %call1.i168, %if.end.i169.ltr501_read_ps.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #9
  call void @mutex_unlock(ptr noundef %lock_ps) #9
  br label %sw.epilog

ltr501_read_ps.exit:                              ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %status.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #9
  call void @mutex_unlock(ptr noundef %lock_ps) #9
  %56 = and i16 %55, -249
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %and = zext i16 %57 to i32
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %ltr501_read_ps.exit, %ltr501_read_ps.exit.thread, %cond.end, %ltr501_read_als.exit151.sw.epilog_crit_edge, %ltr501_read_als.exit151.thread, %if.end13.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 1, %ltr501_read_ps.exit ], [ %call1.i148, %ltr501_read_als.exit151.sw.epilog_crit_edge ], [ 1, %cond.end ], [ -22, %if.end13.sw.epilog_crit_edge ], [ %retval.0.i.ph.i146, %ltr501_read_als.exit151.thread ], [ %retval.0.i170.ph, %ltr501_read_ps.exit.thread ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %60, label %sw.bb37.cleanup_crit_edge [
    i32 7, label %sw.bb39
    i32 8, label %sw.bb50
  ]

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %als_contr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %als_contr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %als_contr, align 4
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip_info, align 4
  %als_gain_mask = getelementptr inbounds %struct.ltr501_chip_info, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %als_gain_mask to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %als_gain_mask, align 1
  %and42131 = and i8 %67, %63
  %and42 = zext i8 %and42131 to i32
  %als_gain_shift = getelementptr inbounds %struct.ltr501_chip_info, ptr %65, i32 0, i32 7
  %68 = ptrtoint ptr %als_gain_shift to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %als_gain_shift, align 2
  %conv44 = zext i8 %69 to i32
  %shr = lshr i32 %and42, %conv44
  %als_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %als_gain, align 4
  %arrayidx46 = getelementptr %struct.ltr501_gain, ptr %71, i32 %shr
  %72 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx46, align 4
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %val, align 4
  %75 = load ptr, ptr %chip_info, align 4
  %als_gain48 = getelementptr inbounds %struct.ltr501_chip_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %als_gain48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %als_gain48, align 4
  %uscale = getelementptr %struct.ltr501_gain, ptr %77, i32 %shr, i32 1
  %78 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %uscale, align 4
  %80 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %val2, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %ps_contr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %ps_contr to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ps_contr, align 1
  %83 = lshr i8 %82, 2
  %84 = and i8 %83, 3
  %shr53 = zext i8 %84 to i32
  %chip_info54 = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 4
  %85 = ptrtoint ptr %chip_info54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip_info54, align 4
  %ps_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %ps_gain to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ps_gain, align 4
  %arrayidx55 = getelementptr %struct.ltr501_gain, ptr %88, i32 %shr53
  %89 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx55, align 4
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %val, align 4
  %92 = load ptr, ptr %chip_info54, align 4
  %ps_gain58 = getelementptr inbounds %struct.ltr501_chip_info, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %ps_gain58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ps_gain58, align 4
  %uscale60 = getelementptr %struct.ltr501_gain, ptr %94, i32 %shr53, i32 1
  %95 = ptrtoint ptr %uscale60 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %uscale60, align 4
  %97 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %val2, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %entry
  %98 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %99)
  %cond78 = icmp eq i32 %99, 7
  br i1 %cond78, label %sw.bb64, label %sw.bb62.cleanup_crit_edge

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb64:                                          ; preds = %sw.bb62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #9
  %100 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %index.i, align 4, !annotation !178
  %reg_it.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 10
  %101 = ptrtoint ptr %reg_it.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_it.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %102, ptr noundef nonnull %index.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb64.ltr501_read_it_time.exit_crit_edge, label %if.end.i172

sw.bb64.ltr501_read_it_time.exit_crit_edge:       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_it_time.exit

if.end.i172:                                      ; preds = %sw.bb64
  %103 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %cmp2.i171 = icmp ugt i32 %104, 3
  br i1 %cmp2.i171, label %if.end.i172.ltr501_read_it_time.exit_crit_edge, label %if.end4.i173

if.end.i172.ltr501_read_it_time.exit_crit_edge:   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_it_time.exit

if.end4.i173:                                     ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [4 x i32], ptr @int_time_mapping, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i, align 4
  %107 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %val2, align 4
  %108 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %val, align 4
  br label %ltr501_read_it_time.exit

ltr501_read_it_time.exit:                         ; preds = %if.end4.i173, %if.end.i172.ltr501_read_it_time.exit_crit_edge, %sw.bb64.ltr501_read_it_time.exit_crit_edge
  %retval.0.i174 = phi i32 [ 2, %if.end4.i173 ], [ %call.i, %sw.bb64.ltr501_read_it_time.exit_crit_edge ], [ -22, %if.end.i172.ltr501_read_it_time.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #9
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  %109 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chan, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %110, label %sw.bb67.cleanup_crit_edge [
    i32 7, label %sw.bb69
    i32 8, label %sw.bb71
  ]

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb69:                                          ; preds = %sw.bb67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %112 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %i.i, align 4, !annotation !178
  %reg_als_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 13
  %113 = ptrtoint ptr %reg_als_rate.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_als_rate.i, align 4
  %call.i175 = call i32 @regmap_field_read(ptr noundef %114, ptr noundef nonnull %i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp.i176 = icmp slt i32 %call.i175, 0
  br i1 %cmp.i176, label %sw.bb69.ltr501_als_read_samp_freq.exit_crit_edge, label %if.end.i178

sw.bb69.ltr501_als_read_samp_freq.exit_crit_edge: ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_freq.exit

if.end.i178:                                      ; preds = %sw.bb69
  %115 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %116)
  %cmp2.i177 = icmp ugt i32 %116, 7
  br i1 %cmp2.i177, label %if.end.i178.ltr501_als_read_samp_freq.exit_crit_edge, label %if.end4.i180

if.end.i178.ltr501_als_read_samp_freq.exit_crit_edge: ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_freq.exit

if.end4.i180:                                     ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i179 = getelementptr [8 x %struct.ltr501_samp_table], ptr @ltr501_als_samp_table, i32 0, i32 %116
  %117 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i179, align 4
  %.frozen = freeze i32 %118
  %div.i = sdiv i32 %.frozen, 1000000
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %div.i, ptr %val, align 4
  %120 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %.frozen, %120
  %121 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %rem.i.decomposed, ptr %val2, align 4
  br label %ltr501_als_read_samp_freq.exit

ltr501_als_read_samp_freq.exit:                   ; preds = %if.end4.i180, %if.end.i178.ltr501_als_read_samp_freq.exit_crit_edge, %sw.bb69.ltr501_als_read_samp_freq.exit_crit_edge
  %retval.0.i181 = phi i32 [ 2, %if.end4.i180 ], [ %call.i175, %sw.bb69.ltr501_als_read_samp_freq.exit_crit_edge ], [ -22, %if.end.i178.ltr501_als_read_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %cleanup

sw.bb71:                                          ; preds = %sw.bb67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i182) #9
  %122 = ptrtoint ptr %i.i182 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %i.i182, align 4, !annotation !178
  %reg_ps_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 14
  %123 = ptrtoint ptr %reg_ps_rate.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_ps_rate.i, align 4
  %call.i183 = call i32 @regmap_field_read(ptr noundef %124, ptr noundef nonnull %i.i182) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp.i184 = icmp slt i32 %call.i183, 0
  br i1 %cmp.i184, label %sw.bb71.ltr501_ps_read_samp_freq.exit_crit_edge, label %if.end.i186

sw.bb71.ltr501_ps_read_samp_freq.exit_crit_edge:  ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_freq.exit

if.end.i186:                                      ; preds = %sw.bb71
  %125 = ptrtoint ptr %i.i182 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %i.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %126)
  %cmp2.i185 = icmp ugt i32 %126, 8
  br i1 %cmp2.i185, label %if.end.i186.ltr501_ps_read_samp_freq.exit_crit_edge, label %if.end4.i190

if.end.i186.ltr501_ps_read_samp_freq.exit_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_freq.exit

if.end4.i190:                                     ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i187 = getelementptr [9 x %struct.ltr501_samp_table], ptr @ltr501_ps_samp_table, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i187, align 4
  %.frozen232 = freeze i32 %128
  %div.i188 = sdiv i32 %.frozen232, 1000000
  %129 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %div.i188, ptr %val, align 4
  %130 = mul i32 %div.i188, 1000000
  %rem.i189.decomposed = sub i32 %.frozen232, %130
  %131 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %rem.i189.decomposed, ptr %val2, align 4
  br label %ltr501_ps_read_samp_freq.exit

ltr501_ps_read_samp_freq.exit:                    ; preds = %if.end4.i190, %if.end.i186.ltr501_ps_read_samp_freq.exit_crit_edge, %sw.bb71.ltr501_ps_read_samp_freq.exit_crit_edge
  %retval.0.i191 = phi i32 [ 2, %if.end4.i190 ], [ %call.i183, %sw.bb71.ltr501_ps_read_samp_freq.exit_crit_edge ], [ -22, %if.end.i186.ltr501_ps_read_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i182) #9
  br label %cleanup

cleanup:                                          ; preds = %ltr501_ps_read_samp_freq.exit, %ltr501_als_read_samp_freq.exit, %sw.bb67.cleanup_crit_edge, %ltr501_read_it_time.exit, %sw.bb62.cleanup_crit_edge, %sw.bb50, %sw.bb39, %sw.bb37.cleanup_crit_edge, %sw.epilog, %sw.bb9.cleanup_crit_edge, %if.end6, %ltr501_read_als.exit.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i191, %ltr501_ps_read_samp_freq.exit ], [ %retval.0.i181, %ltr501_als_read_samp_freq.exit ], [ %retval.0.i174, %ltr501_read_it_time.exit ], [ 2, %sw.bb50 ], [ 2, %sw.bb39 ], [ %ret.0, %sw.epilog ], [ 1, %if.end6 ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ %retval.0.i, %ltr501_read_als.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call10, %sw.bb9.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %sw.bb62.cleanup_crit_edge ], [ -22, %sw.bb67.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %i.i165 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %mask, label %if.end.sw.epilog85_crit_edge [
    i32 2, label %sw.bb
    i32 18, label %sw.bb33
    i32 12, label %sw.bb44
  ]

if.end.sw.epilog85_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %6, label %sw.bb.sw.epilog85_crit_edge [
    i32 7, label %sw.bb2
    i32 8, label %sw.bb15
  ]

sw.bb.sw.epilog85_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.bb2:                                           ; preds = %sw.bb
  %als_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %als_gain, align 4
  %als_gain_tbl_size = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %als_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %als_gain_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.i = icmp sgt i32 %11, 0
  br i1 %cmp9.i, label %sw.bb2.for.body.i_crit_edge, label %sw.bb2.sw.epilog85_crit_edge

sw.bb2.sw.epilog85_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ltr501_gain, ptr %9, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %val)
  %cmp1.i = icmp eq i32 %13, %val
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %uscale.i = getelementptr %struct.ltr501_gain, ptr %9, i32 %i.010.i, i32 1
  %14 = ptrtoint ptr %uscale.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uscale.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val2)
  %cmp3.i = icmp eq i32 %15, %val2
  br i1 %cmp3.i, label %if.end5, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog85_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.sw.epilog85_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end5:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %als_gain_mask = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %als_gain_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %als_gain_mask, align 1
  %neg = xor i8 %17, -1
  %als_contr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %als_contr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %als_contr, align 4
  %and = and i8 %19, %neg
  store i8 %and, ptr %als_contr, align 4
  %als_gain_shift = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 7
  %20 = ptrtoint ptr %als_gain_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %als_gain_shift, align 2
  %conv8 = zext i8 %21 to i32
  %shl = shl i32 %i.010.i, %conv8
  %22 = trunc i32 %shl to i8
  %conv11 = or i8 %and, %22
  store i8 %conv11, ptr %als_contr, align 4
  %regmap = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %conv13 = zext i8 %conv11 to i32
  %call14 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 128, i32 noundef %conv13) #9
  br label %sw.epilog85

sw.bb15:                                          ; preds = %sw.bb
  %ps_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %ps_gain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ps_gain, align 4
  %ps_gain_tbl_size = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %ps_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ps_gain_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.i142 = icmp sgt i32 %28, 0
  br i1 %cmp9.i142, label %sw.bb15.for.body.i146_crit_edge, label %sw.bb15.sw.epilog85_crit_edge

sw.bb15.sw.epilog85_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.bb15.for.body.i146_crit_edge:                  ; preds = %sw.bb15
  br label %for.body.i146

for.body.i146:                                    ; preds = %for.inc.i152.for.body.i146_crit_edge, %sw.bb15.for.body.i146_crit_edge
  %i.010.i143 = phi i32 [ %inc.i150, %for.inc.i152.for.body.i146_crit_edge ], [ 0, %sw.bb15.for.body.i146_crit_edge ]
  %arrayidx.i144 = getelementptr %struct.ltr501_gain, ptr %26, i32 %i.010.i143
  %29 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %val)
  %cmp1.i145 = icmp eq i32 %30, %val
  br i1 %cmp1.i145, label %land.lhs.true.i149, label %for.body.i146.for.inc.i152_crit_edge

for.body.i146.for.inc.i152_crit_edge:             ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i152

land.lhs.true.i149:                               ; preds = %for.body.i146
  %uscale.i147 = getelementptr %struct.ltr501_gain, ptr %26, i32 %i.010.i143, i32 1
  %31 = ptrtoint ptr %uscale.i147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uscale.i147, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %val2)
  %cmp3.i148 = icmp eq i32 %32, %val2
  br i1 %cmp3.i148, label %if.end20, label %land.lhs.true.i149.for.inc.i152_crit_edge

land.lhs.true.i149.for.inc.i152_crit_edge:        ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i152

for.inc.i152:                                     ; preds = %land.lhs.true.i149.for.inc.i152_crit_edge, %for.body.i146.for.inc.i152_crit_edge
  %inc.i150 = add nuw nsw i32 %i.010.i143, 1
  %exitcond.not.i151 = icmp eq i32 %inc.i150, %28
  br i1 %exitcond.not.i151, label %for.inc.i152.sw.epilog85_crit_edge, label %for.inc.i152.for.body.i146_crit_edge

for.inc.i152.for.body.i146_crit_edge:             ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i146

for.inc.i152.sw.epilog85_crit_edge:               ; preds = %for.inc.i152
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end20:                                         ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #11
  %ps_contr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %ps_contr to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ps_contr, align 1
  %35 = and i8 %34, -13
  %call16.tr = trunc i32 %i.010.i143 to i8
  %36 = shl i8 %call16.tr, 2
  %conv28 = or i8 %35, %36
  store i8 %conv28, ptr %ps_contr, align 1
  %regmap29 = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %regmap29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap29, align 4
  %conv31 = zext i8 %conv28 to i32
  %call32 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 129, i32 noundef %conv31) #9
  br label %sw.epilog85

sw.bb33:                                          ; preds = %if.end
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cond = icmp eq i32 %40, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp36.not = icmp eq i32 %val, 0
  %or.cond = and i1 %cmp36.not, %cond
  br i1 %or.cond, label %if.end39, label %sw.bb33.sw.epilog85_crit_edge

sw.bb33.sw.epilog85_crit_edge:                    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end39:                                         ; preds = %sw.bb33
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_als, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %status.i, align 4, !annotation !178
  %42 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %val2, label %if.end39.ltr501_set_it_time.exit_crit_edge [
    i32 100000, label %if.end39.if.end4.i_crit_edge
    i32 50000, label %if.end4.fold.split.i
    i32 200000, label %if.end4.fold.split34.i
    i32 400000, label %if.end4.fold.split35.i
  ]

if.end39.if.end4.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end39.ltr501_set_it_time.exit_crit_edge:       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_set_it_time.exit

if.end4.fold.split.i:                             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.fold.split34.i:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.fold.split35.i:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end4.fold.split35.i, %if.end4.fold.split34.i, %if.end4.fold.split.i, %if.end39.if.end4.i_crit_edge
  %cmp9.i155 = phi i1 [ false, %if.end39.if.end4.i_crit_edge ], [ false, %if.end4.fold.split.i ], [ true, %if.end4.fold.split34.i ], [ true, %if.end4.fold.split35.i ]
  %cmp12.i = phi i1 [ false, %if.end39.if.end4.i_crit_edge ], [ true, %if.end4.fold.split.i ], [ false, %if.end4.fold.split34.i ], [ false, %if.end4.fold.split35.i ]
  %i.032.lcssa.i = phi i32 [ 0, %if.end39.if.end4.i_crit_edge ], [ 1, %if.end4.fold.split.i ], [ 2, %if.end4.fold.split34.i ], [ 3, %if.end4.fold.split35.i ]
  %regmap.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 128, ptr noundef nonnull %status.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.end4.i.ltr501_set_it_time.exit_crit_edge, label %if.end7.i

if.end4.i.ltr501_set_it_time.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_set_it_time.exit

if.end7.i:                                        ; preds = %if.end4.i
  %45 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status.i, align 4
  %and.i = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end7.i
  br i1 %cmp9.i155, label %if.then8.i.ltr501_set_it_time.exit_crit_edge, label %if.then8.i.if.end15.i_crit_edge

if.then8.i.if.end15.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then8.i.ltr501_set_it_time.exit_crit_edge:     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_set_it_time.exit

if.else.i:                                        ; preds = %if.end7.i
  br i1 %cmp12.i, label %if.else.i.ltr501_set_it_time.exit_crit_edge, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.else.i.ltr501_set_it_time.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_set_it_time.exit

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %if.then8.i.if.end15.i_crit_edge
  %reg_it.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 10
  %47 = ptrtoint ptr %reg_it.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_it.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %48, i32 noundef -1, i32 noundef %i.032.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %ltr501_set_it_time.exit

ltr501_set_it_time.exit:                          ; preds = %if.end15.i, %if.else.i.ltr501_set_it_time.exit_crit_edge, %if.then8.i.ltr501_set_it_time.exit_crit_edge, %if.end4.i.ltr501_set_it_time.exit_crit_edge, %if.end39.ltr501_set_it_time.exit_crit_edge
  %retval.0.i156 = phi i32 [ %call.i.i, %if.end15.i ], [ %call.i, %if.end4.i.ltr501_set_it_time.exit_crit_edge ], [ -22, %if.then8.i.ltr501_set_it_time.exit_crit_edge ], [ -22, %if.else.i.ltr501_set_it_time.exit_crit_edge ], [ -22, %if.end39.ltr501_set_it_time.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  call void @mutex_unlock(ptr noundef %lock_als) #9
  br label %sw.epilog85

sw.bb44:                                          ; preds = %if.end
  %49 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chan, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %50, label %sw.bb44.sw.epilog85_crit_edge [
    i32 7, label %sw.bb46
    i32 8, label %sw.bb64
  ]

sw.bb44.sw.epilog85_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.bb46:                                          ; preds = %sw.bb44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %52 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %i.i, align 4, !annotation !178
  %reg_als_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 13
  %53 = ptrtoint ptr %reg_als_rate.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_als_rate.i, align 4
  %call.i157 = call i32 @regmap_field_read(ptr noundef %54, ptr noundef nonnull %i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %cmp.i = icmp slt i32 %call.i157, 0
  br i1 %cmp.i, label %sw.bb46.ltr501_als_read_samp_freq.exit.thread_crit_edge, label %if.end.i

sw.bb46.ltr501_als_read_samp_freq.exit.thread_crit_edge: ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_freq.exit.thread

if.end.i:                                         ; preds = %sw.bb46
  %55 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %56)
  %cmp2.i = icmp ugt i32 %56, 7
  br i1 %cmp2.i, label %if.end.i.ltr501_als_read_samp_freq.exit.thread_crit_edge, label %if.end51

if.end.i.ltr501_als_read_samp_freq.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_freq.exit.thread

ltr501_als_read_samp_freq.exit.thread:            ; preds = %if.end.i.ltr501_als_read_samp_freq.exit.thread_crit_edge, %sw.bb46.ltr501_als_read_samp_freq.exit.thread_crit_edge
  %retval.0.i160.ph = phi i32 [ -22, %if.end.i.ltr501_als_read_samp_freq.exit.thread_crit_edge ], [ %call.i157, %sw.bb46.ltr501_als_read_samp_freq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %sw.epilog85

if.end51:                                         ; preds = %if.end.i
  %arrayidx.i158 = getelementptr [8 x %struct.ltr501_samp_table], ptr @ltr501_als_samp_table, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i158, align 4
  %.frozen = freeze i32 %58
  %div.i = sdiv i32 %.frozen, 1000000
  %59 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %.frozen, %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  %mul.i.i = mul i32 %val, 1000000
  %add.i.i = add i32 %mul.i.i, %val2
  %60 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %add.i.i, label %if.end51.sw.epilog85_crit_edge [
    i32 20000000, label %if.end51.ltr501_als_write_samp_freq.exit_crit_edge
    i32 10000000, label %if.end.fold.split.i
    i32 5000000, label %if.end.fold.split12.i
    i32 2000000, label %if.end.fold.split13.i
    i32 1000000, label %if.end.fold.split14.i
    i32 500000, label %if.end.fold.split15.i
  ]

if.end51.ltr501_als_write_samp_freq.exit_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

if.end51.sw.epilog85_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end.fold.split.i:                              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

if.end.fold.split12.i:                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

if.end.fold.split13.i:                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

if.end.fold.split14.i:                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

if.end.fold.split15.i:                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_write_samp_freq.exit

ltr501_als_write_samp_freq.exit:                  ; preds = %if.end.fold.split15.i, %if.end.fold.split14.i, %if.end.fold.split13.i, %if.end.fold.split12.i, %if.end.fold.split.i, %if.end51.ltr501_als_write_samp_freq.exit_crit_edge
  %i.07.i.lcssa.i = phi i32 [ 0, %if.end51.ltr501_als_write_samp_freq.exit_crit_edge ], [ 1, %if.end.fold.split.i ], [ 2, %if.end.fold.split12.i ], [ 3, %if.end.fold.split13.i ], [ 4, %if.end.fold.split14.i ], [ 5, %if.end.fold.split15.i ]
  %lock_als.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_als.i, i32 noundef 0) #9
  %61 = ptrtoint ptr %reg_als_rate.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_als_rate.i, align 4
  %call.i.i162 = call i32 @regmap_field_update_bits_base(ptr noundef %62, i32 noundef -1, i32 noundef %i.07.i.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock_als.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp53 = icmp slt i32 %call.i.i162, 0
  br i1 %cmp53, label %ltr501_als_write_samp_freq.exit.sw.epilog85_crit_edge, label %if.end56

ltr501_als_write_samp_freq.exit.sw.epilog85_crit_edge: ; preds = %ltr501_als_write_samp_freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end56:                                         ; preds = %ltr501_als_write_samp_freq.exit
  %63 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chan, align 4
  %als_period = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %als_period to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %als_period, align 4
  %call58 = call fastcc i32 @ltr501_write_intr_prst(ptr noundef %1, i32 noundef %64, i32 noundef 0, i32 noundef %66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end56.sw.epilog85_crit_edge

if.end56.sw.epilog85_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = call fastcc i32 @ltr501_als_write_samp_freq(ptr noundef %1, i32 noundef %div.i, i32 noundef %rem.i.decomposed)
  br label %sw.epilog85

sw.bb64:                                          ; preds = %sw.bb44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i165) #9
  %67 = ptrtoint ptr %i.i165 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %i.i165, align 4, !annotation !178
  %reg_ps_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 14
  %68 = ptrtoint ptr %reg_ps_rate.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_ps_rate.i, align 4
  %call.i166 = call i32 @regmap_field_read(ptr noundef %69, ptr noundef nonnull %i.i165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp.i167 = icmp slt i32 %call.i166, 0
  br i1 %cmp.i167, label %sw.bb64.ltr501_ps_read_samp_freq.exit.thread_crit_edge, label %if.end.i169

sw.bb64.ltr501_ps_read_samp_freq.exit.thread_crit_edge: ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_freq.exit.thread

if.end.i169:                                      ; preds = %sw.bb64
  %70 = ptrtoint ptr %i.i165 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %71)
  %cmp2.i168 = icmp ugt i32 %71, 8
  br i1 %cmp2.i168, label %if.end.i169.ltr501_ps_read_samp_freq.exit.thread_crit_edge, label %if.end69

if.end.i169.ltr501_ps_read_samp_freq.exit.thread_crit_edge: ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_freq.exit.thread

ltr501_ps_read_samp_freq.exit.thread:             ; preds = %if.end.i169.ltr501_ps_read_samp_freq.exit.thread_crit_edge, %sw.bb64.ltr501_ps_read_samp_freq.exit.thread_crit_edge
  %retval.0.i174.ph = phi i32 [ -22, %if.end.i169.ltr501_ps_read_samp_freq.exit.thread_crit_edge ], [ %call.i166, %sw.bb64.ltr501_ps_read_samp_freq.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i165) #9
  br label %sw.epilog85

if.end69:                                         ; preds = %if.end.i169
  %arrayidx.i170 = getelementptr [9 x %struct.ltr501_samp_table], ptr @ltr501_ps_samp_table, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i170, align 4
  %.frozen222 = freeze i32 %73
  %div.i171 = sdiv i32 %.frozen222, 1000000
  %74 = mul i32 %div.i171, 1000000
  %rem.i172.decomposed = sub i32 %.frozen222, %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i165) #9
  %mul.i.i175 = mul i32 %val, 1000000
  %add.i.i176 = add i32 %mul.i.i175, %val2
  %75 = zext i32 %add.i.i176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %add.i.i176, label %if.end69.sw.epilog85_crit_edge [
    i32 20000000, label %if.end69.ltr501_ps_write_samp_freq.exit_crit_edge
    i32 14285714, label %if.end.fold.split.i177
    i32 10000000, label %if.end.fold.split12.i178
    i32 5000000, label %if.end.fold.split13.i179
    i32 2000000, label %if.end.fold.split14.i180
    i32 1000000, label %if.end.fold.split15.i181
    i32 500000, label %if.end.fold.split16.i
  ]

if.end69.ltr501_ps_write_samp_freq.exit_crit_edge: ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end69.sw.epilog85_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end.fold.split.i177:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end.fold.split12.i178:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end.fold.split13.i179:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end.fold.split14.i180:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end.fold.split15.i181:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

if.end.fold.split16.i:                            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_write_samp_freq.exit

ltr501_ps_write_samp_freq.exit:                   ; preds = %if.end.fold.split16.i, %if.end.fold.split15.i181, %if.end.fold.split14.i180, %if.end.fold.split13.i179, %if.end.fold.split12.i178, %if.end.fold.split.i177, %if.end69.ltr501_ps_write_samp_freq.exit_crit_edge
  %i.07.i.lcssa.i182 = phi i32 [ 0, %if.end69.ltr501_ps_write_samp_freq.exit_crit_edge ], [ 1, %if.end.fold.split.i177 ], [ 2, %if.end.fold.split12.i178 ], [ 3, %if.end.fold.split13.i179 ], [ 4, %if.end.fold.split14.i180 ], [ 5, %if.end.fold.split15.i181 ], [ 6, %if.end.fold.split16.i ]
  %lock_ps.i = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock_ps.i, i32 noundef 0) #9
  %76 = ptrtoint ptr %reg_ps_rate.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_ps_rate.i, align 4
  %call.i.i184 = call i32 @regmap_field_update_bits_base(ptr noundef %77, i32 noundef -1, i32 noundef %i.07.i.lcssa.i182, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock_ps.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp71 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp71, label %ltr501_ps_write_samp_freq.exit.sw.epilog85_crit_edge, label %if.end74

ltr501_ps_write_samp_freq.exit.sw.epilog85_crit_edge: ; preds = %ltr501_ps_write_samp_freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end74:                                         ; preds = %ltr501_ps_write_samp_freq.exit
  %78 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chan, align 4
  %ps_period = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 8
  %80 = ptrtoint ptr %ps_period to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ps_period, align 4
  %call76 = call fastcc i32 @ltr501_write_intr_prst(ptr noundef %1, i32 noundef %79, i32 noundef 0, i32 noundef %81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end74.sw.epilog85_crit_edge

if.end74.sw.epilog85_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = call fastcc i32 @ltr501_ps_write_samp_freq(ptr noundef %1, i32 noundef %div.i171, i32 noundef %rem.i172.decomposed)
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %if.then79, %if.end74.sw.epilog85_crit_edge, %ltr501_ps_write_samp_freq.exit.sw.epilog85_crit_edge, %if.end69.sw.epilog85_crit_edge, %ltr501_ps_read_samp_freq.exit.thread, %if.then61, %if.end56.sw.epilog85_crit_edge, %ltr501_als_write_samp_freq.exit.sw.epilog85_crit_edge, %if.end51.sw.epilog85_crit_edge, %ltr501_als_read_samp_freq.exit.thread, %sw.bb44.sw.epilog85_crit_edge, %ltr501_set_it_time.exit, %sw.bb33.sw.epilog85_crit_edge, %if.end20, %for.inc.i152.sw.epilog85_crit_edge, %sw.bb15.sw.epilog85_crit_edge, %if.end5, %for.inc.i.sw.epilog85_crit_edge, %sw.bb2.sw.epilog85_crit_edge, %sw.bb.sw.epilog85_crit_edge, %if.end.sw.epilog85_crit_edge
  %ret.0 = phi i32 [ %call.i.i184, %ltr501_ps_write_samp_freq.exit.sw.epilog85_crit_edge ], [ %call80, %if.then79 ], [ %call76, %if.end74.sw.epilog85_crit_edge ], [ %call.i.i162, %ltr501_als_write_samp_freq.exit.sw.epilog85_crit_edge ], [ %call62, %if.then61 ], [ %call58, %if.end56.sw.epilog85_crit_edge ], [ %retval.0.i156, %ltr501_set_it_time.exit ], [ %call32, %if.end20 ], [ %call14, %if.end5 ], [ -22, %sw.bb.sw.epilog85_crit_edge ], [ -22, %sw.bb33.sw.epilog85_crit_edge ], [ -22, %sw.bb44.sw.epilog85_crit_edge ], [ -22, %if.end.sw.epilog85_crit_edge ], [ %retval.0.i160.ph, %ltr501_als_read_samp_freq.exit.thread ], [ %retval.0.i174.ph, %ltr501_ps_read_samp_freq.exit.thread ], [ -22, %sw.bb2.sw.epilog85_crit_edge ], [ -22, %sw.bb15.sw.epilog85_crit_edge ], [ -22, %if.end51.sw.epilog85_crit_edge ], [ -22, %if.end69.sw.epilog85_crit_edge ], [ -22, %for.inc.i.sw.epilog85_crit_edge ], [ -22, %for.inc.i152.sw.epilog85_crit_edge ]
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog85, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog85 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !178
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg_als_intr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %reg_als_intr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_als_intr, align 4
  %call2 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %reg_ps_intr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %reg_ps_intr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_ps_intr, align 4
  %call4 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %if.end7

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end7 ], [ %9, %if.end ], [ %call2, %sw.bb.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %switch = icmp ult i32 %state, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_als, i32 noundef 0) #9
  %reg_als_intr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 11
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock_ps = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock_ps, i32 noundef 0) #9
  %reg_ps_intr = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %sw.bb
  %reg_ps_intr.sink = phi ptr [ %reg_ps_intr, %sw.bb5 ], [ %reg_als_intr, %sw.bb ]
  %lock_ps.sink = phi ptr [ %lock_ps, %sw.bb5 ], [ %lock_als, %sw.bb ]
  %5 = ptrtoint ptr %reg_ps_intr.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_ps_intr.sink, align 4
  %call.i18 = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef %state, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %lock_ps.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i18, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef %val2) #2 align 64 {
entry:
  %thresh_data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thresh_data.i) #9
  %3 = ptrtoint ptr %thresh_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %thresh_data.i, align 4, !annotation !178
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %5, label %sw.bb.ltr501_read_thresh.exit_crit_edge [
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb11.i
  ]

sw.bb.ltr501_read_thresh.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

sw.bb.i:                                          ; preds = %sw.bb
  %7 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %dir, label %sw.bb.i.ltr501_read_thresh.exit_crit_edge [
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb4.i
  ]

sw.bb.i.ltr501_read_thresh.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  %regmap.i = getelementptr inbounds %struct.ltr501_data, ptr %2, i32 0, i32 9
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 151, ptr noundef nonnull %thresh_data.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %sw.bb2.i.ltr501_read_thresh.exit_crit_edge, label %if.end.i

sw.bb2.i.ltr501_read_thresh.exit_crit_edge:       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

if.end.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %thresh_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thresh_data.i, align 4
  %and.i = and i32 %11, 65535
  br label %cleanup.sink.split.i

sw.bb4.i:                                         ; preds = %sw.bb.i
  %regmap5.i = getelementptr inbounds %struct.ltr501_data, ptr %2, i32 0, i32 9
  %12 = ptrtoint ptr %regmap5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap5.i, align 4
  %call6.i = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 153, ptr noundef nonnull %thresh_data.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %sw.bb4.i.ltr501_read_thresh.exit_crit_edge, label %if.end9.i

sw.bb4.i.ltr501_read_thresh.exit_crit_edge:       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

if.end9.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %thresh_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %thresh_data.i, align 4
  %and10.i = and i32 %15, 65535
  br label %cleanup.sink.split.i

sw.bb11.i:                                        ; preds = %sw.bb
  %16 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %dir, label %sw.bb11.i.ltr501_read_thresh.exit_crit_edge [
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb19.i
  ]

sw.bb11.i.ltr501_read_thresh.exit_crit_edge:      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

sw.bb12.i:                                        ; preds = %sw.bb11.i
  %regmap13.i = getelementptr inbounds %struct.ltr501_data, ptr %2, i32 0, i32 9
  %17 = ptrtoint ptr %regmap13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap13.i, align 4
  %call14.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 144, ptr noundef nonnull %thresh_data.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %sw.bb12.i.ltr501_read_thresh.exit_crit_edge, label %if.end17.i

sw.bb12.i.ltr501_read_thresh.exit_crit_edge:      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

if.end17.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %thresh_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %thresh_data.i, align 4
  %and18.i = and i32 %20, 2047
  br label %cleanup.sink.split.i

sw.bb19.i:                                        ; preds = %sw.bb11.i
  %regmap20.i = getelementptr inbounds %struct.ltr501_data, ptr %2, i32 0, i32 9
  %21 = ptrtoint ptr %regmap20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap20.i, align 4
  %call21.i = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 146, ptr noundef nonnull %thresh_data.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %sw.bb19.i.ltr501_read_thresh.exit_crit_edge, label %if.end24.i

sw.bb19.i.ltr501_read_thresh.exit_crit_edge:      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_read_thresh.exit

if.end24.i:                                       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %thresh_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %thresh_data.i, align 4
  %and25.i = and i32 %24, 2047
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end24.i, %if.end17.i, %if.end9.i, %if.end.i
  %and25.sink.i = phi i32 [ %and25.i, %if.end24.i ], [ %and18.i, %if.end17.i ], [ %and10.i, %if.end9.i ], [ %and.i, %if.end.i ]
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and25.sink.i, ptr %val, align 4
  br label %ltr501_read_thresh.exit

ltr501_read_thresh.exit:                          ; preds = %cleanup.sink.split.i, %sw.bb19.i.ltr501_read_thresh.exit_crit_edge, %sw.bb12.i.ltr501_read_thresh.exit_crit_edge, %sw.bb11.i.ltr501_read_thresh.exit_crit_edge, %sw.bb4.i.ltr501_read_thresh.exit_crit_edge, %sw.bb2.i.ltr501_read_thresh.exit_crit_edge, %sw.bb.i.ltr501_read_thresh.exit_crit_edge, %sw.bb.ltr501_read_thresh.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %sw.bb2.i.ltr501_read_thresh.exit_crit_edge ], [ %call6.i, %sw.bb4.i.ltr501_read_thresh.exit_crit_edge ], [ -22, %sw.bb.i.ltr501_read_thresh.exit_crit_edge ], [ %call14.i, %sw.bb12.i.ltr501_read_thresh.exit_crit_edge ], [ %call21.i, %sw.bb19.i.ltr501_read_thresh.exit_crit_edge ], [ -22, %sw.bb11.i.ltr501_read_thresh.exit_crit_edge ], [ -22, %sw.bb.ltr501_read_thresh.exit_crit_edge ], [ 1, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thresh_data.i) #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 8
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan, align 4
  %call4 = tail call fastcc i32 @ltr501_read_intr_prst(ptr noundef %27, i32 noundef %29, ptr noundef %val2)
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val2, align 4
  %div = sdiv i32 %31, 1000000
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div, ptr %val, align 4
  %33 = load i32, ptr %val2, align 4
  %rem = srem i32 %33, 1000000
  store i32 %rem, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %ltr501_read_thresh.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb1 ], [ %retval.0.i, %ltr501_read_thresh.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  %val.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %info, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.not = icmp eq i32 %val2, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.addr.i)
  %1 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val, ptr %val.addr.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i = icmp slt i32 %val, 0
  br i1 %cmp.i, label %if.end.ltr501_write_thresh.exit_crit_edge, label %if.end.i

if.end.ltr501_write_thresh.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %5, label %if.end.i.ltr501_write_thresh.exit_crit_edge [
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb13.i
  ]

if.end.i.ltr501_write_thresh.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp2.i = icmp ugt i32 %val, 65535
  br i1 %cmp2.i, label %sw.bb.i.ltr501_write_thresh.exit_crit_edge, label %if.end4.i

sw.bb.i.ltr501_write_thresh.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

if.end4.i:                                        ; preds = %sw.bb.i
  %7 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %dir, label %if.end4.i.ltr501_write_thresh.exit_crit_edge [
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb8.i
  ]

if.end4.i.ltr501_write_thresh.exit_crit_edge:     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

sw.bb5.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock_als.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 2
  br label %cleanup.sink.split.i

sw.bb8.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock_als9.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 2
  br label %cleanup.sink.split.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %val)
  %cmp14.i = icmp ugt i32 %val, 2047
  br i1 %cmp14.i, label %sw.bb13.i.ltr501_write_thresh.exit_crit_edge, label %if.end16.i

sw.bb13.i.ltr501_write_thresh.exit_crit_edge:     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

if.end16.i:                                       ; preds = %sw.bb13.i
  %8 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %dir, label %if.end16.i.ltr501_write_thresh.exit_crit_edge [
    i32 1, label %sw.bb17.i
    i32 2, label %sw.bb21.i
  ]

if.end16.i.ltr501_write_thresh.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_thresh.exit

sw.bb17.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock_ps.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 3
  br label %cleanup.sink.split.i

sw.bb21.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock_ps22.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 3
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb21.i, %sw.bb17.i, %sw.bb8.i, %sw.bb5.i
  %lock_ps22.sink2.i = phi ptr [ %lock_ps22.i, %sw.bb21.i ], [ %lock_ps.i, %sw.bb17.i ], [ %lock_als9.i, %sw.bb8.i ], [ %lock_als.i, %sw.bb5.i ]
  %.sink1.i = phi i32 [ 146, %sw.bb21.i ], [ 144, %sw.bb17.i ], [ 153, %sw.bb8.i ], [ 151, %sw.bb5.i ]
  tail call void @mutex_lock_nested(ptr noundef %lock_ps22.sink2.i, i32 noundef 0) #9
  %regmap23.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %regmap23.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap23.i, align 4
  %call24.i = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef %.sink1.i, ptr noundef nonnull %val.addr.i, i32 noundef 2) #9
  call void @mutex_unlock(ptr noundef %lock_ps22.sink2.i) #9
  br label %ltr501_write_thresh.exit

ltr501_write_thresh.exit:                         ; preds = %cleanup.sink.split.i, %if.end16.i.ltr501_write_thresh.exit_crit_edge, %sw.bb13.i.ltr501_write_thresh.exit_crit_edge, %if.end4.i.ltr501_write_thresh.exit_crit_edge, %sw.bb.i.ltr501_write_thresh.exit_crit_edge, %if.end.i.ltr501_write_thresh.exit_crit_edge, %if.end.ltr501_write_thresh.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.ltr501_write_thresh.exit_crit_edge ], [ -22, %sw.bb.i.ltr501_write_thresh.exit_crit_edge ], [ -22, %if.end4.i.ltr501_write_thresh.exit_crit_edge ], [ -22, %sw.bb13.i.ltr501_write_thresh.exit_crit_edge ], [ -22, %if.end16.i.ltr501_write_thresh.exit_crit_edge ], [ -22, %if.end.i.ltr501_write_thresh.exit_crit_edge ], [ %call24.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.addr.i)
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %call4 = tail call fastcc i32 @ltr501_write_intr_prst(ptr noundef %12, i32 noundef %14, i32 noundef %val, i32 noundef %val2)
  br label %return

return:                                           ; preds = %sw.bb1, %ltr501_write_thresh.exit, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb1 ], [ %retval.0.i, %ltr501_write_thresh.exit ], [ -22, %sw.bb.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_show_proximity_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %ps_gain_tbl_size = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ps_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_gain_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ps_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.024 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %ps_gain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps_gain, align 4
  %arrayidx = getelementptr %struct.ltr501_gain, ptr %7, i32 %i.025
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp2 = icmp eq i32 %9, -1
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.024
  %sub = sub i32 4096, %len.024
  %uscale = getelementptr %struct.ltr501_gain, ptr %7, i32 %i.025, i32 1
  %10 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uscale, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.43, i32 noundef %9, i32 noundef %11) #9
  %add = add i32 %call8, %len.024
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %len.024, %for.body.for.inc_crit_edge ], [ %add, %if.end ]
  %inc = add nuw nsw i32 %i.025, 1
  %12 = ptrtoint ptr %ps_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ps_gain_tbl_size, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  %sub9 = add i32 %len.0.lcssa, -1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %sub9
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %arrayidx10, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_show_intensity_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_info = getelementptr inbounds %struct.ltr501_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_info, align 4
  %als_gain_tbl_size = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %als_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %als_gain_tbl_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %als_gain = getelementptr inbounds %struct.ltr501_chip_info, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.024 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %als_gain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %als_gain, align 4
  %arrayidx = getelementptr %struct.ltr501_gain, ptr %7, i32 %i.025
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp2 = icmp eq i32 %9, -1
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.024
  %sub = sub i32 4096, %len.024
  %uscale = getelementptr %struct.ltr501_gain, ptr %7, i32 %i.025, i32 1
  %10 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uscale, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.43, i32 noundef %9, i32 noundef %11) #9
  %add = add i32 %call8, %len.024
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %len.024, %for.body.for.inc_crit_edge ], [ %add, %if.end ]
  %inc = add nuw nsw i32 %i.025, 1
  %12 = ptrtoint ptr %als_gain_tbl_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %als_gain_tbl_size, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.1, %for.inc.for.end_crit_edge ]
  %sub9 = add i32 %len.0.lcssa, -1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %sub9
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 10, ptr %arrayidx10, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ltr501_calculate_lux(i16 noundef zeroext %vis_data, i16 noundef zeroext %ir_data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vis_data to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vis_data)
  %cmp = icmp eq i16 %vis_data, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %ir_data to i32
  %mul = mul nuw nsw i32 %conv2, 100
  %add = add nuw nsw i32 %conv2, %conv
  %add5 = add nsw i32 %add, -1
  %sub = add nsw i32 %add5, %mul
  %div = sdiv i32 %sub, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %div)
  %cmp9 = icmp ult i32 %div, 45
  br i1 %cmp9, label %if.then11, label %land.lhs.true

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul13 = mul nuw nsw i32 %conv, 1774
  %mul15.neg = mul nuw nsw i32 %conv2, 1105
  %sub16 = add nuw nsw i32 %mul15.neg, %mul13
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp19 = icmp ult i32 %div, 64
  br i1 %cmp19, label %if.then21, label %land.lhs.true30

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mul23 = mul nuw nsw i32 %conv, 3772
  %mul25.neg = mul nsw i32 %conv2, -1336
  %sub26 = add nsw i32 %mul25.neg, %mul23
  br label %if.end42

land.lhs.true30:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %div)
  %cmp31 = icmp ult i32 %div, 85
  br i1 %cmp31, label %if.then33, label %land.lhs.true30.if.end42_crit_edge

land.lhs.true30.if.end42_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %mul35 = mul nuw nsw i32 %conv, 1690
  %mul37.neg = mul nsw i32 %conv2, -169
  %sub38 = add nsw i32 %mul37.neg, %mul35
  br label %if.end42

if.end42:                                         ; preds = %if.then33, %land.lhs.true30.if.end42_crit_edge, %if.then21, %if.then11
  %lux.0 = phi i32 [ %sub16, %if.then11 ], [ %sub26, %if.then21 ], [ %sub38, %if.then33 ], [ 0, %land.lhs.true30.if.end42_crit_edge ]
  %div43 = udiv i32 %lux.0, 1000
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div43, %if.end42 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_als_write_samp_freq(ptr noundef %data, i32 noundef %val, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %val, 1000000
  %add.i = add i32 %mul.i, %val2
  %0 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %add.i, label %entry.cleanup_crit_edge [
    i32 20000000, label %entry.if.end_crit_edge
    i32 10000000, label %if.end.fold.split
    i32 5000000, label %if.end.fold.split12
    i32 2000000, label %if.end.fold.split13
    i32 1000000, label %if.end.fold.split14
    i32 500000, label %if.end.fold.split15
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split12:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split13:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split14:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split15:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split15, %if.end.fold.split14, %if.end.fold.split13, %if.end.fold.split12, %if.end.fold.split, %entry.if.end_crit_edge
  %i.07.i.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.fold.split ], [ 2, %if.end.fold.split12 ], [ 3, %if.end.fold.split13 ], [ 4, %if.end.fold.split14 ], [ 5, %if.end.fold.split15 ]
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_als, i32 noundef 0) #9
  %reg_als_rate = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 13
  %1 = ptrtoint ptr %reg_als_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_als_rate, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %i.07.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %lock_als) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_write_intr_prst(ptr noundef %data, i32 noundef %type, i32 noundef %val, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  %i.i75 = alloca i32, align 4
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %val2, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %.not = icmp sgt i32 %0, -1
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb19
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i.i, align 4, !annotation !178
  %reg_als_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 13
  %3 = ptrtoint ptr %reg_als_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_als_rate.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.ltr501_als_read_samp_period.exit.thread_crit_edge, label %if.end.i

sw.bb.ltr501_als_read_samp_period.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %5 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp2.i = icmp ugt i32 %6, 7
  br i1 %cmp2.i, label %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge, label %if.end4

if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread

ltr501_als_read_samp_period.exit.thread:          ; preds = %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge, %sw.bb.ltr501_als_read_samp_period.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge ], [ %call.i, %sw.bb.ltr501_als_read_samp_period.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %time_val.i = getelementptr [8 x %struct.ltr501_samp_table], ptr @ltr501_als_samp_table, i32 0, i32 %6, i32 1
  %7 = ptrtoint ptr %time_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp5 = icmp ult i32 %add, %8
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %add8 = add i32 %add, -1
  %sub = add i32 %add8, %8
  %div = udiv i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div)
  %9 = icmp ugt i32 %div, 15
  br i1 %9, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %lock_als = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_als, i32 noundef 0) #9
  %reg_als_prst = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 15
  %10 = ptrtoint ptr %reg_als_prst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_als_prst, align 4
  %call.i74 = call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef %div, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock_als) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i74)
  %cmp16 = icmp sgt i32 %call.i74, -1
  br i1 %cmp16, label %if.then17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %als_period = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 7
  %12 = ptrtoint ptr %als_period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %als_period, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i75) #9
  %13 = ptrtoint ptr %i.i75 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %i.i75, align 4, !annotation !178
  %reg_ps_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 14
  %14 = ptrtoint ptr %reg_ps_rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_ps_rate.i, align 4
  %call.i76 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %i.i75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %sw.bb19.ltr501_ps_read_samp_period.exit.thread_crit_edge, label %if.end.i79

sw.bb19.ltr501_ps_read_samp_period.exit.thread_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread

if.end.i79:                                       ; preds = %sw.bb19
  %16 = ptrtoint ptr %i.i75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp2.i78 = icmp ugt i32 %17, 8
  br i1 %cmp2.i78, label %if.end.i79.ltr501_ps_read_samp_period.exit.thread_crit_edge, label %if.end23

if.end.i79.ltr501_ps_read_samp_period.exit.thread_crit_edge: ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread

ltr501_ps_read_samp_period.exit.thread:           ; preds = %if.end.i79.ltr501_ps_read_samp_period.exit.thread_crit_edge, %sw.bb19.ltr501_ps_read_samp_period.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ -22, %if.end.i79.ltr501_ps_read_samp_period.exit.thread_crit_edge ], [ %call.i76, %sw.bb19.ltr501_ps_read_samp_period.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i75) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end.i79
  %time_val.i80 = getelementptr [9 x %struct.ltr501_samp_table], ptr @ltr501_ps_samp_table, i32 0, i32 %17, i32 1
  %18 = ptrtoint ptr %time_val.i80 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time_val.i80, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i75) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp24 = icmp ult i32 %add, %19
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %add27 = add i32 %add, -1
  %sub28 = add i32 %add27, %19
  %div29 = udiv i32 %sub28, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div29)
  %20 = icmp ugt i32 %div29, 15
  br i1 %20, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %lock_ps = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock_ps, i32 noundef 0) #9
  %reg_ps_prst = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 16
  %21 = ptrtoint ptr %reg_ps_prst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_ps_prst, align 4
  %call.i83 = call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef %div29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @mutex_unlock(ptr noundef %lock_ps) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i83)
  %cmp37 = icmp sgt i32 %call.i83, -1
  br i1 %cmp37, label %if.then38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %ps_period = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 8
  %23 = ptrtoint ptr %ps_period to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %ps_period, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %ltr501_ps_read_samp_period.exit.thread, %if.then17, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %ltr501_als_read_samp_period.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call.i74, %if.then17 ], [ %call.i74, %if.end13.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ %call.i83, %if.then38 ], [ %call.i83, %if.end34.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %ltr501_als_read_samp_period.exit.thread ], [ %retval.0.i82.ph, %ltr501_ps_read_samp_period.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_ps_write_samp_freq(ptr noundef %data, i32 noundef %val, i32 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %val, 1000000
  %add.i = add i32 %mul.i, %val2
  %0 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %add.i, label %entry.cleanup_crit_edge [
    i32 20000000, label %entry.if.end_crit_edge
    i32 14285714, label %if.end.fold.split
    i32 10000000, label %if.end.fold.split12
    i32 5000000, label %if.end.fold.split13
    i32 2000000, label %if.end.fold.split14
    i32 1000000, label %if.end.fold.split15
    i32 500000, label %if.end.fold.split16
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split12:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split13:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split14:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split15:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split16:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split16, %if.end.fold.split15, %if.end.fold.split14, %if.end.fold.split13, %if.end.fold.split12, %if.end.fold.split, %entry.if.end_crit_edge
  %i.07.i.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.end.fold.split ], [ 2, %if.end.fold.split12 ], [ 3, %if.end.fold.split13 ], [ 4, %if.end.fold.split14 ], [ 5, %if.end.fold.split15 ], [ 6, %if.end.fold.split16 ]
  %lock_ps = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock_ps, i32 noundef 0) #9
  %reg_ps_rate = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 14
  %1 = ptrtoint ptr %reg_ps_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_ps_rate, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %2, i32 noundef -1, i32 noundef %i.07.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef %lock_ps) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ltr501_read_intr_prst(ptr nocapture noundef readonly %data, i32 noundef %type, ptr nocapture noundef writeonly %val2) unnamed_addr #2 align 64 {
entry:
  %i.i28 = alloca i32, align 4
  %i.i = alloca i32, align 4
  %prst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prst) #9
  %0 = ptrtoint ptr %prst to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %prst, align 4, !annotation !178
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %reg_als_prst = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %reg_als_prst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_als_prst, align 4
  %call = call i32 @regmap_field_read(ptr noundef %3, ptr noundef nonnull %prst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %4 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %i.i, align 4, !annotation !178
  %reg_als_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 13
  %5 = ptrtoint ptr %reg_als_rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_als_rate.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.ltr501_als_read_samp_period.exit.thread_crit_edge, label %if.end.i

if.end.ltr501_als_read_samp_period.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 7
  br i1 %cmp2.i, label %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge, label %if.end4

if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_als_read_samp_period.exit.thread

ltr501_als_read_samp_period.exit.thread:          ; preds = %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge, %if.end.ltr501_als_read_samp_period.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.ltr501_als_read_samp_period.exit.thread_crit_edge ], [ %call.i, %if.end.ltr501_als_read_samp_period.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %time_val.i = getelementptr [8 x %struct.ltr501_samp_table], ptr @ltr501_als_samp_table, i32 0, i32 %8, i32 1
  %9 = ptrtoint ptr %time_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  %11 = ptrtoint ptr %prst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prst, align 4
  %mul = mul i32 %12, %10
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %reg_ps_prst = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 16
  %14 = ptrtoint ptr %reg_ps_prst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_ps_prst, align 4
  %call6 = call i32 @regmap_field_read(ptr noundef %15, ptr noundef nonnull %prst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %if.end9

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i28) #9
  %16 = ptrtoint ptr %i.i28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %i.i28, align 4, !annotation !178
  %reg_ps_rate.i = getelementptr inbounds %struct.ltr501_data, ptr %data, i32 0, i32 14
  %17 = ptrtoint ptr %reg_ps_rate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_ps_rate.i, align 4
  %call.i29 = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %i.i28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %if.end9.ltr501_ps_read_samp_period.exit.thread_crit_edge, label %if.end.i32

if.end9.ltr501_ps_read_samp_period.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread

if.end.i32:                                       ; preds = %if.end9
  %19 = ptrtoint ptr %i.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp2.i31 = icmp ugt i32 %20, 8
  br i1 %cmp2.i31, label %if.end.i32.ltr501_ps_read_samp_period.exit.thread_crit_edge, label %if.end13

if.end.i32.ltr501_ps_read_samp_period.exit.thread_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_ps_read_samp_period.exit.thread

ltr501_ps_read_samp_period.exit.thread:           ; preds = %if.end.i32.ltr501_ps_read_samp_period.exit.thread_crit_edge, %if.end9.ltr501_ps_read_samp_period.exit.thread_crit_edge
  %retval.0.i35.ph = phi i32 [ -22, %if.end.i32.ltr501_ps_read_samp_period.exit.thread_crit_edge ], [ %call.i29, %if.end9.ltr501_ps_read_samp_period.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i28) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #11
  %time_val.i33 = getelementptr [9 x %struct.ltr501_samp_table], ptr @ltr501_ps_samp_table, i32 0, i32 %20, i32 1
  %21 = ptrtoint ptr %time_val.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %time_val.i33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i28) #9
  %23 = ptrtoint ptr %prst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %prst, align 4
  %mul14 = mul i32 %24, %22
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul14, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %ltr501_ps_read_samp_period.exit.thread, %sw.bb5.cleanup_crit_edge, %if.end4, %ltr501_als_read_samp_period.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end13 ], [ 2, %if.end4 ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %ltr501_als_read_samp_period.exit.thread ], [ %retval.0.i35.ph, %ltr501_ps_read_samp_period.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prst) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %als_contr.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %als_contr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_contr.i, align 4
  %chip_info.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info.i, align 4
  %als_mode_active.i = getelementptr inbounds %struct.ltr501_chip_info, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %als_mode_active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %als_mode_active.i, align 4
  %neg.i = xor i8 %9, -1
  %and.i = and i8 %5, %neg.i
  %ps_contr.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %ps_contr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ps_contr.i, align 1
  %regmap.i.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %and.i to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 128, i32 noundef %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.ltr501_powerdown.exit_crit_edge, label %if.end.i.i

entry.ltr501_powerdown.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_powerdown.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = and i8 %11, -3
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %conv3.i.i = zext i8 %14 to i32
  %call4.i.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 129, i32 noundef %conv3.i.i) #9
  br label %ltr501_powerdown.exit

ltr501_powerdown.exit:                            ; preds = %if.end.i.i, %entry.ltr501_powerdown.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.end.i.i ], [ %call.i.i, %entry.ltr501_powerdown.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr501_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %als_contr = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %als_contr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %als_contr, align 4
  %ps_contr = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ps_contr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ps_contr, align 1
  %regmap.i = getelementptr inbounds %struct.ltr501_data, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %5 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 128, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ltr501_write_contr.exit_crit_edge, label %if.end.i

entry.ltr501_write_contr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ltr501_write_contr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %7 to i32
  %call4.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 129, i32 noundef %conv3.i) #9
  br label %ltr501_write_contr.exit

ltr501_write_contr.exit:                          ; preds = %if.end.i, %entry.ltr501_write_contr.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call.i, %entry.ltr501_write_contr.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !167}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__initcall__kmod_ltr501__288_1672_ltr501_driver_init6, !1, !"__initcall__kmod_ltr501__288_1672_ltr501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/ltr501.c", i32 1672, i32 1}
!2 = !{ptr @__exitcall_ltr501_driver_exit, !1, !"__exitcall_ltr501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/ltr501.c", i32 1674, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/ltr501.c", i32 1675, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/ltr501.c", i32 1676, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/ltr501.c", i32 1662, i32 13}
!12 = !{ptr @ltr501_driver, !13, !"ltr501_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/ltr501.c", i32 1660, i32 26}
!14 = !{ptr @ltr501_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/ltr501.c", i32 1456, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/ltr501.c", i32 1458, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ltr501_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ltr501_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ltr501_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/ltr501.c", i32 1466, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ltr501_probe.__key.8, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/ltr501.c", i32 1467, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/ltr501.c", i32 1469, i32 31}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/ltr501.c", i32 1470, i32 31}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/ltr501.c", i32 1476, i32 10}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/ltr501.c", i32 1491, i32 3}
!39 = !{ptr @ltr501_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ltr501_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/ltr501.c", i32 1498, i32 3}
!43 = !{ptr @ltr501_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ltr501_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/ltr501.c", i32 1505, i32 3}
!47 = !{ptr @ltr501_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ltr501_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/ltr501.c", i32 1512, i32 3}
!51 = !{ptr @ltr501_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ltr501_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/light/ltr501.c", i32 1519, i32 3}
!55 = !{ptr @ltr501_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ltr501_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/light/ltr501.c", i32 1526, i32 3}
!59 = !{ptr @ltr501_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ltr501_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/ltr501.c", i32 1533, i32 3}
!63 = !{ptr @ltr501_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ltr501_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/ltr501.c", i32 1555, i32 45}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/ltr501.c", i32 1574, i32 7}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/ltr501.c", i32 1577, i32 4}
!71 = !{ptr @ltr501_probe._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ltr501_probe._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/light/ltr501.c", i32 1410, i32 11}
!75 = !{ptr @ltr501_regmap_config, !76, !"ltr501_regmap_config", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/ltr501.c", i32 1409, i32 35}
!77 = distinct !{null, !78, !"reg_field_it", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/ltr501.c", i32 75, i32 31}
!79 = distinct !{null, !80, !"reg_field_als_intr", i1 false, i1 false}
!80 = !{!"../drivers/iio/light/ltr501.c", i32 77, i32 31}
!81 = distinct !{null, !82, !"reg_field_ps_intr", i1 false, i1 false}
!82 = !{!"../drivers/iio/light/ltr501.c", i32 79, i32 31}
!83 = distinct !{null, !84, !"reg_field_als_rate", i1 false, i1 false}
!84 = !{!"../drivers/iio/light/ltr501.c", i32 81, i32 31}
!85 = distinct !{null, !86, !"reg_field_ps_rate", i1 false, i1 false}
!86 = !{!"../drivers/iio/light/ltr501.c", i32 83, i32 31}
!87 = distinct !{null, !88, !"reg_field_als_prst", i1 false, i1 false}
!88 = !{!"../drivers/iio/light/ltr501.c", i32 85, i32 31}
!89 = distinct !{null, !90, !"reg_field_ps_prst", i1 false, i1 false}
!90 = !{!"../drivers/iio/light/ltr501.c", i32 87, i32 31}
!91 = !{ptr @ltr501_chip_info_tbl, !92, !"ltr501_chip_info_tbl", i1 false, i1 false}
!92 = !{!"../drivers/iio/light/ltr501.c", i32 1215, i32 38}
!93 = !{ptr @ltr501_als_gain_tbl, !94, !"ltr501_als_gain_tbl", i1 false, i1 false}
!94 = !{!"../drivers/iio/light/ltr501.c", i32 109, i32 33}
!95 = !{ptr @ltr501_ps_gain_tbl, !96, !"ltr501_ps_gain_tbl", i1 false, i1 false}
!96 = !{!"../drivers/iio/light/ltr501.c", i32 125, i32 33}
!97 = !{ptr @ltr501_channels, !98, !"ltr501_channels", i1 false, i1 false}
!98 = !{!"../drivers/iio/light/ltr501.c", i32 608, i32 35}
!99 = !{ptr @ltr501_als_event_spec, !100, !"ltr501_als_event_spec", i1 false, i1 false}
!100 = !{!"../drivers/iio/light/ltr501.c", i32 548, i32 36}
!101 = !{ptr @ltr501_pxs_event_spec, !102, !"ltr501_pxs_event_spec", i1 false, i1 false}
!102 = !{!"../drivers/iio/light/ltr501.c", i32 566, i32 36}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/light/ltr501.c", i32 541, i32 11}
!105 = !{ptr @ltr501_ext_info, !106, !"ltr501_ext_info", i1 false, i1 false}
!106 = !{!"../drivers/iio/light/ltr501.c", i32 539, i32 44}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/light/ltr501.c", i32 536, i32 22}
!109 = !{ptr @ltr501_info, !110, !"ltr501_info", i1 false, i1 false}
!110 = !{!"../drivers/iio/light/ltr501.c", i32 1189, i32 30}
!111 = !{ptr @ltr501_attribute_group, !112, !"ltr501_attribute_group", i1 false, i1 false}
!112 = !{!"../drivers/iio/light/ltr501.c", i32 1175, i32 37}
!113 = !{ptr @ltr501_attributes, !114, !"ltr501_attributes", i1 false, i1 false}
!114 = !{!"../drivers/iio/light/ltr501.c", i32 1160, i32 26}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/light/ltr501.c", i32 1155, i32 8}
!117 = !{ptr @iio_dev_attr_in_proximity_scale_available, !116, !"iio_dev_attr_in_proximity_scale_available", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/light/ltr501.c", i32 1120, i32 48}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/light/ltr501.c", i32 1157, i32 8}
!122 = !{ptr @iio_dev_attr_in_intensity_scale_available, !121, !"iio_dev_attr_in_intensity_scale_available", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/light/ltr501.c", i32 1152, i32 8}
!125 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @iio_const_attr_integration_time_available, !124, !"iio_const_attr_integration_time_available", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/light/ltr501.c", i32 1153, i32 8}
!129 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @iio_const_attr_sampling_frequency_available, !128, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/light/ltr501.c", i32 345, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ltr501_drdy._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ltr501_drdy._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @int_time_mapping, !137, !"int_time_mapping", i1 false, i1 false}
!137 = !{!"../drivers/iio/light/ltr501.c", i32 73, i32 18}
!138 = !{ptr @ltr501_als_samp_table, !139, !"ltr501_als_samp_table", i1 false, i1 false}
!139 = !{!"../drivers/iio/light/ltr501.c", i32 172, i32 39}
!140 = !{ptr @ltr501_ps_samp_table, !141, !"ltr501_ps_samp_table", i1 false, i1 false}
!141 = !{!"../drivers/iio/light/ltr501.c", i32 179, i32 39}
!142 = !{ptr @ltr501_info_no_irq, !143, !"ltr501_info_no_irq", i1 false, i1 false}
!143 = !{!"../drivers/iio/light/ltr501.c", i32 1183, i32 30}
!144 = !{ptr @ltr559_als_gain_tbl, !145, !"ltr559_als_gain_tbl", i1 false, i1 false}
!145 = !{!"../drivers/iio/light/ltr501.c", i32 114, i32 33}
!146 = !{ptr @ltr559_ps_gain_tbl, !147, !"ltr559_ps_gain_tbl", i1 false, i1 false}
!147 = !{!"../drivers/iio/light/ltr501.c", i32 132, i32 33}
!148 = !{ptr @ltr301_channels, !149, !"ltr301_channels", i1 false, i1 false}
!149 = !{!"../drivers/iio/light/ltr501.c", i32 637, i32 35}
!150 = !{ptr @ltr301_info, !151, !"ltr301_info", i1 false, i1 false}
!151 = !{!"../drivers/iio/light/ltr501.c", i32 1205, i32 30}
!152 = !{ptr @ltr301_attribute_group, !153, !"ltr301_attribute_group", i1 false, i1 false}
!153 = !{!"../drivers/iio/light/ltr501.c", i32 1179, i32 37}
!154 = !{ptr @ltr301_attributes, !155, !"ltr301_attributes", i1 false, i1 false}
!155 = !{!"../drivers/iio/light/ltr501.c", i32 1168, i32 26}
!156 = !{ptr @ltr301_info_no_irq, !157, !"ltr301_info_no_irq", i1 false, i1 false}
!157 = !{!"../drivers/iio/light/ltr501.c", i32 1199, i32 30}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/light/ltr501.c", i32 1344, i32 3}
!160 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ltr501_interrupt_handler._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ltr501_interrupt_handler._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @ltr501_of_match, !164, !"ltr501_of_match", i1 false, i1 false}
!164 = !{!"../drivers/iio/light/ltr501.c", i32 1651, i32 34}
!165 = !{ptr @ltr501_pm_ops, !166, !"ltr501_pm_ops", i1 false, i1 false}
!166 = !{!"../drivers/iio/light/ltr501.c", i32 1632, i32 8}
!167 = !{ptr @ltr501_id, !168, !"ltr501_id", i1 false, i1 false}
!168 = !{!"../drivers/iio/light/ltr501.c", i32 1642, i32 35}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"auto-init"}
!179 = !{i8 0, i8 2}
