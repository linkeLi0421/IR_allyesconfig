; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/edt-ft5x06.c_pt.bc'
source_filename = "../drivers/input/touchscreen/edt-ft5x06.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.edt_ft5x06_attribute = type { %struct.device_attribute, i32, i8, i8, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.edt_i2c_chip_data = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.edt_ft5x06_ts_data = type { ptr, ptr, %struct.touchscreen_properties, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, i8, i32, i32, i32, i32, i32, i32, i32, i32, [23 x i8], %struct.edt_reg_addr, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.edt_reg_addr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_edt_ft5x06__296_1433_edt_ft5x06_ts_driver_init6 = internal global ptr @edt_ft5x06_ts_driver_init, section ".initcall6.init", align 4
@edt_ft5x06_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @edt_ft5x06_ts_probe, ptr @edt_ft5x06_ts_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @edt_ft5x06_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @edt_ft5x06_ts_pm_ops, ptr null, ptr null }, ptr @edt_ft5x06_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_edt_ft5x06_ts_driver_exit = internal global ptr @edt_ft5x06_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [62 x i8] c"edt_ft5x06.author=Simon Budig <simon.budig@kernelconcepts.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [57 x i8] c"edt_ft5x06.description=EDT FT5x06 I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [53 x i8] c"edt_ft5x06.file=drivers/input/touchscreen/edt-ft5x06\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [26 x i8] c"edt_ft5x06.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edt_ft5x06\00", [21 x i8] zeroinitializer }, align 32
@edt_ft5x06_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,edt-ft5206\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft5x06_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,edt-ft5306\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft5x06_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,edt-ft5406\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft5x06_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"edt,edt-ft5506\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft5506_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"evervision,ev-ft5726\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft5506_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"focaltech,ft6236\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edt_ft6236_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @edt_ft5x06_ts_suspend, ptr @edt_ft5x06_ts_resume, ptr @edt_ft5x06_ts_suspend, ptr @edt_ft5x06_ts_resume, ptr @edt_ft5x06_ts_suspend, ptr @edt_ft5x06_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"edt-ft5x06\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @edt_ft5x06_data to i32) }, %struct.i2c_device_id { [20 x i8] c"edt-ft5506\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @edt_ft5506_data to i32) }, %struct.i2c_device_id { [20 x i8] c"ev-ft5726\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @edt_ft5506_data to i32) }, %struct.i2c_device_id { [20 x i8] c"ft6236\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @edt_ft6236_data to i32) }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"edt_ft5x06_ts_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/edt-ft5x06.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"probing for EDT FT5x06 I2C\0A\00", [36 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1090, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate driver data.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr = internal global ptr @edt_ft5x06_ts_probe._entry, section ".printk_index", align 4
@edt_ft5x06_ts_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1098, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid or missing chip data\0A\00", [34 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.9 = internal global ptr @edt_ft5x06_ts_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.13 = internal global ptr @edt_ft5x06_ts_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iovcc\00", [26 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request iovcc regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.17 = internal global ptr @edt_ft5x06_ts_probe._entry.15, section ".printk_index", align 4
@edt_ft5x06_ts_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable iovcc: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.20 = internal global ptr @edt_ft5x06_ts_probe._entry.18, section ".printk_index", align 4
@edt_ft5x06_ts_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable vcc: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.23 = internal global ptr @edt_ft5x06_ts_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 1149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to request GPIO reset pin, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.27 = internal global ptr @edt_ft5x06_ts_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wake\00", [27 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 1158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to request GPIO wake pin, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.31 = internal global ptr @edt_ft5x06_ts_probe._entry.29, section ".printk_index", align 4
@edt_ft5x06_ts_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.34 = internal global ptr @edt_ft5x06_ts_probe._entry.32, section ".printk_index", align 4
@edt_ft5x06_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tsdata->mutex\00", [17 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 1199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"touchscreen probe failed\0A\00", [38 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.38 = internal global ptr @edt_ft5x06_ts_probe._entry.36, section ".printk_index", align 4
@edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.39, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Model \22%s\22, Rev. \22%s\22, %dx%d sensors\0A\00", [58 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 1231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to init MT slots.\0A\00", [38 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.42 = internal global ptr @edt_ft5x06_ts_probe._entry.40, section ".printk_index", align 4
@edt_ft5x06_ts_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.1, ptr @.str.2, i32 1246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to request touchscreen IRQ.\0A\00", [60 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe._entry_ptr.45 = internal global ptr @edt_ft5x06_ts_probe._entry.43, section ".printk_index", align 4
@edt_ft5x06_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @edt_ft5x06_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.46, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"EDT FT5x06 initialized: IRQ %d, WAKE pin %d, Reset pin %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\BB\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EP0\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\A6\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\A8\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EP0%i%i0M09\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EP%i%i0ML00\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GKTW50SCED1R0\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EVERVISION-FT5726NEi\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"generic ft5x06 (%02x)\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"threshold\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gain\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"offset-x\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"offset-y\00", [23 x i8] zeroinitializer }, align 32
@edt_ft5x06_register_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"crc error: 0x%02x expected, got 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edt_ft5x06_register_read\00", [39 x i8] zeroinitializer }, align 32
@edt_ft5x06_register_read._entry_ptr = internal global ptr @edt_ft5x06_register_read._entry, section ".printk_index", align 4
@edt_ft5x06_ts_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.edt_ft5x06_ts_isr = private unnamed_addr constant [18 x i8] c"edt_ft5x06_ts_isr\00", align 1
@edt_ft5x06_ts_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.edt_ft5x06_ts_isr, ptr @.str.2, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to fetch data, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_isr._entry_ptr = internal global ptr @edt_ft5x06_ts_isr._entry, section ".printk_index", align 4
@edt_ft5x06_ts_isr._rs.67 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_isr._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @__func__.edt_ft5x06_ts_isr, ptr @.str.2, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unexpected header: %02x%02x%02x!\0A\00", [62 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_isr._entry_ptr.70 = internal global ptr @edt_ft5x06_ts_isr._entry.68, section ".printk_index", align 4
@edt_ft5x06_ts_check_crc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.edt_ft5x06_ts_check_crc = private unnamed_addr constant [24 x i8] c"edt_ft5x06_ts_check_crc\00", align 1
@edt_ft5x06_ts_check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.edt_ft5x06_ts_check_crc, ptr @.str.2, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_check_crc._entry_ptr = internal global ptr @edt_ft5x06_ts_check_crc._entry, section ".printk_index", align 4
@edt_ft5x06_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @edt_ft5x06_attr_gain, ptr @edt_ft5x06_attr_offset, ptr @edt_ft5x06_attr_offset_x, ptr @edt_ft5x06_attr_offset_y, ptr @edt_ft5x06_attr_threshold, ptr @edt_ft5x06_attr_report_rate, ptr null], [36 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_gain = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 156, i8 0, i8 31, i8 48, i8 -110, i8 65 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_offset = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 160, i8 0, i8 31, i8 49, i8 -109, i8 -1 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_offset_x = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 164, i8 0, i8 80, i8 -1, i8 -1, i8 70 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_offset_y = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 168, i8 0, i8 80, i8 -1, i8 -1, i8 69 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_threshold = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 152, i8 0, i8 -1, i8 0, i8 -128, i8 64 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_attr_report_rate = internal global { %struct.edt_ft5x06_attribute, [56 x i8] } { %struct.edt_ft5x06_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @edt_ft5x06_setting_show, ptr @edt_ft5x06_setting_store }, i32 172, i8 0, i8 -1, i8 8, i8 -1, i8 -1 }, [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_setting_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to fetch attribute %s, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edt_ft5x06_setting_show\00", [40 x i8] zeroinitializer }, align 32
@edt_ft5x06_setting_show._entry_ptr = internal global ptr @edt_ft5x06_setting_show._entry, section ".printk_index", align 4
@edt_ft5x06_setting_show._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 436, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: read (%d) and stored value (%d) differ\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@edt_ft5x06_setting_show._entry_ptr.76 = internal global ptr @edt_ft5x06_setting_show._entry.73, section ".printk_index", align 4
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@edt_ft5x06_setting_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 500, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to update attribute %s, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edt_ft5x06_setting_store\00", [39 x i8] zeroinitializer }, align 32
@edt_ft5x06_setting_store._entry_ptr = internal global ptr @edt_ft5x06_setting_store._entry, section ".printk_index", align 4
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"offset_x\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"offset_y\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"report_rate\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"num_x\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"num_y\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@debugfs_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @debugfs_mode_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw_data\00", [23 x i8] zeroinitializer }, align 32
@debugfs_raw_data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @edt_ft5x06_debugfs_raw_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@edt_ft5x06_factory_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No factory mode support for non-M06 devices\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edt_ft5x06_factory_mode\00", [40 x i8] zeroinitializer }, align 32
@edt_ft5x06_factory_mode._entry_ptr = internal global ptr @edt_ft5x06_factory_mode._entry, section ".printk_index", align 4
@edt_ft5x06_factory_mode._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to switch to factory mode, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@edt_ft5x06_factory_mode._entry_ptr.92 = internal global ptr @edt_ft5x06_factory_mode._entry.90, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@edt_ft5x06_factory_mode._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not in factory mode after %dms.\0A\00", [63 x i8] zeroinitializer }, align 32
@edt_ft5x06_factory_mode._entry_ptr.95 = internal global ptr @edt_ft5x06_factory_mode._entry.93, section ".printk_index", align 4
@edt_ft5x06_work_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to switch to work mode, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edt_ft5x06_work_mode\00", [43 x i8] zeroinitializer }, align 32
@edt_ft5x06_work_mode._entry_ptr = internal global ptr @edt_ft5x06_work_mode._entry, section ".printk_index", align 4
@edt_ft5x06_work_mode._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"not in work mode after %dms.\0A\00", [34 x i8] zeroinitializer }, align 32
@edt_ft5x06_work_mode._entry_ptr.100 = internal global ptr @edt_ft5x06_work_mode._entry.98, section ".printk_index", align 4
@edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"edt_ft5x06_debugfs_raw_data_read\00", [63 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write 0x08 register, error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.103, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read 0x08 register, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.101, ptr @.str.2, ptr @.str.104, i8 0, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"timed out waiting for register to settle\0A\00", [54 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@edt_ft5x06_data = internal constant { %struct.edt_i2c_chip_data, [28 x i8] } { %struct.edt_i2c_chip_data { i32 5 }, [28 x i8] zeroinitializer }, align 32
@edt_ft5506_data = internal constant { %struct.edt_i2c_chip_data, [28 x i8] } { %struct.edt_i2c_chip_data { i32 10 }, [28 x i8] zeroinitializer }, align 32
@edt_ft6236_data = internal constant { %struct.edt_i2c_chip_data, [28 x i8] } { %struct.edt_i2c_chip_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1295, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set hibernate mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"edt_ft5x06_ts_suspend\00", [42 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_suspend._entry_ptr = internal global ptr @edt_ft5x06_ts_suspend._entry, section ".printk_index", align 4
@edt_ft5x06_ts_suspend._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1313, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to disable vcc\0A\00", [41 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_suspend._entry_ptr.112 = internal global ptr @edt_ft5x06_ts_suspend._entry.110, section ".printk_index", align 4
@edt_ft5x06_ts_suspend._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 1316, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to disable iovcc\0A\00", [39 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_suspend._entry_ptr.115 = internal global ptr @edt_ft5x06_ts_suspend._entry.113, section ".printk_index", align 4
@edt_ft5x06_ts_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable iovcc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edt_ft5x06_ts_resume\00", [43 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_resume._entry_ptr = internal global ptr @edt_ft5x06_ts_resume._entry, section ".printk_index", align 4
@edt_ft5x06_ts_resume._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 1358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable vcc\0A\00", [42 x i8] zeroinitializer }, align 32
@edt_ft5x06_ts_resume._entry_ptr.120 = internal global ptr @edt_ft5x06_ts_resume._entry.118, section ".printk_index", align 4
@switch.table.edt_ft5x06_ts_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 128, i32 128, i32 64, i32 128], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.121 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 255, i32 255, i32 255, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.122 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 146, i32 146, i32 65, i32 146], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.123 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 49, i32 147, i32 147, i32 255, i32 147], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.124 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 255, i32 255, i32 255, i32 70, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.125 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 255, i32 255, i32 255, i32 69, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.126 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 51, i32 148, i32 148, i32 255, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_probe.127 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 52, i32 149, i32 149, i32 255, i32 255], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_isr = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\F9\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_isr.128 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 3, i32 3, i32 3, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_isr.129 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 6, i32 6, i32 6, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.edt_ft5x06_ts_isr.130 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 17, i64 53, i64 67, i64 80, i64 87, i64 89, i64 90, i64 112, i64 161]
@__sancov_gen_cov_switch_values.131 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.132 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.134 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"edt_ft5x06_ts_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1421, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1423, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"edt_ft5x06_of_match\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1409, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant [21 x i8] c"edt_ft5x06_ts_pm_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1384, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"edt_ft5x06_ts_id\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1399, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1086, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1090, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1098, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1104, i32 49 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1108, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1113, i32 51 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1117, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1124, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1133, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1145, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1148, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1154, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1157, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1188, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1192, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1199, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1213, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1231, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1246, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"edt_ft5x06_attr_group\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 540, i32 37 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1260, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 836, i32 45 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 845, i32 30 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 858, i32 31 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 885, i32 46 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 892, i32 46 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 909, i32 39 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 914, i32 39 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 918, i32 39 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 922, i32 47 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 928, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 932, i32 6 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 948, i32 40 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 954, i32 40 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 960, i32 40 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 968, i32 40 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 976, i32 40 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 329, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 229, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 238, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 181, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"edt_ft5x06_attrs\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 530, i32 26 }
@___asan_gen_.352 = private unnamed_addr constant [21 x i8] c"edt_ft5x06_attr_gain\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 512, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant [23 x i8] c"edt_ft5x06_attr_offset\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 515, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant [25 x i8] c"edt_ft5x06_attr_offset_x\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [25 x i8] c"edt_ft5x06_attr_offset_y\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [26 x i8] c"edt_ft5x06_attr_threshold\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 524, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant [28 x i8] c"edt_ft5x06_attr_report_rate\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 424, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 434, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 440, i32 36 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 498, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 518, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 521, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 527, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 789, i32 21 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 790, i32 21 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 792, i32 22 }
@___asan_gen_.418 = private unnamed_addr constant [18 x i8] c"debugfs_mode_fops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 794, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"debugfs_raw_data_fops\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 779, i32 37 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 698, i32 1 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 576, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 596, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 611, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 638, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 654, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 725, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 739, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 745, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 230, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 214, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 174, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [16 x i8] c"edt_ft5x06_data\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1387, i32 39 }
@___asan_gen_.490 = private unnamed_addr constant [16 x i8] c"edt_ft5506_data\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1391, i32 39 }
@___asan_gen_.493 = private unnamed_addr constant [16 x i8] c"edt_ft6236_data\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1395, i32 39 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1295, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1313, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1316, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1349, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.530 = private constant [42 x i8] c"../drivers/input/touchscreen/edt-ft5x06.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1358, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant [33 x i8] c"switch.table.edt_ft5x06_ts_probe\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.121\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.122\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.123\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.124\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.125\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.126\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [37 x i8] c"switch.table.edt_ft5x06_ts_probe.127\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [31 x i8] c"switch.table.edt_ft5x06_ts_isr\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [35 x i8] c"switch.table.edt_ft5x06_ts_isr.128\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [35 x i8] c"switch.table.edt_ft5x06_ts_isr.129\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [35 x i8] c"switch.table.edt_ft5x06_ts_isr.130\00", align 1
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_edt_ft5x06_ts_driver_exit, ptr @__initcall__kmod_edt_ft5x06__296_1433_edt_ft5x06_ts_driver_init6, ptr @edt_ft5x06_factory_mode._entry, ptr @edt_ft5x06_factory_mode._entry.90, ptr @edt_ft5x06_factory_mode._entry.93, ptr @edt_ft5x06_factory_mode._entry_ptr, ptr @edt_ft5x06_factory_mode._entry_ptr.92, ptr @edt_ft5x06_factory_mode._entry_ptr.95, ptr @edt_ft5x06_register_read._entry, ptr @edt_ft5x06_register_read._entry_ptr, ptr @edt_ft5x06_setting_show._entry, ptr @edt_ft5x06_setting_show._entry.73, ptr @edt_ft5x06_setting_show._entry_ptr, ptr @edt_ft5x06_setting_show._entry_ptr.76, ptr @edt_ft5x06_setting_store._entry, ptr @edt_ft5x06_setting_store._entry_ptr, ptr @edt_ft5x06_ts_check_crc._entry, ptr @edt_ft5x06_ts_check_crc._entry_ptr, ptr @edt_ft5x06_ts_driver_exit, ptr @edt_ft5x06_ts_isr._entry, ptr @edt_ft5x06_ts_isr._entry.68, ptr @edt_ft5x06_ts_isr._entry_ptr, ptr @edt_ft5x06_ts_isr._entry_ptr.70, ptr @edt_ft5x06_ts_probe._entry, ptr @edt_ft5x06_ts_probe._entry.11, ptr @edt_ft5x06_ts_probe._entry.15, ptr @edt_ft5x06_ts_probe._entry.18, ptr @edt_ft5x06_ts_probe._entry.21, ptr @edt_ft5x06_ts_probe._entry.25, ptr @edt_ft5x06_ts_probe._entry.29, ptr @edt_ft5x06_ts_probe._entry.32, ptr @edt_ft5x06_ts_probe._entry.36, ptr @edt_ft5x06_ts_probe._entry.40, ptr @edt_ft5x06_ts_probe._entry.43, ptr @edt_ft5x06_ts_probe._entry.7, ptr @edt_ft5x06_ts_probe._entry_ptr, ptr @edt_ft5x06_ts_probe._entry_ptr.13, ptr @edt_ft5x06_ts_probe._entry_ptr.17, ptr @edt_ft5x06_ts_probe._entry_ptr.20, ptr @edt_ft5x06_ts_probe._entry_ptr.23, ptr @edt_ft5x06_ts_probe._entry_ptr.27, ptr @edt_ft5x06_ts_probe._entry_ptr.31, ptr @edt_ft5x06_ts_probe._entry_ptr.34, ptr @edt_ft5x06_ts_probe._entry_ptr.38, ptr @edt_ft5x06_ts_probe._entry_ptr.42, ptr @edt_ft5x06_ts_probe._entry_ptr.45, ptr @edt_ft5x06_ts_probe._entry_ptr.9, ptr @edt_ft5x06_ts_resume._entry, ptr @edt_ft5x06_ts_resume._entry.118, ptr @edt_ft5x06_ts_resume._entry_ptr, ptr @edt_ft5x06_ts_resume._entry_ptr.120, ptr @edt_ft5x06_ts_suspend._entry, ptr @edt_ft5x06_ts_suspend._entry.110, ptr @edt_ft5x06_ts_suspend._entry.113, ptr @edt_ft5x06_ts_suspend._entry_ptr, ptr @edt_ft5x06_ts_suspend._entry_ptr.112, ptr @edt_ft5x06_ts_suspend._entry_ptr.115, ptr @edt_ft5x06_work_mode._entry, ptr @edt_ft5x06_work_mode._entry.98, ptr @edt_ft5x06_work_mode._entry_ptr, ptr @edt_ft5x06_work_mode._entry_ptr.100, ptr @edt_ft5x06_ts_driver, ptr @.str, ptr @edt_ft5x06_of_match, ptr @edt_ft5x06_ts_pm_ops, ptr @edt_ft5x06_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @edt_ft5x06_ts_probe.__key, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @edt_ft5x06_attr_group, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @edt_ft5x06_ts_isr._rs, ptr @.str.65, ptr @.str.66, ptr @edt_ft5x06_ts_isr._rs.67, ptr @.str.69, ptr @edt_ft5x06_ts_check_crc._rs, ptr @edt_ft5x06_attrs, ptr @edt_ft5x06_attr_gain, ptr @edt_ft5x06_attr_offset, ptr @edt_ft5x06_attr_offset_x, ptr @edt_ft5x06_attr_offset_y, ptr @edt_ft5x06_attr_threshold, ptr @edt_ft5x06_attr_report_rate, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @debugfs_mode_fops, ptr @.str.86, ptr @debugfs_raw_data_fops, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @edt_ft5x06_data, ptr @edt_ft5506_data, ptr @edt_ft6236_data, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @switch.table.edt_ft5x06_ts_probe, ptr @switch.table.edt_ft5x06_ts_probe.121, ptr @switch.table.edt_ft5x06_ts_probe.122, ptr @switch.table.edt_ft5x06_ts_probe.123, ptr @switch.table.edt_ft5x06_ts_probe.124, ptr @switch.table.edt_ft5x06_ts_probe.125, ptr @switch.table.edt_ft5x06_ts_probe.126, ptr @switch.table.edt_ft5x06_ts_probe.127, ptr @switch.table.edt_ft5x06_ts_isr, ptr @switch.table.edt_ft5x06_ts_isr.128, ptr @switch.table.edt_ft5x06_ts_isr.129, ptr @switch.table.edt_ft5x06_ts_isr.130], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_register_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_isr._rs.67 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_isr._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_check_crc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_gain to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_offset to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_offset_x to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_offset_y to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_threshold to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_attr_report_rate to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_setting_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_setting_show._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_setting_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_raw_data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_factory_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_factory_mode._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_factory_mode._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_work_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_work_mode._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5506_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft6236_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_suspend._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_suspend._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edt_ft5x06_ts_resume._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_probe.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_isr to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_isr.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_isr.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.edt_ft5x06_ts_isr.130 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @edt_ft5x06_ts_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @edt_ft5x06_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @edt_ft5x06_ts_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %wrmsg.i = alloca [2 x %struct.i2c_msg], align 4
  %wrmsg.i148.i = alloca [2 x %struct.i2c_msg], align 4
  %wrmsg.i133.i = alloca [2 x %struct.i2c_msg], align 4
  %wrmsg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %rdbuf.i = alloca [23 x i8], align 1
  %buf = alloca [2 x i8], align 2
  %fw_version = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #12
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1024, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %fw_version) #12
  %1 = call ptr @memset(ptr %fw_version, i32 255, i32 23)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_ts_probe, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !271

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 240, i32 noundef 3520) #12
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call13 = tail call ptr @device_get_match_data(ptr noundef %dev3) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end16, label %if.end11.lor.lhs.false_crit_edge

if.end11.lor.lhs.false_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end16:                                         ; preds = %if.end11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool17.not = icmp eq i32 %3, 0
  br i1 %tobool17.not, label %if.end16.do.end22_crit_edge, label %if.end16.lor.lhs.false_crit_edge

if.end16.lor.lhs.false_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end16.do.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

lor.lhs.false:                                    ; preds = %if.end16.lor.lhs.false_crit_edge, %if.end11.lor.lhs.false_crit_edge
  %chip_data.0440 = phi ptr [ %4, %if.end16.lor.lhs.false_crit_edge ], [ %call13, %if.end11.lor.lhs.false_crit_edge ]
  %5 = ptrtoint ptr %chip_data.0440 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_data.0440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %lor.lhs.false.do.end22_crit_edge, label %if.end24

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false.do.end22_crit_edge, %if.end16.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %max_support_points26 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 21
  %7 = ptrtoint ptr %max_support_points26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %max_support_points26, align 4
  %call28 = tail call ptr @devm_regulator_get(ptr noundef %dev3, ptr noundef nonnull @.str.10) #12
  %vcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end40

if.then31:                                        ; preds = %if.end24
  %cmp.not = icmp eq ptr %call28, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then31.cleanup_crit_edge, label %do.end37

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.12, i32 noundef %9) #15
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  %call42 = tail call ptr @devm_regulator_get(ptr noundef %dev3, ptr noundef nonnull @.str.14) #12
  %iovcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %iovcc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call42, ptr %iovcc, align 4
  %cmp.i391 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i391, label %if.then45, label %if.end55

if.then45:                                        ; preds = %if.end40
  %cmp48.not = icmp eq ptr %call42, inttoptr (i32 -517 to ptr)
  br i1 %cmp48.not, label %if.then45.cleanup_crit_edge, label %do.end52

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %11) #15
  br label %cleanup

if.end55:                                         ; preds = %if.end40
  %call57 = tail call i32 @regulator_enable(ptr noundef %call42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19, i32 noundef %call57) #15
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #12
  %12 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc, align 4
  %call66 = tail call i32 @regulator_enable(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end75

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.22, i32 noundef %call66) #15
  %14 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iovcc, align 4
  %call74 = tail call i32 @regulator_disable(ptr noundef %15) #12
  br label %cleanup

if.end75:                                         ; preds = %if.end64
  %call.i392 = tail call i32 @devm_add_action(ptr noundef %dev3, ptr noundef nonnull @edt_ft5x06_disable_regulators, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %tobool.not.i = icmp eq i32 %call.i392, 0
  br i1 %tobool.not.i, label %if.end80, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vcc, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %17) #12
  %18 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iovcc, align 4
  %call1.i.i = tail call i32 @regulator_disable(ptr noundef %19) #12
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %call82 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef 7) #12
  %reset_gpio = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call82, ptr %reset_gpio, align 4
  %cmp.i393 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %if.then85, label %if.end92

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call82 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.26, i32 noundef %21) #15
  br label %cleanup

if.end92:                                         ; preds = %if.end80
  %call94 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev3, ptr noundef nonnull @.str.28, i32 noundef 3) #12
  %wake_gpio = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call94, ptr %wake_gpio, align 4
  %cmp.i394 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i394, label %if.then97, label %if.end104

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %call94 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.30, i32 noundef %23) #15
  br label %cleanup

if.end104:                                        ; preds = %if.end92
  %24 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reset_gpio, align 4
  %tobool106.not = icmp eq ptr %25, null
  br i1 %tobool106.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %suspend_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %suspend_mode, align 4
  br label %if.end115

if.else:                                          ; preds = %if.end104
  %tobool109.not = icmp eq ptr %call94, null
  %suspend_mode113 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 14
  br i1 %tobool109.not, label %if.else112, label %if.then110

if.then110:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %suspend_mode113 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %suspend_mode113, align 4
  br label %if.end115

if.else112:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %suspend_mode113 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %suspend_mode113, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.else112, %if.then110, %if.then107
  %29 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wake_gpio, align 4
  %tobool117.not = icmp eq ptr %30, null
  br i1 %tobool117.not, label %if.end115.if.end120_crit_edge, label %if.then118

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %31 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wake_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %32, i32 noundef 1) #12
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end115.if.end120_crit_edge
  %33 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reset_gpio, align 4
  %tobool122.not = icmp eq ptr %34, null
  br i1 %tobool122.not, label %if.end120.if.end125_crit_edge, label %if.then123

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %35 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %36, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 300) #12
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.end120.if.end125_crit_edge
  %call127 = tail call ptr @devm_input_allocate_device(ptr noundef %dev3) #12
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %do.end132, label %do.body135

do.end132:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.33) #15
  br label %cleanup

do.body135:                                       ; preds = %if.end125
  %mutex = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @edt_ft5x06_ts_probe.__key) #12
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %client, ptr %call.i, align 4
  %input139 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %input139 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call127, ptr %input139, align 4
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 13
  %39 = ptrtoint ptr %factory_mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %factory_mode, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %rdbuf.i) #12
  %40 = getelementptr inbounds [23 x i8], ptr %rdbuf.i, i32 0, i32 1
  %41 = getelementptr inbounds [23 x i8], ptr %rdbuf.i, i32 0, i32 20
  %42 = getelementptr inbounds [23 x i8], ptr %rdbuf.i, i32 0, i32 21
  %43 = getelementptr inbounds [23 x i8], ptr %rdbuf.i, i32 0, i32 22
  %name.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 22
  %44 = call ptr @memset(ptr %rdbuf.i, i32 0, i32 23)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i.i) #12
  %45 = getelementptr inbounds i8, ptr %wrmsg.i.i, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr.i.i, align 2
  %49 = ptrtoint ptr %wrmsg.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %wrmsg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i, align 2
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %45, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.47, ptr %buf.i.i, align 4
  %arrayidx8.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %48, ptr %arrayidx8.i.i, align 4
  %flags11.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %flags11.i.i, align 2
  %len13.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i.i, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %len13.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 22, ptr %len13.i.i, align 4
  %buf15.i.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i.i, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rdbuf.i, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %57 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i395 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %wrmsg.i.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i395)
  %cmp.i.i = icmp slt i32 %call.i.i395, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i395)
  %cmp20.not.i.i = icmp eq i32 %call.i.i395, 2
  %..i.i = select i1 %cmp20.not.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i395, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i396 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i396, label %if.end.i, label %do.body135.do.end145_crit_edge

do.body135.do.end145_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.end.i:                                         ; preds = %do.body135
  %call4.i = call i32 @strncasecmp(ptr noundef %40, ptr noundef nonnull @.str.48, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 24
  %59 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %version.i, align 4
  %60 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %43, align 1
  %61 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %62)
  %cmp.i397 = icmp eq i8 %62, 36
  br i1 %cmp.i397, label %if.then9.i, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %42, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then6.i.if.end11.i_crit_edge
  %call13.i = call ptr @strchr(ptr noundef nonnull %rdbuf.i, i32 noundef 42) #12
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then15.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i = getelementptr i8, ptr %call13.i, i32 1
  %64 = ptrtoint ptr %call13.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %call13.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end16.i_crit_edge
  %p.0.i = phi ptr [ %incdec.ptr.i, %if.then15.i ], [ null, %if.end11.i.if.end16.i_crit_edge ]
  %call19.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %40, i32 noundef 23) #12
  %tobool20.not.i = icmp eq ptr %p.0.i, null
  %spec.select.i = select i1 %tobool20.not.i, ptr @.str.49, ptr %p.0.i
  %call21.i = call i32 @strlcpy(ptr noundef nonnull %fw_version, ptr noundef nonnull %spec.select.i, i32 noundef 23) #12
  br label %if.end147

if.else.i:                                        ; preds = %if.end.i
  %call23.i = call i32 @strncasecmp(ptr noundef nonnull %rdbuf.i, ptr noundef nonnull @.str.48, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %version26.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 24
  br i1 %tobool24.not.i, label %if.then25.i, label %if.else49.i

if.then25.i:                                      ; preds = %if.else.i
  %65 = ptrtoint ptr %version26.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %version26.i, align 4
  %66 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %42, align 1
  %67 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %68)
  %cmp30.i = icmp eq i8 %68, 36
  br i1 %cmp30.i, label %if.then32.i, label %if.then25.i.if.end34.i_crit_edge

if.then25.i.if.end34.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %41, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.then25.i.if.end34.i_crit_edge
  %call36.i = call ptr @strchr(ptr noundef nonnull %rdbuf.i, i32 noundef 42) #12
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end34.i.if.end40.i_crit_edge, label %if.then38.i

if.end34.i.if.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr39.i = getelementptr i8, ptr %call36.i, i32 1
  %70 = ptrtoint ptr %call36.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %call36.i, align 1
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end34.i.if.end40.i_crit_edge
  %p.1.i = phi ptr [ %incdec.ptr39.i, %if.then38.i ], [ null, %if.end34.i.if.end40.i_crit_edge ]
  %call42.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull %rdbuf.i, i32 noundef 23) #12
  %tobool43.not.i = icmp eq ptr %p.1.i, null
  %spec.select132.i = select i1 %tobool43.not.i, ptr @.str.49, ptr %p.1.i
  %call48.i = call i32 @strlcpy(ptr noundef nonnull %fw_version, ptr noundef nonnull %spec.select132.i, i32 noundef 23) #12
  br label %if.end147

if.else49.i:                                      ; preds = %if.else.i
  %71 = ptrtoint ptr %version26.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %version26.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i133.i) #12
  %72 = getelementptr inbounds i8, ptr %wrmsg.i133.i, i32 4
  %73 = call ptr @memset(ptr %72, i32 255, i32 16)
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr.i.i, align 2
  %76 = ptrtoint ptr %wrmsg.i133.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %wrmsg.i133.i, align 4
  %flags.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i133.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i135.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i135.i, align 2
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %72, align 4
  %buf.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i133.i, i32 0, i32 3
  %79 = ptrtoint ptr %buf.i137.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.50, ptr %buf.i137.i, align 4
  %arrayidx8.i138.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i133.i, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx8.i138.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %75, ptr %arrayidx8.i138.i, align 4
  %flags11.i139.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i133.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %flags11.i139.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %flags11.i139.i, align 2
  %len13.i140.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i133.i, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %len13.i140.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 2, ptr %len13.i140.i, align 4
  %buf15.i141.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i133.i, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %buf15.i141.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %rdbuf.i, ptr %buf15.i141.i, align 4
  %84 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adapter.i.i, align 8
  %call.i143.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %wrmsg.i133.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %cmp.i144.i = icmp slt i32 %call.i143.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i143.i)
  %cmp20.not.i145.i = icmp eq i32 %call.i143.i, 2
  %..i146.i = select i1 %cmp20.not.i145.i, i32 0, i32 -5
  %retval.0.i147.i = select i1 %cmp.i144.i, i32 %call.i143.i, i32 %..i146.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i133.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i147.i)
  %tobool53.not.i = icmp eq i32 %retval.0.i147.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.else49.i.do.end145_crit_edge

if.else49.i.do.end145_crit_edge:                  ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.end55.i:                                       ; preds = %if.else49.i
  %call57.i = call i32 @strlcpy(ptr noundef nonnull %fw_version, ptr noundef nonnull %rdbuf.i, i32 noundef 2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i148.i) #12
  %86 = getelementptr inbounds i8, ptr %wrmsg.i148.i, i32 4
  %87 = call ptr @memset(ptr %86, i32 255, i32 16)
  %88 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %addr.i.i, align 2
  %90 = ptrtoint ptr %wrmsg.i148.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %wrmsg.i148.i, align 4
  %flags.i150.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i148.i, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i150.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i150.i, align 2
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %86, align 4
  %buf.i152.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i148.i, i32 0, i32 3
  %93 = ptrtoint ptr %buf.i152.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @.str.51, ptr %buf.i152.i, align 4
  %arrayidx8.i153.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i148.i, i32 0, i32 1
  %94 = ptrtoint ptr %arrayidx8.i153.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %89, ptr %arrayidx8.i153.i, align 4
  %flags11.i154.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i148.i, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %flags11.i154.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %flags11.i154.i, align 2
  %len13.i155.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i148.i, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %len13.i155.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %len13.i155.i, align 4
  %buf15.i156.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i148.i, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %buf15.i156.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %rdbuf.i, ptr %buf15.i156.i, align 4
  %98 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter.i.i, align 8
  %call.i158.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %wrmsg.i148.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %cmp.i159.i = icmp slt i32 %call.i158.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i158.i)
  %cmp20.not.i160.i = icmp eq i32 %call.i158.i, 2
  %..i161.i = select i1 %cmp20.not.i160.i, i32 0, i32 -5
  %retval.0.i162.i = select i1 %cmp.i159.i, i32 %call.i158.i, i32 %..i161.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i148.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i162.i)
  %tobool60.not.i = icmp eq i32 %retval.0.i162.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end55.i.do.end145_crit_edge

if.end55.i.do.end145_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.end62.i:                                       ; preds = %if.end55.i
  %100 = ptrtoint ptr %rdbuf.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rdbuf.i, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i8 %101, label %sw.default.i [
    i8 17, label %if.end62.i.sw.bb.i_crit_edge
    i8 53, label %if.end62.i.sw.bb.i_crit_edge462
    i8 67, label %if.end62.i.sw.bb.i_crit_edge463
    i8 80, label %if.end62.i.sw.bb.i_crit_edge464
    i8 87, label %if.end62.i.sw.bb.i_crit_edge465
    i8 112, label %if.end62.i.sw.bb.i_crit_edge466
    i8 -95, label %sw.bb71.i
    i8 90, label %sw.bb80.i
    i8 89, label %sw.bb82.i
  ]

if.end62.i.sw.bb.i_crit_edge466:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge465:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge464:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge463:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge462:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end62.i.sw.bb.i_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end62.i.sw.bb.i_crit_edge, %if.end62.i.sw.bb.i_crit_edge462, %if.end62.i.sw.bb.i_crit_edge463, %if.end62.i.sw.bb.i_crit_edge464, %if.end62.i.sw.bb.i_crit_edge465, %if.end62.i.sw.bb.i_crit_edge466
  %103 = ptrtoint ptr %version26.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %version26.i, align 4
  %conv67.i = zext i8 %101 to i32
  %104 = lshr i32 %conv67.i, 4
  %and.i = and i32 %conv67.i, 15
  %call70.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 23, ptr noundef nonnull @.str.52, i32 noundef %104, i32 noundef %and.i) #12
  br label %if.end147

sw.bb71.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %version26.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %version26.i, align 4
  %call79.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 23, ptr noundef nonnull @.str.53, i32 noundef 10, i32 noundef 1) #12
  br label %if.end147

sw.bb80.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = call ptr @memcpy(ptr %name.i, ptr @.str.54, i32 14)
  br label %if.end147

sw.bb82.i:                                        ; preds = %if.end62.i
  %107 = ptrtoint ptr %version26.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %version26.i, align 4
  %call85.i = call fastcc i32 @edt_ft5x06_ts_readwrite(ptr noundef %client, i16 noundef zeroext 1, ptr noundef nonnull @.str.55, i16 noundef zeroext 1, ptr noundef nonnull %rdbuf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end88.i, label %sw.bb82.i.do.end145_crit_edge

sw.bb82.i.do.end145_crit_edge:                    ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end145

if.end88.i:                                       ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #14
  %call90.i = call i32 @strlcpy(ptr noundef nonnull %fw_version, ptr noundef nonnull %rdbuf.i, i32 noundef 1) #12
  %108 = call ptr @memcpy(ptr %name.i, ptr @.str.56, i32 21)
  br label %if.end147

sw.default.i:                                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv64.i = zext i8 %101 to i32
  %call94.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 23, ptr noundef nonnull @.str.57, i32 noundef %conv64.i) #12
  br label %if.end147

do.end145:                                        ; preds = %sw.bb82.i.do.end145_crit_edge, %if.end55.i.do.end145_crit_edge, %if.else49.i.do.end145_crit_edge, %do.body135.do.end145_crit_edge
  %retval.0.i398 = phi i32 [ %retval.0.i.i, %do.body135.do.end145_crit_edge ], [ %retval.0.i147.i, %if.else49.i.do.end145_crit_edge ], [ %retval.0.i162.i, %if.end55.i.do.end145_crit_edge ], [ %call85.i, %sw.bb82.i.do.end145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %rdbuf.i) #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.37) #15
  br label %cleanup

if.end147:                                        ; preds = %sw.default.i, %if.end88.i, %sw.bb80.i, %sw.bb71.i, %sw.bb.i, %if.end40.i, %if.end16.i
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %rdbuf.i) #12
  %109 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %111 = getelementptr inbounds i8, ptr %wrmsg.i, i32 4
  %112 = call ptr @memset(ptr %111, i32 255, i32 20)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %addr.i, align 2
  %115 = ptrtoint ptr %wrmsg.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %114, ptr %wrmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i, align 2
  %117 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 2, ptr %111, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 3
  %118 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %buf, ptr %buf.i, align 4
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1
  %119 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %114, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %flags11.i, align 2
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 2
  %121 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 2, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 3
  %122 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %110, i32 0, i32 3
  %123 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %adapter.i, align 8
  %call.i400 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %wrmsg.i, i32 noundef 2) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %reg_addr1.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23
  %version.i403 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 24
  %125 = ptrtoint ptr %version.i403 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %version.i403, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %126)
  %127 = icmp ult i32 %126, 5
  br i1 %127, label %switch.lookup, label %if.end147.edt_ft5x06_ts_set_regs.exit_crit_edge

if.end147.edt_ft5x06_ts_set_regs.exit_crit_edge:  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %edt_ft5x06_ts_set_regs.exit

switch.lookup:                                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe, i32 0, i32 %126
  %128 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %128)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep448 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.121, i32 0, i32 %126
  %129 = ptrtoint ptr %switch.gep448 to i32
  call void @__asan_load4_noabort(i32 %129)
  %switch.load449 = load i32, ptr %switch.gep448, align 4
  %switch.gep450 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.122, i32 0, i32 %126
  %130 = ptrtoint ptr %switch.gep450 to i32
  call void @__asan_load4_noabort(i32 %130)
  %switch.load451 = load i32, ptr %switch.gep450, align 4
  %switch.gep452 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.123, i32 0, i32 %126
  %131 = ptrtoint ptr %switch.gep452 to i32
  call void @__asan_load4_noabort(i32 %131)
  %switch.load453 = load i32, ptr %switch.gep452, align 4
  %switch.gep454 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.124, i32 0, i32 %126
  %132 = ptrtoint ptr %switch.gep454 to i32
  call void @__asan_load4_noabort(i32 %132)
  %switch.load455 = load i32, ptr %switch.gep454, align 4
  %switch.gep456 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.125, i32 0, i32 %126
  %133 = ptrtoint ptr %switch.gep456 to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load457 = load i32, ptr %switch.gep456, align 4
  %switch.gep458 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.126, i32 0, i32 %126
  %134 = ptrtoint ptr %switch.gep458 to i32
  call void @__asan_load4_noabort(i32 %134)
  %switch.load459 = load i32, ptr %switch.gep458, align 4
  %switch.gep460 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_probe.127, i32 0, i32 %126
  %135 = ptrtoint ptr %switch.gep460 to i32
  call void @__asan_load4_noabort(i32 %135)
  %switch.load461 = load i32, ptr %switch.gep460, align 4
  %136 = ptrtoint ptr %reg_addr1.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %switch.load, ptr %reg_addr1.i, align 4
  %reg_report_rate22.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 1
  %137 = ptrtoint ptr %reg_report_rate22.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %switch.load449, ptr %reg_report_rate22.i, align 4
  %reg_gain23.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 2
  %138 = ptrtoint ptr %reg_gain23.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %switch.load451, ptr %reg_gain23.i, align 4
  %reg_offset24.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 3
  %139 = ptrtoint ptr %reg_offset24.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %switch.load453, ptr %reg_offset24.i, align 4
  %reg_offset_x25.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 4
  %140 = ptrtoint ptr %reg_offset_x25.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %switch.load455, ptr %reg_offset_x25.i, align 4
  %reg_offset_y26.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 5
  %141 = ptrtoint ptr %reg_offset_y26.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %switch.load457, ptr %reg_offset_y26.i, align 4
  %reg_num_x27.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 6
  %142 = ptrtoint ptr %reg_num_x27.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %switch.load459, ptr %reg_num_x27.i, align 4
  %reg_num_y28.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 7
  %143 = ptrtoint ptr %reg_num_y28.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %switch.load461, ptr %reg_num_y28.i, align 4
  br label %edt_ft5x06_ts_set_regs.exit

edt_ft5x06_ts_set_regs.exit:                      ; preds = %switch.lookup, %if.end147.edt_ft5x06_ts_set_regs.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %144 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %val.i, align 4, !annotation !272
  %call.i.i404 = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.58, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i404)
  %tobool.not.i405 = icmp eq i32 %call.i.i404, 0
  br i1 %tobool.not.i405, label %if.then.i407, label %edt_ft5x06_ts_set_regs.exit.if.end.i409_crit_edge

edt_ft5x06_ts_set_regs.exit.if.end.i409_crit_edge: ; preds = %edt_ft5x06_ts_set_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i409

if.then.i407:                                     ; preds = %edt_ft5x06_ts_set_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %reg_addr1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reg_addr1.i, align 4
  %conv.i = trunc i32 %146 to i8
  %147 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %148 to i8
  %call3.i = call fastcc i32 @edt_ft5x06_register_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv2.i) #12
  %149 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i, align 4
  %threshold.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 15
  %151 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %threshold.i, align 4
  br label %if.end.i409

if.end.i409:                                      ; preds = %if.then.i407, %edt_ft5x06_ts_set_regs.exit.if.end.i409_crit_edge
  %call.i73.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.59, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool5.not.i408 = icmp eq i32 %call.i73.i, 0
  br i1 %tobool5.not.i408, label %if.then6.i410, label %if.end.i409.if.end10.i_crit_edge

if.end.i409.if.end10.i_crit_edge:                 ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then6.i410:                                    ; preds = %if.end.i409
  call void @__sanitizer_cov_trace_pc() #14
  %reg_gain.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 2
  %152 = ptrtoint ptr %reg_gain.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %reg_gain.i, align 4
  %conv7.i = trunc i32 %153 to i8
  %154 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val.i, align 4
  %conv8.i = trunc i32 %155 to i8
  %call9.i = call fastcc i32 @edt_ft5x06_register_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv7.i, i8 noundef zeroext %conv8.i) #12
  %156 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val.i, align 4
  %gain.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 16
  %158 = ptrtoint ptr %gain.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %gain.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i410, %if.end.i409.if.end10.i_crit_edge
  %call.i74.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.60, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool12.not.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end21.i_crit_edge

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end10.i
  %reg_offset.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 3
  %159 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %reg_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %160)
  %cmp.not.i = icmp eq i32 %160, 255
  br i1 %cmp.not.i, label %if.then13.i.if.end20.i_crit_edge, label %if.then15.i412

if.then13.i.if.end20.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then15.i412:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv17.i = trunc i32 %160 to i8
  %161 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %val.i, align 4
  %conv18.i = trunc i32 %162 to i8
  %call19.i411 = call fastcc i32 @edt_ft5x06_register_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv17.i, i8 noundef zeroext %conv18.i) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i412, %if.then13.i.if.end20.i_crit_edge
  %163 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %val.i, align 4
  %offset.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 17
  %165 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %offset.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end20.i, %if.end10.i.if.end21.i_crit_edge
  %call.i75.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.61, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool23.not.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end21.i.if.end33.i_crit_edge

if.end21.i.if.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then24.i:                                      ; preds = %if.end21.i
  %reg_offset_x.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 4
  %166 = ptrtoint ptr %reg_offset_x.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %reg_offset_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %167)
  %cmp25.not.i = icmp eq i32 %167, 255
  br i1 %cmp25.not.i, label %if.then24.i.if.end32.i_crit_edge, label %if.then27.i

if.then24.i.if.end32.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv29.i = trunc i32 %167 to i8
  %168 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %val.i, align 4
  %conv30.i = trunc i32 %169 to i8
  %call31.i = call fastcc i32 @edt_ft5x06_register_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv29.i, i8 noundef zeroext %conv30.i) #12
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %if.then24.i.if.end32.i_crit_edge
  %170 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %val.i, align 4
  %offset_x.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 18
  %172 = ptrtoint ptr %offset_x.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %offset_x.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end32.i, %if.end21.i.if.end33.i_crit_edge
  %call.i76.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.62, ptr noundef nonnull %val.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool35.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end33.i.edt_ft5x06_ts_get_defaults.exit_crit_edge

if.end33.i.edt_ft5x06_ts_get_defaults.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edt_ft5x06_ts_get_defaults.exit

if.then36.i:                                      ; preds = %if.end33.i
  %reg_offset_y.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 5
  %173 = ptrtoint ptr %reg_offset_y.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %reg_offset_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %174)
  %cmp37.not.i = icmp eq i32 %174, 255
  br i1 %cmp37.not.i, label %if.then36.i.if.end44.i_crit_edge, label %if.then39.i

if.then36.i.if.end44.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv41.i = trunc i32 %174 to i8
  %175 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %val.i, align 4
  %conv42.i = trunc i32 %176 to i8
  %call43.i = call fastcc i32 @edt_ft5x06_register_write(ptr noundef nonnull %call.i, i8 noundef zeroext %conv41.i, i8 noundef zeroext %conv42.i) #12
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then39.i, %if.then36.i.if.end44.i_crit_edge
  %177 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %val.i, align 4
  %offset_y.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 19
  %179 = ptrtoint ptr %offset_y.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %offset_y.i, align 4
  br label %edt_ft5x06_ts_get_defaults.exit

edt_ft5x06_ts_get_defaults.exit:                  ; preds = %if.end44.i, %if.end33.i.edt_ft5x06_ts_get_defaults.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  %180 = ptrtoint ptr %reg_addr1.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %reg_addr1.i, align 4
  %conv.i414 = trunc i32 %181 to i8
  %call.i415 = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv.i414) #12
  %threshold.i416 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 15
  %182 = ptrtoint ptr %threshold.i416 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %call.i415, ptr %threshold.i416, align 4
  %reg_gain.i417 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 2
  %183 = ptrtoint ptr %reg_gain.i417 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %reg_gain.i417, align 4
  %conv2.i418 = trunc i32 %184 to i8
  %call3.i419 = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv2.i418) #12
  %gain.i420 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 16
  %185 = ptrtoint ptr %gain.i420 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call3.i419, ptr %gain.i420, align 4
  %reg_offset.i421 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 3
  %186 = ptrtoint ptr %reg_offset.i421 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %reg_offset.i421, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %187)
  %cmp.not.i422 = icmp eq i32 %187, 255
  br i1 %cmp.not.i422, label %edt_ft5x06_ts_get_defaults.exit.if.end.i426_crit_edge, label %if.then.i424

edt_ft5x06_ts_get_defaults.exit.if.end.i426_crit_edge: ; preds = %edt_ft5x06_ts_get_defaults.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i426

if.then.i424:                                     ; preds = %edt_ft5x06_ts_get_defaults.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.i = trunc i32 %187 to i8
  %call7.i = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv6.i) #12
  %offset.i423 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 17
  %188 = ptrtoint ptr %offset.i423 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %call7.i, ptr %offset.i423, align 4
  br label %if.end.i426

if.end.i426:                                      ; preds = %if.then.i424, %edt_ft5x06_ts_get_defaults.exit.if.end.i426_crit_edge
  %reg_offset_x.i425 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 4
  %189 = ptrtoint ptr %reg_offset_x.i425 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %reg_offset_x.i425, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %190)
  %cmp8.not.i = icmp eq i32 %190, 255
  br i1 %cmp8.not.i, label %if.end.i426.if.end14.i_crit_edge, label %if.then10.i

if.end.i426.if.end14.i_crit_edge:                 ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #14
  %conv12.i = trunc i32 %190 to i8
  %call13.i427 = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv12.i) #12
  %offset_x.i428 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 18
  %191 = ptrtoint ptr %offset_x.i428 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %call13.i427, ptr %offset_x.i428, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end.i426.if.end14.i_crit_edge
  %reg_offset_y.i429 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 5
  %192 = ptrtoint ptr %reg_offset_y.i429 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %reg_offset_y.i429, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %193)
  %cmp15.not.i = icmp eq i32 %193, 255
  br i1 %cmp15.not.i, label %if.end14.i.if.end21.i431_crit_edge, label %if.then17.i

if.end14.i.if.end21.i431_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i431

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i = trunc i32 %193 to i8
  %call20.i = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv19.i) #12
  %offset_y.i430 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 19
  %194 = ptrtoint ptr %offset_y.i430 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %call20.i, ptr %offset_y.i430, align 4
  br label %if.end21.i431

if.end21.i431:                                    ; preds = %if.then17.i, %if.end14.i.if.end21.i431_crit_edge
  %reg_report_rate.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 1
  %195 = ptrtoint ptr %reg_report_rate.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %reg_report_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %196)
  %cmp22.not.i = icmp eq i32 %196, 255
  br i1 %cmp22.not.i, label %if.end21.i431.if.end28.i_crit_edge, label %if.then24.i432

if.end21.i431.if.end28.i_crit_edge:               ; preds = %if.end21.i431
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then24.i432:                                   ; preds = %if.end21.i431
  call void @__sanitizer_cov_trace_pc() #14
  %conv26.i = trunc i32 %196 to i8
  %call27.i = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv26.i) #12
  %report_rate.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 20
  %197 = ptrtoint ptr %report_rate.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call27.i, ptr %report_rate.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i432, %if.end21.i431.if.end28.i_crit_edge
  %num_x.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 3
  %198 = ptrtoint ptr %num_x.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 1024, ptr %num_x.i, align 4
  %reg_num_x.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 6
  %199 = ptrtoint ptr %reg_num_x.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %reg_num_x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %200)
  %cmp29.not.i = icmp eq i32 %200, 255
  br i1 %cmp29.not.i, label %if.end28.i.if.end37.i_crit_edge, label %if.then31.i

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv33.i = trunc i32 %200 to i8
  %call34.i = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv33.i) #12
  %conv35.i = trunc i32 %call34.i to i16
  %201 = ptrtoint ptr %num_x.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv35.i, ptr %num_x.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end37.i_crit_edge
  %num_y.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 4
  %202 = ptrtoint ptr %num_y.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 1024, ptr %num_y.i, align 2
  %reg_num_y.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 23, i32 7
  %203 = ptrtoint ptr %reg_num_y.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %reg_num_y.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %204)
  %cmp38.not.i = icmp eq i32 %204, 255
  br i1 %cmp38.not.i, label %if.end37.i.edt_ft5x06_ts_get_parameters.exit_crit_edge, label %if.then40.i

if.end37.i.edt_ft5x06_ts_get_parameters.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edt_ft5x06_ts_get_parameters.exit

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv42.i433 = trunc i32 %204 to i8
  %call43.i434 = call fastcc i32 @edt_ft5x06_register_read(ptr noundef nonnull %call.i, i8 noundef zeroext %conv42.i433) #12
  %conv44.i = trunc i32 %call43.i434 to i16
  %205 = ptrtoint ptr %num_y.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv44.i, ptr %num_y.i, align 2
  br label %edt_ft5x06_ts_get_parameters.exit

edt_ft5x06_ts_get_parameters.exit:                ; preds = %if.then40.i, %if.end37.i.edt_ft5x06_ts_get_parameters.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_ts_probe, %if.then165)) #12
          to label %do.end172 [label %if.then165], !srcloc !271

if.then165:                                       ; preds = %edt_ft5x06_ts_get_parameters.exit
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %num_x.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %num_x.i, align 4
  %conv = zext i16 %207 to i32
  %208 = ptrtoint ptr %num_y.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %num_y.i, align 2
  %conv169 = zext i16 %209 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev3, ptr noundef nonnull @.str.39, ptr noundef %name.i, ptr noundef nonnull %fw_version, i32 noundef %conv, i32 noundef %conv169) #12
  br label %do.end172

do.end172:                                        ; preds = %if.then165, %edt_ft5x06_ts_get_parameters.exit
  %210 = ptrtoint ptr %call127 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %name.i, ptr %call127, align 8
  %id176 = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 3
  %211 = ptrtoint ptr %id176 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 24, ptr %id176, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call127, i32 0, i32 40, i32 1
  %212 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %dev3, ptr %parent, align 8
  %213 = ptrtoint ptr %num_x.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %num_x.i, align 4
  %conv180 = zext i16 %214 to i32
  %mul = shl nuw nsw i32 %conv180, 6
  %sub = add nsw i32 %mul, -1
  call void @input_set_abs_params(ptr noundef nonnull %call127, i32 noundef 53, i32 noundef 0, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #12
  %215 = ptrtoint ptr %num_y.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %num_y.i, align 2
  %conv182 = zext i16 %216 to i32
  %mul183 = shl nuw nsw i32 %conv182, 6
  %sub184 = add nsw i32 %mul183, -1
  call void @input_set_abs_params(ptr noundef nonnull %call127, i32 noundef 54, i32 noundef 0, i32 noundef %sub184, i32 noundef 0, i32 noundef 0) #12
  %prop = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %call.i, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %call127, i1 noundef zeroext true, ptr noundef %prop) #12
  %217 = ptrtoint ptr %max_support_points26 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %max_support_points26, align 4
  %call186 = call i32 @input_mt_init_slots(ptr noundef nonnull %call127, i32 noundef %218, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end193, label %do.end191

do.end191:                                        ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.41) #15
  br label %cleanup

if.end193:                                        ; preds = %do.end172
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %219 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %220 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %irq, align 4
  %call.i435 = call ptr @irq_get_irq_data(i32 noundef %221) #12
  %tobool.not.i436 = icmp eq ptr %call.i435, null
  br i1 %tobool.not.i436, label %if.end193.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit

if.end193.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit:                        ; preds = %if.end193
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i435, i32 0, i32 3
  %222 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %common.i.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %223, align 4
  %and.i.i = and i32 %225, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp195 = icmp eq i32 %and.i.i, 0
  %call194.op = or i32 %and.i.i, 8192
  br i1 %cmp195, label %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit._crit_edge

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %226

irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit.thread:                 ; preds = %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, %if.end193.irq_get_trigger_type.exit.thread_crit_edge
  br label %226

226:                                              ; preds = %irq_get_trigger_type.exit.thread, %irq_get_trigger_type.exit._crit_edge
  %227 = phi i32 [ 8194, %irq_get_trigger_type.exit.thread ], [ %call194.op, %irq_get_trigger_type.exit._crit_edge ]
  %228 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %irq, align 4
  %name201 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call203 = call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %229, ptr noundef null, ptr noundef nonnull @edt_ft5x06_ts_isr, i32 noundef %227, ptr noundef %name201, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end210, label %do.end208

do.end208:                                        ; preds = %226
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.44) #15
  br label %cleanup

if.end210:                                        ; preds = %226
  %call212 = call i32 @devm_device_add_group(ptr noundef %dev3, ptr noundef nonnull @edt_ft5x06_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %if.end215, label %if.end210.cleanup_crit_edge

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end215:                                        ; preds = %if.end210
  %call216 = call i32 @input_register_device(ptr noundef nonnull %call127) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %tobool217.not = icmp eq i32 %call216, 0
  br i1 %tobool217.not, label %if.end219, label %if.end215.cleanup_crit_edge

if.end215.cleanup_crit_edge:                      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end219:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  %call221 = call ptr @dev_driver_string(ptr noundef %dev3) #12
  call fastcc void @edt_ft5x06_ts_prepare_debugfs(ptr noundef nonnull %call.i, ptr noundef %call221)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_ts_probe, %if.then234)) #12
          to label %cleanup [label %if.then234], !srcloc !271

if.then234:                                       ; preds = %if.end219
  %230 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %irq, align 4
  %232 = ptrtoint ptr %wake_gpio to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %wake_gpio, align 4
  %tobool238.not = icmp eq ptr %233, null
  br i1 %tobool238.not, label %if.then234.cond.end_crit_edge, label %cond.true

if.then234.cond.end_crit_edge:                    ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  %call240 = call i32 @desc_to_gpio(ptr noundef nonnull %233) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then234.cond.end_crit_edge
  %cond = phi i32 [ %call240, %cond.true ], [ -1, %if.then234.cond.end_crit_edge ]
  %234 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %reset_gpio, align 4
  %tobool242.not = icmp eq ptr %235, null
  br i1 %tobool242.not, label %cond.end.cond.end247_crit_edge, label %cond.true243

cond.end.cond.end247_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end247

cond.true243:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %call245 = call i32 @desc_to_gpio(ptr noundef nonnull %235) #12
  br label %cond.end247

cond.end247:                                      ; preds = %cond.true243, %cond.end.cond.end247_crit_edge
  %cond248 = phi i32 [ %call245, %cond.true243 ], [ -1, %cond.end.cond.end247_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev3, ptr noundef nonnull @.str.46, i32 noundef %231, i32 noundef %cond, i32 noundef %cond248) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end247, %if.end219, %if.end215.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %do.end208, %do.end191, %do.end145, %do.end132, %if.then97, %if.then85, %devm_add_action_or_reset.exit, %do.end71, %do.end62, %do.end52, %if.then45.cleanup_crit_edge, %do.end37, %if.then31.cleanup_crit_edge, %do.end22, %do.end9
  %retval.0 = phi i32 [ %call57, %do.end62 ], [ %call66, %do.end71 ], [ %21, %if.then85 ], [ %23, %if.then97 ], [ %retval.0.i398, %do.end145 ], [ %call186, %do.end191 ], [ %call203, %do.end208 ], [ -12, %do.end132 ], [ -22, %do.end22 ], [ -12, %do.end9 ], [ %9, %do.end37 ], [ -517, %if.then31.cleanup_crit_edge ], [ %11, %do.end52 ], [ -517, %if.then45.cleanup_crit_edge ], [ %call.i392, %devm_add_action_or_reset.exit ], [ %call212, %if.end210.cleanup_crit_edge ], [ %call216, %if.end215.cleanup_crit_edge ], [ 0, %cond.end247 ], [ 0, %if.end219 ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %fw_version) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debug_dir.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %debug_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_dir.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #12
  %raw_buffer.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %raw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %raw_buffer.i, align 4
  tail call void @kfree(ptr noundef %5) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edt_ft5x06_disable_regulators(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #12
  %iovcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iovcc, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edt_ft5x06_ts_readwrite(ptr nocapture noundef readonly %client, i16 noundef zeroext %wr_len, ptr noundef %wr_buf, i16 noundef zeroext %rd_len, ptr noundef %rd_buf) unnamed_addr #2 align 64 {
entry:
  %wrmsg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg) #12
  %0 = getelementptr inbounds i8, ptr %wrmsg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 20)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = ptrtoint ptr %wrmsg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %wrmsg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %wr_len, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %wr_buf, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rd_len)
  %tobool5.not = icmp eq i16 %rd_len, 0
  br i1 %tobool5.not, label %entry.if.end17_crit_edge, label %if.then6

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %arrayidx8, align 4
  %flags11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags11, align 2
  %len13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %rd_len, ptr %len13, align 4
  %buf15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %buf15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rd_buf, ptr %buf15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %entry.if.end17_crit_edge
  %i.1 = phi i32 [ 2, %if.then6 ], [ 1, %entry.if.end17_crit_edge ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %wrmsg, i32 noundef %i.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %i.1)
  %cmp20.not = icmp eq i32 %call, %i.1
  %. = select i1 %cmp20.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call, i32 %.
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %wrmsg.i = alloca [2 x %struct.i2c_msg], align 4
  %cmd = alloca i8, align 1
  %rdbuf = alloca [63 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %rdbuf) #12
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %dev_id, i32 0, i32 24
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %switch.lookup, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.edt_ft5x06_ts_isr, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep142 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_isr.128, i32 0, i32 %3
  %6 = ptrtoint ptr %switch.gep142 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load143 = load i32, ptr %switch.gep142, align 4
  %switch.gep144 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_isr.129, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep144 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load145 = load i32, ptr %switch.gep144, align 4
  %switch.gep146 = getelementptr inbounds [5 x i32], ptr @switch.table.edt_ft5x06_ts_isr.130, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load147 = load i32, ptr %switch.gep146, align 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %switch.load, ptr %cmd, align 1
  %10 = call ptr @memset(ptr %rdbuf, i32 0, i32 63)
  %max_support_points = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %dev_id, i32 0, i32 21
  %11 = ptrtoint ptr %max_support_points to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_support_points, align 4
  %mul = mul i32 %12, %switch.load145
  %add = add nuw nsw i32 %switch.load147, %switch.load143
  %add3 = add i32 %add, %mul
  %conv = trunc i32 %add3 to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %13 = getelementptr inbounds i8, ptr %wrmsg.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 20)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %17 = ptrtoint ptr %wrmsg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %wrmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %13, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmd, ptr %buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool5.not.i = icmp eq i16 %conv, 0
  br i1 %tobool5.not.i, label %switch.lookup.edt_ft5x06_ts_readwrite.exit_crit_edge, label %if.then6.i

switch.lookup.edt_ft5x06_ts_readwrite.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %edt_ft5x06_ts_readwrite.exit

if.then6.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %16, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags11.i, align 2
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rdbuf, ptr %buf15.i, align 4
  br label %edt_ft5x06_ts_readwrite.exit

edt_ft5x06_ts_readwrite.exit:                     ; preds = %if.then6.i, %switch.lookup.edt_ft5x06_ts_readwrite.exit_crit_edge
  %i.1.i = phi i32 [ 2, %if.then6.i ], [ 1, %switch.lookup.edt_ft5x06_ts_readwrite.exit_crit_edge ]
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %wrmsg.i, i32 noundef %i.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %i.1.i)
  %cmp20.not.i = icmp eq i32 %call.i, %i.1.i
  %..i = select i1 %cmp20.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %edt_ft5x06_ts_readwrite.exit
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @edt_ft5x06_ts_isr._rs, ptr noundef nonnull @__func__.edt_ft5x06_ts_isr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i) #15
  br label %out

if.end12:                                         ; preds = %edt_ft5x06_ts_readwrite.exit
  %27 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then15, label %if.end12.if.end50_crit_edge

if.end12.if.end50_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then15:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rdbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %30)
  %cmp17.not = icmp eq i8 %30, -86
  br i1 %cmp17.not, label %lor.lhs.false, label %if.then15.do.body29_crit_edge

if.then15.do.body29_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

lor.lhs.false:                                    ; preds = %if.then15
  %arrayidx19 = getelementptr inbounds [63 x i8], ptr %rdbuf, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %32)
  %cmp21.not = icmp eq i8 %32, -86
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false.do.body29_crit_edge

lor.lhs.false.do.body29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr inbounds [63 x i8], ptr %rdbuf, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %conv25)
  %cmp26.not = icmp eq i32 %add3, %conv25
  br i1 %cmp26.not, label %if.end45, label %lor.lhs.false23.do.body29_crit_edge

lor.lhs.false23.do.body29_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body29

do.body29:                                        ; preds = %lor.lhs.false23.do.body29_crit_edge, %lor.lhs.false.do.body29_crit_edge, %if.then15.do.body29_crit_edge
  %call30 = call i32 @___ratelimit(ptr noundef nonnull @edt_ft5x06_ts_isr._rs.67, ptr noundef nonnull @__func__.edt_ft5x06_ts_isr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.out_crit_edge, label %do.end35

do.body29.out_crit_edge:                          ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rdbuf, align 1
  %conv37 = zext i8 %36 to i32
  %arrayidx38 = getelementptr inbounds [63 x i8], ptr %rdbuf, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %38 to i32
  %arrayidx40 = getelementptr inbounds [63 x i8], ptr %rdbuf, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.69, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %conv41) #15
  br label %out

if.end45:                                         ; preds = %lor.lhs.false23
  %call47 = call fastcc zeroext i1 @edt_ft5x06_ts_check_crc(ptr noundef %dev_id, ptr noundef nonnull %rdbuf, i32 noundef %add3)
  br i1 %call47, label %if.end45.if.end50_crit_edge, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end50:                                         ; preds = %if.end45.if.end50_crit_edge, %if.end12.if.end50_crit_edge
  %41 = ptrtoint ptr %max_support_points to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_support_points, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp52140 = icmp sgt i32 %42, 0
  br i1 %cmp52140, label %for.body.lr.ph, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %input = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %dev_id, i32 0, i32 1
  %prop = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %dev_id, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0141 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %mul54 = mul i32 %i.0141, %switch.load145
  %add55 = add i32 %mul54, %switch.load143
  %arrayidx56 = getelementptr [63 x i8], ptr %rdbuf, i32 0, i32 %add55
  %43 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx56, align 1
  %45 = lshr i8 %44, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %45)
  %cmp59 = icmp eq i8 %45, 3
  br i1 %cmp59, label %for.body.cleanup_crit_edge, label %if.end62

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %for.body
  %46 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp64 = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %44)
  %cmp66 = icmp ult i8 %44, 64
  %or.cond = select i1 %cmp64, i1 %cmp66, i1 false
  br i1 %or.cond, label %if.end62.cleanup_crit_edge, label %if.end69

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end69:                                         ; preds = %if.end62
  %48 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx56, align 1
  %add.ptr = getelementptr i8, ptr %arrayidx56, i32 2
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr, align 1
  %sum.shift = lshr i16 %51, 12
  %52 = zext i16 %sum.shift to i32
  %53 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %54, i32 noundef 3, i32 noundef 47, i32 noundef %52) #12
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp88 = icmp ne i8 %45, 1
  %call90 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %56, i32 noundef 0, i1 noundef zeroext %cmp88) #12
  br i1 %call90, label %if.then91, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then91:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp76 = icmp eq i32 %47, 3
  %57 = and i16 %49, 4095
  %and = zext i16 %57 to i32
  %58 = and i16 %51, 4095
  %and74 = zext i16 %58 to i32
  %spec.select139 = select i1 %cmp76, i32 %and, i32 %and74
  %spec.select = select i1 %cmp76, i32 %and74, i32 %and
  %59 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input, align 4
  call void @touchscreen_report_pos(ptr noundef %60, ptr noundef %prop, i32 noundef %spec.select, i32 noundef %spec.select139, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end69.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0141, 1
  %61 = ptrtoint ptr %max_support_points to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_support_points, align 4
  %cmp52 = icmp slt i32 %inc, %62
  br i1 %cmp52, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end50.for.end_crit_edge
  %input94 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %dev_id, i32 0, i32 1
  %63 = ptrtoint ptr %input94 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input94, align 4
  call void @input_mt_report_pointer_emulation(ptr noundef %64, i1 noundef zeroext true) #12
  %65 = ptrtoint ptr %input94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input94, align 4
  call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %out

out:                                              ; preds = %for.end, %if.end45.out_crit_edge, %do.end35, %do.body29.out_crit_edge, %do.end, %do.body.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %rdbuf) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edt_ft5x06_ts_prepare_debugfs(ptr noundef %tsdata, ptr noundef %debugfs_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef %debugfs_name, ptr noundef null) #12
  %debug_dir = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 9
  %0 = ptrtoint ptr %debug_dir to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %debug_dir, align 4
  %num_x = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 3
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.83, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %num_x) #12
  %1 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debug_dir, align 4
  %num_y = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 4
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.84, i16 noundef zeroext 256, ptr noundef %2, ptr noundef %num_y) #12
  %3 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debug_dir, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 384, ptr noundef %4, ptr noundef %tsdata, ptr noundef nonnull @debugfs_mode_fops) #12
  %5 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debug_dir, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.86, i16 noundef zeroext 256, ptr noundef %6, ptr noundef %tsdata, ptr noundef nonnull @debugfs_raw_data_fops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edt_ft5x06_register_write(ptr nocapture noundef readonly %tsdata, i8 noundef zeroext %addr, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %wrmsg.i35 = alloca [2 x %struct.i2c_msg], align 4
  %wrmsg.i = alloca [2 x %struct.i2c_msg], align 4
  %wrbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrbuf) #12
  %0 = getelementptr inbounds [4 x i8], ptr %wrbuf, i32 0, i32 1
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 24
  %1 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wrbuf, align 4
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb20_crit_edge
    i32 2, label %entry.sw.bb20_crit_edge46
    i32 3, label %entry.sw.bb20_crit_edge47
    i32 4, label %entry.sw.bb20_crit_edge48
  ]

entry.sw.bb20_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20

entry.sw.bb20_crit_edge47:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20

entry.sw.bb20_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds [4 x i8], ptr %wrbuf, i32 0, i32 3
  %6 = getelementptr inbounds [4 x i8], ptr %wrbuf, i32 0, i32 2
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 13
  %7 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %conv = select i1 %tobool.not, i8 -4, i8 -13
  %9 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %wrbuf, align 4
  %cond7.v = select i1 %tobool.not, i8 63, i8 127
  %cond7 = and i8 %cond7.v, %addr
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond7, ptr %0, align 1
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %value, ptr %6, align 2
  %xor33 = xor i8 %conv, %value
  %xor1734 = xor i8 %xor33, %cond7
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %xor1734, ptr %5, align 1
  %13 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tsdata, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %15 = getelementptr inbounds i8, ptr %wrmsg.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 20)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %19 = ptrtoint ptr %wrmsg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %wrmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %15, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %wrbuf, ptr %buf.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %wrmsg.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp20.not.i = icmp eq i32 %call.i, 1
  %..i = select i1 %cmp20.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i) #12
  br label %cleanup

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge46, %entry.sw.bb20_crit_edge47, %entry.sw.bb20_crit_edge48
  %25 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %addr, ptr %wrbuf, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %value, ptr %0, align 1
  %27 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tsdata, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i35) #12
  %29 = getelementptr inbounds i8, ptr %wrmsg.i35, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 20)
  %addr.i36 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i36 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i36, align 2
  %33 = ptrtoint ptr %wrmsg.i35 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %wrmsg.i35, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i35, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i37, align 2
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %29, align 4
  %buf.i39 = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i35, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %wrbuf, ptr %buf.i39, align 4
  %adapter.i40 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %37 = ptrtoint ptr %adapter.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter.i40, align 8
  %call.i41 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %wrmsg.i35, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i41)
  %cmp20.not.i43 = icmp eq i32 %call.i41, 1
  %..i44 = select i1 %cmp20.not.i43, i32 0, i32 -5
  %retval.0.i45 = select i1 %cmp.i42, i32 %call.i41, i32 %..i44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i35) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i45, %sw.bb20 ], [ %retval.0.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrbuf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edt_ft5x06_register_read(ptr nocapture noundef readonly %tsdata, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %wrmsg.i68 = alloca [2 x %struct.i2c_msg], align 4
  %wrmsg.i = alloca [2 x %struct.i2c_msg], align 4
  %wrbuf = alloca [2 x i8], align 1
  %rdbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wrbuf) #12
  %0 = getelementptr inbounds [2 x i8], ptr %wrbuf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !272
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdbuf) #12
  %2 = ptrtoint ptr %rdbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %rdbuf, align 1, !annotation !272
  %3 = getelementptr inbounds [2 x i8], ptr %rdbuf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !272
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 24
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb42_crit_edge
    i32 2, label %entry.sw.bb42_crit_edge83
    i32 3, label %entry.sw.bb42_crit_edge84
    i32 4, label %entry.sw.bb42_crit_edge85
  ]

entry.sw.bb42_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb42

entry.sw.bb42_crit_edge84:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb42

entry.sw.bb42_crit_edge83:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb42

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 13
  %8 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %conv = select i1 %tobool.not, i8 -4, i8 -13
  %10 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %wrbuf, align 1
  %cond7.v = select i1 %tobool.not, i8 63, i8 127
  %cond7 = and i8 %cond7.v, %addr
  %cond13 = select i1 %tobool.not, i8 64, i8 -128
  %or = or i8 %cond7, %cond13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %0, align 1
  %12 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tsdata, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %14 = getelementptr inbounds i8, ptr %wrmsg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %18 = ptrtoint ptr %wrmsg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %wrmsg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wrbuf, ptr %buf.i, align 4
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %arrayidx8.i, align 4
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags11.i, align 2
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len13.i, align 4
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rdbuf, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %wrmsg.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp20.not.i = icmp eq i32 %call.i, 2
  %..i = select i1 %cmp20.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool18.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool18.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %28 = ptrtoint ptr %wrbuf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wrbuf, align 1
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %0, align 1
  %xor66 = xor i8 %31, %29
  %32 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rdbuf, align 1
  %xor2567 = xor i8 %xor66, %33
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor2567, i8 %35)
  %cmp.not = icmp eq i8 %xor2567, %35
  br i1 %cmp.not, label %if.end.sw.epilog_crit_edge, label %do.end

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv27 = zext i8 %35 to i32
  %xor25 = zext i8 %xor2567 to i32
  %36 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tsdata, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %xor25, i32 noundef %conv27) #15
  br label %cleanup

sw.bb42:                                          ; preds = %entry.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge83, %entry.sw.bb42_crit_edge84, %entry.sw.bb42_crit_edge85
  %38 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %addr, ptr %wrbuf, align 1
  %39 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tsdata, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i68) #12
  %41 = getelementptr inbounds i8, ptr %wrmsg.i68, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %addr.i69 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %addr.i69 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %addr.i69, align 2
  %45 = ptrtoint ptr %wrmsg.i68 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %wrmsg.i68, align 4
  %flags.i70 = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i68, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i70, align 2
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %41, align 4
  %buf.i72 = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i68, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i72 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %wrbuf, ptr %buf.i72, align 4
  %arrayidx8.i73 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i68, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx8.i73 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %44, ptr %arrayidx8.i73, align 4
  %flags11.i74 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i68, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %flags11.i74 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %flags11.i74, align 2
  %len13.i75 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i68, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %len13.i75 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %len13.i75, align 4
  %buf15.i76 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i68, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %buf15.i76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rdbuf, ptr %buf15.i76, align 4
  %adapter.i77 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 3
  %53 = ptrtoint ptr %adapter.i77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i77, align 8
  %call.i78 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %wrmsg.i68, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i78)
  %cmp20.not.i80 = icmp eq i32 %call.i78, 2
  %..i81 = select i1 %cmp20.not.i80, i32 0, i32 -5
  %retval.0.i82 = select i1 %cmp.i79, i32 %call.i78, i32 %..i81
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i82)
  %tobool48.not = icmp eq i32 %retval.0.i82, 0
  br i1 %tobool48.not, label %sw.bb42.sw.epilog_crit_edge, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %55 = ptrtoint ptr %rdbuf to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rdbuf, align 1
  %conv52 = zext i8 %56 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb42.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv52, %sw.epilog ], [ -5, %do.end ], [ %retval.0.i, %sw.bb.cleanup_crit_edge ], [ %retval.0.i82, %sw.bb42.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdbuf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wrbuf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @edt_ft5x06_ts_check_crc(ptr nocapture noundef readonly %tsdata, ptr nocapture noundef readonly %buf, i32 noundef %buflen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %buflen, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp sgt i32 %sub, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %crc.029 = phi i32 [ %xor, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %xor = xor i32 %crc.029, %conv
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %xor, %for.body.for.end_crit_edge ]
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %sub
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.0.lcssa, i32 %conv6)
  %cmp7.not = icmp eq i32 %crc.0.lcssa, %conv6
  br i1 %cmp7.not, label %for.end.cleanup_crit_edge, label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %for.end
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @edt_ft5x06_ts_check_crc._rs, ptr noundef nonnull @__func__.edt_ft5x06_ts_check_crc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tsdata, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %conv14 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %crc.0.lcssa, i32 noundef %conv14) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret i1 %cmp7.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_setting_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  %mutex = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %7, label %if.end.out.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb5_crit_edge
    i32 2, label %if.end.sw.bb5_crit_edge61
    i32 4, label %if.end.sw.bb5_crit_edge62
    i32 3, label %sw.bb6
  ]

if.end.sw.bb5_crit_edge62:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

if.end.sw.bb5_crit_edge61:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %addr_m06 = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge61, %if.end.sw.bb5_crit_edge62
  %addr_m09 = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %addr_ev = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb
  %addr.0.in = phi ptr [ %addr_ev, %sw.bb6 ], [ %addr_m09, %sw.bb5 ], [ %addr_m06, %sw.bb ]
  %9 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load1_noabort(i32 %9)
  %addr.0 = load i8, ptr %addr.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr.0)
  %cmp.not = icmp eq i8 %addr.0, -1
  br i1 %cmp.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.epilog
  %call9 = tail call fastcc i32 @edt_ft5x06_register_read(ptr noundef %1, i8 noundef zeroext %addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dattr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.71, ptr noundef %13, i32 noundef %call9) #15
  br label %out.thread

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr4, align 1
  %conv17 = zext i8 %15 to i32
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8.if.end18_crit_edge
  %val.0 = phi i32 [ %call9, %if.then8.if.end18_crit_edge ], [ %conv17, %if.else ]
  %16 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr4, align 1
  %conv19 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %conv19)
  %cmp20.not = icmp eq i32 %val.0, %conv19
  br i1 %cmp20.not, label %if.end18._crit_edge, label %do.end25

if.end18._crit_edge:                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %23

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dattr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.74, ptr noundef %21, i32 noundef %val.0, i32 noundef %conv19) #15
  %conv31 = trunc i32 %val.0 to i8
  %22 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv31, ptr %add.ptr4, align 1
  br label %23

23:                                               ; preds = %do.end25, %if.end18._crit_edge
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.77, i32 noundef %val.0) #12
  br label %out.thread

out.thread:                                       ; preds = %23, %if.then12, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %24 = phi i32 [ %call33, %23 ], [ -19, %if.end.out.thread_crit_edge ], [ -5, %entry.out.thread_crit_edge ], [ %call9, %if.then12 ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_setting_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !272
  %mutex = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end:                                           ; preds = %entry
  %call5 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %limit_low = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 2
  %9 = ptrtoint ptr %limit_low to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %limit_low, align 4
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp = icmp ult i32 %8, %conv
  br i1 %cmp, label %if.end8.out.thread_crit_edge, label %lor.lhs.false

if.end8.out.thread_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.end8
  %limit_high = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 3
  %11 = ptrtoint ptr %limit_high to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %limit_high, align 1
  %conv10 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv10)
  %cmp11 = icmp ugt i32 %8, %conv10
  br i1 %cmp11, label %lor.lhs.false.out.thread_crit_edge, label %if.end14

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

if.end14:                                         ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 24
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %14, label %if.end14.out.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end14.sw.bb15_crit_edge
    i32 2, label %if.end14.sw.bb15_crit_edge51
    i32 4, label %if.end14.sw.bb15_crit_edge52
    i32 3, label %sw.bb16
  ]

if.end14.sw.bb15_crit_edge52:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end14.sw.bb15_crit_edge51:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end14.sw.bb15_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb15

if.end14.out.thread_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %addr_m06 = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end14.sw.bb15_crit_edge, %if.end14.sw.bb15_crit_edge51, %if.end14.sw.bb15_crit_edge52
  %addr_m09 = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 5
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %addr_ev = getelementptr inbounds %struct.edt_ft5x06_attribute, ptr %dattr, i32 0, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb15, %sw.bb
  %addr.0.in = phi ptr [ %addr_ev, %sw.bb16 ], [ %addr_m09, %sw.bb15 ], [ %addr_m06, %sw.bb ]
  %16 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %addr.0 = load i8, ptr %addr.0.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr.0)
  %cmp18.not = icmp eq i8 %addr.0, -1
  br i1 %cmp18.not, label %sw.epilog._crit_edge, label %if.then20

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %21

if.then20:                                        ; preds = %sw.epilog
  %conv21 = trunc i32 %8 to i8
  %call22 = call fastcc i32 @edt_ft5x06_register_write(ptr noundef %1, i8 noundef zeroext %addr.0, i8 noundef zeroext %conv21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20._crit_edge, label %do.end

if.then20._crit_edge:                             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %21

do.end:                                           ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dattr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.78, ptr noundef %20, i32 noundef %call22) #15
  br label %out.thread

21:                                               ; preds = %if.then20._crit_edge, %sw.epilog._crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv30 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv30, ptr %add.ptr4, align 1
  br label %out.thread

out.thread:                                       ; preds = %21, %do.end, %if.end14.out.thread_crit_edge, %lor.lhs.false.out.thread_crit_edge, %if.end8.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %25 = phi i32 [ %count, %21 ], [ -19, %if.end14.out.thread_crit_edge ], [ -34, %if.end8.out.thread_crit_edge ], [ -34, %lor.lhs.false.out.thread_crit_edge ], [ -5, %entry.out.thread_crit_edge ], [ %call22, %do.end ], [ %call5, %if.end.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_mode_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @edt_ft5x06_debugfs_mode_get, ptr noundef nonnull @edt_ft5x06_debugfs_mode_set, ptr noundef nonnull @.str.87) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @edt_ft5x06_debugfs_mode_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %mode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %factory_mode, align 4, !range !273
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %mode, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_debugfs_mode_set(ptr noundef %data, i64 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %mode)
  %cmp = icmp ugt i64 %mode, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %factory_mode, align 4, !range !273
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %mode)
  %cmp2.not = icmp eq i64 %2, %mode
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mode)
  %tobool5.not = icmp eq i64 %mode, 0
  br i1 %tobool5.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @edt_ft5x06_factory_mode(ptr noundef %data)
  br label %if.end7

cond.false:                                       ; preds = %if.then4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call.i = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.96, i32 noundef %call.i) #15
  br label %if.end7

if.end.i:                                         ; preds = %cond.false
  %5 = ptrtoint ptr %factory_mode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %factory_mode, align 4
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.cond7.i.do.body2.i_crit_edge, %if.end.i
  %retries.0.i = phi i32 [ 10, %if.end.i ], [ %dec8.i, %do.cond7.i.do.body2.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #12
  %call4.i = tail call fastcc i32 @edt_ft5x06_register_read(ptr noundef %data, i8 noundef zeroext 60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 1
  br i1 %cmp.i, label %do.end10.i, label %do.cond7.i

do.cond7.i:                                       ; preds = %do.body2.i
  %dec8.i = add nsw i32 %retries.0.i, -1
  %cmp9.not.i = icmp eq i32 %dec8.i, 0
  br i1 %cmp9.not.i, label %do.cond7.i.do.end15.i_crit_edge, label %do.cond7.i.do.body2.i_crit_edge

do.cond7.i.do.body2.i_crit_edge:                  ; preds = %do.cond7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.cond7.i.do.end15.i_crit_edge:                  ; preds = %do.cond7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

do.end10.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0.i)
  %cmp11.i = icmp eq i32 %retries.0.i, 0
  br i1 %cmp11.i, label %do.end10.i.do.end15.i_crit_edge, label %if.end18.i

do.end10.i.do.end15.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end10.i.do.end15.i_crit_edge, %do.cond7.i.do.end15.i_crit_edge
  %dev16.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i, ptr noundef nonnull @.str.99, i32 noundef 50) #15
  %11 = ptrtoint ptr %factory_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %factory_mode, align 4
  br label %if.end7

if.end18.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %raw_buffer.i = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %data, i32 0, i32 10
  %12 = ptrtoint ptr %raw_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %raw_buffer.i, align 4
  tail call void @kfree(ptr noundef %13) #12
  %14 = ptrtoint ptr %raw_buffer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %raw_buffer.i, align 4
  tail call fastcc void @edt_ft5x06_restore_reg_parameters(ptr noundef %data) #12
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %16) #12
  br label %if.end7

if.end7:                                          ; preds = %if.end18.i, %do.end15.i, %do.end.i, %cond.true, %if.end.if.end7_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end.if.end7_crit_edge ], [ %call, %cond.true ], [ %call.i, %do.end.i ], [ -5, %do.end15.i ], [ 0, %if.end18.i ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %if.end7 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edt_ft5x06_factory_mode(ptr nocapture noundef %tsdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tsdata, align 4
  %version = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 24
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #12
  %raw_buffer = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 10
  %6 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raw_buffer, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %num_x = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 3
  %8 = ptrtoint ptr %num_x to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_x, align 4
  %conv = zext i16 %9 to i32
  %num_y = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 4
  %10 = ptrtoint ptr %num_y to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_y, align 2
  %conv3 = zext i16 %11 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %mul4 = mul i32 %mul, %conv3
  %raw_bufsize = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 11
  %12 = ptrtoint ptr %raw_bufsize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul4, ptr %raw_bufsize, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul4, i32 noundef 3520) #16
  %13 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %raw_buffer, align 4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.then2.err_out_crit_edge, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then2.err_out_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end11:                                         ; preds = %if.then2.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext 60, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.91, i32 noundef %call12) #15
  br label %err_out

if.end19:                                         ; preds = %if.end11
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 13
  %14 = ptrtoint ptr %factory_mode to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %factory_mode, align 4
  br label %do.body20

do.body20:                                        ; preds = %do.cond27.do.body20_crit_edge, %if.end19
  %retries.0 = phi i32 [ 10, %if.end19 ], [ %dec28, %do.cond27.do.body20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #12
  %call22 = tail call fastcc i32 @edt_ft5x06_register_read(ptr noundef %tsdata, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 3
  br i1 %cmp23, label %do.end31, label %do.cond27

do.cond27:                                        ; preds = %do.body20
  %dec28 = add nsw i32 %retries.0, -1
  %cmp29.not = icmp eq i32 %dec28, 0
  br i1 %cmp29.not, label %do.cond27.do.end37_crit_edge, label %do.cond27.do.body20_crit_edge

do.cond27.do.body20_crit_edge:                    ; preds = %do.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

do.cond27.do.end37_crit_edge:                     ; preds = %do.cond27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.end31:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %cmp32 = icmp eq i32 %retries.0, 0
  br i1 %cmp32, label %do.end31.do.end37_crit_edge, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end31.do.end37_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end37

do.end37:                                         ; preds = %do.end31.do.end37_crit_edge, %do.cond27.do.end37_crit_edge
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.94, i32 noundef 50) #15
  br label %err_out

err_out:                                          ; preds = %do.end37, %do.end17, %if.then2.err_out_crit_edge
  %error.0 = phi i32 [ %call12, %do.end17 ], [ -5, %do.end37 ], [ -12, %if.then2.err_out_crit_edge ]
  %20 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %raw_buffer, align 4
  tail call void @kfree(ptr noundef %21) #12
  %22 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %raw_buffer, align 4
  %factory_mode42 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 13
  %23 = ptrtoint ptr %factory_mode42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %factory_mode42, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %error.0, %err_out ], [ 0, %do.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edt_ft5x06_restore_reg_parameters(ptr nocapture noundef readonly %tsdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_addr1 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23
  %0 = ptrtoint ptr %reg_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_addr1, align 4
  %conv = trunc i32 %1 to i8
  %threshold = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 15
  %2 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %threshold, align 4
  %conv2 = trunc i32 %3 to i8
  %call = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv, i8 noundef zeroext %conv2)
  %reg_gain = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %reg_gain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_gain, align 4
  %conv3 = trunc i32 %5 to i8
  %gain = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 16
  %6 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gain, align 4
  %conv4 = trunc i32 %7 to i8
  %call5 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv3, i8 noundef zeroext %conv4)
  %reg_offset = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23, i32 3
  %8 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp.not = icmp eq i32 %9, 255
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv8 = trunc i32 %9 to i8
  %offset = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 17
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %conv9 = trunc i32 %11 to i8
  %call10 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv8, i8 noundef zeroext %conv9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_offset_x = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23, i32 4
  %12 = ptrtoint ptr %reg_offset_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_offset_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %13)
  %cmp11.not = icmp eq i32 %13, 255
  br i1 %cmp11.not, label %if.end.if.end18_crit_edge, label %if.then13

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv15 = trunc i32 %13 to i8
  %offset_x = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 18
  %14 = ptrtoint ptr %offset_x to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset_x, align 4
  %conv16 = trunc i32 %15 to i8
  %call17 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv15, i8 noundef zeroext %conv16)
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  %reg_offset_y = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23, i32 5
  %16 = ptrtoint ptr %reg_offset_y to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_offset_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp19.not = icmp eq i32 %17, 255
  br i1 %cmp19.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %conv23 = trunc i32 %17 to i8
  %offset_y = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 19
  %18 = ptrtoint ptr %offset_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset_y, align 4
  %conv24 = trunc i32 %19 to i8
  %call25 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv23, i8 noundef zeroext %conv24)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end18.if.end26_crit_edge
  %reg_report_rate = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 23, i32 1
  %20 = ptrtoint ptr %reg_report_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_report_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %21)
  %cmp27.not = icmp eq i32 %21, 255
  br i1 %cmp27.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %conv31 = trunc i32 %21 to i8
  %report_rate = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %tsdata, i32 0, i32 20
  %22 = ptrtoint ptr %report_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %report_rate, align 4
  %conv32 = trunc i32 %23 to i8
  %call33 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %tsdata, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32)
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end26.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_debugfs_raw_data_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %off) #2 align 64 {
entry:
  %wrmsg.i = alloca [2 x %struct.i2c_msg], align 4
  %wrbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf) #12
  %4 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %wrbuf, align 1, !annotation !272
  %5 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !272
  %7 = getelementptr inbounds [3 x i8], ptr %wrbuf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !272
  %9 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp = icmp slt i64 %10, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %raw_bufsize = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %raw_bufsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raw_bufsize, align 4
  %conv = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp2.not = icmp ult i64 %10, %conv
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false4:                                   ; preds = %if.end
  %raw_buffer = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raw_buffer, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup.sink.split_crit_edge, label %if.end7

lor.lhs.false4.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end7:                                          ; preds = %lor.lhs.false4
  %call = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end7.do.body17_crit_edge, label %do.body

if.end7.do.body17_crit_edge:                      ; preds = %if.end7
  br label %do.body17

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_debugfs_raw_data_read, %if.then14)) #12
          to label %cleanup.sink.split [label %if.then14], !srcloc !271

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %call) #12
  br label %cleanup.sink.split

do.body17:                                        ; preds = %do.cond23.do.body17_crit_edge, %if.end7.do.body17_crit_edge
  %retries.0 = phi i32 [ %dec, %do.cond23.do.body17_crit_edge ], [ 100, %if.end7.do.body17_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #12
  %call18 = tail call fastcc i32 @edt_ft5x06_register_read(ptr noundef %1, i8 noundef zeroext 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  br i1 %cmp19, label %do.end26, label %do.cond23

do.cond23:                                        ; preds = %do.body17
  %dec = add nsw i32 %retries.0, -1
  %cmp24.not = icmp eq i32 %dec, 0
  br i1 %cmp24.not, label %do.body51, label %do.cond23.do.body17_crit_edge

do.cond23.do.body17_crit_edge:                    ; preds = %do.cond23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body17

do.end26:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp27 = icmp slt i32 %call18, 0
  br i1 %cmp27, label %if.then29, label %if.end68

if.then29:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_debugfs_raw_data_read, %if.then42)) #12
          to label %cleanup.sink.split [label %if.then42], !srcloc !271

if.then42:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug289, ptr noundef %dev43, ptr noundef nonnull @.str.103, i32 noundef %call18) #12
  br label %cleanup.sink.split

do.body51:                                        ; preds = %do.cond23
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@edt_ft5x06_debugfs_raw_data_read, %if.then63)) #12
          to label %cleanup.sink.split [label %if.then63], !srcloc !271

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug290, ptr noundef %dev64, ptr noundef nonnull @.str.104) #12
  br label %cleanup.sink.split

if.end68:                                         ; preds = %do.end26
  %17 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %raw_buffer, align 4
  %num_y = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %num_y to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %num_y, align 2
  %conv70 = zext i16 %20 to i32
  %mul = shl nuw nsw i32 %conv70, 1
  %21 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -11, ptr %wrbuf, align 1
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 14, ptr %5, align 1
  %num_x = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %num_x to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %num_x, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp73168.not = icmp eq i16 %24, 0
  br i1 %cmp73168.not, label %if.end68.for.end_crit_edge, label %for.body.lr.ph

if.end68.for.end_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end68
  %conv78 = trunc i32 %mul to i16
  %25 = getelementptr inbounds i8, ptr %wrmsg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %wrmsg.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv78)
  %tobool5.not.i = icmp eq i16 %conv78, 0
  %arrayidx8.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1
  %flags11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 1
  %len13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 2
  %buf15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %wrmsg.i, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end82.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end82.for.body_crit_edge ]
  %rdbuf.0169 = phi ptr [ %18, %for.body.lr.ph ], [ %add.ptr, %if.end82.for.body_crit_edge ]
  %conv75 = trunc i32 %i.0171 to i8
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv75, ptr %7, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wrmsg.i) #12
  %29 = call ptr @memset(ptr %25, i32 255, i32 20)
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i, align 2
  %32 = ptrtoint ptr %wrmsg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %wrmsg.i, align 4
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 3, ptr %25, align 4
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wrbuf, ptr %buf.i, align 4
  br i1 %tobool5.not.i, label %for.body.edt_ft5x06_ts_readwrite.exit_crit_edge, label %if.then6.i

for.body.edt_ft5x06_ts_readwrite.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %edt_ft5x06_ts_readwrite.exit

if.then6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %31, ptr %arrayidx8.i, align 4
  %37 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags11.i, align 2
  %38 = ptrtoint ptr %len13.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv78, ptr %len13.i, align 4
  %39 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rdbuf.0169, ptr %buf15.i, align 4
  br label %edt_ft5x06_ts_readwrite.exit

edt_ft5x06_ts_readwrite.exit:                     ; preds = %if.then6.i, %for.body.edt_ft5x06_ts_readwrite.exit_crit_edge
  %i.1.i = phi i32 [ 2, %if.then6.i ], [ 1, %for.body.edt_ft5x06_ts_readwrite.exit_crit_edge ]
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %wrmsg.i, i32 noundef %i.1.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %i.1.i)
  %cmp20.not.i = icmp eq i32 %call.i, %i.1.i
  %..i = select i1 %cmp20.not.i, i32 0, i32 -5
  %retval.0.i151 = select i1 %cmp.i, i32 %call.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wrmsg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i151)
  %tobool80.not = icmp eq i32 %retval.0.i151, 0
  br i1 %tobool80.not, label %if.end82, label %edt_ft5x06_ts_readwrite.exit.cleanup.sink.split_crit_edge

edt_ft5x06_ts_readwrite.exit.cleanup.sink.split_crit_edge: ; preds = %edt_ft5x06_ts_readwrite.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end82:                                         ; preds = %edt_ft5x06_ts_readwrite.exit
  %add.ptr = getelementptr i8, ptr %rdbuf.0169, i32 %mul
  %inc = add nuw nsw i32 %i.0171, 1
  %42 = ptrtoint ptr %num_x to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_x, align 4
  %conv72 = zext i16 %43 to i32
  %cmp73 = icmp ult i32 %inc, %conv72
  br i1 %cmp73, label %if.end82.for.body_crit_edge, label %if.end82.for.end_crit_edge

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end82.for.end_crit_edge, %if.end68.for.end_crit_edge
  %44 = ptrtoint ptr %raw_bufsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %raw_bufsize, align 4
  %46 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %off, align 8
  %48 = trunc i64 %47 to i32
  %conv85 = sub i32 %45, %48
  %49 = call i32 @llvm.umin.i32(i32 %conv85, i32 %count)
  %50 = ptrtoint ptr %raw_buffer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %raw_buffer, align 4
  %add.ptr90 = getelementptr i8, ptr %51, i32 %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9.i.i = icmp slt i32 %49, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !274

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %for.end
  call void @__check_object_size(ptr noundef %add.ptr90, i32 noundef %49, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.107, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %52 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %49, i32 -1226833920) #17, !srcloc !275
  %asmresult.i.i = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr90, i32 noundef %49) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr90, i32 noundef %49) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %49, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %49, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool92.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool92.not, label %53, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

53:                                               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv95 = zext i32 %49 to i64
  %54 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %off, align 8
  %add = add i64 %55, %conv95
  store i64 %add, ptr %off, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %53, %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge, %edt_ft5x06_ts_readwrite.exit.cleanup.sink.split_crit_edge, %if.then63, %do.body51, %if.then42, %if.then29, %if.then14, %do.body, %lor.lhs.false4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %49, %53 ], [ -14, %copy_to_user.exit.cleanup.sink.split_crit_edge ], [ -110, %if.then63 ], [ -5, %if.end.cleanup.sink.split_crit_edge ], [ -5, %lor.lhs.false4.cleanup.sink.split_crit_edge ], [ %call18, %if.then42 ], [ %call, %if.then14 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ %call, %do.body ], [ %call18, %if.then29 ], [ -110, %do.body51 ], [ %retval.0.i151, %edt_ft5x06_ts_readwrite.exit.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %reset_gpio1 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %reset_gpio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %device_may_wakeup.exit.cleanup_crit_edge

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %suspend_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @edt_ft5x06_register_write(ptr noundef %1, i8 noundef zeroext -91, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end4.if.end7_crit_edge, label %do.end

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.108) #15
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end4.if.end7_crit_edge
  %9 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %14) #12
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %vcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vcc, align 4
  %call13 = tail call i32 @regulator_disable(ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.if.end19_crit_edge, label %do.end18

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.111) #15
  br label %if.end19

if.end19:                                         ; preds = %do.end18, %if.end11.if.end19_crit_edge
  %iovcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iovcc, align 4
  %call20 = tail call i32 @regulator_disable(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.114) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end19.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edt_ft5x06_ts_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %device_may_wakeup.exit.cleanup27_crit_edge

device_may_wakeup.exit.cleanup27_crit_edge:       ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %suspend_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_mode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %6, label %if.else [
    i32 0, label %if.end.cleanup27_crit_edge
    i32 2, label %if.then6
  ]

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.then6:                                         ; preds = %if.end
  %reset_gpio7 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %reset_gpio7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio7, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  %iovcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iovcc, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116) #15
  br label %cleanup27

if.end10:                                         ; preds = %if.then6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #12
  %vcc = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcc, align 4
  %call11 = tail call i32 @regulator_enable(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.119) #15
  %14 = ptrtoint ptr %iovcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iovcc, align 4
  %call18 = tail call i32 @regulator_disable(ptr noundef %15) #12
  br label %cleanup27

if.end19:                                         ; preds = %if.end10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #12
  tail call void @msleep(i32 noundef 300) #12
  tail call fastcc void @edt_ft5x06_restore_reg_parameters(ptr noundef %1)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %19) #12
  %factory_mode = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %factory_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %factory_mode, align 4, !range !273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %if.end19.cleanup27_crit_edge, label %if.then22

if.end19.cleanup27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call fastcc i32 @edt_ft5x06_factory_mode(ptr noundef %1)
  br label %cleanup27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %wake_gpio25 = getelementptr inbounds %struct.edt_ft5x06_ts_data, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %wake_gpio25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wake_gpio25, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 0) #12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #12
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 1) #12
  br label %cleanup27

cleanup27:                                        ; preds = %if.else, %if.then22, %if.end19.cleanup27_crit_edge, %do.end16, %do.end, %if.end.cleanup27_crit_edge, %device_may_wakeup.exit.cleanup27_crit_edge
  %retval.1 = phi i32 [ 0, %device_may_wakeup.exit.cleanup27_crit_edge ], [ %6, %if.end.cleanup27_crit_edge ], [ %call8, %do.end ], [ %call11, %do.end16 ], [ 0, %if.else ], [ 0, %if.end19.cleanup27_crit_edge ], [ %call23, %if.then22 ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !160, !161, !162, !163, !165, !167, !168, !170, !171, !173, !175, !176, !178, !180, !182, !184, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !213, !214, !215, !217, !218, !220, !221, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__initcall__kmod_edt_ft5x06__296_1433_edt_ft5x06_ts_driver_init6, !1, !"__initcall__kmod_edt_ft5x06__296_1433_edt_ft5x06_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1433, i32 1}
!2 = !{ptr @__exitcall_edt_ft5x06_ts_driver_exit, !1, !"__exitcall_edt_ft5x06_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1435, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1436, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1437, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1423, i32 11}
!12 = !{ptr @edt_ft5x06_ts_driver, !13, !"edt_ft5x06_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1421, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1086, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug293, !15, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1090, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @edt_ft5x06_ts_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @edt_ft5x06_ts_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1098, i32 3}
!27 = !{ptr @edt_ft5x06_ts_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1104, i32 49}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1108, i32 4}
!33 = !{ptr @edt_ft5x06_ts_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1113, i32 51}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1117, i32 4}
!39 = !{ptr @edt_ft5x06_ts_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1124, i32 3}
!43 = !{ptr @edt_ft5x06_ts_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1133, i32 3}
!47 = !{ptr @edt_ft5x06_ts_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1145, i32 12}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1148, i32 3}
!53 = !{ptr @edt_ft5x06_ts_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1154, i32 11}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1157, i32 3}
!59 = !{ptr @edt_ft5x06_ts_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1188, i32 3}
!63 = !{ptr @edt_ft5x06_ts_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @edt_ft5x06_ts_probe.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1192, i32 2}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1199, i32 3}
!70 = !{ptr @edt_ft5x06_ts_probe._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1213, i32 2}
!74 = !{ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug294, !73, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1231, i32 3}
!77 = !{ptr @edt_ft5x06_ts_probe._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1246, i32 3}
!81 = !{ptr @edt_ft5x06_ts_probe._entry.43, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @edt_ft5x06_ts_probe._entry_ptr.45, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1260, i32 2}
!85 = !{ptr @edt_ft5x06_ts_probe.__UNIQUE_ID_ddebug295, !84, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 836, i32 45}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 845, i32 30}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 858, i32 31}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 885, i32 46}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 892, i32 46}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 909, i32 39}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 914, i32 39}
!100 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 918, i32 39}
!102 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 922, i32 47}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 928, i32 6}
!106 = !{ptr @.str.57, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 932, i32 6}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 948, i32 40}
!110 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 954, i32 40}
!112 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 960, i32 40}
!114 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 968, i32 40}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 976, i32 40}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 329, i32 4}
!120 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @edt_ft5x06_register_read._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @edt_ft5x06_register_read._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 229, i32 3}
!125 = !{ptr @edt_ft5x06_ts_isr._rs, !124, !"_rs", i1 false, i1 false}
!126 = !{ptr @__func__.edt_ft5x06_ts_isr, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @edt_ft5x06_ts_isr._entry, !124, !"_entry", i1 false, i1 false}
!129 = !{ptr @edt_ft5x06_ts_isr._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @edt_ft5x06_ts_isr._rs.67, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 238, i32 4}
!132 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @edt_ft5x06_ts_isr._entry.68, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @edt_ft5x06_ts_isr._entry_ptr.70, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @edt_ft5x06_ts_check_crc._rs, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 181, i32 3}
!137 = !{ptr @__func__.edt_ft5x06_ts_check_crc, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @edt_ft5x06_ts_check_crc._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @edt_ft5x06_ts_check_crc._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @edt_ft5x06_attr_group, !141, !"edt_ft5x06_attr_group", i1 false, i1 false}
!141 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 540, i32 37}
!142 = !{ptr @edt_ft5x06_attrs, !143, !"edt_ft5x06_attrs", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 530, i32 26}
!144 = !{ptr @edt_ft5x06_attr_gain, !145, !"edt_ft5x06_attr_gain", i1 false, i1 false}
!145 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 512, i32 8}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 424, i32 4}
!148 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @edt_ft5x06_setting_show._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @edt_ft5x06_setting_show._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 434, i32 3}
!153 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @edt_ft5x06_setting_show._entry.73, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @edt_ft5x06_setting_show._entry_ptr.76, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 440, i32 36}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 498, i32 4}
!160 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @edt_ft5x06_setting_store._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @edt_ft5x06_setting_store._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @edt_ft5x06_attr_offset, !164, !"edt_ft5x06_attr_offset", i1 false, i1 false}
!164 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 515, i32 8}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 518, i32 8}
!167 = !{ptr @edt_ft5x06_attr_offset_x, !166, !"edt_ft5x06_attr_offset_x", i1 false, i1 false}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 521, i32 8}
!170 = !{ptr @edt_ft5x06_attr_offset_y, !169, !"edt_ft5x06_attr_offset_y", i1 false, i1 false}
!171 = !{ptr @edt_ft5x06_attr_threshold, !172, !"edt_ft5x06_attr_threshold", i1 false, i1 false}
!172 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 524, i32 8}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 527, i32 8}
!175 = !{ptr @edt_ft5x06_attr_report_rate, !174, !"edt_ft5x06_attr_report_rate", i1 false, i1 false}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 789, i32 21}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 790, i32 21}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 792, i32 22}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 794, i32 22}
!184 = !{ptr @debugfs_mode_fops, !185, !"debugfs_mode_fops", i1 false, i1 false}
!185 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 698, i32 1}
!186 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 576, i32 3}
!189 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @edt_ft5x06_factory_mode._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @edt_ft5x06_factory_mode._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 596, i32 3}
!194 = !{ptr @edt_ft5x06_factory_mode._entry.90, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @edt_ft5x06_factory_mode._entry_ptr.92, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 611, i32 3}
!198 = !{ptr @edt_ft5x06_factory_mode._entry.93, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @edt_ft5x06_factory_mode._entry_ptr.95, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 638, i32 3}
!202 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @edt_ft5x06_work_mode._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @edt_ft5x06_work_mode._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 654, i32 3}
!207 = !{ptr @edt_ft5x06_work_mode._entry.98, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @edt_ft5x06_work_mode._entry_ptr.100, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @debugfs_raw_data_fops, !210, !"debugfs_raw_data_fops", i1 false, i1 false}
!210 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 779, i32 37}
!211 = !{ptr @.str.101, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 725, i32 3}
!213 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug288, !212, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 739, i32 3}
!217 = !{ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug289, !216, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 745, i32 3}
!220 = !{ptr @edt_ft5x06_debugfs_raw_data_read.__UNIQUE_ID_ddebug290, !219, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!221 = distinct !{null, !222, !"__already_done", i1 false, i1 false}
!222 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!223 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!228 = !{ptr @edt_ft5x06_of_match, !229, !"edt_ft5x06_of_match", i1 false, i1 false}
!229 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1409, i32 34}
!230 = !{ptr @edt_ft5x06_data, !231, !"edt_ft5x06_data", i1 false, i1 false}
!231 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1387, i32 39}
!232 = !{ptr @edt_ft5506_data, !233, !"edt_ft5506_data", i1 false, i1 false}
!233 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1391, i32 39}
!234 = !{ptr @edt_ft6236_data, !235, !"edt_ft6236_data", i1 false, i1 false}
!235 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1395, i32 39}
!236 = !{ptr @edt_ft5x06_ts_pm_ops, !237, !"edt_ft5x06_ts_pm_ops", i1 false, i1 false}
!237 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1384, i32 8}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1295, i32 3}
!240 = !{ptr @.str.109, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @edt_ft5x06_ts_suspend._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @edt_ft5x06_ts_suspend._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1313, i32 3}
!245 = !{ptr @edt_ft5x06_ts_suspend._entry.110, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @edt_ft5x06_ts_suspend._entry_ptr.112, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.114, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1316, i32 3}
!249 = !{ptr @edt_ft5x06_ts_suspend._entry.113, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @edt_ft5x06_ts_suspend._entry_ptr.115, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.116, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1349, i32 4}
!253 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @edt_ft5x06_ts_resume._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @edt_ft5x06_ts_resume._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1358, i32 4}
!258 = !{ptr @edt_ft5x06_ts_resume._entry.118, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @edt_ft5x06_ts_resume._entry_ptr.120, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @edt_ft5x06_ts_id, !261, !"edt_ft5x06_ts_id", i1 false, i1 false}
!261 = !{!"../drivers/input/touchscreen/edt-ft5x06.c", i32 1399, i32 35}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{i64 2148523121, i64 2148523126, i64 2148523139, i64 2148523183, i64 2148523217, i64 2148523238}
!272 = !{!"auto-init"}
!273 = !{i8 0, i8 2}
!274 = !{!"branch_weights", i32 2000, i32 1}
!275 = !{i64 2152211683, i64 2152211708}
