; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/as3935.c_pt.bc'
source_filename = "../drivers/iio/proximity/as3935.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.as3935_state = type { ptr, ptr, %struct.mutex, %struct.delayed_work, i32, i32, i32, %struct.anon.72, [24 x i8], [2 x i8], [126 x i8] }
%struct.anon.72 = type { i8, i64 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_as3935__234_480_as3935_driver_init6 = internal global ptr @as3935_driver_init, section ".initcall6.init", align 4
@as3935_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @as3935_id, ptr @as3935_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @as3935_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3935_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_as3935_driver_exit = internal global ptr @as3935_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [57 x i8] c"as3935.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"as3935.description=AS3935 lightning sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"as3935.file=drivers/iio/proximity/as3935\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"as3935.license=GPL\00", section ".modinfo", align 1
@as3935_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"as3935\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"as3935\00", [25 x i8] zeroinitializer }, align 32
@as3935_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3935\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@as3935_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @as3935_suspend, ptr @as3935_resume, ptr @as3935_suspend, ptr @as3935_resume, ptr @as3935_suspend, ptr @as3935_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@as3935_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to get event interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"as3935_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/iio/proximity/as3935.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr = internal global ptr @as3935_probe._entry, section ".printk_index", align 4
@as3935_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ams,tuning-capacitor-pf\00", [40 x i8] zeroinitializer }, align 32
@as3935_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"no tuning-capacitor-pf set, defaulting to %d\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.11 = internal global ptr @as3935_probe._entry.8, section ".printk_index", align 4
@as3935_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wrong tuning-capacitor-pf setting of %d\0A\00", [55 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.14 = internal global ptr @as3935_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ams,nflwdth\00", [20 x i8] zeroinitializer }, align 32
@as3935_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid nflwdth setting of %d\0A\00", [33 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.18 = internal global ptr @as3935_probe._entry.16, section ".printk_index", align 4
@as3935_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 { i8 117, i8 6, i8 8, i8 0, i8 0, i32 0 }, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.71 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@as3935_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @as3935_attribute_group, ptr @as3935_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@as3935_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.22 = internal global ptr @as3935_probe._entry.20, section ".printk_index", align 4
@as3935_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot setup iio trigger\0A\00", [38 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.25 = internal global ptr @as3935_probe._entry.23, section ".printk_index", align 4
@as3935_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&st->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@as3935_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&st->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@as3935_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.32 = internal global ptr @as3935_probe._entry.30, section ".printk_index", align 4
@as3935_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@as3935_probe._entry_ptr.35 = internal global ptr @as3935_probe._entry.33, section ".printk_index", align 4
@as3935_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @as3935_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@as3935_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sensor_sensitivity, ptr @iio_dev_attr_noise_level_tripped, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sensor_sensitivity = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @as3935_sensor_sensitivity_show, ptr @as3935_sensor_sensitivity_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_noise_level_tripped = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @as3935_noise_level_tripped_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sensor_sensitivity\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"noise_level_tripped\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@as3935_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 251, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"as3935_event_work\00", [46 x i8] zeroinitializer }, align 32
@as3935_event_work._entry_ptr = internal global ptr @as3935_event_work._entry, section ".printk_index", align 4
@as3935_event_work._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 266, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"noise level is too high\0A\00", [39 x i8] zeroinitializer }, align 32
@as3935_event_work._entry_ptr.43 = internal global ptr @as3935_event_work._entry.41, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"as3935_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 471, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant [10 x i8] c"as3935_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 465, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 473, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"as3935_of_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 459, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"as3935_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 340, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 365, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 377, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 380, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 383, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 388, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 394, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 396, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"as3935_channels\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 70, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"as3935_info\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 216, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 407, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 429, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 435, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 447, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 453, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"as3935_attribute_group\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 174, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"as3935_attributes\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 168, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sensor_sensitivity\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [33 x i8] c"iio_dev_attr_noise_level_tripped\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 162, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 125, i32 22 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 165, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 251, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [34 x i8] c"../drivers/iio/proximity/as3935.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 266, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_as3935_driver_exit, ptr @__initcall__kmod_as3935__234_480_as3935_driver_init6, ptr @as3935_driver_exit, ptr @as3935_event_work._entry, ptr @as3935_event_work._entry.41, ptr @as3935_event_work._entry_ptr, ptr @as3935_event_work._entry_ptr.43, ptr @as3935_probe._entry, ptr @as3935_probe._entry.12, ptr @as3935_probe._entry.16, ptr @as3935_probe._entry.20, ptr @as3935_probe._entry.23, ptr @as3935_probe._entry.30, ptr @as3935_probe._entry.33, ptr @as3935_probe._entry.8, ptr @as3935_probe._entry_ptr, ptr @as3935_probe._entry_ptr.11, ptr @as3935_probe._entry_ptr.14, ptr @as3935_probe._entry_ptr.18, ptr @as3935_probe._entry_ptr.22, ptr @as3935_probe._entry_ptr.25, ptr @as3935_probe._entry_ptr.32, ptr @as3935_probe._entry_ptr.35, ptr @as3935_driver, ptr @as3935_id, ptr @.str, ptr @as3935_of_match, ptr @as3935_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @as3935_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @as3935_channels, ptr @as3935_info, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @as3935_probe.__key.26, ptr @.str.27, ptr @as3935_probe.__key.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @as3935_attribute_group, ptr @as3935_attributes, ptr @iio_dev_attr_sensor_sensitivity, ptr @iio_dev_attr_noise_level_tripped, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sensor_sensitivity to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_noise_level_tripped to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3935_event_work._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @as3935_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3935_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @as3935_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %3, align 128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @as3935_probe.__key) #6
  %tune_cap = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 5
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.7, ptr noundef %tune_cap, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end4.if.end18_crit_edge, label %if.then12

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %tune_cap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tune_cap, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef 0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end4.if.end18_crit_edge
  %7 = ptrtoint ptr %tune_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tune_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %8)
  %cmp = icmp ugt i32 %8, 120
  br i1 %cmp, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %8) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %nflwdth_reg = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 6
  %call.i172 = tail call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.15, ptr noundef %nflwdth_reg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool27.not = icmp eq i32 %call.i172, 0
  br i1 %tobool27.not, label %land.lhs.true, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end25
  %9 = ptrtoint ptr %nflwdth_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nflwdth_reg, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %10)
  %cmp29 = icmp ugt i32 %10, 127
  br i1 %cmp29, label %do.end33, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end33:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %10) #9
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %call36 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %name37 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %11 = ptrtoint ptr %name37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %name37, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @as3935_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_channels, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %15 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @as3935_info, ptr %info, align 8
  %call39 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #6
  %call40 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %spi, ptr noundef nonnull @.str.19, ptr noundef %call36, i32 noundef %call39) #6
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end35.cleanup_crit_edge, label %if.end43

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %trig44 = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %trig44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call40, ptr %trig44, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %17, -100
  %noise_tripped = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %noise_tripped to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %noise_tripped, align 8
  %driver_data.i.i173 = getelementptr inbounds %struct.iio_trigger, ptr %call40, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i173 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %driver_data.i.i173, align 4
  %call45 = tail call i32 @__devm_iio_trigger_register(ptr noundef %spi, ptr noundef nonnull %call40, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @as3935_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end58, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  tail call fastcc void @calibrate_as3935(ptr noundef %3)
  %work = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %20 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @as3935_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry68 = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry68, ptr %entry68, align 4
  %prev.i = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry68, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3, i32 0, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @as3935_event_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @as3935_probe.__key.28) #6
  %call79 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @as3935_stop_work, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end82:                                         ; preds = %if.end58
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end82.dev_name.exit_crit_edge

if.end82.dev_name.exit_crit_edge:                 ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end82.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end82.dev_name.exit_crit_edge ]
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %25, ptr noundef nonnull @as3935_interrupt_handler, ptr noundef null, i32 noundef 1, ptr noundef %retval.0.i, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool86.not = icmp eq i32 %call.i174, 0
  br i1 %tobool86.not, label %if.end91, label %do.end90

do.end90:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end91:                                         ; preds = %dev_name.exit
  %call92 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %do.end97, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.34) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.end91.cleanup_crit_edge, %do.end90, %if.end58.cleanup_crit_edge, %do.end57, %do.end50, %if.end35.cleanup_crit_edge, %do.end33, %do.end23, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %call45, %do.end50 ], [ %call52, %do.end57 ], [ %call.i174, %do.end90 ], [ %call92, %do.end97 ], [ -22, %do.end33 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ %call79, %if.end58.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 71, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %as3935_read.exit, label %if.end

as3935_read.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %err_read

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %conv = and i8 %9, 63
  %scan = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %scan, align 8
  %call4 = call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scan_timestamp.i, align 8, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %14, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call4, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  br label %err_read

err_read:                                         ; preds = %iio_push_to_buffers_with_timestamp.exit, %as3935_read.exit
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %17) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calibrate_as3935(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i59 = alloca %struct.spi_message, align 4
  %t.i.i60 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i44 = alloca %struct.spi_message, align 4
  %t.i.i45 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i30 = alloca %struct.spi_message, align 4
  %t.i.i31 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i16 = alloca %struct.spi_message, align 4
  %t.i.i17 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1.i = getelementptr inbounds %struct.as3935_state, ptr %st, i32 0, i32 9
  %0 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 60, ptr %buf1.i, align 1
  %arrayidx3.i = getelementptr %struct.as3935_state, ptr %st, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -106, ptr %arrayidx3.i, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf1.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.as3935_write.exit_crit_edge

entry.as3935_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %as3935_write.exit

as3935_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %entry.as3935_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  %18 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 61, ptr %buf1.i, align 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -106, ptr %arrayidx3.i, align 1
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i17) #6
  %22 = getelementptr inbounds i8, ptr %t.i.i17, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf1.i, ptr %t.i.i17, align 4
  %len1.i.i20 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len1.i.i20, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i16) #6
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i16, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i16, ptr %msg.i.i.i16, align 4
  %prev.i.i.i.i.i.i.i21 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i16, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i16, ptr %prev.i.i.i.i.i.i.i21, align 4
  %resources.i.i.i.i.i.i22 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i16, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i22, ptr %resources.i.i.i.i.i.i22, align 4
  %prev.i2.i.i.i.i.i.i23 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i16, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i22, ptr %prev.i2.i.i.i.i.i.i23, align 4
  %transfer_list.i.i.i.i.i24 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18
  %call.i.i.i.i.i.i.i25 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i24, ptr noundef nonnull %msg.i.i.i16, ptr noundef nonnull %msg.i.i.i16) #6
  br i1 %call.i.i.i.i.i.i.i25, label %if.end.i.i.i.i.i.i.i27, label %as3935_write.exit.as3935_write.exit29_crit_edge

as3935_write.exit.as3935_write.exit29_crit_edge:  ; preds = %as3935_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit29

if.end.i.i.i.i.i.i.i27:                           ; preds = %as3935_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i24, ptr %prev.i.i.i.i.i.i.i21, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i16, ptr %transfer_list.i.i.i.i.i24, align 4
  %prev3.i.i.i.i.i.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i17, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i16, ptr %prev3.i.i.i.i.i.i.i26, align 4
  %35 = ptrtoint ptr %msg.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i24, ptr %msg.i.i.i16, align 4
  br label %as3935_write.exit29

as3935_write.exit29:                              ; preds = %if.end.i.i.i.i.i.i.i27, %as3935_write.exit.as3935_write.exit29_crit_edge
  %call.i.i.i28 = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i16) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i17) #6
  %tune_cap = getelementptr inbounds %struct.as3935_state, ptr %st, i32 0, i32 5
  %36 = ptrtoint ptr %tune_cap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tune_cap, align 4
  %div14 = lshr i32 %37, 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %buf1.i, align 1
  %39 = trunc i32 %div14 to i8
  %conv2.i = or i8 %39, 32
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %41 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i31) #6
  %43 = getelementptr inbounds i8, ptr %t.i.i31, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i.i31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf1.i, ptr %t.i.i31, align 4
  %len1.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i.i34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i.i34, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i30) #6
  %47 = getelementptr inbounds i8, ptr %msg.i.i.i30, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i.i30, ptr %msg.i.i.i30, align 4
  %prev.i.i.i.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i30, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i30, ptr %prev.i.i.i.i.i.i.i35, align 4
  %resources.i.i.i.i.i.i36 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i.i36, ptr %resources.i.i.i.i.i.i36, align 4
  %prev.i2.i.i.i.i.i.i37 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i30, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i.i36, ptr %prev.i2.i.i.i.i.i.i37, align 4
  %transfer_list.i.i.i.i.i38 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 18
  %call.i.i.i.i.i.i.i39 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i38, ptr noundef nonnull %msg.i.i.i30, ptr noundef nonnull %msg.i.i.i30) #6
  br i1 %call.i.i.i.i.i.i.i39, label %if.end.i.i.i.i.i.i.i41, label %as3935_write.exit29.as3935_write.exit43_crit_edge

as3935_write.exit29.as3935_write.exit43_crit_edge: ; preds = %as3935_write.exit29
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit43

if.end.i.i.i.i.i.i.i41:                           ; preds = %as3935_write.exit29
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i.i38, ptr %prev.i.i.i.i.i.i.i35, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i30, ptr %transfer_list.i.i.i.i.i38, align 4
  %prev3.i.i.i.i.i.i.i40 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i31, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i.i30, ptr %prev3.i.i.i.i.i.i.i40, align 4
  %56 = ptrtoint ptr %msg.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i.i38, ptr %msg.i.i.i30, align 4
  br label %as3935_write.exit43

as3935_write.exit43:                              ; preds = %if.end.i.i.i.i.i.i.i41, %as3935_write.exit29.as3935_write.exit43_crit_edge
  %call.i.i.i42 = call i32 @spi_sync(ptr noundef %42, ptr noundef nonnull %msg.i.i.i30) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i30) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i31) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 429496000) #6
  %58 = ptrtoint ptr %tune_cap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tune_cap, align 4
  %div415 = lshr i32 %59, 3
  %60 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 8, ptr %buf1.i, align 1
  %conv2.i47 = trunc i32 %div415 to i8
  %61 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv2.i47, ptr %arrayidx3.i, align 1
  %62 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i45) #6
  %64 = getelementptr inbounds i8, ptr %t.i.i45, i32 4
  %65 = call ptr @memset(ptr %64, i32 0, i32 92)
  %66 = ptrtoint ptr %t.i.i45 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf1.i, ptr %t.i.i45, align 4
  %len1.i.i49 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45, i32 0, i32 2
  %67 = ptrtoint ptr %len1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %len1.i.i49, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i44) #6
  %68 = getelementptr inbounds i8, ptr %msg.i.i.i44, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i.i44, ptr %msg.i.i.i44, align 4
  %prev.i.i.i.i.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i44, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i.i44, ptr %prev.i.i.i.i.i.i.i50, align 4
  %resources.i.i.i.i.i.i51 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i44, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i.i.i51, ptr %resources.i.i.i.i.i.i51, align 4
  %prev.i2.i.i.i.i.i.i52 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i44, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i.i.i51, ptr %prev.i2.i.i.i.i.i.i52, align 4
  %transfer_list.i.i.i.i.i53 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45, i32 0, i32 18
  %call.i.i.i.i.i.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i53, ptr noundef nonnull %msg.i.i.i44, ptr noundef nonnull %msg.i.i.i44) #6
  br i1 %call.i.i.i.i.i.i.i54, label %if.end.i.i.i.i.i.i.i56, label %as3935_write.exit43.as3935_write.exit58_crit_edge

as3935_write.exit43.as3935_write.exit58_crit_edge: ; preds = %as3935_write.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit58

if.end.i.i.i.i.i.i.i56:                           ; preds = %as3935_write.exit43
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i.i.i.i.i53, ptr %prev.i.i.i.i.i.i.i50, align 4
  %75 = ptrtoint ptr %transfer_list.i.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i.i44, ptr %transfer_list.i.i.i.i.i53, align 4
  %prev3.i.i.i.i.i.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i45, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i.i44, ptr %prev3.i.i.i.i.i.i.i55, align 4
  %77 = ptrtoint ptr %msg.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i.i.i.i.i53, ptr %msg.i.i.i44, align 4
  br label %as3935_write.exit58

as3935_write.exit58:                              ; preds = %if.end.i.i.i.i.i.i.i56, %as3935_write.exit43.as3935_write.exit58_crit_edge
  %call.i.i.i57 = call i32 @spi_sync(ptr noundef %63, ptr noundef nonnull %msg.i.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i44) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i45) #6
  %nflwdth_reg = getelementptr inbounds %struct.as3935_state, ptr %st, i32 0, i32 6
  %78 = ptrtoint ptr %nflwdth_reg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nflwdth_reg, align 16
  %80 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %buf1.i, align 1
  %conv2.i62 = trunc i32 %79 to i8
  %81 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv2.i62, ptr %arrayidx3.i, align 1
  %82 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i60) #6
  %84 = getelementptr inbounds i8, ptr %t.i.i60, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 92)
  %86 = ptrtoint ptr %t.i.i60 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf1.i, ptr %t.i.i60, align 4
  %len1.i.i64 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 2
  %87 = ptrtoint ptr %len1.i.i64 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %len1.i.i64, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i59) #6
  %88 = getelementptr inbounds i8, ptr %msg.i.i.i59, i32 8
  %89 = call ptr @memset(ptr %88, i32 0, i32 40)
  %90 = ptrtoint ptr %msg.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %msg.i.i.i59, ptr %msg.i.i.i59, align 4
  %prev.i.i.i.i.i.i.i65 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i59, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i.i.i59, ptr %prev.i.i.i.i.i.i.i65, align 4
  %resources.i.i.i.i.i.i66 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i59, i32 0, i32 10
  %92 = ptrtoint ptr %resources.i.i.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %resources.i.i.i.i.i.i66, ptr %resources.i.i.i.i.i.i66, align 4
  %prev.i2.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i59, i32 0, i32 10, i32 1
  %93 = ptrtoint ptr %prev.i2.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %resources.i.i.i.i.i.i66, ptr %prev.i2.i.i.i.i.i.i67, align 4
  %transfer_list.i.i.i.i.i68 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 18
  %call.i.i.i.i.i.i.i69 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i68, ptr noundef nonnull %msg.i.i.i59, ptr noundef nonnull %msg.i.i.i59) #6
  br i1 %call.i.i.i.i.i.i.i69, label %if.end.i.i.i.i.i.i.i71, label %as3935_write.exit58.as3935_write.exit73_crit_edge

as3935_write.exit58.as3935_write.exit73_crit_edge: ; preds = %as3935_write.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit73

if.end.i.i.i.i.i.i.i71:                           ; preds = %as3935_write.exit58
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %prev.i.i.i.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %transfer_list.i.i.i.i.i68, ptr %prev.i.i.i.i.i.i.i65, align 4
  %95 = ptrtoint ptr %transfer_list.i.i.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i.i59, ptr %transfer_list.i.i.i.i.i68, align 4
  %prev3.i.i.i.i.i.i.i70 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i60, i32 0, i32 18, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i.i.i59, ptr %prev3.i.i.i.i.i.i.i70, align 4
  %97 = ptrtoint ptr %msg.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %transfer_list.i.i.i.i.i68, ptr %msg.i.i.i59, align 4
  br label %as3935_write.exit73

as3935_write.exit73:                              ; preds = %if.end.i.i.i.i.i.i.i71, %as3935_write.exit58.as3935_write.exit73_crit_edge
  %call.i.i.i72 = call i32 @spi_sync(ptr noundef %83, ptr noundef nonnull %msg.i.i.i59) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i59) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i60) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as3935_event_work(ptr noundef %work) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %2 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 67, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %3 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %8 = and i8 %7, 15
  %and = zext i8 %8 to i32
  %9 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %if.end.sw.bb1_crit_edge
    i32 1, label %if.end.sw.bb1_crit_edge20
  ]

if.end.sw.bb1_crit_edge20:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %trig = getelementptr i8, ptr %work, i32 -96
  %10 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trig, align 4
  call void @iio_trigger_poll_chained(ptr noundef %11) #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge20
  %lock = getelementptr i8, ptr %work, i32 -92
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %noise_tripped = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %noise_tripped to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %noise_tripped, align 8
  call void @mutex_unlock(ptr noundef %lock) #6
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.42) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @as3935_stop_work(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %data, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %work = getelementptr inbounds %struct.as3935_state, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_interrupt_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %work = getelementptr inbounds %struct.as3935_state, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 1) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 0, label %entry.sw.bb_crit_edge20
    i32 2, label %sw.bb10
  ]

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val2, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 71, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %as3935_read.exit, label %if.end

as3935_read.exit:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.i.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp = icmp eq i8 %9, 63
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %m)
  %cond = icmp eq i32 %m, 1
  br i1 %cond, label %if.then8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw nsw i32 %conv.i.i, 1000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1000, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %if.then8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %as3935_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %as3935_read.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.then8 ], [ 1, %sw.bb10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_sensor_sensitivity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %4 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %5 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %as3935_read.exit, label %if.end

as3935_read.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 31
  %10 = zext i8 %9 to i32
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %10)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %as3935_read.exit
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i.i, %as3935_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_sensor_sensitivity_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !105
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %4)
  %cmp = icmp ugt i32 %4, 31
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %buf1.i = getelementptr inbounds %struct.as3935_state, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf1.i, align 1
  %.tr = trunc i32 %4 to i8
  %conv2.i = shl nuw nsw i8 %.tr, 1
  %arrayidx3.i = getelementptr %struct.as3935_state, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %9 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf1.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end4.as3935_write.exit_crit_edge

if.end4.as3935_write.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %as3935_write.exit

as3935_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end4.as3935_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %as3935_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %as3935_write.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_noise_level_tripped_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.as3935_state, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %noise_tripped = getelementptr inbounds %struct.as3935_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %noise_tripped to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %noise_tripped, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = sub i32 -101, %3
  %6 = add i32 %5, %4
  %sub.lobit.not = lshr i32 %6, 31
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %sub.lobit.not)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %as3935_read.exit, label %if.end

as3935_read.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %err_suspend

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %10 = or i8 %9, 1
  %buf1.i = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf1.i, align 1
  %arrayidx3.i = getelementptr %struct.as3935_state, ptr %3, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %arrayidx3.i, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf1.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.as3935_write.exit_crit_edge

if.end.as3935_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %as3935_write.exit

as3935_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end.as3935_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  br label %err_suspend

err_suspend:                                      ; preds = %as3935_write.exit, %as3935_read.exit
  %ret.0 = phi i32 [ %call.i.i, %as3935_read.exit ], [ %call.i.i.i, %as3935_write.exit ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3935_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %6 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #6
  %7 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %result.i.i, align 1, !annotation !105
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %as3935_read.exit, label %if.end

as3935_read.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  br label %err_resume

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #6
  %10 = and i8 %9, -2
  %buf1.i = getelementptr inbounds %struct.as3935_state, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf1.i, align 1
  %arrayidx3.i = getelementptr %struct.as3935_state, ptr %3, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %arrayidx3.i, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #6
  %15 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf1.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #6
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.as3935_write.exit_crit_edge

if.end.as3935_write.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %as3935_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %as3935_write.exit

as3935_write.exit:                                ; preds = %if.end.i.i.i.i.i.i.i, %if.end.as3935_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #6
  call fastcc void @calibrate_as3935(ptr noundef %3)
  br label %err_resume

err_resume:                                       ; preds = %as3935_write.exit, %as3935_read.exit
  %ret.0 = phi i32 [ %call.i.i, %as3935_read.exit ], [ %call.i.i.i, %as3935_write.exit ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_as3935__234_480_as3935_driver_init6, !1, !"__initcall__kmod_as3935__234_480_as3935_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/as3935.c", i32 480, i32 1}
!2 = !{ptr @__exitcall_as3935_driver_exit, !1, !"__exitcall_as3935_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/as3935.c", i32 482, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/as3935.c", i32 483, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/as3935.c", i32 484, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/as3935.c", i32 473, i32 11}
!12 = !{ptr @as3935_driver, !13, !"as3935_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/as3935.c", i32 471, i32 26}
!14 = !{ptr @as3935_id, !15, !"as3935_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/as3935.c", i32 465, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/proximity/as3935.c", i32 365, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @as3935_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @as3935_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @as3935_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/iio/proximity/as3935.c", i32 377, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/proximity/as3935.c", i32 380, i32 4}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/proximity/as3935.c", i32 383, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @as3935_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @as3935_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/proximity/as3935.c", i32 388, i32 3}
!36 = !{ptr @as3935_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @as3935_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/proximity/as3935.c", i32 394, i32 4}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/proximity/as3935.c", i32 396, i32 3}
!42 = !{ptr @as3935_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @as3935_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/proximity/as3935.c", i32 407, i32 37}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/proximity/as3935.c", i32 420, i32 3}
!48 = !{ptr @as3935_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @as3935_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/proximity/as3935.c", i32 429, i32 3}
!52 = !{ptr @as3935_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @as3935_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @as3935_probe.__key.26, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/iio/proximity/as3935.c", i32 435, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @as3935_probe.__key.28, !55, !"__key", i1 false, i1 false}
!58 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/proximity/as3935.c", i32 447, i32 3}
!61 = !{ptr @as3935_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @as3935_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/proximity/as3935.c", i32 453, i32 3}
!65 = !{ptr @as3935_probe._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @as3935_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @as3935_channels, !68, !"as3935_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/proximity/as3935.c", i32 70, i32 35}
!69 = !{ptr @as3935_info, !70, !"as3935_info", i1 false, i1 false}
!70 = !{!"../drivers/iio/proximity/as3935.c", i32 216, i32 30}
!71 = !{ptr @as3935_attribute_group, !72, !"as3935_attribute_group", i1 false, i1 false}
!72 = !{!"../drivers/iio/proximity/as3935.c", i32 174, i32 37}
!73 = !{ptr @as3935_attributes, !74, !"as3935_attributes", i1 false, i1 false}
!74 = !{!"../drivers/iio/proximity/as3935.c", i32 168, i32 26}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/proximity/as3935.c", i32 162, i32 8}
!77 = !{ptr @iio_dev_attr_sensor_sensitivity, !76, !"iio_dev_attr_sensor_sensitivity", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/proximity/as3935.c", i32 125, i32 22}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/proximity/as3935.c", i32 165, i32 8}
!82 = !{ptr @iio_dev_attr_noise_level_tripped, !81, !"iio_dev_attr_noise_level_tripped", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/proximity/as3935.c", i32 251, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @as3935_event_work._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @as3935_event_work._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/proximity/as3935.c", i32 266, i32 3}
!90 = !{ptr @as3935_event_work._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @as3935_event_work._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @as3935_of_match, !93, !"as3935_of_match", i1 false, i1 false}
!93 = !{!"../drivers/iio/proximity/as3935.c", i32 459, i32 34}
!94 = !{ptr @as3935_pm_ops, !95, !"as3935_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/iio/proximity/as3935.c", i32 340, i32 8}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{i8 0, i8 2}
