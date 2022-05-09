; ModuleID = '/llk/IR_all_yes/drivers/iio/health/afe4404.c_pt.bc'
source_filename = "../drivers/iio/health/afe4404.c"
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
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.afe440x_attr = type { %struct.device_attribute, i32, ptr, i32 }
%struct.afe440x_val_table = type { i32, i32 }
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
%struct.afe4404_data = type { ptr, ptr, [11 x ptr], ptr, ptr, i32, [10 x i32] }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_afe4404__288_618_afe4404_i2c_driver_init6 = internal global ptr @afe4404_i2c_driver_init, section ".initcall6.init", align 4
@afe4404_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @afe4404_probe, ptr @afe4404_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @afe4404_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afe4404_pm_ops, ptr null, ptr null }, ptr @afe4404_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_afe4404_i2c_driver_exit = internal global ptr @afe4404_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [44 x i8] c"afe4404.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"afe4404.description=TI AFE4404 Heart Rate Monitor and Pulse Oximeter AFE\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"afe4404.file=drivers/iio/health/afe4404\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"afe4404.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"afe4404\00", [24 x i8] zeroinitializer }, align 32
@afe4404_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,afe4404\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@afe4404_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @afe4404_suspend, ptr @afe4404_resume, ptr @afe4404_suspend, ptr @afe4404_resume, ptr @afe4404_suspend, ptr @afe4404_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afe4404_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"afe4404\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@afe4404_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@afe4404_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 64, ptr null, ptr null, ptr @afe4404_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"afe4404:478:(&afe4404_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@afe4404_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afe4404_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/health/afe4404.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr = internal global ptr @afe4404_probe._entry, section ".printk_index", align 4
@afe4404_reg_fields = internal constant { [11 x %struct.reg_field], [36 x i8] } { [11 x %struct.reg_field] [%struct.reg_field { i32 32, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 32, i32 3, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 33, i32 3, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 6, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 34, i32 12, i32 17, i32 0, i32 0 }, %struct.reg_field { i32 58, i32 0, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 58, i32 5, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 58, i32 10, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 58, i32 15, i32 19, i32 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@afe4404_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate regmap fields\0A\00", [62 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.9 = internal global ptr @afe4404_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_sup\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@afe4404_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 500, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.14 = internal global ptr @afe4404_probe._entry.12, section ".printk_index", align 4
@afe4404_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.17 = internal global ptr @afe4404_probe._entry.15, section ".printk_index", align 4
@afe4404_reg_sequences = internal constant { [36 x %struct.reg_sequence], [112 x i8] } { [36 x %struct.reg_sequence] [%struct.reg_sequence { i32 29, i32 39999, i32 0 }, %struct.reg_sequence { i32 9, i32 0, i32 0 }, %struct.reg_sequence { i32 10, i32 398, i32 0 }, %struct.reg_sequence { i32 1, i32 80, i32 0 }, %struct.reg_sequence { i32 2, i32 398, i32 0 }, %struct.reg_sequence { i32 21, i32 5600, i32 0 }, %struct.reg_sequence { i32 22, i32 5606, i32 0 }, %struct.reg_sequence { i32 13, i32 5607, i32 0 }, %struct.reg_sequence { i32 14, i32 6066, i32 0 }, %struct.reg_sequence { i32 54, i32 400, i32 0 }, %struct.reg_sequence { i32 55, i32 798, i32 0 }, %struct.reg_sequence { i32 5, i32 480, i32 0 }, %struct.reg_sequence { i32 6, i32 798, i32 0 }, %struct.reg_sequence { i32 23, i32 6068, i32 0 }, %struct.reg_sequence { i32 24, i32 6074, i32 0 }, %struct.reg_sequence { i32 15, i32 6075, i32 0 }, %struct.reg_sequence { i32 16, i32 6534, i32 0 }, %struct.reg_sequence { i32 3, i32 800, i32 0 }, %struct.reg_sequence { i32 4, i32 1198, i32 0 }, %struct.reg_sequence { i32 7, i32 880, i32 0 }, %struct.reg_sequence { i32 8, i32 1198, i32 0 }, %struct.reg_sequence { i32 25, i32 6536, i32 0 }, %struct.reg_sequence { i32 26, i32 6542, i32 0 }, %struct.reg_sequence { i32 17, i32 6543, i32 0 }, %struct.reg_sequence { i32 18, i32 7003, i32 0 }, %struct.reg_sequence { i32 11, i32 1280, i32 0 }, %struct.reg_sequence { i32 12, i32 1598, i32 0 }, %struct.reg_sequence { i32 27, i32 7005, i32 0 }, %struct.reg_sequence { i32 28, i32 7011, i32 0 }, %struct.reg_sequence { i32 19, i32 7012, i32 0 }, %struct.reg_sequence { i32 20, i32 7471, i32 0 }, %struct.reg_sequence { i32 50, i32 7671, i32 0 }, %struct.reg_sequence { i32 51, i32 39199, i32 0 }, %struct.reg_sequence { i32 30, i32 256, i32 0 }, %struct.reg_sequence { i32 32, i32 32768, i32 0 }, %struct.reg_sequence { i32 35, i32 512, i32 0 }], [112 x i8] zeroinitializer }, align 32
@afe4404_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to set register defaults\0A\00", [63 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.20 = internal global ptr @afe4404_probe._entry.18, section ".printk_index", align 4
@afe4404_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 1, i32 1, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 2, i32 0, i32 2, i32 2, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 3, i32 0, i32 3, i32 3, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 4, i32 0, i32 4, i32 4, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 5, i32 0, i32 5, i32 5, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 6, i32 0, i32 6, i32 6, %struct.anon.86 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 1, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 2, i32 0, i32 2, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 3, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [200 x i8] zeroinitializer }, align 32
@afe4404_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @afe440x_attribute_group, ptr @afe4404_read_raw, ptr null, ptr null, ptr @afe4404_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@afe4404_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to allocate IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.24 = internal global ptr @afe4404_probe._entry.22, section ".printk_index", align 4
@afe4404_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 539, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.27 = internal global ptr @afe4404_probe._entry.25, section ".printk_index", align 4
@afe4404_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 549, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.30 = internal global ptr @afe4404_probe._entry.28, section ".printk_index", align 4
@afe4404_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to setup buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.33 = internal global ptr @afe4404_probe._entry.31, section ".printk_index", align 4
@afe4404_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 563, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@afe4404_probe._entry_ptr.36 = internal global ptr @afe4404_probe._entry.34, section ".printk_index", align 4
@afe4404_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @afe4404_yes_ranges, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@afe4404_yes_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 42, i32 47 }, %struct.regmap_range { i32 63, i32 64 }], [16 x i8] zeroinitializer }, align 32
@afe440x_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @afe440x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@afe440x_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_in_intensity_resistance_available, ptr @dev_attr_in_intensity_capacitance_available, ptr @afe440x_attr_in_intensity1_resistance, ptr @afe440x_attr_in_intensity1_capacitance, ptr @afe440x_attr_in_intensity2_resistance, ptr @afe440x_attr_in_intensity2_capacitance, ptr @afe440x_attr_in_intensity3_resistance, ptr @afe440x_attr_in_intensity3_capacitance, ptr @afe440x_attr_in_intensity4_resistance, ptr @afe440x_attr_in_intensity4_capacitance, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_in_intensity_resistance_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_intensity_resistance_available_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in_intensity_capacitance_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_intensity_capacitance_available_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity1_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 0, ptr @afe4404_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity1_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 1, ptr @afe4404_cap_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity2_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 0, ptr @afe4404_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity2_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 1, ptr @afe4404_cap_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity3_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 2, ptr @afe4404_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity3_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 3, ptr @afe4404_cap_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity4_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 2, ptr @afe4404_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity4_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 3, ptr @afe4404_cap_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"in_intensity_resistance_available\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06u \00", [23 x i8] zeroinitializer }, align 32
@afe4404_res_table = internal constant { [8 x %struct.afe440x_val_table], [32 x i8] } { [8 x %struct.afe440x_val_table] [%struct.afe440x_val_table { i32 500000, i32 0 }, %struct.afe440x_val_table { i32 250000, i32 0 }, %struct.afe440x_val_table { i32 100000, i32 0 }, %struct.afe440x_val_table { i32 50000, i32 0 }, %struct.afe440x_val_table { i32 25000, i32 0 }, %struct.afe440x_val_table { i32 10000, i32 0 }, %struct.afe440x_val_table { i32 1000000, i32 0 }, %struct.afe440x_val_table { i32 2000000, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_intensity_capacitance_available\00", [61 x i8] zeroinitializer }, align 32
@afe4404_cap_table = internal constant { [8 x %struct.afe440x_val_table], [32 x i8] } { [8 x %struct.afe440x_val_table] [%struct.afe440x_val_table { i32 0, i32 5000 }, %struct.afe440x_val_table { i32 0, i32 2500 }, %struct.afe440x_val_table { i32 0, i32 10000 }, %struct.afe440x_val_table { i32 0, i32 7500 }, %struct.afe440x_val_table { i32 0, i32 20000 }, %struct.afe440x_val_table { i32 0, i32 17500 }, %struct.afe440x_val_table { i32 0, i32 25000 }, %struct.afe440x_val_table { i32 0, i32 22500 }], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity1_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity1_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity2_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity2_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity3_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity3_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity4_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity4_capacitance\00", [38 x i8] zeroinitializer }, align 32
@afe4404_channel_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47], [36 x i8] zeroinitializer }, align 32
@afe4404_channel_leds = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 6, i32 4], [16 x i8] zeroinitializer }, align 32
@afe4404_channel_offdacs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 10, i32 7, i32 8, i32 9], [44 x i8] zeroinitializer }, align 32
@afe4404_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afe4404_remove\00", [17 x i8] zeroinitializer }, align 32
@afe4404_remove._entry_ptr = internal global ptr @afe4404_remove._entry, section ".printk_index", align 4
@afe4404_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.50, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afe4404_suspend\00", [16 x i8] zeroinitializer }, align 32
@afe4404_suspend._entry_ptr = internal global ptr @afe4404_suspend._entry, section ".printk_index", align 4
@afe4404_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.51, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afe4404_resume\00", [17 x i8] zeroinitializer }, align 32
@afe4404_resume._entry_ptr = internal global ptr @afe4404_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"afe4404_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 608, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 610, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"afe4404_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 412, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"afe4404_pm_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 459, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"afe4404_ids\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 602, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"afe4404_regmap_config\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 403, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 478, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 480, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"afe4404_reg_fields\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 61, i32 31 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 488, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 493, i32 48 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 496, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 500, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 507, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [22 x i8] c"afe4404_reg_sequences\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 386, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 514, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"afe4404_channels\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 129, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"afe4404_iio_info\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 321, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 526, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 530, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 539, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 549, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 557, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 563, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"afe4404_volatile_table\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 398, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"afe4404_yes_ranges\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 393, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [24 x i8] c"afe440x_attribute_group\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 244, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"afe440x_attributes\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 230, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [43 x i8] c"dev_attr_in_intensity_resistance_available\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [44 x i8] c"dev_attr_in_intensity_capacitance_available\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity1_resistance\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity1_capacitance\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity2_resistance\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity2_capacitance\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity3_resistance\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity3_capacitance\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity4_resistance\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity4_capacitance\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 153, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"afe4404_res_table\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 143, i32 39 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 165, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"afe4404_cap_table\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 155, i32 39 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 218, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 219, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 221, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 222, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 224, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 225, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 227, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 228, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant [23 x i8] c"afe4404_channel_values\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 107, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"afe4404_channel_leds\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 116, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant [24 x i8] c"afe4404_channel_offdacs\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 122, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 595, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 432, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [32 x i8] c"../drivers/iio/health/afe4404.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 447, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_afe4404_i2c_driver_exit, ptr @__initcall__kmod_afe4404__288_618_afe4404_i2c_driver_init6, ptr @afe4404_i2c_driver_exit, ptr @afe4404_probe._entry, ptr @afe4404_probe._entry.12, ptr @afe4404_probe._entry.15, ptr @afe4404_probe._entry.18, ptr @afe4404_probe._entry.22, ptr @afe4404_probe._entry.25, ptr @afe4404_probe._entry.28, ptr @afe4404_probe._entry.31, ptr @afe4404_probe._entry.34, ptr @afe4404_probe._entry.7, ptr @afe4404_probe._entry_ptr, ptr @afe4404_probe._entry_ptr.14, ptr @afe4404_probe._entry_ptr.17, ptr @afe4404_probe._entry_ptr.20, ptr @afe4404_probe._entry_ptr.24, ptr @afe4404_probe._entry_ptr.27, ptr @afe4404_probe._entry_ptr.30, ptr @afe4404_probe._entry_ptr.33, ptr @afe4404_probe._entry_ptr.36, ptr @afe4404_probe._entry_ptr.9, ptr @afe4404_remove._entry, ptr @afe4404_remove._entry_ptr, ptr @afe4404_resume._entry, ptr @afe4404_resume._entry_ptr, ptr @afe4404_suspend._entry, ptr @afe4404_suspend._entry_ptr, ptr @afe4404_i2c_driver, ptr @.str, ptr @afe4404_of_match, ptr @afe4404_pm_ops, ptr @afe4404_ids, ptr @afe4404_probe._key, ptr @afe4404_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @afe4404_reg_fields, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @afe4404_reg_sequences, ptr @.str.19, ptr @afe4404_channels, ptr @afe4404_iio_info, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @afe4404_volatile_table, ptr @afe4404_yes_ranges, ptr @afe440x_attribute_group, ptr @afe440x_attributes, ptr @dev_attr_in_intensity_resistance_available, ptr @dev_attr_in_intensity_capacitance_available, ptr @afe440x_attr_in_intensity1_resistance, ptr @afe440x_attr_in_intensity1_capacitance, ptr @afe440x_attr_in_intensity2_resistance, ptr @afe440x_attr_in_intensity2_capacitance, ptr @afe440x_attr_in_intensity3_resistance, ptr @afe440x_attr_in_intensity3_capacitance, ptr @afe440x_attr_in_intensity4_resistance, ptr @afe440x_attr_in_intensity4_capacitance, ptr @.str.37, ptr @.str.38, ptr @afe4404_res_table, ptr @.str.39, ptr @afe4404_cap_table, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @afe4404_channel_values, ptr @afe4404_channel_leds, ptr @afe4404_channel_offdacs, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_reg_fields to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_reg_sequences to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_yes_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_intensity_resistance_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_intensity_capacitance_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity1_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity1_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity2_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity2_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity3_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity3_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity4_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity4_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_res_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_cap_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_channel_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_channel_leds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_channel_offdacs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4404_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @afe4404_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @afe4404_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @afe4404_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #5
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
  store ptr %dev, ptr %1, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq4, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @afe4404_regmap_config, ptr noundef nonnull @afe4404_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0209, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0209 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [11 x %struct.reg_field], ptr @afe4404_reg_fields, i32 0, i32 %i.0209
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %arrayidx, align 4
  %18 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt198 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %.elt198 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack199 = load i32, ptr %.elt198, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack199, 1
  %.elt200 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %.elt200 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack201 = load i32, ptr %.elt200, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack201, 2
  %.elt202 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %23 = ptrtoint ptr %.elt202 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack203 = load i32, ptr %.elt202, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack203, 3
  %.elt204 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %25 = ptrtoint ptr %.elt204 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack205 = load i32, ptr %.elt204, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack205, 4
  %call15 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %26) #5
  %arrayidx16 = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %i.0209
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call15, ptr %arrayidx16, align 4
  %cmp.i206 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %do.end23, label %for.cond

do.end23:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8) #8
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx16, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call30 = tail call ptr @devm_regulator_get(ptr noundef %34, ptr noundef nonnull @.str.10) #5
  %regulator = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call30, ptr %regulator, align 4
  %cmp.i207 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then33, label %if.end38

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %38 = ptrtoint ptr %call30 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %call40 = tail call i32 @regulator_enable(ptr noundef %call30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 0, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.16) #8
  br label %disable_reg

if.end56:                                         ; preds = %if.end47
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call58 = tail call i32 @regmap_multi_reg_write(ptr noundef %46, ptr noundef nonnull @afe4404_reg_sequences, i32 noundef 36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.19) #8
  br label %disable_reg

if.end65:                                         ; preds = %if.end56
  %49 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %50 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @afe4404_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %51 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %52 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %53 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @afe4404_iio_info, ptr %info, align 8
  %54 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp67 = icmp sgt i32 %55, 0
  br i1 %cmp67, label %if.then68, label %if.end65.if.end102_crit_edge

if.end65.if.end102_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then68:                                        ; preds = %if.end65
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  %call71 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #5
  %call72 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %57, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef %call71) #5
  %trig = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call72, ptr %trig, align 8
  %tobool74.not = icmp eq ptr %call72, null
  br i1 %tobool74.not, label %do.end78, label %if.end80

do.end78:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.23) #8
  br label %disable_reg

if.end80:                                         ; preds = %if.then68
  %driver_data.i.i208 = getelementptr inbounds %struct.iio_trigger, ptr %call72, i32 0, i32 4, i32 8
  %61 = ptrtoint ptr %driver_data.i.i208 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call, ptr %driver_data.i.i208, align 4
  %62 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %trig, align 8
  %call83 = tail call i32 @__iio_trigger_register(ptr noundef %63, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  br i1 %tobool84.not, label %if.end90, label %do.end88

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.26) #8
  br label %disable_reg

if.end90:                                         ; preds = %if.end80
  %66 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq4, align 4
  %68 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %trig, align 8
  %call94 = tail call i32 @devm_request_threaded_irq(ptr noundef %65, i32 noundef %67, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end90.if.end102_crit_edge, label %do.end99

if.end90.if.end102_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

do.end99:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.29) #8
  br label %disable_reg

if.end102:                                        ; preds = %if.end90.if.end102_crit_edge, %if.end65.if.end102_crit_edge
  %call103 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @afe4404_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end110, label %do.end108

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.32) #8
  br label %unregister_trigger

if.end110:                                        ; preds = %if.end102
  %call111 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end110.cleanup_crit_edge, label %do.end116

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end116:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.35) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #5
  br label %unregister_trigger

unregister_trigger:                               ; preds = %do.end116, %do.end108
  %ret.0 = phi i32 [ %call103, %do.end108 ], [ %call111, %do.end116 ]
  %76 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp120 = icmp sgt i32 %77, 0
  br i1 %cmp120, label %if.then121, label %unregister_trigger.disable_reg_crit_edge

unregister_trigger.disable_reg_crit_edge:         ; preds = %unregister_trigger
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_reg

if.then121:                                       ; preds = %unregister_trigger
  call void @__sanitizer_cov_trace_pc() #7
  %trig122 = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 4
  %78 = ptrtoint ptr %trig122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %trig122, align 8
  tail call void @iio_trigger_unregister(ptr noundef %79) #5
  br label %disable_reg

disable_reg:                                      ; preds = %if.then121, %unregister_trigger.disable_reg_crit_edge, %do.end99, %do.end88, %do.end78, %do.end63, %do.end54
  %ret.1 = phi i32 [ %call49, %do.end54 ], [ %call58, %do.end63 ], [ %call83, %do.end88 ], [ %call94, %do.end99 ], [ %ret.0, %if.then121 ], [ %ret.0, %unregister_trigger.disable_reg_crit_edge ], [ -12, %do.end78 ]
  %80 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regulator, align 4
  %call125 = tail call i32 @regulator_disable(ptr noundef %81) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_reg, %if.end110.cleanup_crit_edge, %do.end45, %if.then33, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end ], [ %32, %do.end23 ], [ %call37, %if.then33 ], [ %call40, %do.end45 ], [ %ret.1, %disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %trig = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_unregister(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regulator = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.48) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret i32 %call2
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
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_generic_data_rdy_poll(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
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
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %masklength, align 8
  %call2 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %7, i32 noundef 0) #5
  %8 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %9)
  %cmp23 = icmp ult i32 %call2, %9
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bit.024 = phi i32 [ %call2, %for.body.lr.ph ], [ %call8, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [7 x i32], ptr @afe4404_channel_values, i32 0, i32 %bit.024
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.afe4404_data, ptr %3, i32 0, i32 6, i32 %i.025
  %call5 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef %arrayidx4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.inc, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.025, 1
  %14 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_scan_mask, align 4
  %16 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.024, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %15, i32 noundef %17, i32 noundef %add) #5
  %18 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call8, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %buffer9 = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scan_timestamp.i, align 8, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %private, i32 0, i32 6
  %22 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %25, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer9, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %23, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer9) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.err_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %28) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %arrayidx = getelementptr [7 x i32], ptr @afe4404_channel_values, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr @afe4404_channel_leds, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr [5 x i32], ptr @afe4404_channel_offdacs, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %13 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %mask, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.afe4404_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef %5, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %.call6 = select i1 %tobool.not, i32 1, i32 %call6
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %9
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @regmap_field_read(ptr noundef %17, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %.call9 = select i1 %tobool10.not, i32 1, i32 %call9
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %18 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %mask, label %sw.bb13.cleanup_crit_edge [
    i32 0, label %sw.bb14
    i32 2, label %sw.bb21
  ]

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %7
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %call17 = tail call i32 @regmap_field_read(ptr noundef %20, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %.call17 = select i1 %tobool18.not, i32 1, i32 %call17
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val, align 4
  %22 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 800000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %sw.bb14, %sw.bb13.cleanup_crit_edge, %sw.bb7, %sw.bb5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb21 ], [ %.call6, %sw.bb5 ], [ %.call9, %sw.bb7 ], [ %.call17, %sw.bb14 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx2 = getelementptr [5 x i32], ptr @afe4404_channel_offdacs, i32 0, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mask)
  %cond15 = icmp eq i32 %mask, 3
  br i1 %cond15, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr @afe4404_channel_leds, i32 0, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb6.cleanup.sink.split_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink.in = phi ptr [ %arrayidx2, %sw.bb.cleanup.sink.split_crit_edge ], [ %arrayidx, %sw.bb6.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load i32, ptr %.sink.in, align 4
  %arrayidx9 = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %.sink
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %call.i21 = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef %val, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i21, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_intensity_resistance_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef 500000, i32 noundef 0) #5
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.38, i32 noundef 250000, i32 noundef 0) #5
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.38, i32 noundef 100000, i32 noundef 0) #5
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.38, i32 noundef 50000, i32 noundef 0) #5
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.38, i32 noundef 25000, i32 noundef 0) #5
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.38, i32 noundef 10000, i32 noundef 0) #5
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %call.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.38, i32 noundef 1000000, i32 noundef 0) #5
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %call.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.38, i32 noundef 2000000, i32 noundef 0) #5
  %add.7 = add i32 %call.7, %add.6
  %sub2 = add i32 %add.7, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_intensity_capacitance_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 5000) #5
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 2500) #5
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 10000) #5
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 7500) #5
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 20000) #5
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 17500) #5
  %add.5 = add i32 %call.5, %add.4
  %add.ptr.6 = getelementptr i8, ptr %buf, i32 %add.5
  %sub.6 = sub i32 4096, %add.5
  %call.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.6, i32 noundef %sub.6, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 25000) #5
  %add.6 = add i32 %call.6, %add.5
  %add.ptr.7 = getelementptr i8, ptr %buf, i32 %add.6
  %sub.7 = sub i32 4096, %add.6
  %call.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 22500) #5
  %add.7 = add i32 %call.7, %add.6
  %sub2 = add i32 %add.7, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe440x_show_register(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  %vals = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #5
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals) #5
  %3 = getelementptr inbounds [2 x i32], ptr %vals, i32 0, i32 1
  %field = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  %arrayidx = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call2 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %reg_val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_val, align 4
  %table_size = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 3
  %10 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp ult i32 %9, %11
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %val_table = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 2
  %12 = ptrtoint ptr %val_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %val_table, align 4
  %arrayidx5 = getelementptr %struct.afe440x_val_table, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  %16 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %vals, align 4
  %fract = getelementptr %struct.afe440x_val_table, ptr %13, i32 %9, i32 1
  %17 = ptrtoint ptr %fract to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fract, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  %call10 = call i32 @iio_format_value(ptr noundef %buf, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %vals) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end4 ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vals) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe440x_store_register(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %integer = alloca i32, align 4
  %fract = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %integer) #5
  %2 = ptrtoint ptr %integer to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %integer, align 4, !annotation !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fract) #5
  %3 = ptrtoint ptr %fract to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fract, align 4, !annotation !155
  %call2 = call i32 @iio_str_to_fixpoint(ptr noundef %buf, i32 noundef 100000, ptr noundef nonnull %integer, ptr noundef nonnull %fract) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %table_size = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38.not = icmp eq i32 %5, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %val_table = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %val_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %val_table, align 4
  %8 = ptrtoint ptr %integer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %integer, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %val.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.afe440x_val_table, ptr %7, i32 %val.039
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp4 = icmp eq i32 %11, %9
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %fract7 = getelementptr %struct.afe440x_val_table, ptr %7, i32 %val.039, i32 1
  %12 = ptrtoint ptr %fract7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fract7, align 4
  %14 = ptrtoint ptr %fract to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fract, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp8 = icmp eq i32 %13, %15
  br i1 %cmp8, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %val.039, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %val.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %val.039, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0.lcssa, i32 %5)
  %cmp12 = icmp eq i32 %val.0.lcssa, %5
  br i1 %cmp12, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %field = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %arrayidx15 = getelementptr %struct.afe4404_data, ptr %1, i32 0, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %val.0.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  %count.call16 = select i1 %tobool17.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ %count.call16, %if.end14 ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fract) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %integer) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_format_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_str_to_fixpoint(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 35, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4404_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regulator = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.afe4404_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 35, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !93, !94, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !138, !139, !141, !142, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__initcall__kmod_afe4404__288_618_afe4404_i2c_driver_init6, !1, !"__initcall__kmod_afe4404__288_618_afe4404_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/health/afe4404.c", i32 618, i32 1}
!2 = !{ptr @__exitcall_afe4404_i2c_driver_exit, !1, !"__exitcall_afe4404_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/health/afe4404.c", i32 620, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/health/afe4404.c", i32 621, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/health/afe4404.c", i32 622, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/health/afe4404.c", i32 610, i32 11}
!12 = !{ptr @afe4404_i2c_driver, !13, !"afe4404_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/health/afe4404.c", i32 608, i32 26}
!14 = !{ptr @afe4404_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/iio/health/afe4404.c", i32 478, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/health/afe4404.c", i32 480, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @afe4404_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @afe4404_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/health/afe4404.c", i32 488, i32 4}
!27 = !{ptr @afe4404_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @afe4404_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/health/afe4404.c", i32 493, i32 48}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/health/afe4404.c", i32 496, i32 10}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/health/afe4404.c", i32 500, i32 3}
!35 = !{ptr @afe4404_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afe4404_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/health/afe4404.c", i32 507, i32 3}
!39 = !{ptr @afe4404_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @afe4404_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/health/afe4404.c", i32 514, i32 3}
!43 = !{ptr @afe4404_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @afe4404_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/health/afe4404.c", i32 526, i32 10}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/health/afe4404.c", i32 530, i32 4}
!49 = !{ptr @afe4404_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @afe4404_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/health/afe4404.c", i32 539, i32 4}
!53 = !{ptr @afe4404_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @afe4404_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/health/afe4404.c", i32 549, i32 4}
!57 = !{ptr @afe4404_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @afe4404_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/health/afe4404.c", i32 557, i32 3}
!61 = !{ptr @afe4404_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @afe4404_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/health/afe4404.c", i32 563, i32 3}
!65 = !{ptr @afe4404_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @afe4404_probe._entry_ptr.36, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @afe4404_regmap_config, !68, !"afe4404_regmap_config", i1 false, i1 false}
!68 = !{!"../drivers/iio/health/afe4404.c", i32 403, i32 35}
!69 = !{ptr @afe4404_volatile_table, !70, !"afe4404_volatile_table", i1 false, i1 false}
!70 = !{!"../drivers/iio/health/afe4404.c", i32 398, i32 41}
!71 = !{ptr @afe4404_yes_ranges, !72, !"afe4404_yes_ranges", i1 false, i1 false}
!72 = !{!"../drivers/iio/health/afe4404.c", i32 393, i32 34}
!73 = !{ptr @afe4404_reg_fields, !74, !"afe4404_reg_fields", i1 false, i1 false}
!74 = !{!"../drivers/iio/health/afe4404.c", i32 61, i32 31}
!75 = !{ptr @afe4404_reg_sequences, !76, !"afe4404_reg_sequences", i1 false, i1 false}
!76 = !{!"../drivers/iio/health/afe4404.c", i32 386, i32 34}
!77 = !{ptr @afe4404_channels, !78, !"afe4404_channels", i1 false, i1 false}
!78 = !{!"../drivers/iio/health/afe4404.c", i32 129, i32 35}
!79 = !{ptr @afe4404_iio_info, !80, !"afe4404_iio_info", i1 false, i1 false}
!80 = !{!"../drivers/iio/health/afe4404.c", i32 321, i32 30}
!81 = !{ptr @afe440x_attribute_group, !82, !"afe440x_attribute_group", i1 false, i1 false}
!82 = !{!"../drivers/iio/health/afe4404.c", i32 244, i32 37}
!83 = !{ptr @afe440x_attributes, !84, !"afe440x_attributes", i1 false, i1 false}
!84 = !{!"../drivers/iio/health/afe4404.c", i32 230, i32 26}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/health/afe4404.c", i32 153, i32 1}
!87 = !{ptr @dev_attr_in_intensity_resistance_available, !86, !"dev_attr_in_intensity_resistance_available", i1 false, i1 false}
!88 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @afe4404_res_table, !90, !"afe4404_res_table", i1 false, i1 false}
!90 = !{!"../drivers/iio/health/afe4404.c", i32 143, i32 39}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/health/afe4404.c", i32 165, i32 1}
!93 = !{ptr @dev_attr_in_intensity_capacitance_available, !92, !"dev_attr_in_intensity_capacitance_available", i1 false, i1 false}
!94 = !{ptr @afe4404_cap_table, !95, !"afe4404_cap_table", i1 false, i1 false}
!95 = !{!"../drivers/iio/health/afe4404.c", i32 155, i32 39}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/iio/health/afe4404.c", i32 218, i32 8}
!98 = !{ptr @afe440x_attr_in_intensity1_resistance, !97, !"afe440x_attr_in_intensity1_resistance", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/health/afe4404.c", i32 219, i32 8}
!101 = !{ptr @afe440x_attr_in_intensity1_capacitance, !100, !"afe440x_attr_in_intensity1_capacitance", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/health/afe4404.c", i32 221, i32 8}
!104 = !{ptr @afe440x_attr_in_intensity2_resistance, !103, !"afe440x_attr_in_intensity2_resistance", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/health/afe4404.c", i32 222, i32 8}
!107 = !{ptr @afe440x_attr_in_intensity2_capacitance, !106, !"afe440x_attr_in_intensity2_capacitance", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/health/afe4404.c", i32 224, i32 8}
!110 = !{ptr @afe440x_attr_in_intensity3_resistance, !109, !"afe440x_attr_in_intensity3_resistance", i1 false, i1 false}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/health/afe4404.c", i32 225, i32 8}
!113 = !{ptr @afe440x_attr_in_intensity3_capacitance, !112, !"afe440x_attr_in_intensity3_capacitance", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/health/afe4404.c", i32 227, i32 8}
!116 = !{ptr @afe440x_attr_in_intensity4_resistance, !115, !"afe440x_attr_in_intensity4_resistance", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/health/afe4404.c", i32 228, i32 8}
!119 = !{ptr @afe440x_attr_in_intensity4_capacitance, !118, !"afe440x_attr_in_intensity4_capacitance", i1 false, i1 false}
!120 = !{ptr @afe4404_channel_values, !121, !"afe4404_channel_values", i1 false, i1 false}
!121 = !{!"../drivers/iio/health/afe4404.c", i32 107, i32 27}
!122 = !{ptr @afe4404_channel_leds, !123, !"afe4404_channel_leds", i1 false, i1 false}
!123 = !{!"../drivers/iio/health/afe4404.c", i32 116, i32 27}
!124 = !{ptr @afe4404_channel_offdacs, !125, !"afe4404_channel_offdacs", i1 false, i1 false}
!125 = !{!"../drivers/iio/health/afe4404.c", i32 122, i32 27}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/health/afe4404.c", i32 595, i32 3}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @afe4404_remove._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @afe4404_remove._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @afe4404_of_match, !132, !"afe4404_of_match", i1 false, i1 false}
!132 = !{!"../drivers/iio/health/afe4404.c", i32 412, i32 34}
!133 = !{ptr @afe4404_pm_ops, !134, !"afe4404_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/iio/health/afe4404.c", i32 459, i32 8}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/health/afe4404.c", i32 432, i32 3}
!137 = !{ptr @afe4404_suspend._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @afe4404_suspend._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/health/afe4404.c", i32 447, i32 3}
!141 = !{ptr @afe4404_resume._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @afe4404_resume._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @afe4404_ids, !144, !"afe4404_ids", i1 false, i1 false}
!144 = !{!"../drivers/iio/health/afe4404.c", i32 602, i32 35}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i8 0, i8 2}
!155 = !{!"auto-init"}
