; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/ucd9000.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/ucd9000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ucd9000_data = type { [4 x [32 x i8]], %struct.pmbus_driver_info, %struct.gpio_chip, ptr }
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.ucd9000_debugfs_entry = type { ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_ucd9000__293_627_ucd9000_driver_init6 = internal global ptr @ucd9000_driver_init, section ".initcall6.init", align 4
@ucd9000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ucd9000_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ucd9000_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ucd9000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ucd9000_driver_exit = internal global ptr @ucd9000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [29 x i8] c"ucd9000.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"ucd9000.description=PMBus driver for TI UCD90xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [41 x i8] c"ucd9000.file=drivers/hwmon/pmbus/ucd9000\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"ucd9000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns298 = internal constant [24 x i8] c"ucd9000.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ucd9000\00", [24 x i8] zeroinitializer }, align 32
@ucd9000_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd9000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd90120\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd90124\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd90160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd90320\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd9090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ucd90910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ucd9000_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ucd9000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ucd90120\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ucd90124\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ucd90160\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ucd90320\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ucd9090\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ucd90910\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read device ID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ucd9000_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/hwmon/pmbus/ucd9000.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr = internal global ptr @ucd9000_probe._entry, section ".printk_index", align 4
@ucd9000_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Device ID %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.9 = internal global ptr @ucd9000_probe._entry.6, section ".printk_index", align 4
@ucd9000_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported device\0A\00", [44 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.12 = internal global ptr @ucd9000_probe._entry.10, section ".printk_index", align 4
@ucd9000_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 530, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.16 = internal global ptr @ucd9000_probe._entry.13, section ".printk_index", align 4
@ucd9000_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read number of active pages\0A\00", [57 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.19 = internal global ptr @ucd9000_probe._entry.17, section ".printk_index", align 4
@ucd9000_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No pages configured\0A\00", [43 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.22 = internal global ptr @ucd9000_probe._entry.20, section ".printk_index", align 4
@ucd9000_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read configuration data\0A\00", [61 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.25 = internal global ptr @ucd9000_probe._entry.23, section ".printk_index", align 4
@ucd9000_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 612, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register debugfs: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ucd9000_probe._entry_ptr.29 = internal global ptr @ucd9000_probe._entry.26, section ".printk_index", align 4
@ucd9000_probe_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ucd9000_probe_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ucd9000_probe_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 360, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not add gpiochip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ucd9000_probe_gpio\00", [45 x i8] zeroinitializer }, align 32
@ucd9000_probe_gpio._entry_ptr = internal global ptr @ucd9000_probe_gpio._entry, section ".printk_index", align 4
@ucd9000_gpio_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ucd9000_gpio_set\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read GPIO %d config: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ucd9000_gpio_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write GPIO %d config: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ucd9000_gpio_set.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpi%d_alarm\00", [20 x i8] zeroinitializer }, align 32
@ucd9000_debugfs_mfr_status_bit = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ucd9000_debugfs_mfr_status_bit_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mfr_status\00", [21 x i8] zeroinitializer }, align 32
@ucd9000_debugfs_show_mfr_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @ucd9000_debugfs_read_mfr_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%1lld\0A\00", [25 x i8] zeroinitializer }, align 32
@switch.table.ucd9000_probe = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4100, i32 33792, i32 8208, i32 4100], [16 x i8] zeroinitializer }, align 32
@switch.table.ucd9000_probe_gpio = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 26, i16 26, i16 26, i16 84, i16 23, i16 26], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 58, i64 61]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"ucd9000_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 618, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 620, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"ucd9000_of_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 144, i32 49 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"ucd9000_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 132, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 507, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 511, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 518, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 528, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 540, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 546, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 557, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 611, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 358, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 360, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 211, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 233, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 468, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"ucd9000_debugfs_mfr_status_bit\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 475, i32 44 }
@___asan_gen_.152 = private unnamed_addr constant [37 x i8] c"ucd9000_debugfs_show_mfr_status_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 425, i32 37 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [33 x i8] c"../drivers/hwmon/pmbus/ucd9000.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 401, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"switch.table.ucd9000_probe\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [32 x i8] c"switch.table.ucd9000_probe_gpio\00", align 1
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_import_ns298, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ucd9000_driver_exit, ptr @__initcall__kmod_ucd9000__293_627_ucd9000_driver_init6, ptr @ucd9000_driver_exit, ptr @ucd9000_probe._entry, ptr @ucd9000_probe._entry.10, ptr @ucd9000_probe._entry.13, ptr @ucd9000_probe._entry.17, ptr @ucd9000_probe._entry.20, ptr @ucd9000_probe._entry.23, ptr @ucd9000_probe._entry.26, ptr @ucd9000_probe._entry.6, ptr @ucd9000_probe._entry_ptr, ptr @ucd9000_probe._entry_ptr.12, ptr @ucd9000_probe._entry_ptr.16, ptr @ucd9000_probe._entry_ptr.19, ptr @ucd9000_probe._entry_ptr.22, ptr @ucd9000_probe._entry_ptr.25, ptr @ucd9000_probe._entry_ptr.29, ptr @ucd9000_probe._entry_ptr.9, ptr @ucd9000_probe_gpio._entry, ptr @ucd9000_probe_gpio._entry_ptr, ptr @ucd9000_driver, ptr @.str, ptr @ucd9000_of_match, ptr @ucd9000_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @ucd9000_probe_gpio.lock_key, ptr @ucd9000_probe_gpio.request_key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @ucd9000_debugfs_mfr_status_bit, ptr @.str.36, ptr @ucd9000_debugfs_show_mfr_status_fops, ptr @.str.37, ptr @switch.table.ucd9000_probe, ptr @switch.table.ucd9000_probe_gpio], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_probe_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_debugfs_mfr_status_bit to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucd9000_debugfs_show_mfr_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucd9000_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ucd9000_probe_gpio to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ucd9000_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucd9000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ucd9000_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_probe(ptr noundef %client) #2 align 64 {
entry:
  %block_buffer = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %block_buffer) #8
  %0 = call ptr @memset(ptr %block_buffer, i32 255, i32 33)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #8
  %and.i = and i32 %call.i.i, 51904512
  call void @__sanitizer_cov_trace_const_cmp4(i32 51904512, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 51904512
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup146_crit_edge

entry.cleanup146_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

if.end:                                           ; preds = %entry
  %call1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -3, ptr noundef nonnull %block_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup146

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr [33 x i8], ptr %block_buffer, i32 0, i32 %call1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.7, ptr noundef nonnull %block_buffer) #11
  %call16 = call i32 @strlen(ptr noundef nonnull @ucd9000_id) #12
  %call17 = call i32 @strncasecmp(ptr noundef nonnull @ucd9000_id, ptr noundef nonnull %block_buffer, i32 noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end3.if.end29_crit_edge, label %for.inc

if.end3.if.end29_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc:                                          ; preds = %if.end3
  %call16.1 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 1)) #12
  %call17.1 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 1), ptr noundef nonnull %block_buffer, i32 noundef %call16.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %for.inc.if.end29_crit_edge, label %for.inc.1

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.1:                                        ; preds = %for.inc
  %call16.2 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 2)) #12
  %call17.2 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 2), ptr noundef nonnull %block_buffer, i32 noundef %call16.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %for.inc.1.if.end29_crit_edge, label %for.inc.2

for.inc.1.if.end29_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.2:                                        ; preds = %for.inc.1
  %call16.3 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 3)) #12
  %call17.3 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 3), ptr noundef nonnull %block_buffer, i32 noundef %call16.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3)
  %tobool18.not.3 = icmp eq i32 %call17.3, 0
  br i1 %tobool18.not.3, label %for.inc.2.if.end29_crit_edge, label %for.inc.3

for.inc.2.if.end29_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.3:                                        ; preds = %for.inc.2
  %call16.4 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 4)) #12
  %call17.4 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 4), ptr noundef nonnull %block_buffer, i32 noundef %call16.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.4)
  %tobool18.not.4 = icmp eq i32 %call17.4, 0
  br i1 %tobool18.not.4, label %for.inc.3.if.end29_crit_edge, label %for.inc.4

for.inc.3.if.end29_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.4:                                        ; preds = %for.inc.3
  %call16.5 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 5)) #12
  %call17.5 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 5), ptr noundef nonnull %block_buffer, i32 noundef %call16.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.5)
  %tobool18.not.5 = icmp eq i32 %call17.5, 0
  br i1 %tobool18.not.5, label %for.inc.4.if.end29_crit_edge, label %for.inc.5

for.inc.4.if.end29_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.5:                                        ; preds = %for.inc.4
  %call16.6 = call i32 @strlen(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 6)) #12
  %call17.6 = call i32 @strncasecmp(ptr noundef getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 6), ptr noundef nonnull %block_buffer, i32 noundef %call16.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.6)
  %tobool18.not.6 = icmp eq i32 %call17.6, 0
  br i1 %tobool18.not.6, label %for.inc.5.if.end29_crit_edge, label %for.inc.6

for.inc.5.if.end29_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.11) #11
  br label %cleanup146

if.end29:                                         ; preds = %for.inc.5.if.end29_crit_edge, %for.inc.4.if.end29_crit_edge, %for.inc.3.if.end29_crit_edge, %for.inc.2.if.end29_crit_edge, %for.inc.1.if.end29_crit_edge, %for.inc.if.end29_crit_edge, %if.end3.if.end29_crit_edge
  %mid.0223.lcssa = phi ptr [ @ucd9000_id, %if.end3.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 1), %for.inc.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 2), %for.inc.1.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 3), %for.inc.2.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 4), %for.inc.3.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 5), %for.inc.4.if.end29_crit_edge ], [ getelementptr inbounds ([8 x %struct.i2c_device_id], ptr @ucd9000_id, i32 0, i32 6), %for.inc.5.if.end29_crit_edge ]
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = call ptr @of_device_get_match_data(ptr noundef %dev7) #8
  %10 = ptrtoint ptr %call34 to i32
  br label %if.end35

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0223.lcssa, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %chip.0 = phi i32 [ %10, %if.then32 ], [ %12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip.0)
  %cmp36.not = icmp eq i32 %chip.0, 0
  br i1 %cmp36.not, label %if.end35.if.end52_crit_edge, label %land.lhs.true

if.end35.if.end52_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end35
  %name37 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call41 = call i32 @strcmp(ptr noundef %name37, ptr noundef %mid.0223.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %land.lhs.true.if.end52_crit_edge, label %do.end46

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end46:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev7, ptr noundef nonnull @.str.14, ptr noundef %name37, ptr noundef %mid.0223.lcssa) #11
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %land.lhs.true.if.end52_crit_edge, %if.end35.if.end52_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev7, i32 noundef 972, i32 noundef 3520) #8
  %tobool55.not = icmp eq ptr %call.i, null
  br i1 %tobool55.not, label %if.end52.cleanup146_crit_edge, label %if.end57

if.end52.cleanup146_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

if.end57:                                         ; preds = %if.end52
  %info58 = getelementptr inbounds %struct.ucd9000_data, ptr %call.i, i32 0, i32 1
  %call59 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.18) #11
  br label %cleanup146

if.end66:                                         ; preds = %if.end57
  %13 = ptrtoint ptr %info58 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call59, ptr %info58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool68.not = icmp eq i32 %call59, 0
  br i1 %tobool68.not, label %do.end72, label %if.end74

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.21) #11
  br label %cleanup146

if.end74:                                         ; preds = %if.end66
  %func = getelementptr inbounds %struct.ucd9000_data, ptr %call.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %func, align 4
  %call77 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -43, ptr noundef nonnull %block_buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 1
  br i1 %cmp78, label %do.end82, label %if.end74.for.body87_crit_edge

if.end74.for.body87_crit_edge:                    ; preds = %if.end74
  br label %for.body87

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.24) #11
  br label %cleanup146

for.body87:                                       ; preds = %cleanup.for.body87_crit_edge, %if.end74.for.body87_crit_edge
  %i.0225 = phi i32 [ %inc, %cleanup.for.body87_crit_edge ], [ 0, %if.end74.for.body87_crit_edge ]
  %arrayidx88 = getelementptr [33 x i8], ptr %block_buffer, i32 0, i32 %i.0225
  %15 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx88, align 1
  %conv = zext i8 %16 to i32
  %and = and i32 %conv, 31
  %17 = ptrtoint ptr %info58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %18)
  %cmp90.not = icmp slt i32 %and, %18
  br i1 %cmp90.not, label %if.end93, label %for.body87.cleanup_crit_edge

for.body87.cleanup_crit_edge:                     ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %for.body87
  %19 = lshr i32 %conv, 5
  %switch.tableidx = add nsw i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 4
  br i1 %20, label %switch.lookup, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ucd9000_probe, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx105 = getelementptr %struct.ucd9000_data, ptr %call.i, i32 0, i32 1, i32 7, i32 %and
  %22 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx105, align 4
  %or = or i32 %23, %switch.load
  store i32 %or, ptr %arrayidx105, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end93.cleanup_crit_edge, %for.body87.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0225, 1
  %exitcond.not = icmp eq i32 %inc, %call77
  br i1 %exitcond.not, label %for.end108, label %cleanup.for.body87_crit_edge

cleanup.for.body87_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body87

for.end108:                                       ; preds = %cleanup
  %driver_data109 = getelementptr inbounds %struct.i2c_device_id, ptr %mid.0223.lcssa, i32 0, i32 1
  %24 = ptrtoint ptr %driver_data109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp110 = icmp eq i32 %25, 2
  br i1 %cmp110, label %for.body116.preheader, label %for.end108.if.end133_crit_edge

for.end108.if.end133_crit_edge:                   ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

for.body116.preheader:                            ; preds = %for.end108
  %call118 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -25, i8 noundef zeroext 0) #8
  %call121 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -24, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %for.body116.preheader.cleanup146_crit_edge, label %for.cond113

for.body116.preheader.cleanup146_crit_edge:       ; preds = %for.body116.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

for.cond113:                                      ; preds = %for.body116.preheader
  %call118.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -25, i8 noundef zeroext 1) #8
  %arrayidx119.1 = getelementptr [4 x [32 x i8]], ptr %call.i, i32 0, i32 1
  %call121.1 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -24, ptr noundef %arrayidx119.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.1)
  %cmp122.1 = icmp slt i32 %call121.1, 0
  br i1 %cmp122.1, label %for.cond113.cleanup146_crit_edge, label %for.cond113.1

for.cond113.cleanup146_crit_edge:                 ; preds = %for.cond113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

for.cond113.1:                                    ; preds = %for.cond113
  %call118.2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -25, i8 noundef zeroext 2) #8
  %arrayidx119.2 = getelementptr [4 x [32 x i8]], ptr %call.i, i32 0, i32 2
  %call121.2 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -24, ptr noundef %arrayidx119.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.2)
  %cmp122.2 = icmp slt i32 %call121.2, 0
  br i1 %cmp122.2, label %for.cond113.1.cleanup146_crit_edge, label %for.cond113.2

for.cond113.1.cleanup146_crit_edge:               ; preds = %for.cond113.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

for.cond113.2:                                    ; preds = %for.cond113.1
  %call118.3 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -25, i8 noundef zeroext 3) #8
  %arrayidx119.3 = getelementptr [4 x [32 x i8]], ptr %call.i, i32 0, i32 3
  %call121.3 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -24, ptr noundef %arrayidx119.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.3)
  %cmp122.3 = icmp slt i32 %call121.3, 0
  br i1 %cmp122.3, label %for.cond113.2.cleanup146_crit_edge, label %for.cond113.3

for.cond113.2.cleanup146_crit_edge:               ; preds = %for.cond113.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

for.cond113.3:                                    ; preds = %for.cond113.2
  call void @__sanitizer_cov_trace_pc() #10
  %call129 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -25, i8 noundef zeroext 0) #8
  %read_byte_data = getelementptr inbounds %struct.ucd9000_data, ptr %call.i, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %read_byte_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ucd9000_read_byte_data, ptr %read_byte_data, align 4
  %27 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %func, align 4
  %or132 = or i32 %28, 196992
  store i32 %or132, ptr %func, align 4
  br label %if.end133

if.end133:                                        ; preds = %for.cond113.3, %for.end108.if.end133_crit_edge
  call fastcc void @ucd9000_probe_gpio(ptr noundef %client, ptr noundef %mid.0223.lcssa, ptr noundef nonnull %call.i)
  %call134 = call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef %info58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.cleanup146_crit_edge

if.end133.cleanup146_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

if.end137:                                        ; preds = %if.end133
  %call138 = call fastcc i32 @ucd9000_init_debugfs(ptr noundef %client, ptr noundef %mid.0223.lcssa, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end137.cleanup146_crit_edge, label %do.end143

if.end137.cleanup146_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup146

do.end143:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.27, i32 noundef %call138) #11
  br label %cleanup146

cleanup146:                                       ; preds = %do.end143, %if.end137.cleanup146_crit_edge, %if.end133.cleanup146_crit_edge, %for.cond113.2.cleanup146_crit_edge, %for.cond113.1.cleanup146_crit_edge, %for.cond113.cleanup146_crit_edge, %for.body116.preheader.cleanup146_crit_edge, %do.end82, %do.end72, %do.end64, %if.end52.cleanup146_crit_edge, %for.inc.6, %do.end, %entry.cleanup146_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call59, %do.end64 ], [ -19, %do.end82 ], [ -19, %do.end72 ], [ -19, %for.inc.6 ], [ -19, %entry.cleanup146_crit_edge ], [ -12, %if.end52.cleanup146_crit_edge ], [ %call134, %if.end133.cleanup146_crit_edge ], [ 0, %do.end143 ], [ 0, %if.end137.cleanup146_crit_edge ], [ %call121, %for.body116.preheader.cleanup146_crit_edge ], [ %call121.1, %for.cond113.cleanup146_crit_edge ], [ %call121.2, %for.cond113.1.cleanup146_crit_edge ], [ %call121.3, %for.cond113.2.cleanup146_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_buffer) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_read_byte_data(ptr noundef %client, i32 noundef %page, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %entry.cleanup_crit_edge [
    i32 58, label %sw.bb
    i32 61, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp = icmp sgt i32 %page, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %arrayidx1.i = getelementptr i8, ptr %call.i, i32 -125
  %1 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx1.i, align 1
  %call.i42 = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %arrayidx1.i44 = getelementptr i8, ptr %call.i42, i32 -93
  %3 = ptrtoint ptr %arrayidx1.i44 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1.i44, align 1
  %5 = shl i8 %4, 3
  %6 = and i8 %5, 8
  %7 = lshr i8 %4, 1
  %8 = and i8 %7, 3
  %or712.i45 = or i8 %6, %8
  %9 = shl i8 %2, 7
  %10 = shl i8 %2, 3
  %11 = and i8 %10, 48
  %12 = or i8 %11, %9
  %or60 = or i8 %or712.i45, %12
  %or = zext i8 %or60 to i32
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page)
  %cmp9 = icmp sgt i32 %page, 0
  br i1 %cmp9, label %sw.bb8.cleanup_crit_edge, label %if.end20

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47 = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %arrayidx1.i50 = getelementptr i8, ptr %call.i47, i32 -61
  %13 = ptrtoint ptr %arrayidx1.i50 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1.i50, align 1
  %call.i53 = tail call ptr @pmbus_get_driver_info(ptr noundef %client) #8
  %arrayidx1.i56 = getelementptr i8, ptr %call.i53, i32 -29
  %15 = ptrtoint ptr %arrayidx1.i56 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i56, align 1
  %17 = shl i8 %16, 3
  %18 = and i8 %17, 8
  %19 = lshr i8 %16, 1
  %20 = and i8 %19, 3
  %or712.i57 = or i8 %18, %20
  %21 = shl i8 %14, 7
  %22 = shl i8 %14, 3
  %23 = and i8 %22, 48
  %24 = or i8 %23, %21
  %or2159 = or i8 %or712.i57, %24
  %or21 = zext i8 %or2159 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %sw.bb8.cleanup_crit_edge, %if.end7, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %sw.bb.cleanup_crit_edge ], [ -6, %sw.bb8.cleanup_crit_edge ], [ %or21, %if.end20 ], [ %or, %if.end7 ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ucd9000_probe_gpio(ptr noundef %client, ptr nocapture noundef readonly %mid, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.ucd9000_probe_gpio, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  %ngpio9 = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 20
  %4 = ptrtoint ptr %ngpio9 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %switch.load, ptr %ngpio9, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %gpio10 = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %gpio10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %gpio10, align 4
  %get_direction = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ucd9000_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 8
  %7 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ucd9000_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ucd9000_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 10
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ucd9000_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ucd9000_gpio_set, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 23
  %11 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %can_sleep, align 4
  %base = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %base, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %parent = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent, align 4
  %call = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio10, ptr noundef %client, ptr noundef nonnull @ucd9000_probe_gpio.lock_key, ptr noundef nonnull @ucd9000_probe_gpio.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %switch.lookup.cleanup_crit_edge, label %do.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucd9000_init_debugfs(ptr noundef %client, ptr nocapture noundef readonly %mid, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  %name = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 24)
  %call = tail call ptr @pmbus_get_debugfs_dir(ptr noundef %client) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %name1, ptr noundef nonnull %call) #8
  %debugfs3 = getelementptr inbounds %struct.ucd9000_data, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %debugfs3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %debugfs3, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %mid, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %if.then16, label %if.end7.if.end32_crit_edge

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp18 = icmp eq i32 %3, 4
  %cond = select i1 %cmp18, i32 32, i32 8
  %4 = shl nuw nsw i32 %cond, 3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #8
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %if.then16.cleanup_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then16.for.body_crit_edge
  %i.066 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then16.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ucd9000_debugfs_entry, ptr %call5.i.i, i32 %i.066
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %arrayidx, align 4
  %conv = trunc i32 %i.066 to i8
  %index = getelementptr %struct.ucd9000_debugfs_entry, ptr %call5.i.i, i32 %i.066, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %index, align 4
  %add = add nuw nsw i32 %i.066, 1
  %call27 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name, i32 noundef 24, ptr noundef nonnull @.str.35, i32 noundef %add) #8
  %7 = ptrtoint ptr %debugfs3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs3, align 4
  %call31 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %arrayidx, ptr noundef nonnull @ucd9000_debugfs_mfr_status_bit) #8
  %exitcond.not = icmp eq i32 %add, %cond
  br i1 %exitcond.not, label %for.body.if.end32_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %for.body.if.end32_crit_edge, %if.end7.if.end32_crit_edge
  %call34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %name, i32 noundef 24, ptr noundef nonnull @.str.36) #8
  %9 = ptrtoint ptr %debugfs3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs3, align 4
  %call37 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %client, ptr noundef nonnull @ucd9000_debugfs_show_mfr_status_fops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_driver_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %conv.i = trunc i32 %offset to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -6, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ucd9000_gpio_read_config.exit_crit_edge, label %if.end.i

entry.ucd9000_gpio_read_config.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_read_config.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call, i8 noundef zeroext -5) #8
  br label %ucd9000_gpio_read_config.exit

ucd9000_gpio_read_config.exit:                    ; preds = %if.end.i, %entry.ucd9000_gpio_read_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.ucd9000_gpio_read_config.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %and = lshr i32 %retval.0.i, 1
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  %retval.0 = select i1 %cmp, i32 %retval.0.i, i32 %0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %conv.i.i = trunc i32 %offset to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call.i, i8 noundef zeroext -6, i8 noundef zeroext %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.ucd9000_gpio_set_direction.exit_crit_edge, label %ucd9000_gpio_read_config.exit.i

entry.ucd9000_gpio_set_direction.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_set_direction.exit

ucd9000_gpio_read_config.exit.i:                  ; preds = %entry
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call.i, i8 noundef zeroext -5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %ucd9000_gpio_read_config.exit.i.ucd9000_gpio_set_direction.exit_crit_edge, label %if.end.i

ucd9000_gpio_read_config.exit.i.ucd9000_gpio_set_direction.exit_crit_edge: ; preds = %ucd9000_gpio_read_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_set_direction.exit

if.end.i:                                         ; preds = %ucd9000_gpio_read_config.exit.i
  %and18.i = and i32 %call2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end.i.ucd9000_gpio_set_direction.exit_crit_edge, label %if.end21.i

if.end.i.ucd9000_gpio_set_direction.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_set_direction.exit

if.end21.i:                                       ; preds = %if.end.i
  %0 = trunc i32 %call2.i.i to i8
  %1 = and i8 %0, -4
  %conv.i = or i8 %1, 1
  %call25.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call.i, i8 noundef zeroext -5, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end21.i.ucd9000_gpio_set_direction.exit_crit_edge, label %if.end29.i

if.end21.i.ucd9000_gpio_set_direction.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_set_direction.exit

if.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %call32.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call.i, i8 noundef zeroext -5, i8 noundef zeroext %1) #8
  br label %ucd9000_gpio_set_direction.exit

ucd9000_gpio_set_direction.exit:                  ; preds = %if.end29.i, %if.end21.i.ucd9000_gpio_set_direction.exit_crit_edge, %if.end.i.ucd9000_gpio_set_direction.exit_crit_edge, %ucd9000_gpio_read_config.exit.i.ucd9000_gpio_set_direction.exit_crit_edge, %entry.ucd9000_gpio_set_direction.exit_crit_edge
  %retval.0.i = phi i32 [ %call32.i, %if.end29.i ], [ %call2.i.i, %ucd9000_gpio_read_config.exit.i.ucd9000_gpio_set_direction.exit_crit_edge ], [ 0, %if.end.i.ucd9000_gpio_set_direction.exit_crit_edge ], [ %call25.i, %if.end21.i.ucd9000_gpio_set_direction.exit_crit_edge ], [ %call.i.i, %entry.ucd9000_gpio_set_direction.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ucd9000_gpio_set_direction(ptr noundef %gc, i32 noundef %offset, i1 noundef zeroext true, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %conv.i = trunc i32 %offset to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -6, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ucd9000_gpio_read_config.exit_crit_edge, label %if.end.i

entry.ucd9000_gpio_read_config.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ucd9000_gpio_read_config.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call, i8 noundef zeroext -5) #8
  br label %ucd9000_gpio_read_config.exit

ucd9000_gpio_read_config.exit:                    ; preds = %if.end.i, %entry.ucd9000_gpio_read_config.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.ucd9000_gpio_read_config.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %and = lshr i32 %retval.0.i, 3
  %and.lobit = and i32 %and, 1
  %retval.0 = select i1 %cmp, i32 %retval.0.i, i32 %and.lobit
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucd9000_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %conv.i = trunc i32 %offset to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -6, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %ucd9000_gpio_read_config.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

ucd9000_gpio_read_config.exit:                    ; preds = %entry
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call, i8 noundef zeroext -5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %ucd9000_gpio_read_config.exit.do.body_crit_edge, label %if.end6

ucd9000_gpio_read_config.exit.do.body_crit_edge:  ; preds = %ucd9000_gpio_read_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %ucd9000_gpio_read_config.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i9396 = phi i32 [ %call2.i, %ucd9000_gpio_read_config.exit.do.body_crit_edge ], [ %call.i, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucd9000_gpio_set, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !94

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucd9000_gpio_set.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %offset, i32 noundef %retval.0.i9396) #8
  br label %cleanup

if.end6:                                          ; preds = %ucd9000_gpio_read_config.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool7.not = icmp eq i32 %value, 0
  %and12 = and i32 %call2.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  br i1 %tobool13.not, label %if.end11, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call2.i, 8
  br label %if.end17

if.else:                                          ; preds = %if.end6
  br i1 %tobool13.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %call2.i, -9
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end11
  %ret.0 = phi i32 [ %or, %if.end11 ], [ %and16, %if.end15 ]
  %0 = trunc i32 %ret.0 to i8
  %conv = or i8 %0, 1
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -5, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body23, label %if.end40

do.body23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucd9000_gpio_set, %if.then35)) #8
          to label %cleanup [label %if.then35], !srcloc !94

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucd9000_gpio_set.__UNIQUE_ID_ddebug289, ptr noundef %dev36, ptr noundef nonnull @.str.34, i32 noundef %offset, i32 noundef %call19) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end17
  %1 = trunc i32 %call19 to i8
  %conv42 = and i8 %1, -2
  %call43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -5, i8 noundef zeroext %conv42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.body47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucd9000_gpio_set, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !94

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %dev60 = getelementptr inbounds %struct.i2c_client, ptr %call, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucd9000_gpio_set.__UNIQUE_ID_ddebug290, ptr noundef %dev60, ptr noundef nonnull @.str.34, i32 noundef %offset, i32 noundef %call43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body47, %if.end40.cleanup_crit_edge, %if.then35, %do.body23, %if.else.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ucd9000_gpio_set_direction(ptr noundef %gc, i32 noundef %offset, i1 noundef zeroext %direction_out, i32 noundef %requested_out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %conv.i = trunc i32 %offset to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -6, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ucd9000_gpio_read_config.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ucd9000_gpio_read_config.exit:                    ; preds = %entry
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %call, i8 noundef zeroext -5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %ucd9000_gpio_read_config.exit.cleanup_crit_edge, label %if.end

ucd9000_gpio_read_config.exit.cleanup_crit_edge:  ; preds = %ucd9000_gpio_read_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ucd9000_gpio_read_config.exit
  br i1 %direction_out, label %if.then2, label %if.else17

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requested_out)
  %tobool3.not = icmp eq i32 %requested_out, 0
  %and = and i32 %call2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then2
  %cond = select i1 %tobool3.not, i32 0, i32 4
  %and6 = and i32 %call2.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %cond)
  %cmp7 = icmp eq i32 %and6, %cond
  br i1 %cmp7, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call2.i, 2
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5.if.end10_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.then5.if.end10_crit_edge ], [ %or, %if.else ]
  br i1 %tobool3.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %or13 = or i32 %ret.0, 4
  br label %if.end23

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %and15 = and i32 %ret.0, -5
  br label %if.end23

if.else17:                                        ; preds = %if.end
  %and18 = and i32 %call2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.cleanup_crit_edge, label %if.end21

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  %and22 = and i32 %call2.i, -3
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.else14, %if.then12
  %ret.1 = phi i32 [ %or13, %if.then12 ], [ %and15, %if.else14 ], [ %and22, %if.end21 ]
  %0 = trunc i32 %ret.1 to i8
  %conv = or i8 %0, 1
  %call25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -5, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %conv31 = and i8 %0, -2
  %call32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %call, i8 noundef zeroext -5, i8 noundef zeroext %conv31) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end23.cleanup_crit_edge, %if.else17.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %ucd9000_gpio_read_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %if.end29 ], [ %call2.i, %ucd9000_gpio_read_config.exit.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 0, %if.else17.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pmbus_get_debugfs_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_debugfs_mfr_status_bit_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @ucd9000_debugfs_show_mfr_status_bit, ptr noundef null, ptr noundef nonnull @.str.37) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_debugfs_show_mfr_status_bit(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %buffer = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #8
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  %call.i = tail call i32 @pmbus_set_page(ptr noundef %1, i32 noundef 0, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ucd9000_get_mfr_status.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ucd9000_get_mfr_status.exit:                      ; preds = %entry
  %call1.i = call i32 @i2c_smbus_read_block_data(ptr noundef %1, i8 noundef zeroext -13, ptr noundef nonnull %buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ucd9000_get_mfr_status.exit.cleanup_crit_edge, label %if.end

ucd9000_get_mfr_status.exit.cleanup_crit_edge:    ; preds = %ucd9000_get_mfr_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ucd9000_get_mfr_status.exit
  %sub = add nsw i32 %call1.i, -3
  %index = getelementptr inbounds %struct.ucd9000_debugfs_entry, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index, align 4
  %conv = zext i8 %4 to i32
  %div22 = lshr i32 %conv, 3
  %sub3 = sub nsw i32 %sub, %div22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3)
  %cmp4 = icmp sgt i32 %sub3, -1
  br i1 %cmp4, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [32 x i8], ptr %buffer, i32 0, i32 %sub3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %6 to i32
  %rem = and i32 %conv, 7
  %7 = lshr i32 %conv7, %rem
  %8 = and i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %ucd9000_get_mfr_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %ucd9000_get_mfr_status.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_set_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucd9000_debugfs_read_mfr_status(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %buffer = alloca [32 x i8], align 1
  %str = alloca [66 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #8
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %str) #8
  %3 = call ptr @memset(ptr %str, i32 255, i32 66)
  %call.i = tail call i32 @pmbus_set_page(ptr noundef %1, i32 noundef 0, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %ucd9000_get_mfr_status.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ucd9000_get_mfr_status.exit:                      ; preds = %entry
  %call1.i = call i32 @i2c_smbus_read_block_data(ptr noundef %1, i8 noundef zeroext -13, ptr noundef nonnull %buffer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %ucd9000_get_mfr_status.exit.cleanup_crit_edge, label %if.end

ucd9000_get_mfr_status.exit.cleanup_crit_edge:    ; preds = %ucd9000_get_mfr_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ucd9000_get_mfr_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call i32 @llvm.umin.i32(i32 %call1.i, i32 32)
  %call4 = call ptr @bin2hex(ptr noundef nonnull %str, ptr noundef nonnull %buffer, i32 noundef %4) #8
  %incdec.ptr = getelementptr i8, ptr %call4, i32 1
  %5 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %call4, align 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %incdec.ptr, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %str to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %str, i32 noundef %sub.ptr.sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ucd9000_get_mfr_status.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call1.i, %ucd9000_get_mfr_status.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %str) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !78, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_ucd9000__293_627_ucd9000_driver_init6, !1, !"__initcall__kmod_ucd9000__293_627_ucd9000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 627, i32 1}
!2 = !{ptr @__exitcall_ucd9000_driver_exit, !1, !"__exitcall_ucd9000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 629, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 630, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 631, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns298, !11, !"__UNIQUE_ID_import_ns298", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 632, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 620, i32 11}
!14 = !{ptr @ucd9000_driver, !15, !"ucd9000_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 618, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 507, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ucd9000_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ucd9000_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 511, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ucd9000_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ucd9000_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 518, i32 3}
!31 = !{ptr @ucd9000_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ucd9000_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 528, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ucd9000_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ucd9000_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 540, i32 3}
!40 = !{ptr @ucd9000_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ucd9000_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 546, i32 3}
!44 = !{ptr @ucd9000_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ucd9000_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 557, i32 3}
!48 = !{ptr @ucd9000_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ucd9000_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 611, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ucd9000_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ucd9000_probe._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ucd9000_probe_gpio.lock_key, !56, !"lock_key", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 358, i32 7}
!57 = !{ptr @ucd9000_probe_gpio.request_key, !56, !"request_key", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 360, i32 3}
!60 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ucd9000_probe_gpio._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ucd9000_probe_gpio._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 211, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 233, i32 3}
!69 = !{ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug289, !68, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @ucd9000_gpio_set.__UNIQUE_ID_ddebug290, !71, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 242, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 468, i32 7}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 475, i32 44}
!76 = !{ptr @ucd9000_debugfs_mfr_status_bit, !77, !"ucd9000_debugfs_mfr_status_bit", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 401, i32 1}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ucd9000_debugfs_show_mfr_status_fops, !80, !"ucd9000_debugfs_show_mfr_status_fops", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 425, i32 37}
!81 = !{ptr @ucd9000_of_match, !82, !"ucd9000_of_match", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 144, i32 49}
!83 = !{ptr @ucd9000_id, !84, !"ucd9000_id", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/pmbus/ucd9000.c", i32 132, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148501737, i64 2148501742, i64 2148501755, i64 2148501799, i64 2148501833, i64 2148501854}
