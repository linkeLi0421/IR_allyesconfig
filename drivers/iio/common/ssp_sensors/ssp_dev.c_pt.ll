; ModuleID = '/llk/IR_all_yes/drivers/iio/common/ssp_sensors/ssp_dev.c_pt.bc'
source_filename = "../drivers/iio/common/ssp_sensors/ssp_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ssp_get_sensor_delay\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_get_sensor_delay\09\09\09\09"
module asm "\09.long\09__crc_ssp_get_sensor_delay\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_get_sensor_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_get_sensor_delay\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_get_sensor_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_enable_sensor\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_enable_sensor\09\09\09\09"
module asm "\09.long\09__crc_ssp_enable_sensor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_enable_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_enable_sensor\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_enable_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_change_delay\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_change_delay\09\09\09\09"
module asm "\09.long\09__crc_ssp_change_delay\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_change_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_change_delay\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_change_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_disable_sensor\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_disable_sensor\09\09\09\09"
module asm "\09.long\09__crc_ssp_disable_sensor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_disable_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_disable_sensor\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_disable_sensor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ssp_register_consumer\22, \22a\22\09"
module asm "\09.weak\09__crc_ssp_register_consumer\09\09\09\09"
module asm "\09.long\09__crc_ssp_register_consumer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ssp_register_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22ssp_register_consumer\22\09\09\09\09\09"
module asm "__kstrtabns_ssp_register_consumer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ssp_sensorhub_info = type { ptr, ptr, i32, ptr, i32 }
%struct.ssp_data = type { ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.delayed_work, i8, i8, i8, i64, [21 x i32], i32, i32, i32, i32, i32, i8, i8, i32, [21 x i32], [21 x i32], [21 x i8], i32, i32, i32, %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.list_head, [21 x ptr], %struct.atomic_t, [72 x i8], [2 x i16], [124 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ssp_instruction = type <{ i32, i32, i8 }>
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__kstrtab_ssp_get_sensor_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_get_sensor_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_get_sensor_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_get_sensor_delay to i32), ptr @__kstrtab_ssp_get_sensor_delay, ptr @__kstrtabns_ssp_get_sensor_delay }, section "___ksymtab+ssp_get_sensor_delay", align 4
@ssp_enable_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enabling sensor failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssp_enable_sensor\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/iio/common/ssp_sensors/ssp_dev.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssp_enable_sensor._entry_ptr = internal global ptr @ssp_enable_sensor._entry, section ".printk_index", align 4
@ssp_enable_sensor._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Changing sensor delay failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ssp_enable_sensor._entry_ptr.7 = internal global ptr @ssp_enable_sensor._entry.5, section ".printk_index", align 4
@__kstrtab_ssp_enable_sensor = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_enable_sensor = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_enable_sensor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_enable_sensor to i32), ptr @__kstrtab_ssp_enable_sensor, ptr @__kstrtabns_ssp_enable_sensor }, section "___ksymtab+ssp_enable_sensor", align 4
@ssp_change_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssp_change_delay\00", [47 x i8] zeroinitializer }, align 32
@ssp_change_delay._entry_ptr = internal global ptr @ssp_change_delay._entry, section ".printk_index", align 4
@__kstrtab_ssp_change_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_change_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_change_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_change_delay to i32), ptr @__kstrtab_ssp_change_delay, ptr @__kstrtabns_ssp_change_delay }, section "___ksymtab+ssp_change_delay", align 4
@ssp_disable_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Remove sensor fail\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssp_disable_sensor\00", [45 x i8] zeroinitializer }, align 32
@ssp_disable_sensor._entry_ptr = internal global ptr @ssp_disable_sensor._entry, section ".printk_index", align 4
@__kstrtab_ssp_disable_sensor = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_disable_sensor = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_disable_sensor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_disable_sensor to i32), ptr @__kstrtab_ssp_disable_sensor, ptr @__kstrtabns_ssp_disable_sensor }, section "___ksymtab+ssp_disable_sensor", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ssp_register_consumer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ssp_register_consumer = external dso_local constant [0 x i8], align 1
@__ksymtab_ssp_register_consumer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ssp_register_consumer to i32), ptr @__kstrtab_ssp_register_consumer, ptr @__kstrtabns_ssp_register_consumer }, section "___ksymtab+ssp_register_consumer", align 4
@__initcall__kmod_sensorhub__234_680_ssp_driver_init6 = internal global ptr @ssp_driver_init, section ".initcall6.init", align 4
@ssp_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ssp_probe, ptr @ssp_remove, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ssp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssp_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ssp_driver_exit = internal global ptr @ssp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [43 x i8] c"sensorhub.description=ssp sensorhub driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [37 x i8] c"sensorhub.author=Samsung Electronics\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [56 x i8] c"sensorhub.file=drivers/iio/common/ssp_sensors/sensorhub\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"sensorhub.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sensorhub\00", [22 x i8] zeroinitializer }, align 32
@ssp_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,sensorhub-rinato\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssp_rinato_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,sensorhub-thermostat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ssp_thermostat_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ssp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ssp_suspend, ptr @ssp_resume, ptr @ssp_suspend, ptr @ssp_resume, ptr @ssp_suspend, ptr @ssp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ssp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to find platform data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp_probe\00", [22 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr = internal global ptr @ssp_probe._entry, section ".printk_index", align 4
@sensorhub_sensor_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.47, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.48, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@ssp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mfd add devices fail\0A\00", [42 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.16 = internal global ptr @ssp_probe._entry.14, section ".printk_index", align 4
@ssp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to setup spi\0A\00", [43 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.19 = internal global ptr @ssp_probe._entry.17, section ".printk_index", align 4
@ssp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->comm_lock\00", [47 x i8] zeroinitializer }, align 32
@ssp_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&data->pending_lock\00", [44 x i8] zeroinitializer }, align 32
@ssp_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&data->work_wdt)\00", [61 x i8] zeroinitializer }, align 32
@ssp_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&data->work_refresh)->work)\00", [48 x i8] zeroinitializer }, align 32
@ssp_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&data->work_refresh)->timer\00", [34 x i8] zeroinitializer }, align 32
@ssp_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&data->wdt_timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SSP_Int\00", [24 x i8] zeroinitializer }, align 32
@ssp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.13, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Irq request fail\0A\00", [46 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.34 = internal global ptr @ssp_probe._entry.32, section ".printk_index", align 4
@ssp_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.13, ptr @.str.2, i32 567, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Initialize_mcu failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.37 = internal global ptr @ssp_probe._entry.35, section ".printk_index", align 4
@ssp_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.13, ptr @.str.2, i32 571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware version not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.40 = internal global ptr @ssp_probe._entry.38, section ".printk_index", align 4
@ssp_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.13, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Probe failed!\0A\00", [17 x i8] zeroinitializer }, align 32
@ssp_probe._entry_ptr.43 = internal global ptr @ssp_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcu-ap\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ap-mcu\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mcu-reset\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssp-accelerometer\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssp-gyroscope\00", [18 x i8] zeroinitializer }, align 32
@ssp_wdt_work_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s - Sensor state: 0x%x, RC: %u, CC: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssp_wdt_work_func\00", [46 x i8] zeroinitializer }, align 32
@ssp_wdt_work_func._entry_ptr = internal global ptr @ssp_wdt_work_func._entry, section ".printk_index", align 4
@ssp_enable_mcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 94, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"current shutdown = %d, old = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssp_enable_mcu\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssp_enable_mcu._entry_ptr = internal global ptr @ssp_enable_mcu._entry, section ".printk_index", align 4
@ssp_enable_mcu._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 106, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssp_enable_mcu._entry_ptr.56 = internal global ptr @ssp_enable_mcu._entry.54, section ".printk_index", align 4
@ssp_refresh_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 402, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"refreshing\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssp_refresh_task\00", [47 x i8] zeroinitializer }, align 32
@ssp_refresh_task._entry_ptr = internal global ptr @ssp_refresh_task._entry, section ".printk_index", align 4
@ssp_sync_available_sensors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sync sensor nr: %d fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssp_sync_available_sensors\00", [37 x i8] zeroinitializer }, align 32
@ssp_sync_available_sensors._entry_ptr = internal global ptr @ssp_sync_available_sensors._entry, section ".printk_index", align 4
@ssp_sync_available_sensors._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SSP_MSG2SSP_AP_MCU_SET_DUMPMODE failed\0A\00", [56 x i8] zeroinitializer }, align 32
@ssp_sync_available_sensors._entry_ptr.63 = internal global ptr @ssp_sync_available_sensors._entry.61, section ".printk_index", align 4
@ssp_check_fwbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 123, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid revision, trying %d time\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssp_check_fwbl\00", [17 x i8] zeroinitializer }, align 32
@ssp_check_fwbl._entry_ptr = internal global ptr @ssp_check_fwbl._entry, section ".printk_index", align 4
@ssp_check_fwbl._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSP_INVALID_REVISION\0A\00", [42 x i8] zeroinitializer }, align 32
@ssp_check_fwbl._entry_ptr.68 = internal global ptr @ssp_check_fwbl._entry.66, section ".printk_index", align 4
@ssp_check_fwbl._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.2, i32 138, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MCU Firm Rev : Old = %8u, New = %8u\0A\00", [59 x i8] zeroinitializer }, align 32
@ssp_check_fwbl._entry_ptr.71 = internal global ptr @ssp_check_fwbl._entry.69, section ".printk_index", align 4
@ssp_initialize_mcu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - MCU %s ret = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssp_initialize_mcu\00", [45 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry_ptr = internal global ptr @ssp_initialize_mcu._entry, section ".printk_index", align 4
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is not working\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"identification failed\00", [42 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.2, i32 366, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MCU device ID = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry_ptr.78 = internal global ptr @ssp_initialize_mcu._entry.76, section ".printk_index", align 4
@ssp_initialize_mcu._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.73, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s - ssp_set_magnetic_matrix failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry_ptr.81 = internal global ptr @ssp_initialize_mcu._entry.79, section ".printk_index", align 4
@ssp_initialize_mcu._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.73, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s - ssp_get_sensor_scanning_info failed\0A\00", [54 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry_ptr.84 = internal global ptr @ssp_initialize_mcu._entry.82, section ".printk_index", align 4
@ssp_initialize_mcu._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.73, ptr @.str.2, i32 388, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MCU Firm Rev : New = %8u\0A\00", [38 x i8] zeroinitializer }, align 32
@ssp_initialize_mcu._entry_ptr.87 = internal global ptr @ssp_initialize_mcu._entry.85, section ".printk_index", align 4
@ssp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SSP_MSG2SSP_AP_STATUS_SHUTDOWN failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssp_remove\00", [21 x i8] zeroinitializer }, align 32
@ssp_remove._entry_ptr = internal global ptr @ssp_remove._entry, section ".printk_index", align 4
@ssp_rinato_info = internal constant { %struct.ssp_sensorhub_info, [44 x i8] } { %struct.ssp_sensorhub_info { ptr @.str.90, ptr @.str.91, i32 14052300, ptr @ssp_magnitude_table, i32 27 }, [44 x i8] zeroinitializer }, align 32
@ssp_thermostat_info = internal constant { %struct.ssp_sensorhub_info, [44 x i8] } { %struct.ssp_sensorhub_info { ptr @.str.92, ptr @.str.91, i32 14080600, ptr @ssp_magnitude_table, i32 27 }, [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ssp_B2.fw\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssp_crashed.fw\00", [17 x i8] zeroinitializer }, align 32
@ssp_magnitude_table = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nU\ABG\CB\C3\00C\D08\AF\F4\CE\D5\00\\\FA\0070\BD\FC\AB\F3\0D-\FA", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"thermostat_B2.fw\00", [47 x i8] zeroinitializer }, align 32
@ssp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s SSP_MSG2SSP_AP_STATUS_SUSPEND failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ssp_suspend\00", [20 x i8] zeroinitializer }, align 32
@ssp_suspend._entry_ptr = internal global ptr @ssp_suspend._entry, section ".printk_index", align 4
@ssp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 654, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s SSP_MSG2SSP_AP_STATUS_RESUME failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssp_resume\00", [21 x i8] zeroinitializer }, align 32
@ssp_resume._entry_ptr = internal global ptr @ssp_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 99999, i64 16777215]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 4294967295]
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 236, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 249, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 292, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 323, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"ssp_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 670, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 676, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"ssp_of_match\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 429, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [11 x i8] c"ssp_pm_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 666, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 502, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"sensorhub_sensor_devs\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 52, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 510, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 517, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 525, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 538, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 543, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 544, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 546, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 551, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 553, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 567, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 571, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 584, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 451, i32 43 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 455, i32 43 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 459, i32 46 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 54, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 57, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 158, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 93, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 105, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 402, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 77, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 87, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 122, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 131, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 135, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 360, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 366, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 374, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 381, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 387, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 594, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [16 x i8] c"ssp_rinato_info\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 36, i32 40 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c"ssp_thermostat_info\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 44, i32 40 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 37, i32 13 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 38, i32 21 }
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c"ssp_magnitude_table\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 32, i32 17 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 45, i32 13 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 628, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.411 = private constant [44 x i8] c"../drivers/iio/common/ssp_sensors/ssp_dev.c\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 653, i32 3 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ssp_driver_exit, ptr @__initcall__kmod_sensorhub__234_680_ssp_driver_init6, ptr @__ksymtab_ssp_change_delay, ptr @__ksymtab_ssp_disable_sensor, ptr @__ksymtab_ssp_enable_sensor, ptr @__ksymtab_ssp_get_sensor_delay, ptr @__ksymtab_ssp_register_consumer, ptr @ssp_change_delay._entry, ptr @ssp_change_delay._entry_ptr, ptr @ssp_check_fwbl._entry, ptr @ssp_check_fwbl._entry.66, ptr @ssp_check_fwbl._entry.69, ptr @ssp_check_fwbl._entry_ptr, ptr @ssp_check_fwbl._entry_ptr.68, ptr @ssp_check_fwbl._entry_ptr.71, ptr @ssp_disable_sensor._entry, ptr @ssp_disable_sensor._entry_ptr, ptr @ssp_driver_exit, ptr @ssp_enable_mcu._entry, ptr @ssp_enable_mcu._entry.54, ptr @ssp_enable_mcu._entry_ptr, ptr @ssp_enable_mcu._entry_ptr.56, ptr @ssp_enable_sensor._entry, ptr @ssp_enable_sensor._entry.5, ptr @ssp_enable_sensor._entry_ptr, ptr @ssp_enable_sensor._entry_ptr.7, ptr @ssp_initialize_mcu._entry, ptr @ssp_initialize_mcu._entry.76, ptr @ssp_initialize_mcu._entry.79, ptr @ssp_initialize_mcu._entry.82, ptr @ssp_initialize_mcu._entry.85, ptr @ssp_initialize_mcu._entry_ptr, ptr @ssp_initialize_mcu._entry_ptr.78, ptr @ssp_initialize_mcu._entry_ptr.81, ptr @ssp_initialize_mcu._entry_ptr.84, ptr @ssp_initialize_mcu._entry_ptr.87, ptr @ssp_probe._entry, ptr @ssp_probe._entry.14, ptr @ssp_probe._entry.17, ptr @ssp_probe._entry.32, ptr @ssp_probe._entry.35, ptr @ssp_probe._entry.38, ptr @ssp_probe._entry.41, ptr @ssp_probe._entry_ptr, ptr @ssp_probe._entry_ptr.16, ptr @ssp_probe._entry_ptr.19, ptr @ssp_probe._entry_ptr.34, ptr @ssp_probe._entry_ptr.37, ptr @ssp_probe._entry_ptr.40, ptr @ssp_probe._entry_ptr.43, ptr @ssp_refresh_task._entry, ptr @ssp_refresh_task._entry_ptr, ptr @ssp_remove._entry, ptr @ssp_remove._entry_ptr, ptr @ssp_resume._entry, ptr @ssp_resume._entry_ptr, ptr @ssp_suspend._entry, ptr @ssp_suspend._entry_ptr, ptr @ssp_sync_available_sensors._entry, ptr @ssp_sync_available_sensors._entry.61, ptr @ssp_sync_available_sensors._entry_ptr, ptr @ssp_sync_available_sensors._entry_ptr.63, ptr @ssp_wdt_work_func._entry, ptr @ssp_wdt_work_func._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ssp_driver, ptr @.str.11, ptr @ssp_of_match, ptr @ssp_pm_ops, ptr @.str.12, ptr @.str.13, ptr @sensorhub_sensor_devs, ptr @.str.15, ptr @.str.18, ptr @ssp_probe.__key, ptr @.str.20, ptr @ssp_probe.__key.21, ptr @.str.22, ptr @ssp_probe.__key.23, ptr @.str.24, ptr @ssp_probe.__key.25, ptr @.str.26, ptr @ssp_probe.__key.27, ptr @.str.28, ptr @ssp_probe.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @ssp_rinato_info, ptr @ssp_thermostat_info, ptr @.str.90, ptr @.str.91, ptr @ssp_magnitude_table, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_enable_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_enable_sensor._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_change_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_disable_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensorhub_sensor_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_wdt_work_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_enable_mcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_enable_mcu._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_refresh_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_sync_available_sensors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_sync_available_sensors._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_check_fwbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_check_fwbl._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_check_fwbl._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_initialize_mcu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_initialize_mcu._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_initialize_mcu._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_initialize_mcu._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_initialize_mcu._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_rinato_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_thermostat_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_magnitude_table to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ssp_get_sensor_delay(ptr nocapture noundef readonly %data, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 18, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_enable_sensor(ptr noundef %data, i32 noundef %type, i32 noundef %delay) #1 align 64 {
entry:
  %to_send = alloca %struct.ssp_instruction, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %to_send) #9
  %0 = getelementptr inbounds %struct.ssp_instruction, ptr %to_send, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ssp_instruction, ptr %to_send, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %delay)
  %3 = ptrtoint ptr %to_send to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %to_send, align 4
  %arrayidx = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 19, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 20, i32 %type
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %1, align 4
  %arrayidx2 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 9, i32 %type
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %entry.sw.epilog.sink.split_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge54
    i32 3, label %sw.bb8
  ]

entry.sw.bb_crit_edge54:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge54
  %conv = trunc i32 %type to i8
  %call = call i32 @ssp_send_instruction(ptr noundef %data, i8 noundef zeroext -95, i8 noundef zeroext %conv, ptr noundef nonnull %to_send, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #12
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx2, align 4
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %type
  %sensor_enable = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 17
  %17 = ptrtoint ptr %sensor_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sensor_enable, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %sensor_enable, align 4
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  %conv9 = trunc i32 %type to i8
  %call10 = call i32 @ssp_send_instruction(ptr noundef %data, i8 noundef zeroext -92, i8 noundef zeroext %conv9, ptr noundef nonnull %to_send, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end16:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.6) #12
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.end ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %21 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %arrayidx2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb8.sw.epilog_crit_edge
  %arrayidx22 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 18, i32 %type
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %delay, ptr %arrayidx22, align 4
  %enable_refcount = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 31
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %enable_refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !210
  call void @llvm.prefetch.p0(ptr %enable_refcount, i32 1, i32 3, i32 1) #9
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enable_refcount, ptr %enable_refcount, i32 1, ptr elementtype(i32) %enable_refcount) #9, !srcloc !211
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp24 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp24, label %if.then26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %wdt_timer.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 1000
  %call1.i = call i32 @mod_timer(ptr noundef %wdt_timer.i, i32 noundef %add.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.epilog.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ 0, %if.then26 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %call10, %do.end16 ], [ %call, %do.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %to_send) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_send_instruction(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_change_delay(ptr noundef %data, i32 noundef %type, i32 noundef %delay) #1 align 64 {
entry:
  %to_send = alloca %struct.ssp_instruction, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %to_send) #9
  %0 = getelementptr inbounds %struct.ssp_instruction, ptr %to_send, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ssp_instruction, ptr %to_send, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %delay)
  %3 = ptrtoint ptr %to_send to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %to_send, align 4
  %arrayidx = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 19, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %arrayidx1 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 20, i32 %type
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %1, align 4
  %conv = trunc i32 %type to i8
  %call = call i32 @ssp_send_instruction(ptr noundef %data, i8 noundef zeroext -92, i8 noundef zeroext %conv, ptr noundef nonnull %to_send, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 18, i32 %type
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %delay, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %to_send) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_disable_sensor(ptr noundef %data, i32 noundef %type) #1 align 64 {
entry:
  %command = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command) #9
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %command, align 4, !annotation !213
  %sensor_enable = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 17
  %1 = ptrtoint ptr %sensor_enable to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sensor_enable, align 4
  %shl = shl nuw i32 1, %type
  %and = and i32 %2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 18, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %command, align 4
  %conv = trunc i32 %type to i8
  %call = call i32 @ssp_send_instruction(ptr noundef %data, i8 noundef zeroext -94, i8 noundef zeroext %conv, ptr noundef nonnull %command, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl, -1
  %9 = ptrtoint ptr %sensor_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sensor_enable, align 4
  %and5 = and i32 %10, %neg
  store i32 %and5, ptr %sensor_enable, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %arrayidx7 = getelementptr %struct.ssp_data, ptr %data, i32 0, i32 9, i32 %type
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx7, align 4
  %enable_refcount = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 31
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %enable_refcount, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  call void @llvm.prefetch.p0(ptr %enable_refcount, i32 1, i32 3, i32 1) #9
  %12 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %enable_refcount, ptr %enable_refcount, i32 1, ptr elementtype(i32) %enable_refcount) #9, !srcloc !215
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %wdt_timer.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 2
  %call.i = call i32 @del_timer_sync(ptr noundef %wdt_timer.i) #9
  %work_wdt.i = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 3
  %call1.i = call zeroext i1 @cancel_work_sync(ptr noundef %work_wdt.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssp_queue_ssp_refresh_task(ptr noundef %data, i32 noundef %delay) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_refresh = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_refresh) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_power_efficient_wq, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay) #9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work_refresh, i32 noundef %call2.i) #9
  %conv = zext i1 %call.i to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ssp_register_consumer(ptr noundef %indio_dev, i32 noundef %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssp_data, ptr %5, i32 0, i32 30, i32 %type
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %indio_dev, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_driver_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ssp_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssp_driver_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ssp_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_probe(ptr noundef %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i.i168 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1024, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i168, null
  br i1 %tobool.not.i, label %entry.cleanup.sink.split_crit_edge, label %if.end.i

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.44, i32 noundef 1) #9
  %mcu_ap_gpiod.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 28
  %2 = ptrtoint ptr %mcu_ap_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i, ptr %mcu_ap_gpiod.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end5.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.45, i32 noundef 7) #9
  %ap_mcu_gpiod.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 27
  %3 = ptrtoint ptr %ap_mcu_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6.i, ptr %ap_mcu_gpiod.i, align 16
  %cmp.i38.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38.i, label %if.end5.i.cleanup.sink.split_crit_edge, label %if.end10.i

if.end5.i.cleanup.sink.split_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end10.i:                                       ; preds = %if.end5.i
  %call11.i = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.46, i32 noundef 7) #9
  %mcu_reset_gpiod.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 26
  %4 = ptrtoint ptr %mcu_reset_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11.i, ptr %mcu_reset_gpiod.i, align 4
  %cmp.i39.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39.i, label %if.end10.i.cleanup.sink.split_crit_edge, label %if.end15.i

if.end10.i.cleanup.sink.split_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = tail call ptr @of_match_node(ptr noundef nonnull @ssp_of_match, ptr noundef %1) #9
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.end15.i.cleanup.sink.split_crit_edge, label %if.end

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end15.i
  %data20.i = getelementptr inbounds %struct.of_device_id, ptr %call16.i, i32 0, i32 3
  %5 = ptrtoint ptr %data20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data20.i, align 4
  %sensorhub_info.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 1
  %7 = ptrtoint ptr %sensorhub_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sensorhub_info.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i168, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @mfd_add_devices(ptr noundef %spi, i32 noundef -1, ptr noundef nonnull @sensorhub_sensor_devs, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mode, align 8
  %call10 = tail call i32 @spi_setup(ptr noundef %spi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup.sink.split_crit_edge, label %if.end17

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end9
  %fw_dl_state = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 23
  %10 = ptrtoint ptr %fw_dl_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %fw_dl_state, align 16
  %11 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %call.i.i168, align 128
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i168, ptr %driver_data.i.i, align 4
  %comm_lock = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %comm_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @ssp_probe.__key) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end17
  %i.0180 = phi i32 [ 0, %if.end17 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ssp_data, ptr %call.i.i168, i32 0, i32 18, i32 %i.0180
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 200, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr %struct.ssp_data, ptr %call.i.i168, i32 0, i32 19, i32 %i.0180
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr %struct.ssp_data, ptr %call.i.i168, i32 0, i32 20, i32 %i.0180
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr %struct.ssp_data, ptr %call.i.i168, i32 0, i32 9, i32 %i.0180
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx25, align 4
  %inc = add nuw nsw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx27 = getelementptr %struct.ssp_data, ptr %call.i.i168, i32 0, i32 18, i32 20
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %arrayidx27, align 8
  %time_syncing = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 7
  %18 = ptrtoint ptr %time_syncing to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %time_syncing, align 2
  %pending_lock = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %pending_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @ssp_probe.__key.21) #9
  %pending_list = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 29
  %19 = ptrtoint ptr %pending_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pending_list, ptr %pending_list, align 4
  %prev.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 29, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pending_list, ptr %prev.i, align 4
  %enable_refcount = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enable_refcount, i32 noundef 4) #9
  %21 = ptrtoint ptr %enable_refcount to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %enable_refcount, align 4
  %work_wdt = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work_wdt, i32 noundef 0) #9
  %22 = ptrtoint ptr %work_wdt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work_wdt, align 8
  %lockdep_map = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @ssp_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry36 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i170 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry36, ptr %prev.i170, align 4
  %func = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ssp_wdt_work_func, ptr %func, align 4
  %work_refresh = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work_refresh, i32 noundef 0) #9
  %26 = ptrtoint ptr %work_refresh to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %work_refresh, align 4
  %lockdep_map49 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.26, ptr noundef nonnull @ssp_probe.__key.25, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry52 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %entry52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry52, ptr %entry52, align 4
  %prev.i171 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i171 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry52, ptr %prev.i171, align 4
  %func55 = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4, i32 0, i32 2
  %29 = ptrtoint ptr %func55 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ssp_refresh_task, ptr %func55, align 4
  %timer = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @ssp_probe.__key.27) #9
  %wdt_timer = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %wdt_timer, ptr noundef nonnull @ssp_wdt_timer_func, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @ssp_probe.__key.29) #9
  %30 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i.i168, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call68 = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef null, ptr noundef nonnull @ssp_irq_thread_fn, i32 noundef 8194, ptr noundef nonnull @.str.31, ptr noundef %call.i.i168) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %if.end75

do.end73:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #12
  br label %err_setup_irq

if.end75:                                         ; preds = %for.end
  %shut_down = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 5
  %34 = ptrtoint ptr %shut_down to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %shut_down, align 8
  %35 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i.i168, align 128
  %irq77 = getelementptr inbounds %struct.spi_device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %irq77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq77, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %38, i32 noundef 1) #9
  %cur_firm_rev.i = getelementptr inbounds %struct.ssp_data, ptr %call.i.i168, i32 0, i32 14
  %call.i172 = tail call i32 @ssp_get_firmware_rev(ptr noundef %call.i.i168) #9
  %39 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i172, ptr %cur_firm_rev.i, align 4
  %40 = zext i32 %call.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call.i172, label %if.end75.while.end.i_crit_edge [
    i32 99999, label %if.end75.do.end.i_crit_edge
    i32 16777215, label %if.end75.do.end.i_crit_edge181
  ]

if.end75.do.end.i_crit_edge181:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end75.do.end.i_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end75.while.end.i_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.i:                                         ; preds = %if.end75.do.end.i_crit_edge, %if.end75.do.end.i_crit_edge181
  %41 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.64, i32 noundef 1) #12
  %call.1.i = tail call i32 @ssp_get_firmware_rev(ptr noundef %call.i.i168) #9
  %43 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.1.i, ptr %cur_firm_rev.i, align 4
  %44 = zext i32 %call.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call.1.i, label %do.end.i.while.end.i_crit_edge [
    i32 99999, label %do.end.i.do.end.1.i_crit_edge
    i32 16777215, label %do.end.i.do.end.1.i_crit_edge182
  ]

do.end.i.do.end.1.i_crit_edge182:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.1.i

do.end.i.do.end.1.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.1.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.1.i:                                       ; preds = %do.end.i.do.end.1.i_crit_edge, %do.end.i.do.end.1.i_crit_edge182
  %45 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.64, i32 noundef 2) #12
  %call.2.i = tail call i32 @ssp_get_firmware_rev(ptr noundef %call.i.i168) #9
  %47 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.2.i, ptr %cur_firm_rev.i, align 4
  %48 = zext i32 %call.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call.2.i, label %do.end.1.i.while.end.i_crit_edge [
    i32 99999, label %do.end.1.i.do.end.2.i_crit_edge
    i32 16777215, label %do.end.1.i.do.end.2.i_crit_edge183
  ]

do.end.1.i.do.end.2.i_crit_edge183:               ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.2.i

do.end.1.i.do.end.2.i_crit_edge:                  ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.2.i

do.end.1.i.while.end.i_crit_edge:                 ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.2.i:                                       ; preds = %do.end.1.i.do.end.2.i_crit_edge, %do.end.1.i.do.end.2.i_crit_edge183
  %49 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.64, i32 noundef 3) #12
  %call.3.i = tail call i32 @ssp_get_firmware_rev(ptr noundef %call.i.i168) #9
  %51 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call.3.i, ptr %cur_firm_rev.i, align 4
  %52 = zext i32 %call.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call.3.i, label %do.end.2.i.while.end.i_crit_edge [
    i32 99999, label %do.end.2.i.do.end.3.i_crit_edge
    i32 16777215, label %do.end.2.i.do.end.3.i_crit_edge184
  ]

do.end.2.i.do.end.3.i_crit_edge184:               ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.3.i

do.end.2.i.do.end.3.i_crit_edge:                  ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.3.i

do.end.2.i.while.end.i_crit_edge:                 ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.3.i:                                       ; preds = %do.end.2.i.do.end.3.i_crit_edge, %do.end.2.i.do.end.3.i_crit_edge184
  %53 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.64, i32 noundef 4) #12
  %call.4.i = tail call i32 @ssp_get_firmware_rev(ptr noundef %call.i.i168) #9
  %55 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.4.i, ptr %cur_firm_rev.i, align 4
  %56 = zext i32 %call.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call.4.i, label %do.end.3.i.while.end.i_crit_edge [
    i32 99999, label %do.end.3.i.do.end.4.i_crit_edge
    i32 16777215, label %do.end.3.i.do.end.4.i_crit_edge185
  ]

do.end.3.i.do.end.4.i_crit_edge185:               ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.4.i

do.end.3.i.do.end.4.i_crit_edge:                  ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.4.i

do.end.3.i.while.end.i_crit_edge:                 ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

do.end.4.i:                                       ; preds = %do.end.3.i.do.end.4.i_crit_edge, %do.end.3.i.do.end.4.i_crit_edge185
  %57 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.64, i32 noundef 5) #12
  %59 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr.i = load i32, ptr %cur_firm_rev.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.4.i, %do.end.3.i.while.end.i_crit_edge, %do.end.2.i.while.end.i_crit_edge, %do.end.1.i.while.end.i_crit_edge, %do.end.i.while.end.i_crit_edge, %if.end75.while.end.i_crit_edge
  %60 = phi i32 [ %.pr.i, %do.end.4.i ], [ %call.4.i, %do.end.3.i.while.end.i_crit_edge ], [ %call.3.i, %do.end.2.i.while.end.i_crit_edge ], [ %call.2.i, %do.end.1.i.while.end.i_crit_edge ], [ %call.1.i, %do.end.i.while.end.i_crit_edge ], [ %call.i172, %if.end75.while.end.i_crit_edge ]
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %60, label %ssp_check_fwbl.exit [
    i32 99999, label %while.end.i.ssp_check_fwbl.exit.thread_crit_edge
    i32 16777215, label %while.end.i.ssp_check_fwbl.exit.thread_crit_edge186
  ]

while.end.i.ssp_check_fwbl.exit.thread_crit_edge186: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssp_check_fwbl.exit.thread

while.end.i.ssp_check_fwbl.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssp_check_fwbl.exit.thread

ssp_check_fwbl.exit.thread:                       ; preds = %while.end.i.ssp_check_fwbl.exit.thread_crit_edge, %while.end.i.ssp_check_fwbl.exit.thread_crit_edge186
  %62 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i.i168, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.67) #12
  %64 = ptrtoint ptr %fw_dl_state to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %fw_dl_state, align 16
  br label %err_read_reg

ssp_check_fwbl.exit:                              ; preds = %while.end.i
  %65 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i.i168, align 128
  %67 = ptrtoint ptr %sensorhub_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sensorhub_info.i, align 4
  %fw_rev.i = getelementptr inbounds %struct.ssp_sensorhub_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %fw_rev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_rev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.70, i32 noundef %60, i32 noundef %70) #12
  %71 = ptrtoint ptr %cur_firm_rev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_firm_rev.i, align 4
  %73 = ptrtoint ptr %sensorhub_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sensorhub_info.i, align 4
  %fw_rev25.i = getelementptr inbounds %struct.ssp_sensorhub_info, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %fw_rev25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_rev25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %76)
  %cmp26.not.i = icmp ne i32 %72, %76
  %..i = zext i1 %cmp26.not.i to i32
  %77 = ptrtoint ptr %fw_dl_state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %..i, ptr %fw_dl_state, align 16
  br i1 %cmp26.not.i, label %ssp_check_fwbl.exit.err_read_reg_crit_edge, label %if.then83

ssp_check_fwbl.exit.err_read_reg_crit_edge:       ; preds = %ssp_check_fwbl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_read_reg

if.then83:                                        ; preds = %ssp_check_fwbl.exit
  %call84 = tail call fastcc i32 @ssp_initialize_mcu(ptr noundef %call.i.i168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then83.err_read_reg_crit_edge, label %if.then83.cleanup_crit_edge

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then83.err_read_reg_crit_edge:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_read_reg

err_read_reg:                                     ; preds = %if.then83.err_read_reg_crit_edge, %ssp_check_fwbl.exit.err_read_reg_crit_edge, %ssp_check_fwbl.exit.thread
  %.str.39.sink = phi ptr [ @.str.36, %if.then83.err_read_reg_crit_edge ], [ @.str.39, %ssp_check_fwbl.exit.thread ], [ @.str.39, %ssp_check_fwbl.exit.err_read_reg_crit_edge ]
  %ret.0 = phi i32 [ %call84, %if.then83.err_read_reg_crit_edge ], [ -1, %ssp_check_fwbl.exit.thread ], [ -1, %ssp_check_fwbl.exit.err_read_reg_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.39.sink) #12
  %78 = ptrtoint ptr %call.i.i168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i.i168, align 128
  %irq98 = getelementptr inbounds %struct.spi_device, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %irq98 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq98, align 4
  %call99 = tail call ptr @free_irq(i32 noundef %81, ptr noundef %call.i.i168) #9
  br label %err_setup_irq

err_setup_irq:                                    ; preds = %err_read_reg, %do.end73
  %ret.1 = phi i32 [ %call68, %do.end73 ], [ %ret.0, %err_read_reg ]
  tail call void @mutex_destroy(ptr noundef %pending_lock) #9
  tail call void @mutex_destroy(ptr noundef %comm_lock) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_setup_irq, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.end15.i.cleanup.sink.split_crit_edge, %if.end10.i.cleanup.sink.split_crit_edge, %if.end5.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %err_setup_irq ], [ @.str.12, %entry.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end.i.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end5.i.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end10.i.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end15.i.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end.cleanup.sink.split_crit_edge ], [ @.str.18, %if.end9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %err_setup_irq ], [ -19, %entry.cleanup.sink.split_crit_edge ], [ -19, %if.end.i.cleanup.sink.split_crit_edge ], [ -19, %if.end5.i.cleanup.sink.split_crit_edge ], [ -19, %if.end10.i.cleanup.sink.split_crit_edge ], [ -19, %if.end15.i.cleanup.sink.split_crit_edge ], [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.42.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then83.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then83.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_remove(ptr noundef %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ssp_command(ptr noundef %1, i8 noundef zeroext -48, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.88) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 128
  %shut_down.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %shut_down.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shut_down.i, align 8, !range !217
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %8) #12
  %9 = ptrtoint ptr %shut_down.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shut_down.i, align 8, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not.i = icmp eq i8 %10, 0
  br i1 %tobool6.not.i, label %if.then16.i, label %do.end25.i

if.then16.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %shut_down.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %shut_down.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %irq19.i = getelementptr inbounds %struct.spi_device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq19.i, align 4
  tail call void @disable_irq(i32 noundef %15) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  %irq21.i = getelementptr inbounds %struct.spi_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %irq21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq21.i, align 4
  %call.i48.i = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 0) #9
  br label %ssp_enable_mcu.exit

do.end25.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 128
  %22 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %22) #12
  br label %ssp_enable_mcu.exit

ssp_enable_mcu.exit:                              ; preds = %do.end25.i, %if.then16.i
  %wdt_timer.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %wdt_timer.i) #9
  %work_wdt.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 3
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_wdt.i) #9
  tail call void @ssp_clean_pending_list(ptr noundef %1) #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %26, ptr noundef %1) #9
  %call5 = tail call i32 @del_timer_sync(ptr noundef %wdt_timer.i) #9
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_wdt.i) #9
  %comm_lock = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 24
  tail call void @mutex_destroy(ptr noundef %comm_lock) #9
  %pending_lock = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 25
  tail call void @mutex_destroy(ptr noundef %pending_lock) #9
  tail call void @mfd_remove_devices(ptr noundef %spi) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssp_wdt_work_func(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  %available_sensors = getelementptr i8, ptr %work, i32 256
  %2 = ptrtoint ptr %available_sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available_sensors, align 8
  %reset_cnt = getelementptr i8, ptr %work, i32 248
  %4 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_cnt, align 16
  %com_fail_cnt = getelementptr i8, ptr %work, i32 244
  %6 = ptrtoint ptr %com_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %com_fail_cnt, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %5, i32 noundef %7) #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 128
  %shut_down.i.i = getelementptr i8, ptr %work, i32 144
  %10 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shut_down.i.i, align 8, !range !217
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %12) #12
  %13 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shut_down.i.i, align 8, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool6.not.i.i, label %if.then16.i.i, label %do.end25.i.i

if.then16.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %shut_down.i.i, align 8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 128
  %irq19.i.i = getelementptr inbounds %struct.spi_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %irq19.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq19.i.i, align 4
  tail call void @disable_irq(i32 noundef %19) #9
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 128
  %irq21.i.i = getelementptr inbounds %struct.spi_device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %irq21.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq21.i.i, align 4
  %call.i48.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %23, i32 noundef 0) #9
  br label %ssp_enable_mcu.exit.i

do.end25.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 128
  %26 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %26) #12
  br label %ssp_enable_mcu.exit.i

ssp_enable_mcu.exit.i:                            ; preds = %do.end25.i.i, %if.then16.i.i
  tail call void @ssp_clean_pending_list(ptr noundef %add.ptr) #9
  %mcu_reset_gpiod.i.i = getelementptr i8, ptr %work, i32 660
  %27 = ptrtoint ptr %mcu_reset_gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcu_reset_gpiod.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1200, i32 noundef 2) #9
  %29 = ptrtoint ptr %mcu_reset_gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mcu_reset_gpiod.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 50) #9
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 128
  %33 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shut_down.i.i, align 8, !range !217
  %35 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %35) #12
  %36 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %shut_down.i.i, align 8, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool6.not.i5.i = icmp eq i8 %37, 0
  br i1 %tobool6.not.i5.i, label %do.end25.i6.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ssp_enable_mcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %shut_down.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %shut_down.i.i, align 8
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 128
  %irq.i.i = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i.i, align 4
  tail call void @enable_irq(i32 noundef %42) #9
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 128
  %irq11.i.i = getelementptr inbounds %struct.spi_device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %irq11.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq11.i.i, align 4
  %call.i.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %46, i32 noundef 1) #9
  br label %ssp_reset_mcu.exit

do.end25.i6.i:                                    ; preds = %ssp_enable_mcu.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef 0) #12
  br label %ssp_reset_mcu.exit

ssp_reset_mcu.exit:                               ; preds = %do.end25.i6.i, %if.then.i.i
  %49 = ptrtoint ptr %com_fail_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %com_fail_cnt, align 4
  %timeout_cnt = getelementptr i8, ptr %work, i32 252
  %50 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %timeout_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssp_refresh_task(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.57) #12
  %reset_cnt = getelementptr i8, ptr %work, i32 204
  %2 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_cnt, align 16
  %inc = add i32 %3, 1
  store i32 %inc, ptr %reset_cnt, align 16
  %call = tail call fastcc i32 @ssp_initialize_mcu(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %available_sensors.i = getelementptr i8, ptr %work, i32 212
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.027.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %available_sensors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %available_sensors.i, align 8
  %shl.i = shl nuw nsw i32 1, %i.027.i
  %and.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ssp_data, ptr %add.ptr, i32 0, i32 18, i32 %i.027.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @ssp_enable_sensor(ptr noundef %add.ptr, i32 noundef %i.027.i, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.59, i32 noundef %i.027.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 21
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %mcu_dump_mode.i = getelementptr i8, ptr %work, i32 101
  %10 = ptrtoint ptr %mcu_dump_mode.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mcu_dump_mode.i, align 1, !range !217
  %12 = zext i8 %11 to i32
  %call5.i = tail call i32 @ssp_command(ptr noundef %add.ptr, i8 noundef zeroext -37, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end11.i, label %for.end.i.ssp_sync_available_sensors.exit_crit_edge

for.end.i.ssp_sync_available_sensors.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ssp_sync_available_sensors.exit

do.end11.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.62) #12
  br label %ssp_sync_available_sensors.exit

ssp_sync_available_sensors.exit:                  ; preds = %do.end11.i, %for.end.i.ssp_sync_available_sensors.exit_crit_edge
  %last_ap_state = getelementptr i8, ptr %work, i32 221
  %15 = ptrtoint ptr %last_ap_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_ap_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp1.not = icmp eq i8 %16, 0
  br i1 %cmp1.not, label %ssp_sync_available_sensors.exit.if.end_crit_edge, label %if.then3

ssp_sync_available_sensors.exit.if.end_crit_edge: ; preds = %ssp_sync_available_sensors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %ssp_sync_available_sensors.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @ssp_command(ptr noundef %add.ptr, i8 noundef zeroext %16, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %ssp_sync_available_sensors.exit.if.end_crit_edge
  %last_resume_state = getelementptr i8, ptr %work, i32 220
  %17 = ptrtoint ptr %last_resume_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %last_resume_state, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp7.not = icmp eq i8 %18, 0
  br i1 %cmp7.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @ssp_command(ptr noundef %add.ptr, i8 noundef zeroext %18, i32 noundef 0) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge
  %timeout_cnt = getelementptr i8, ptr %work, i32 208
  %19 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %timeout_cnt, align 4
  %com_fail_cnt = getelementptr i8, ptr %work, i32 200
  %20 = ptrtoint ptr %com_fail_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %com_fail_cnt, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssp_wdt_timer_func(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_dl_state = getelementptr i8, ptr %t, i32 520
  %0 = ptrtoint ptr %fw_dl_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_dl_state, align 16
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %1, label %sw.epilog [
    i32 -1, label %entry._mod_crit_edge
    i32 3, label %entry._mod_crit_edge8
    i32 4, label %entry._mod_crit_edge9
  ]

entry._mod_crit_edge9:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_mod

entry._mod_crit_edge8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_mod

entry._mod_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_mod

sw.epilog:                                        ; preds = %entry
  %timeout_cnt = getelementptr i8, ptr %t, i32 300
  %3 = ptrtoint ptr %timeout_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %sw.epilog.if.then_crit_edge, label %lor.lhs.false

sw.epilog.if.then_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.epilog
  %com_fail_cnt = getelementptr i8, ptr %t, i32 292
  %5 = ptrtoint ptr %com_fail_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %com_fail_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %6)
  %cmp1 = icmp ugt i32 %6, 20
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false._mod_crit_edge

lor.lhs.false._mod_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %_mod

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %7 = load ptr, ptr @system_power_efficient_wq, align 4
  %work_wdt = getelementptr i8, ptr %t, i32 48
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work_wdt) #9
  br label %_mod

_mod:                                             ; preds = %if.then, %lor.lhs.false._mod_crit_edge, %entry._mod_crit_edge, %entry._mod_crit_edge8, %entry._mod_crit_edge9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 1000
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ssp_irq_msg(ptr noundef %dev_id) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssp_initialize_mcu(ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ssp_clean_pending_list(ptr noundef %data) #9
  %call = tail call i32 @ssp_get_chipid(ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %call)
  %cmp.not = icmp eq i32 %call, 85
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  br i1 %cmp.not, label %do.end6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %cond = select i1 %cmp1, ptr @.str.74, ptr @.str.75
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond, i32 noundef %call) #12
  %spec.select = select i1 %cmp1, i32 %call, i32 -19
  br label %cleanup

do.end6:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef 85) #12
  %call9 = tail call i32 @ssp_set_magnetic_matrix(ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.73) #12
  br label %cleanup

if.end17:                                         ; preds = %do.end6
  %call18 = tail call i32 @ssp_get_sensor_scanning_info(ptr noundef %data) #9
  %available_sensors = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %available_sensors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call18, ptr %available_sensors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp eq i32 %call18, 0
  br i1 %cmp20, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.73) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @ssp_get_firmware_rev(ptr noundef %data) #9
  %cur_firm_rev = getelementptr inbounds %struct.ssp_data, ptr %data, i32 0, i32 14
  %7 = ptrtoint ptr %cur_firm_rev to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call28, ptr %cur_firm_rev, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.86, i32 noundef %call28) #12
  %call35 = tail call i32 @ssp_command(ptr noundef %data, i8 noundef zeroext -36, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end24, %do.end14, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %call9, %do.end14 ], [ -5, %do.end24 ], [ %call35, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssp_clean_pending_list(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_command(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_irq_msg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_get_firmware_rev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_get_chipid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_set_magnetic_matrix(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssp_get_sensor_scanning_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %last_resume_state = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %last_resume_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -44, ptr %last_resume_state, align 64
  %enable_refcount = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_refcount, i32 noundef 4) #9
  %3 = ptrtoint ptr %enable_refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %enable_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wdt_timer.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %wdt_timer.i) #9
  %work_wdt.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 3
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_wdt.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @ssp_command(ptr noundef %1, i8 noundef zeroext -44, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94) #12
  %wdt_timer.i18 = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %7, 1000
  %call1.i19 = tail call i32 @mod_timer(ptr noundef %wdt_timer.i18, i32 noundef %add.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %time_syncing = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %time_syncing to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %time_syncing, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #9
  %enable_refcount = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_refcount, i32 noundef 4) #9
  %6 = ptrtoint ptr %enable_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %enable_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wdt_timer.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 1000
  %call1.i = tail call i32 @mod_timer(ptr noundef %wdt_timer.i, i32 noundef %add.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @ssp_command(ptr noundef %1, i8 noundef zeroext -45, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96) #12
  %wdt_timer.i17 = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @del_timer_sync(ptr noundef %wdt_timer.i17) #9
  %work_wdt.i = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 3
  %call1.i18 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_wdt.i) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %last_resume_state = getelementptr inbounds %struct.ssp_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %last_resume_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -45, ptr %last_resume_state, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__ksymtab_ssp_get_sensor_delay, !1, !"__ksymtab_ssp_get_sensor_delay", i1 false, i1 false}
!1 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 207, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 236, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ssp_enable_sensor._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ssp_enable_sensor._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 249, i32 4}
!12 = !{ptr @ssp_enable_sensor._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ssp_enable_sensor._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_ssp_enable_sensor, !15, !"__ksymtab_ssp_enable_sensor", i1 false, i1 false}
!15 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 269, i32 1}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 292, i32 3}
!18 = !{ptr @ssp_change_delay._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ssp_change_delay._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ssp_change_delay, !21, !"__ksymtab_ssp_change_delay", i1 false, i1 false}
!21 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 300, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 323, i32 4}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ssp_disable_sensor._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ssp_disable_sensor._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_ssp_disable_sensor, !28, !"__ksymtab_ssp_disable_sensor", i1 false, i1 false}
!28 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 337, i32 1}
!29 = !{ptr @__ksymtab_ssp_register_consumer, !30, !"__ksymtab_ssp_register_consumer", i1 false, i1 false}
!30 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 493, i32 1}
!31 = !{ptr @__initcall__kmod_sensorhub__234_680_ssp_driver_init6, !32, !"__initcall__kmod_sensorhub__234_680_ssp_driver_init6", i1 false, i1 false}
!32 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 680, i32 1}
!33 = !{ptr @__exitcall_ssp_driver_exit, !32, !"__exitcall_ssp_driver_exit", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description235, !35, !"__UNIQUE_ID_description235", i1 false, i1 false}
!35 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 682, i32 1}
!36 = !{ptr @__UNIQUE_ID_author236, !37, !"__UNIQUE_ID_author236", i1 false, i1 false}
!37 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 683, i32 1}
!38 = !{ptr @__UNIQUE_ID_file237, !39, !"__UNIQUE_ID_file237", i1 false, i1 false}
!39 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 684, i32 1}
!40 = !{ptr @__UNIQUE_ID_license238, !39, !"__UNIQUE_ID_license238", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 676, i32 11}
!43 = !{ptr @ssp_driver, !44, !"ssp_driver", i1 false, i1 false}
!44 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 670, i32 26}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 502, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ssp_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ssp_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 510, i32 3}
!52 = !{ptr @ssp_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ssp_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 517, i32 3}
!56 = !{ptr @ssp_probe._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ssp_probe._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ssp_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 525, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ssp_probe.__key.21, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 538, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ssp_probe.__key.23, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 543, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ssp_probe.__key.25, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 544, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ssp_probe.__key.27, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ssp_probe.__key.29, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 546, i32 2}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 551, i32 8}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 553, i32 3}
!79 = !{ptr @ssp_probe._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ssp_probe._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 567, i32 4}
!83 = !{ptr @ssp_probe._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ssp_probe._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 571, i32 3}
!87 = !{ptr @ssp_probe._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ssp_probe._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 584, i32 2}
!91 = !{ptr @ssp_probe._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ssp_probe._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 451, i32 43}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 455, i32 43}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 459, i32 46}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 54, i32 11}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 57, i32 11}
!103 = !{ptr @sensorhub_sensor_devs, !104, !"sensorhub_sensor_devs", i1 false, i1 false}
!104 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 52, i32 30}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 158, i32 2}
!107 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ssp_wdt_work_func._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ssp_wdt_work_func._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 93, i32 2}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ssp_enable_mcu._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @ssp_enable_mcu._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 105, i32 3}
!118 = !{ptr @ssp_enable_mcu._entry.54, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ssp_enable_mcu._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 402, i32 2}
!122 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ssp_refresh_task._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @ssp_refresh_task._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 77, i32 5}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ssp_sync_available_sensors._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ssp_sync_available_sensors._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 87, i32 3}
!132 = !{ptr @ssp_sync_available_sensors._entry.61, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ssp_sync_available_sensors._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 122, i32 4}
!136 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ssp_check_fwbl._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ssp_check_fwbl._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 131, i32 3}
!141 = !{ptr @ssp_check_fwbl._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ssp_check_fwbl._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 135, i32 2}
!145 = !{ptr @ssp_check_fwbl._entry.69, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ssp_check_fwbl._entry_ptr.71, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 360, i32 3}
!149 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ssp_initialize_mcu._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @ssp_initialize_mcu._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 366, i32 2}
!156 = !{ptr @ssp_initialize_mcu._entry.76, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ssp_initialize_mcu._entry_ptr.78, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 374, i32 3}
!160 = !{ptr @ssp_initialize_mcu._entry.79, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ssp_initialize_mcu._entry_ptr.81, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 381, i32 3}
!164 = !{ptr @ssp_initialize_mcu._entry.82, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @ssp_initialize_mcu._entry_ptr.84, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 387, i32 2}
!168 = !{ptr @ssp_initialize_mcu._entry.85, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ssp_initialize_mcu._entry_ptr.87, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 594, i32 3}
!172 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ssp_remove._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @ssp_remove._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @ssp_of_match, !176, !"ssp_of_match", i1 false, i1 false}
!176 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 429, i32 34}
!177 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 37, i32 13}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 38, i32 21}
!181 = !{ptr @ssp_rinato_info, !182, !"ssp_rinato_info", i1 false, i1 false}
!182 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 36, i32 40}
!183 = !{ptr @ssp_magnitude_table, !184, !"ssp_magnitude_table", i1 false, i1 false}
!184 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 32, i32 17}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 45, i32 13}
!187 = !{ptr @ssp_thermostat_info, !188, !"ssp_thermostat_info", i1 false, i1 false}
!188 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 44, i32 40}
!189 = !{ptr @ssp_pm_ops, !190, !"ssp_pm_ops", i1 false, i1 false}
!190 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 666, i32 32}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 628, i32 3}
!193 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ssp_suspend._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @ssp_suspend._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/iio/common/ssp_sensors/ssp_dev.c", i32 653, i32 3}
!198 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ssp_resume._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @ssp_resume._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{i64 2148589991}
!211 = !{i64 2148505300, i64 2148505332, i64 2148505361, i64 2148505395, i64 2148505426, i64 2148505449}
!212 = !{i64 2148590220}
!213 = !{!"auto-init"}
!214 = !{i64 2148593032}
!215 = !{i64 2148507765, i64 2148507797, i64 2148507826, i64 2148507860, i64 2148507891, i64 2148507914}
!216 = !{i64 2148593261}
!217 = !{i8 0, i8 2}
