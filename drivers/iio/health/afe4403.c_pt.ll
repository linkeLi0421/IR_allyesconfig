; ModuleID = '/llk/IR_all_yes/drivers/iio/health/afe4403.c_pt.bc'
source_filename = "../drivers/iio/health/afe4403.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.afe440x_attr = type { %struct.device_attribute, i32, ptr, i32 }
%struct.afe440x_val_table = type { i32, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.afe4403_data = type { ptr, ptr, ptr, [6 x ptr], ptr, ptr, i32, [8 x i32] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_poll_func = type { ptr, ptr, ptr, i32, ptr, i32, i64 }

@__initcall__kmod_afe4403__290_609_afe4403_spi_driver_init6 = internal global ptr @afe4403_spi_driver_init, section ".initcall6.init", align 4
@afe4403_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @afe4403_ids, ptr @afe4403_probe, ptr @afe4403_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @afe4403_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afe4403_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_afe4403_spi_driver_exit = internal global ptr @afe4403_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [44 x i8] c"afe4403.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [73 x i8] c"afe4403.description=TI AFE4403 Heart Rate Monitor and Pulse Oximeter AFE\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [40 x i8] c"afe4403.file=drivers/iio/health/afe4403\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"afe4403.license=GPL v2\00", section ".modinfo", align 1
@afe4403_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"afe4403\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"afe4403\00", [24 x i8] zeroinitializer }, align 32
@afe4403_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,afe4403\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@afe4403_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @afe4403_suspend, ptr @afe4403_resume, ptr @afe4403_suspend, ptr @afe4403_resume, ptr @afe4403_suspend, ptr @afe4403_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@afe4403_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@afe4403_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 24, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 51, ptr null, ptr null, ptr @afe4403_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"afe4403:471:(&afe4403_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@afe4403_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 473, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afe4403_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/health/afe4403.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr = internal global ptr @afe4403_probe._entry, section ".printk_index", align 4
@afe4403_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to allocate regmap fields\0A\00", [62 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.9 = internal global ptr @afe4403_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_sup\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@afe4403_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 493, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable regulator\0A\00", [36 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.14 = internal global ptr @afe4403_probe._entry.12, section ".printk_index", align 4
@afe4403_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 500, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.17 = internal global ptr @afe4403_probe._entry.15, section ".printk_index", align 4
@afe4403_reg_sequences = internal constant { [33 x %struct.reg_sequence], [116 x i8] } { [33 x %struct.reg_sequence] [%struct.reg_sequence { i32 1, i32 80, i32 0 }, %struct.reg_sequence { i32 2, i32 999, i32 0 }, %struct.reg_sequence { i32 3, i32 2000, i32 0 }, %struct.reg_sequence { i32 4, i32 2999, i32 0 }, %struct.reg_sequence { i32 5, i32 1080, i32 0 }, %struct.reg_sequence { i32 6, i32 1999, i32 0 }, %struct.reg_sequence { i32 7, i32 2080, i32 0 }, %struct.reg_sequence { i32 8, i32 2999, i32 0 }, %struct.reg_sequence { i32 9, i32 0, i32 0 }, %struct.reg_sequence { i32 10, i32 999, i32 0 }, %struct.reg_sequence { i32 11, i32 3080, i32 0 }, %struct.reg_sequence { i32 12, i32 3999, i32 0 }, %struct.reg_sequence { i32 13, i32 1007, i32 0 }, %struct.reg_sequence { i32 14, i32 1999, i32 0 }, %struct.reg_sequence { i32 15, i32 2007, i32 0 }, %struct.reg_sequence { i32 16, i32 2999, i32 0 }, %struct.reg_sequence { i32 17, i32 3007, i32 0 }, %struct.reg_sequence { i32 18, i32 39999, i32 0 }, %struct.reg_sequence { i32 19, i32 4007, i32 0 }, %struct.reg_sequence { i32 20, i32 4999, i32 0 }, %struct.reg_sequence { i32 21, i32 1000, i32 0 }, %struct.reg_sequence { i32 22, i32 1003, i32 0 }, %struct.reg_sequence { i32 23, i32 2000, i32 0 }, %struct.reg_sequence { i32 24, i32 2003, i32 0 }, %struct.reg_sequence { i32 25, i32 3000, i32 0 }, %struct.reg_sequence { i32 26, i32 3003, i32 0 }, %struct.reg_sequence { i32 27, i32 4000, i32 0 }, %struct.reg_sequence { i32 28, i32 4003, i32 0 }, %struct.reg_sequence { i32 29, i32 39999, i32 0 }, %struct.reg_sequence { i32 50, i32 5400, i32 0 }, %struct.reg_sequence { i32 51, i32 39199, i32 0 }, %struct.reg_sequence { i32 30, i32 256, i32 0 }, %struct.reg_sequence { i32 32, i32 32768, i32 0 }], [116 x i8] zeroinitializer }, align 32
@afe4403_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to set register defaults\0A\00", [63 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.20 = internal global ptr @afe4403_probe._entry.18, section ".printk_index", align 4
@afe4403_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 7, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 115, i8 24, i8 32, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 1, i32 1, i32 0, i32 1, i32 -1, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 1, i32 3, i32 0, i32 3, i32 -1, %struct.anon.84 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }], [160 x i8] zeroinitializer }, align 32
@afe4403_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @afe440x_attribute_group, ptr @afe4403_read_raw, ptr null, ptr null, ptr @afe4403_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@afe4403_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to allocate IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.24 = internal global ptr @afe4403_probe._entry.22, section ".printk_index", align 4
@afe4403_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 532, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register IIO trigger\0A\00", [32 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.27 = internal global ptr @afe4403_probe._entry.25, section ".printk_index", align 4
@afe4403_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 542, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.30 = internal global ptr @afe4403_probe._entry.28, section ".printk_index", align 4
@afe4403_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to setup buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.33 = internal global ptr @afe4403_probe._entry.31, section ".printk_index", align 4
@afe4403_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 556, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@afe4403_probe._entry_ptr.36 = internal global ptr @afe4403_probe._entry.34, section ".printk_index", align 4
@afe4403_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @afe4403_yes_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@afe4403_yes_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 42, i32 47 }], [24 x i8] zeroinitializer }, align 32
@afe440x_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @afe440x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@afe440x_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_in_intensity_resistance_available, ptr @dev_attr_in_intensity_capacitance_available, ptr @afe440x_attr_in_intensity1_resistance, ptr @afe440x_attr_in_intensity1_capacitance, ptr @afe440x_attr_in_intensity2_resistance, ptr @afe440x_attr_in_intensity2_capacitance, ptr @afe440x_attr_in_intensity3_resistance, ptr @afe440x_attr_in_intensity3_capacitance, ptr @afe440x_attr_in_intensity4_resistance, ptr @afe440x_attr_in_intensity4_capacitance, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_in_intensity_resistance_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_intensity_resistance_available_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in_intensity_capacitance_available = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_intensity_capacitance_available_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity1_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 2, ptr @afe4403_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity1_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 3, ptr @afe4403_cap_table, i32 32 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity2_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 2, ptr @afe4403_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity2_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 3, ptr @afe4403_cap_table, i32 32 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity3_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 0, ptr @afe4403_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity3_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 1, ptr @afe4403_cap_table, i32 32 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity4_resistance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 0, ptr @afe4403_res_table, i32 8 }, [56 x i8] zeroinitializer }, align 32
@afe440x_attr_in_intensity4_capacitance = internal global { %struct.afe440x_attr, [56 x i8] } { %struct.afe440x_attr { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afe440x_show_register, ptr @afe440x_store_register }, i32 1, ptr @afe4403_cap_table, i32 32 }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"in_intensity_resistance_available\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06u \00", [23 x i8] zeroinitializer }, align 32
@afe4403_res_table = internal constant { [8 x %struct.afe440x_val_table], [32 x i8] } { [8 x %struct.afe440x_val_table] [%struct.afe440x_val_table { i32 500000, i32 0 }, %struct.afe440x_val_table { i32 250000, i32 0 }, %struct.afe440x_val_table { i32 100000, i32 0 }, %struct.afe440x_val_table { i32 50000, i32 0 }, %struct.afe440x_val_table { i32 25000, i32 0 }, %struct.afe440x_val_table { i32 10000, i32 0 }, %struct.afe440x_val_table { i32 1000000, i32 0 }, %struct.afe440x_val_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"in_intensity_capacitance_available\00", [61 x i8] zeroinitializer }, align 32
@afe4403_cap_table = internal constant { [32 x %struct.afe440x_val_table], [64 x i8] } { [32 x %struct.afe440x_val_table] [%struct.afe440x_val_table { i32 0, i32 5000 }, %struct.afe440x_val_table { i32 0, i32 10000 }, %struct.afe440x_val_table { i32 0, i32 20000 }, %struct.afe440x_val_table { i32 0, i32 25000 }, %struct.afe440x_val_table { i32 0, i32 30000 }, %struct.afe440x_val_table { i32 0, i32 35000 }, %struct.afe440x_val_table { i32 0, i32 45000 }, %struct.afe440x_val_table { i32 0, i32 50000 }, %struct.afe440x_val_table { i32 0, i32 55000 }, %struct.afe440x_val_table { i32 0, i32 60000 }, %struct.afe440x_val_table { i32 0, i32 70000 }, %struct.afe440x_val_table { i32 0, i32 75000 }, %struct.afe440x_val_table { i32 0, i32 80000 }, %struct.afe440x_val_table { i32 0, i32 85000 }, %struct.afe440x_val_table { i32 0, i32 95000 }, %struct.afe440x_val_table { i32 0, i32 100000 }, %struct.afe440x_val_table { i32 0, i32 155000 }, %struct.afe440x_val_table { i32 0, i32 160000 }, %struct.afe440x_val_table { i32 0, i32 170000 }, %struct.afe440x_val_table { i32 0, i32 175000 }, %struct.afe440x_val_table { i32 0, i32 180000 }, %struct.afe440x_val_table { i32 0, i32 185000 }, %struct.afe440x_val_table { i32 0, i32 195000 }, %struct.afe440x_val_table { i32 0, i32 200000 }, %struct.afe440x_val_table { i32 0, i32 205000 }, %struct.afe440x_val_table { i32 0, i32 210000 }, %struct.afe440x_val_table { i32 0, i32 220000 }, %struct.afe440x_val_table { i32 0, i32 225000 }, %struct.afe440x_val_table { i32 0, i32 230000 }, %struct.afe440x_val_table { i32 0, i32 235000 }, %struct.afe440x_val_table { i32 0, i32 245000 }, %struct.afe440x_val_table { i32 0, i32 250000 }], [64 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity1_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity1_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity2_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity2_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity3_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity3_capacitance\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_intensity4_resistance\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_intensity4_capacitance\00", [38 x i8] zeroinitializer }, align 32
@afe4403_channel_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47], [36 x i8] zeroinitializer }, align 32
@afe4403_channel_leds = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 0, i32 4], [16 x i8] zeroinitializer }, align 32
@afe4403_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 588, ptr @.str.50, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to disable regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afe4403_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@afe4403_remove._entry_ptr = internal global ptr @afe4403_remove._entry, section ".printk_index", align 4
@afe4403_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.51, ptr @.str.4, i32 425, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"afe4403_suspend\00", [16 x i8] zeroinitializer }, align 32
@afe4403_suspend._entry_ptr = internal global ptr @afe4403_suspend._entry, section ".printk_index", align 4
@afe4403_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.52, ptr @.str.4, i32 440, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"afe4403_resume\00", [17 x i8] zeroinitializer }, align 32
@afe4403_resume._entry_ptr = internal global ptr @afe4403_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"afe4403_spi_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 599, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"afe4403_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 593, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 601, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"afe4403_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 405, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"afe4403_pm_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 452, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"afe4403_regmap_config\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 396, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 471, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 473, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 481, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 486, i32 48 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 489, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 493, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 500, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"afe4403_reg_sequences\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 381, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 507, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"afe4403_channels\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 105, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"afe4403_iio_info\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 303, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 519, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 523, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 532, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 542, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 550, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 556, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"afe4403_volatile_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 391, i32 41 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"afe4403_yes_ranges\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 387, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [24 x i8] c"afe440x_attribute_group\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 213, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"afe440x_attributes\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 199, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant [43 x i8] c"dev_attr_in_intensity_resistance_available\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [44 x i8] c"dev_attr_in_intensity_capacitance_available\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity1_resistance\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity1_capacitance\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity2_resistance\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity2_capacitance\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity3_resistance\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity3_capacitance\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [38 x i8] c"afe440x_attr_in_intensity4_resistance\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [39 x i8] c"afe440x_attr_in_intensity4_capacitance\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 122, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"afe4403_res_table\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 118, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 134, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"afe4403_cap_table\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 124, i32 39 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 187, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 188, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 190, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 191, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 193, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 194, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 196, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 197, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant [23 x i8] c"afe4403_channel_values\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 91, i32 27 }
@___asan_gen_.252 = private unnamed_addr constant [21 x i8] c"afe4403_channel_leds\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 100, i32 27 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 588, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 425, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [32 x i8] c"../drivers/iio/health/afe4403.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 440, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_afe4403_spi_driver_exit, ptr @__initcall__kmod_afe4403__290_609_afe4403_spi_driver_init6, ptr @afe4403_probe._entry, ptr @afe4403_probe._entry.12, ptr @afe4403_probe._entry.15, ptr @afe4403_probe._entry.18, ptr @afe4403_probe._entry.22, ptr @afe4403_probe._entry.25, ptr @afe4403_probe._entry.28, ptr @afe4403_probe._entry.31, ptr @afe4403_probe._entry.34, ptr @afe4403_probe._entry.7, ptr @afe4403_probe._entry_ptr, ptr @afe4403_probe._entry_ptr.14, ptr @afe4403_probe._entry_ptr.17, ptr @afe4403_probe._entry_ptr.20, ptr @afe4403_probe._entry_ptr.24, ptr @afe4403_probe._entry_ptr.27, ptr @afe4403_probe._entry_ptr.30, ptr @afe4403_probe._entry_ptr.33, ptr @afe4403_probe._entry_ptr.36, ptr @afe4403_probe._entry_ptr.9, ptr @afe4403_remove._entry, ptr @afe4403_remove._entry_ptr, ptr @afe4403_resume._entry, ptr @afe4403_resume._entry_ptr, ptr @afe4403_spi_driver_exit, ptr @afe4403_suspend._entry, ptr @afe4403_suspend._entry_ptr, ptr @afe4403_spi_driver, ptr @afe4403_ids, ptr @.str, ptr @afe4403_of_match, ptr @afe4403_pm_ops, ptr @afe4403_probe._key, ptr @afe4403_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @afe4403_reg_sequences, ptr @.str.19, ptr @afe4403_channels, ptr @afe4403_iio_info, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @afe4403_volatile_table, ptr @afe4403_yes_ranges, ptr @afe440x_attribute_group, ptr @afe440x_attributes, ptr @dev_attr_in_intensity_resistance_available, ptr @dev_attr_in_intensity_capacitance_available, ptr @afe440x_attr_in_intensity1_resistance, ptr @afe440x_attr_in_intensity1_capacitance, ptr @afe440x_attr_in_intensity2_resistance, ptr @afe440x_attr_in_intensity2_capacitance, ptr @afe440x_attr_in_intensity3_resistance, ptr @afe440x_attr_in_intensity3_capacitance, ptr @afe440x_attr_in_intensity4_resistance, ptr @afe440x_attr_in_intensity4_capacitance, ptr @.str.37, ptr @.str.38, ptr @afe4403_res_table, ptr @.str.39, ptr @afe4403_cap_table, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @afe4403_channel_values, ptr @afe4403_channel_leds, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_reg_sequences to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_yes_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_intensity_resistance_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_intensity_capacitance_available to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity1_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity1_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity2_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity2_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity3_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity3_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity4_resistance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe440x_attr_in_intensity4_capacitance to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_res_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_cap_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_channel_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_channel_leds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe4403_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @afe4403_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @afe4403_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @afe4403_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 80) #5
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %1, align 8
  %spi4 = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %spi4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %spi4, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq5 = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq5, align 4
  %call6 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @afe4403_regmap_config, ptr noundef nonnull @afe4403_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  br i1 %cmp.i, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call16 = tail call ptr @devm_regmap_field_alloc(ptr noundef %10, ptr noundef %12, [5 x i32] [i32 32, i32 0, i32 2, i32 0, i32 0]) #5
  %arrayidx17 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %arrayidx17, align 4
  %cmp.i209 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %for.body.preheader.do.end24_crit_edge, label %for.cond

for.body.preheader.do.end24_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 8
  %call16.1 = tail call ptr @devm_regmap_field_alloc(ptr noundef %18, ptr noundef %20, [5 x i32] [i32 32, i32 3, i32 7, i32 0, i32 0]) #5
  %arrayidx17.1 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call16.1, ptr %arrayidx17.1, align 4
  %cmp.i209.1 = icmp ugt ptr %call16.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.1, label %for.cond.do.end24_crit_edge, label %for.cond.1

for.cond.do.end24_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond.1:                                       ; preds = %for.cond
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 8
  %call16.2 = tail call ptr @devm_regmap_field_alloc(ptr noundef %23, ptr noundef %25, [5 x i32] [i32 33, i32 0, i32 2, i32 0, i32 0]) #5
  %arrayidx17.2 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16.2, ptr %arrayidx17.2, align 4
  %cmp.i209.2 = icmp ugt ptr %call16.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.2, label %for.cond.1.do.end24_crit_edge, label %for.cond.2

for.cond.1.do.end24_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond.2:                                       ; preds = %for.cond.1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 8
  %call16.3 = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] [i32 33, i32 3, i32 7, i32 0, i32 0]) #5
  %arrayidx17.3 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call16.3, ptr %arrayidx17.3, align 4
  %cmp.i209.3 = icmp ugt ptr %call16.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.3, label %for.cond.2.do.end24_crit_edge, label %for.cond.3

for.cond.2.do.end24_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond.3:                                       ; preds = %for.cond.2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %call16.4 = tail call ptr @devm_regmap_field_alloc(ptr noundef %33, ptr noundef %35, [5 x i32] [i32 34, i32 0, i32 7, i32 0, i32 0]) #5
  %arrayidx17.4 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call16.4, ptr %arrayidx17.4, align 4
  %cmp.i209.4 = icmp ugt ptr %call16.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.4, label %for.cond.3.do.end24_crit_edge, label %for.cond.4

for.cond.3.do.end24_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond.4:                                       ; preds = %for.cond.3
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 8
  %call16.5 = tail call ptr @devm_regmap_field_alloc(ptr noundef %38, ptr noundef %40, [5 x i32] [i32 34, i32 8, i32 15, i32 0, i32 0]) #5
  %arrayidx17.5 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call16.5, ptr %arrayidx17.5, align 4
  %cmp.i209.5 = icmp ugt ptr %call16.5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.5, label %for.cond.4.do.end24_crit_edge, label %for.cond.5

for.cond.4.do.end24_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond.5:                                       ; preds = %for.cond.4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %call31 = tail call ptr @devm_regulator_get(ptr noundef %43, ptr noundef nonnull @.str.10) #5
  %regulator = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call31, ptr %regulator, align 4
  %cmp.i210 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210, label %if.then34, label %if.end39

do.end24:                                         ; preds = %for.cond.4.do.end24_crit_edge, %for.cond.3.do.end24_crit_edge, %for.cond.2.do.end24_crit_edge, %for.cond.1.do.end24_crit_edge, %for.cond.do.end24_crit_edge, %for.body.preheader.do.end24_crit_edge
  %arrayidx17.lcssa = phi ptr [ %arrayidx17, %for.body.preheader.do.end24_crit_edge ], [ %arrayidx17.1, %for.cond.do.end24_crit_edge ], [ %arrayidx17.2, %for.cond.1.do.end24_crit_edge ], [ %arrayidx17.3, %for.cond.2.do.end24_crit_edge ], [ %arrayidx17.4, %for.cond.3.do.end24_crit_edge ], [ %arrayidx17.5, %for.cond.4.do.end24_crit_edge ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.8) #8
  %47 = ptrtoint ptr %arrayidx17.lcssa to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx17.lcssa, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.then34:                                        ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %52 = ptrtoint ptr %call31 to i32
  %call38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %51, i32 noundef %52, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end39:                                         ; preds = %for.cond.5
  %call41 = tail call i32 @regulator_enable(ptr noundef %call31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 8
  %call50 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 0, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.16) #8
  br label %err_disable_reg

if.end57:                                         ; preds = %if.end48
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 8
  %call59 = tail call i32 @regmap_multi_reg_write(ptr noundef %60, ptr noundef nonnull @afe4403_reg_sequences, i32 noundef 33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.19) #8
  br label %err_disable_reg

if.end66:                                         ; preds = %if.end57
  %63 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %64 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @afe4403_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %65 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %66 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %67 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @afe4403_iio_info, ptr %info, align 8
  %68 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp68 = icmp sgt i32 %69, 0
  br i1 %cmp68, label %if.then69, label %if.end66.if.end103_crit_edge

if.end66.if.end103_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then69:                                        ; preds = %if.end66
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %call72 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #5
  %call73 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %71, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str, i32 noundef %call72) #5
  %trig = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 5
  %72 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call73, ptr %trig, align 8
  %tobool75.not = icmp eq ptr %call73, null
  br i1 %tobool75.not, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.23) #8
  br label %err_disable_reg

if.end81:                                         ; preds = %if.then69
  %driver_data.i.i211 = getelementptr inbounds %struct.iio_trigger, ptr %call73, i32 0, i32 4, i32 8
  %75 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call, ptr %driver_data.i.i211, align 4
  %76 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trig, align 8
  %call84 = tail call i32 @__iio_trigger_register(ptr noundef %77, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.26) #8
  br label %err_disable_reg

if.end91:                                         ; preds = %if.end81
  %80 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq5, align 4
  %82 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trig, align 8
  %call95 = tail call i32 @devm_request_threaded_irq(ptr noundef %79, i32 noundef %81, ptr noundef nonnull @iio_trigger_generic_data_rdy_poll, ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end91.if.end103_crit_edge, label %do.end100

if.end91.if.end103_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

do.end100:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.29) #8
  br label %err_trig

if.end103:                                        ; preds = %if.end91.if.end103_crit_edge, %if.end66.if.end103_crit_edge
  %call104 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @afe4403_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end111, label %do.end109

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.32) #8
  br label %err_trig

if.end111:                                        ; preds = %if.end103
  %call112 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.cleanup_crit_edge, label %do.end117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.35) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #5
  br label %err_trig

err_trig:                                         ; preds = %do.end117, %do.end109, %do.end100
  %ret.0 = phi i32 [ %call95, %do.end100 ], [ %call104, %do.end109 ], [ %call112, %do.end117 ]
  %90 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp121 = icmp sgt i32 %91, 0
  br i1 %cmp121, label %if.then122, label %err_trig.err_disable_reg_crit_edge

err_trig.err_disable_reg_crit_edge:               ; preds = %err_trig
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_disable_reg

if.then122:                                       ; preds = %err_trig
  call void @__sanitizer_cov_trace_pc() #7
  %trig123 = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 5
  %92 = ptrtoint ptr %trig123 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %trig123, align 8
  tail call void @iio_trigger_unregister(ptr noundef %93) #5
  br label %err_disable_reg

err_disable_reg:                                  ; preds = %if.then122, %err_trig.err_disable_reg_crit_edge, %do.end89, %do.end79, %do.end64, %do.end55
  %ret.1 = phi i32 [ %call50, %do.end55 ], [ %call59, %do.end64 ], [ %call84, %do.end89 ], [ %ret.0, %if.then122 ], [ %ret.0, %err_trig.err_disable_reg_crit_edge ], [ -12, %do.end79 ]
  %94 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regulator, align 4
  %call126 = tail call i32 @regulator_disable(ptr noundef %95) #5
  br label %cleanup

cleanup:                                          ; preds = %err_disable_reg, %if.end111.cleanup_crit_edge, %do.end46, %if.then34, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %49, %do.end24 ], [ %call38, %if.then34 ], [ %call41, %do.end46 ], [ %ret.1, %err_disable_reg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #5
  %irq = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 6
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
  %trig = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_unregister(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regulator = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regulator, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.48) #8
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal i32 @afe4403_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %tx = alloca [4 x i8], align 4
  %rx = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #5
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %tx, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rx) #5
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rx, align 1, !annotation !153
  %6 = getelementptr inbounds [3 x i8], ptr %rx, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !153
  %8 = getelementptr inbounds [3 x i8], ptr %rx, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !153
  %spi = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  %call2 = call i32 @spi_write_then_read(ptr noundef %11, ptr noundef nonnull %tx, i32 noundef 4, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %masklength, align 8
  %call3 = call i32 @_find_next_bit_be(ptr noundef %13, i32 noundef %15, i32 noundef 0) #5
  %16 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %17)
  %cmp43 = icmp ult i32 %call3, %17
  br i1 %cmp43, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %bit.044 = phi i32 [ %call16, %if.end10.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %arrayidx = getelementptr [7 x i32], ptr @afe4403_channel_values, i32 0, i32 %bit.044
  %call7 = call i32 @spi_write_then_read(ptr noundef %19, ptr noundef %arrayidx, i32 noundef 1, ptr noundef nonnull %rx, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.err_crit_edge

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end10:                                         ; preds = %for.body
  %20 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx, align 1
  %conv.i.i = zext i8 %21 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  %conv2.i.i = zext i8 %23 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %8, align 1
  %conv5.i.i = zext i8 %25 to i32
  %or6.i.i = or i32 %or.i.i, %conv5.i.i
  %inc = add i32 %i.045, 1
  %arrayidx13 = getelementptr %struct.afe4403_data, ptr %3, i32 0, i32 7, i32 %i.045
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or6.i.i, ptr %arrayidx13, align 4
  %27 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %active_scan_mask, align 4
  %29 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %masklength, align 8
  %add = add nuw i32 %bit.044, 1
  %call16 = call i32 @_find_next_bit_be(ptr noundef %28, i32 noundef %30, i32 noundef %add) #5
  %31 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %call16, %32
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  %arrayidx17 = getelementptr inbounds [4 x i8], ptr %tx, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx17, align 1
  %34 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi, align 4
  %call20 = call i32 @spi_write_then_read(ptr noundef %35, ptr noundef nonnull %tx, i32 noundef 4, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end23:                                         ; preds = %for.end
  %buffer24 = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 7
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %scan_timestamp.i, align 8, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %timestamp = getelementptr inbounds %struct.iio_poll_func, ptr %private, i32 0, i32 6
  %38 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %timestamp, align 8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %41, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %buffer24, i32 %sub.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %39, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end23.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %buffer24) #5
  br label %err

err:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.end.err_crit_edge, %for.body.err_crit_edge, %entry.err_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %44) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #5
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
define internal i32 @afe4403_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.addr.i = alloca i32, align 4
  %tx.i = alloca [4 x i8], align 4
  %rx.i = alloca [3 x i8], align 1
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
  %arrayidx = getelementptr [7 x i32], ptr @afe4403_channel_values, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr @afe4403_channel_leds, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.addr.i)
  %11 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %reg.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx.i) #5
  %12 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rx.i) #5
  %13 = ptrtoint ptr %rx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %rx.i, align 1, !annotation !153
  %14 = getelementptr inbounds [3 x i8], ptr %rx.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !153
  %16 = getelementptr inbounds [3 x i8], ptr %rx.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !153
  %spi.i = getelementptr inbounds %struct.afe4403_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %19, ptr noundef nonnull %tx.i, i32 noundef 4, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.afe4403_read.exit_crit_edge

sw.bb3.afe4403_read.exit_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %afe4403_read.exit

if.end.i:                                         ; preds = %sw.bb3
  %20 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i, align 4
  %call3.i = call i32 @spi_write_then_read(ptr noundef %21, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef nonnull %rx.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.afe4403_read.exit_crit_edge

if.end.i.afe4403_read.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %afe4403_read.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %14, align 1
  %conv2.i.i.i = zext i8 %25 to i32
  %shl3.i.i.i = shl nuw nsw i32 %conv2.i.i.i, 8
  %or.i.i.i = or i32 %shl3.i.i.i, %shl.i.i.i
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %16, align 1
  %conv5.i.i.i = zext i8 %27 to i32
  %or6.i.i.i = or i32 %or.i.i.i, %conv5.i.i.i
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or6.i.i.i, ptr %val, align 4
  %arrayidx8.i = getelementptr inbounds [4 x i8], ptr %tx.i, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx8.i, align 1
  %30 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi.i, align 4
  %call11.i = call i32 @spi_write_then_read(ptr noundef %31, ptr noundef nonnull %tx.i, i32 noundef 4, ptr noundef null, i32 noundef 0) #5
  br label %afe4403_read.exit

afe4403_read.exit:                                ; preds = %if.end6.i, %if.end.i.afe4403_read.exit_crit_edge, %sw.bb3.afe4403_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb3.afe4403_read.exit_crit_edge ], [ %call3.i, %if.end.i.afe4403_read.exit_crit_edge ], [ %call11.i, %if.end6.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %.call4 = select i1 %tobool.not, i32 1, i32 %retval.0.i
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %32 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %mask, label %sw.bb5.cleanup_crit_edge [
    i32 0, label %sw.bb6
    i32 2, label %sw.bb12
  ]

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx7 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 %7
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx7, align 4
  %call8 = tail call i32 @regmap_field_read(ptr noundef %34, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %.call8 = select i1 %tobool9.not, i32 1, i32 %call8
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val, align 4
  %36 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 800000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb6, %sw.bb5.cleanup_crit_edge, %afe4403_read.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb12 ], [ %.call4, %afe4403_read.exit ], [ %.call8, %sw.bb6 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond6 = icmp eq i32 %mask, 0
  %or.cond = and i1 %cond6, %cond
  br i1 %or.cond, label %sw.bb1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %arrayidx = getelementptr [4 x i32], ptr @afe4403_channel_leds, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %arrayidx2 = getelementptr %struct.afe4403_data, ptr %7, i32 0, i32 3, i32 %5
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %9, i32 noundef -1, i32 noundef %val, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb1 ], [ -22, %entry.cleanup_crit_edge ]
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
  %call.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.7, i32 noundef %sub.7, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0) #5
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
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.012
  %sub = sub i32 4096, %len.012
  %arrayidx = getelementptr [32 x %struct.afe440x_val_table], ptr @afe4403_cap_table, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %fract = getelementptr [32 x %struct.afe440x_val_table], ptr @afe4403_cap_table, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %fract to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fract, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.38, i32 noundef %1, i32 noundef %3) #5
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub2 = add i32 %add, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add
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
  store i32 -1, ptr %reg_val, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vals) #5
  %3 = getelementptr inbounds [2 x i32], ptr %vals, i32 0, i32 1
  %field = getelementptr inbounds %struct.afe440x_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  %arrayidx = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 %5
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
  store i32 -1, ptr %integer, align 4, !annotation !153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fract) #5
  %3 = ptrtoint ptr %fract to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fract, align 4, !annotation !153
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
  %arrayidx15 = getelementptr %struct.afe4403_data, ptr %1, i32 0, i32 3, i32 %17
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
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 35, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %regulator = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afe4403_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regulator = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.afe4403_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 35, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call.i, %if.end ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !96, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !129, !130, !131, !132, !134, !136, !138, !139, !140, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__initcall__kmod_afe4403__290_609_afe4403_spi_driver_init6, !1, !"__initcall__kmod_afe4403__290_609_afe4403_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/health/afe4403.c", i32 609, i32 1}
!2 = !{ptr @__exitcall_afe4403_spi_driver_exit, !1, !"__exitcall_afe4403_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/health/afe4403.c", i32 611, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/health/afe4403.c", i32 612, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/health/afe4403.c", i32 613, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/health/afe4403.c", i32 601, i32 11}
!12 = !{ptr @afe4403_spi_driver, !13, !"afe4403_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/health/afe4403.c", i32 599, i32 26}
!14 = !{ptr @afe4403_ids, !15, !"afe4403_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/health/afe4403.c", i32 593, i32 35}
!16 = !{ptr @afe4403_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/health/afe4403.c", i32 471, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/health/afe4403.c", i32 473, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @afe4403_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @afe4403_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/health/afe4403.c", i32 481, i32 4}
!29 = !{ptr @afe4403_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @afe4403_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/health/afe4403.c", i32 486, i32 48}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/health/afe4403.c", i32 489, i32 10}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/health/afe4403.c", i32 493, i32 3}
!37 = !{ptr @afe4403_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @afe4403_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/health/afe4403.c", i32 500, i32 3}
!41 = !{ptr @afe4403_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @afe4403_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/health/afe4403.c", i32 507, i32 3}
!45 = !{ptr @afe4403_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @afe4403_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/health/afe4403.c", i32 519, i32 10}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/health/afe4403.c", i32 523, i32 4}
!51 = !{ptr @afe4403_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @afe4403_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/health/afe4403.c", i32 532, i32 4}
!55 = !{ptr @afe4403_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @afe4403_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/health/afe4403.c", i32 542, i32 4}
!59 = !{ptr @afe4403_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @afe4403_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/health/afe4403.c", i32 550, i32 3}
!63 = !{ptr @afe4403_probe._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @afe4403_probe._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/health/afe4403.c", i32 556, i32 3}
!67 = !{ptr @afe4403_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @afe4403_probe._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @afe4403_regmap_config, !70, !"afe4403_regmap_config", i1 false, i1 false}
!70 = !{!"../drivers/iio/health/afe4403.c", i32 396, i32 35}
!71 = !{ptr @afe4403_volatile_table, !72, !"afe4403_volatile_table", i1 false, i1 false}
!72 = !{!"../drivers/iio/health/afe4403.c", i32 391, i32 41}
!73 = !{ptr @afe4403_yes_ranges, !74, !"afe4403_yes_ranges", i1 false, i1 false}
!74 = !{!"../drivers/iio/health/afe4403.c", i32 387, i32 34}
!75 = distinct !{null, !76, !"afe4403_reg_fields", i1 false, i1 false}
!76 = !{!"../drivers/iio/health/afe4403.c", i32 48, i32 31}
!77 = !{ptr @afe4403_reg_sequences, !78, !"afe4403_reg_sequences", i1 false, i1 false}
!78 = !{!"../drivers/iio/health/afe4403.c", i32 381, i32 34}
!79 = !{ptr @afe4403_channels, !80, !"afe4403_channels", i1 false, i1 false}
!80 = !{!"../drivers/iio/health/afe4403.c", i32 105, i32 35}
!81 = !{ptr @afe4403_iio_info, !82, !"afe4403_iio_info", i1 false, i1 false}
!82 = !{!"../drivers/iio/health/afe4403.c", i32 303, i32 30}
!83 = !{ptr @afe440x_attribute_group, !84, !"afe440x_attribute_group", i1 false, i1 false}
!84 = !{!"../drivers/iio/health/afe4403.c", i32 213, i32 37}
!85 = !{ptr @afe440x_attributes, !86, !"afe440x_attributes", i1 false, i1 false}
!86 = !{!"../drivers/iio/health/afe4403.c", i32 199, i32 26}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/health/afe4403.c", i32 122, i32 1}
!89 = !{ptr @dev_attr_in_intensity_resistance_available, !88, !"dev_attr_in_intensity_resistance_available", i1 false, i1 false}
!90 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @afe4403_res_table, !92, !"afe4403_res_table", i1 false, i1 false}
!92 = !{!"../drivers/iio/health/afe4403.c", i32 118, i32 39}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/health/afe4403.c", i32 134, i32 1}
!95 = !{ptr @dev_attr_in_intensity_capacitance_available, !94, !"dev_attr_in_intensity_capacitance_available", i1 false, i1 false}
!96 = !{ptr @afe4403_cap_table, !97, !"afe4403_cap_table", i1 false, i1 false}
!97 = !{!"../drivers/iio/health/afe4403.c", i32 124, i32 39}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/health/afe4403.c", i32 187, i32 8}
!100 = !{ptr @afe440x_attr_in_intensity1_resistance, !99, !"afe440x_attr_in_intensity1_resistance", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/health/afe4403.c", i32 188, i32 8}
!103 = !{ptr @afe440x_attr_in_intensity1_capacitance, !102, !"afe440x_attr_in_intensity1_capacitance", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/health/afe4403.c", i32 190, i32 8}
!106 = !{ptr @afe440x_attr_in_intensity2_resistance, !105, !"afe440x_attr_in_intensity2_resistance", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/health/afe4403.c", i32 191, i32 8}
!109 = !{ptr @afe440x_attr_in_intensity2_capacitance, !108, !"afe440x_attr_in_intensity2_capacitance", i1 false, i1 false}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/health/afe4403.c", i32 193, i32 8}
!112 = !{ptr @afe440x_attr_in_intensity3_resistance, !111, !"afe440x_attr_in_intensity3_resistance", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/health/afe4403.c", i32 194, i32 8}
!115 = !{ptr @afe440x_attr_in_intensity3_capacitance, !114, !"afe440x_attr_in_intensity3_capacitance", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/health/afe4403.c", i32 196, i32 8}
!118 = !{ptr @afe440x_attr_in_intensity4_resistance, !117, !"afe440x_attr_in_intensity4_resistance", i1 false, i1 false}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/health/afe4403.c", i32 197, i32 8}
!121 = !{ptr @afe440x_attr_in_intensity4_capacitance, !120, !"afe440x_attr_in_intensity4_capacitance", i1 false, i1 false}
!122 = !{ptr @afe4403_channel_values, !123, !"afe4403_channel_values", i1 false, i1 false}
!123 = !{!"../drivers/iio/health/afe4403.c", i32 91, i32 27}
!124 = !{ptr @afe4403_channel_leds, !125, !"afe4403_channel_leds", i1 false, i1 false}
!125 = !{!"../drivers/iio/health/afe4403.c", i32 100, i32 27}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/health/afe4403.c", i32 588, i32 3}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @afe4403_remove._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @afe4403_remove._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @afe4403_of_match, !133, !"afe4403_of_match", i1 false, i1 false}
!133 = !{!"../drivers/iio/health/afe4403.c", i32 405, i32 34}
!134 = !{ptr @afe4403_pm_ops, !135, !"afe4403_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/iio/health/afe4403.c", i32 452, i32 8}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/iio/health/afe4403.c", i32 425, i32 3}
!138 = !{ptr @afe4403_suspend._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @afe4403_suspend._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/iio/health/afe4403.c", i32 440, i32 3}
!142 = !{ptr @afe4403_resume._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @afe4403_resume._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"auto-init"}
!154 = !{i8 0, i8 2}
